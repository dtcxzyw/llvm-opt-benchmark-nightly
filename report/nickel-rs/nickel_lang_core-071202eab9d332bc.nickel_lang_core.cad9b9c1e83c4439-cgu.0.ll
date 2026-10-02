Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_core-071202eab9d332bc.nickel_lang_core.cad9b9c1e83c4439-cgu.0?download=true
inline.NumInlined: 37290
inline.NumDeleted: 15086
loop-unroll.NumCompletelyUnrolled: 98
loop-unroll.NumRuntimeUnrolled: 96
loop-unroll.NumUnrolled: 197
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN16nickel_lang_core4repl18ReplImpl$LT$EC$GT$6report17h41dde117f149a299E":bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8 ; 2 uses
  %i.ap = atomicrmw xchg ptr %i.ao, i32 0 release, align 4, !noalias !54900
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %"_ZN4core3ptr78drop_in_place$LT$termcolor..NoColor$LT$termcolor..IoStandardStreamLock$GT$$GT$17h989378f64ef63cfaE.exit.sink.split.i.i.i.i", label %"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17hea5d82e7e329480eE.exit.i", !prof !147

bb.v:                                             ; preds = %bb.s
  br i1 %i.an, label %bb.w, label %"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17hea5d82e7e329480eE.exit.i"

bb.w:                                             ; preds = %bb.v
  store atomic i64 0, ptr %.val3.i.i.i.i monotonic, align 8, !noalias !54900
  %i.ar = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 8 ; 2 uses
  %i.as = atomicrmw xchg ptr %i.ar, i32 0 release, align 4, !noalias !54900
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %"_ZN4core3ptr78drop_in_place$LT$termcolor..NoColor$LT$termcolor..IoStandardStreamLock$GT$$GT$17h989378f64ef63cfaE.exit.sink.split.i.i.i.i", label %"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17hea5d82e7e329480eE.exit.i", !prof !147

"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17hea5d82e7e329480eE.exit.i": ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.r, %bb.q, %bb.p, %bb.o, %"_ZN4core3ptr78drop_in_place$LT$termcolor..NoColor$LT$termcolor..IoStandardStreamLock$GT$$GT$17h989378f64ef63cfaE.exit.sink.split.i.i.i.i", %bb.m
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$termcolor..StandardStream$GT$17ha7f54d1de4681d55E"(ptr noalias noundef align 8 dereferenceable(56) %i.a)
          to label %bb.ac unwind label %bb.z

bb.x:                                             ; preds = %bb.y, %bb.l, %bb.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !54895
  unreachable

bb.y:                                             ; preds = %.split.thread.i, %bb.d
  %.pn47.i = phi { ptr, i32 } [ %i.q, %.split.thread.i ], [ %.pn.i, %bb.d ]
  invoke void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..error..Error$GT$17he8f800c919cf0562E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1) #86
          to label %.body unwind label %bb.x

bb.z:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17hea5d82e7e329480eE.exit.i"
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.y, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.z ], [ %.pn.i, %bb.d ], [ %.pn47.i, %bb.y ]
  call void @llvm.experimental.noalias.scope.decl(metadata !54901)
  call void @llvm.experimental.noalias.scope.decl(metadata !54902)
  call void @llvm.experimental.noalias.scope.decl(metadata !54903)
  %i.aw = load ptr, ptr %i.c, align 8, !alias.scope !54904, !noundef !145 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit", label %bb.aa

bb.aa:                                            ; preds = %.body
  %i.ay = load i64, ptr %i.aw, align 8, !noalias !54905, !noundef !145
  %i.az = add i64 %i.ay, -1                       ; 2 uses
  store i64 %i.az, ptr %i.aw, align 8, !noalias !54905
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.ab, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit"

bb.ab:                                            ; preds = %bb.aa
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.c)
          to label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit" unwind label %bb.af

bb.ac:                                            ; preds = %"_ZN4core3ptr50drop_in_place$LT$termcolor..StandardStreamLock$GT$17hea5d82e7e329480eE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !54894
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !54894
  call void @llvm.experimental.noalias.scope.decl(metadata !54906)
  call void @llvm.experimental.noalias.scope.decl(metadata !54907)
  call void @llvm.experimental.noalias.scope.decl(metadata !54908)
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !54909, !noundef !145 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit7", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = load i64, ptr %i.bb, align 8, !noalias !54910, !noundef !145
  %i.be = add i64 %i.bd, -1                       ; 2 uses
  store i64 %i.be, ptr %i.bb, align 8, !noalias !54910
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.ae, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit7"

bb.ae:                                            ; preds = %bb.ad
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.c)
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit7"

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit7": ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.af:                                            ; preds = %bb.ab
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h2195eb5050dede68E.exit": ; preds = %bb.ab, %.body, %bb.aa
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_ZN16nickel_lang_core4repl18rustyline_frontend4repl17h3df1d2f871a45682E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i8 noundef range(i8 0, 4) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 15 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [1 x i8], align 1                 ; 6 uses
  %i.n = alloca [48 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [48 x i8], align 8                ; 8 uses
  %i.q = alloca [1 x i8], align 1                 ; 6 uses
  %i.r = alloca [48 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [1 x i8], align 1                 ; 6 uses
  %i.v = alloca [48 x i8], align 8                ; 8 uses
  %i.w = alloca [48 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [1 x i8], align 1                 ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [48 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [48 x i8], align 8               ; 8 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [48 x i8], align 8               ; 8 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 8 uses
  %i.aj = alloca [1 x i8], align 1                ; 8 uses
  %i.ak = alloca [48 x i8], align 8               ; 8 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [48 x i8], align 8               ; 8 uses
  %i.an = alloca [1 x i8], align 1                ; 6 uses
  %i.ao = alloca [16 x i8], align 8               ; 6 uses
  %i.ap = alloca [48 x i8], align 8               ; 7 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 8 uses
  %i.as = alloca [24 x i8], align 8               ; 8 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [48 x i8], align 8               ; 8 uses
  %i.av = alloca [48 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [4 x i8], align 4                ; 4 uses
  %i.az = alloca [72 x i8], align 8               ; 12 uses
  %i.ba = alloca [48 x i8], align 8               ; 14 uses
  %i.bb = alloca [24 x i8], align 8               ; 8 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [48 x i8], align 8               ; 8 uses
  %i.bf = alloca [48 x i8], align 8               ; 6 uses
  %i.bg = alloca [24 x i8], align 8               ; 4 uses
  %i.bh = alloca [24 x i8], align 8               ; 4 uses
  %i.bi = alloca [4 x i8], align 4                ; 4 uses
  %i.bj = alloca [72 x i8], align 8               ; 12 uses
  %i.bk = alloca [48 x i8], align 8               ; 14 uses
  %i.bl = alloca [24 x i8], align 8               ; 11 uses
  %i.bm = alloca [48 x i8], align 8               ; 8 uses
  %i.bn = alloca [48 x i8], align 8               ; 8 uses
  %i.bo = alloca [16 x i8], align 8               ; 5 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [16 x i8], align 8               ; 7 uses
  %i.br = alloca [48 x i8], align 8               ; 8 uses
  %i.bs = alloca [24 x i8], align 8               ; 8 uses
  %i.bt = alloca [24 x i8], align 8               ; 8 uses
  %i.bu = alloca [24 x i8], align 8               ; 8 uses
  %i.bv = alloca [24 x i8], align 8               ; 8 uses
  %i.bw = alloca [24 x i8], align 8               ; 4 uses
  %i.bx = alloca [24 x i8], align 8               ; 7 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 9 uses
  %i.ca = alloca [16 x i8], align 8               ; 5 uses
  %i.cb = alloca [24 x i8], align 8               ; 6 uses
  %i.cc = alloca [8 x i8], align 8                ; 5 uses
  %i.cd = alloca [24 x i8], align 8               ; 9 uses
  %i.ce = alloca [24 x i8], align 8               ; 9 uses
  %i.cf = alloca [784 x i8], align 8              ; 18 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [48 x i8], align 8               ; 8 uses
  %i.cj = alloca [48 x i8], align 8               ; 6 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [16 x i8], align 8               ; 5 uses
  %i.cn = alloca [48 x i8], align 8               ; 8 uses
  %i.co = alloca [8 x i8], align 8                ; 4 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [48 x i8], align 8               ; 8 uses
  %i.cr = alloca [8 x i8], align 8                ; 4 uses
  %i.cs = alloca [16 x i8], align 8               ; 5 uses
  %i.ct = alloca [48 x i8], align 8               ; 8 uses
  %i.cu = alloca [8 x i8], align 8                ; 5 uses
  %i.cv = alloca [16 x i8], align 8               ; 6 uses
  %i.cw = alloca [48 x i8], align 8               ; 9 uses
  %i.cx = alloca [8 x i8], align 8                ; 4 uses
  %i.cy = alloca [48 x i8], align 8               ; 6 uses
  %i.cz = alloca [8 x i8], align 8                ; 4 uses
  %i.da = alloca [48 x i8], align 8               ; 7 uses
  %i.db = alloca [440 x i8], align 8              ; 10 uses
  %i.dc = alloca [48 x i8], align 8               ; 9 uses
  %i.dd = alloca [32 x i8], align 16              ; 5 uses
  %i.de = alloca [24 x i8], align 8               ; 7 uses
  %i.df = alloca [8 x i8], align 8                ; 4 uses
  %i.dg = alloca [24 x i8], align 8               ; 7 uses
  %i.dh = alloca [24 x i8], align 8               ; 6 uses
  %i.di = alloca [24 x i8], align 8               ; 7 uses
  %i.dj = alloca [72 x i8], align 8               ; 9 uses
  %i.dk = alloca [16 x i8], align 8               ; 7 uses
  %i.dl = alloca [8 x i8], align 8                ; 6 uses
  %i.dm = alloca [8 x i8], align 8                ; 5 uses
  %i.dn = alloca [32 x i8], align 8               ; 8 uses
  %i.do = alloca [24 x i8], align 8               ; 6 uses
  %i.dp = alloca [16 x i8], align 8               ; 7 uses
  %i.dq = alloca [48 x i8], align 8               ; 7 uses
  %i.dr = alloca [8 x i8], align 8                ; 4 uses
  %i.ds = alloca [24 x i8], align 8               ; 8 uses
  %i.dt = alloca [128 x i8], align 8              ; 18 uses
  %i.du = alloca [128 x i8], align 8              ; 18 uses
  %i.dv = alloca [200 x i8], align 8              ; 8 uses
  %i.dw = alloca [8 x i8], align 8                ; 4 uses
  %i.dx = alloca [16 x i8], align 8               ; 6 uses
  %i.dy = alloca [8 x i8], align 8                ; 4 uses
  %i.dz = alloca [16 x i8], align 8               ; 7 uses
  %i.ea = alloca [24 x i8], align 8               ; 10 uses
  %i.eb = alloca [8 x i8], align 8                ; 7 uses
  %i.ec = alloca [152 x i8], align 8              ; 9 uses
  %i.ed = alloca [8 x i8], align 8                ; 4 uses
  %i.ee = alloca [8 x i8], align 8                ; 6 uses
  %i.ef = alloca [48 x i8], align 8               ; 8 uses
  %i.eg = alloca [16 x i8], align 8               ; 5 uses
  %i.eh = alloca [24 x i8], align 8               ; 4 uses
  %i.ei = alloca [224 x i8], align 8              ; 6 uses
  %i.ej = alloca [56 x i8], align 8               ; 4 uses
  %i.ek = alloca [152 x i8], align 8              ; 5 uses
  %i.el = alloca [232 x i8], align 8              ; 7 uses
  %.sroa.05.sroa.0.i.sroa.5 = alloca [512 x i8], align 8 ; 7 uses
  %i.em = alloca [232 x i8], align 8              ; 7 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 6 uses
  %i.en = alloca [48 x i8], align 8               ; 12 uses
  %i.eo = alloca [48 x i8], align 16              ; 14 uses
  %i.ep = alloca [632 x i8], align 8              ; 5 uses
  %i.eq = alloca [16 x i8], align 8               ; 5 uses
  %i.er = alloca [8 x i8], align 8                ; 4 uses
  %i.es = alloca [40 x i8], align 8               ; 7 uses
  %i.et = alloca [104 x i8], align 8              ; 8 uses
  %i.eu = alloca [32 x i8], align 8               ; 4 uses
  %i.ev = alloca [16 x i8], align 8               ; 8 uses
  %i.ew = alloca [24 x i8], align 8               ; 4 uses
  %i.ex = alloca [104 x i8], align 8              ; 15 uses
  %i.ey = alloca [16 x i8], align 8               ; 5 uses
  %i.ez = alloca [16 x i8], align 8               ; 5 uses
  %i.fa = alloca [24 x i8], align 8               ; 2 uses
  %i.fb = alloca [32 x i8], align 8               ; 5 uses
  %i.fc = alloca [16 x i8], align 8               ; 5 uses
  %i.fd = alloca [16 x i8], align 8               ; 7 uses
  %i.fe = alloca [14 x i8], align 2               ; 7 uses
  %i.ff = alloca [16 x i8], align 8               ; 5 uses
  %i.fg = alloca [48 x i8], align 8               ; 8 uses
  %i.fh = alloca [32 x i8], align 8               ; 5 uses
  %i.fi = alloca [16 x i8], align 8               ; 5 uses
  %i.fj = alloca [48 x i8], align 8               ; 8 uses
  %i.fk = alloca [8 x i8], align 8                ; 6 uses
  %i.fl = alloca [48 x i8], align 8               ; 8 uses
  %i.fm = alloca [32 x i8], align 8               ; 5 uses
  %i.fn = alloca [72 x i8], align 8               ; 10 uses
  %i.fo = alloca [14 x i8], align 2               ; 7 uses
  %i.fp = alloca [16 x i8], align 8               ; 5 uses
  %i.fq = alloca [48 x i8], align 8               ; 8 uses
  %i.fr = alloca [8 x i8], align 8                ; 30 uses
  %i.fs = alloca [32 x i8], align 8               ; 5 uses
  %i.ft = alloca [16 x i8], align 8               ; 5 uses
  %i.fu = alloca [48 x i8], align 8               ; 8 uses
  %i.fv = alloca [8 x i8], align 8                ; 6 uses
  %i.fw = alloca [40 x i8], align 8               ; 9 uses
  %i.fx = alloca [104 x i8], align 8              ; 9 uses
  %.sroa.16 = alloca [12 x i8], align 4           ; 5 uses
  %.sroa.14.sroa.8.sroa.8 = alloca [12 x i8], align 4 ; 7 uses
  %i.fy = alloca [24 x i8], align 8               ; 6 uses
  %i.fz = alloca [8 x i8], align 8                ; 19 uses
  %i.ga = alloca [24 x i8], align 8               ; 17 uses
  %i.gb = alloca [144 x i8], align 8              ; 7 uses
  %i.gc = alloca [16 x i8], align 8               ; 5 uses
  %.sroa.6370 = alloca [12 x i8], align 8         ; 5 uses
  %.sroa.5361 = alloca [24 x i8], align 8         ; 7 uses
  %.sroa.6 = alloca [24 x i8], align 8            ; 7 uses
  %.sroa.7 = alloca [24 x i8], align 8            ; 7 uses
  %i.gd = alloca [832 x i8], align 8              ; 34 uses
  %i.ge = alloca [24 x i8], align 8               ; 6 uses
  %i.gf = alloca [32 x i8], align 8               ; 5 uses
  %i.gg = alloca [32 x i8], align 8               ; 3 uses
  %i.gh = alloca [728 x i8], align 8              ; 37 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55594)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eq), !noalias !55594
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.sink.sroa.gep3853 = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.sink.sroa.gep3855 = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %.sink.sroa.gep3856 = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %.sink.sroa.gep3858 = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %.sink.sroa.gep3859 = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %.sink.sroa.gep3861 = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %.sink.sroa.gep3862 = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.gi = invoke fastcc { ptr, ptr } @"_ZN100_$LT$nickel_lang_parser..environment..Environment$LT$K$C$V$GT$$u20$as$u20$core..default..Default$GT$7default17hfe6d959db52c81dcE"()
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.gj = extractvalue { ptr, ptr } %i.gi, 0      ; 2 uses
  store ptr %i.gj, ptr %i.eq, align 8, !noalias !55594
  %i.gk = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr null, ptr %i.gk, align 8, !noalias !55594
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ep), !noalias !55594
  invoke void @_ZN16nickel_lang_core5cache8CacheHub3new17hdc05759c239edb18E(ptr noalias noundef nonnull sret([632 x i8]) align 8 captures(address) dereferenceable(632) %i.ep)
          to label %bb.c unwind label %bb.b, !noalias !55594

bb.b:                                             ; preds = %.noexc
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.gl, %bb.b ], [ %i.go, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hdcdd944deda88889E"(ptr noalias noundef align 8 dereferenceable(16) %i.eq) #86
          to label %.body138 unwind label %bb.g, !noalias !55594

bb.c:                                             ; preds = %.noexc
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !55595
  %i.gm = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !55595 ; 3 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.d, label %bb.j, !prof !155

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #82
          to label %.noexc.i.i unwind label %bb.e, !noalias !55595

.noexc.i.i:                                       ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$nickel_lang_core..cache..CacheHub$GT$17h28f91031b7d73310E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(632) %i.ep) #86
          to label %.body.i unwind label %bb.f, !noalias !55596

bb.f:                                             ; preds = %bb.e
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !55595
  unreachable

bb.g:                                             ; preds = %.body.i
  %i.gq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !55594
  unreachable

.body138:                                         ; preds = %bb.i, %.body.i, %bb.k
  %.pn133 = phi { ptr, i32 } [ %.pn131, %bb.k ], [ %i.gt, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55597)
  %i.gr = load i64, ptr %1, align 8, !range !168, !alias.scope !55597, !noundef !145 ; 2 uses
  %switch.i = icmp sgt i64 %i.gr, 0
  br i1 %switch.i, label %bb.h, label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hf557a3af8deb3affE.exit"

bb.h:                                             ; preds = %.body138
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.gs, align 8, !alias.scope !55597, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !55598
  br label %"_ZN4core3ptr67drop_in_place$LT$core..option..Option$LT$std..path..PathBuf$GT$$GT$17hf557a3af8deb3affE.exit"

bb.i:                                             ; preds = %bb.a, %bb.ry, %bb.rg
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %.body138

bb.j:                                             ; preds = %bb.c
  store ptr @_ZN3std2io5stdio6stderr8INSTANCE17h5d12f2cc7577b812E, ptr %i.gm, align 8, !noalias !55595
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(728) %i.gh, ptr noundef nonnull align 8 dereferenceable(632) %i.ep, i64 632, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ep), !noalias !55594
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 632 ; 3 uses
  store i64 0, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !alias.scope !55594
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 640
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !alias.scope !55594
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 648
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 664
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !55594
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !55594
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 672
  store i64 0, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !55594
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 680
  store ptr %i.gm, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !55594
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 688
  store ptr @256, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !55594
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 696
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !55594
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gh, i64 704
  store ptr @676, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !55594
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 712 ; 4 uses
  store ptr %i.gj, ptr %i.gu, align 8, !alias.scope !55594
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 720 ; 2 uses
  store ptr null, ptr %i.gv, align 8, !alias.scope !55594
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eq), !noalias !55594
  invoke fastcc void @"_ZN16nickel_lang_core4repl18ReplImpl$LT$EC$GT$11load_stdlib17h55b1e79fc558ae58E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.gg, ptr noalias noundef align 8 dereferenceable(728) %i.gh)
end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core4repl18rustyline_frontend4repl17h3df1d2f871a45682E:bb.a
  %i.kr = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.4122.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ky = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.la = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.lb = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ld = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.4134.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.li = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.lm = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ln = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.lo = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %.sroa.4142.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.4146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %.sroa.4126.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.md = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.me = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.mi = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.4130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.mm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.mn = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.mo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.mp = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.mq = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ms = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.mt = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.mu = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.mv = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.4114.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.mw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.my = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.nc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.nd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ne = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.nh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ni = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.no = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.np = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 22
  %i.nt = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 3 uses
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 22
  %i.nx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 4 uses
  %.sroa.449.0..sroa_idx.i.i.i257 = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.7156.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.7153.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %.sroa.11154.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.nz = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.oa = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.415.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.sroa.4.0..sroa_idx.i141.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %.sroa.528.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %.sroa.5.0..sroa_idx.i142.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.oe = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.of = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.og = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.oi = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 5 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 3 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i51.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i52.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.4.0..sroa_idx.i.i53.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %.sroa.5.0..sroa_idx.i.i54.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 22
  %i.om = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.420.0..sroa_idx.i55.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.on = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.oo = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.op = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.oq = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.or = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.az, i64 48 ; 2 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.az, i64 56 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %.sroa.4.0..sroa_idx.i14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i15.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 3 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ox = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 22
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.420.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.pa = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.pb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.pc = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.bk, i64 32 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.cf, i64 728 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.cf, i64 736 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %.sroa.479.sroa.4.0..sroa.479.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %.sroa.479.sroa.5.0..sroa.479.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  %.sroa.42.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.po = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.pp = getelementptr inbounds nuw i8, ptr %i.et, i64 16 ; 2 uses
  %.val.sink.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %.sroa.477.sroa.4.0..sroa.477.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %.sroa.477.sroa.5.0..sroa.477.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fx, i64 28
  %i.pr = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %.sroa.4101.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.sroa.5102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.ps = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %.sroa.615.i.sroa.5.0..sroa.543.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %.sroa.615.i.sroa.6.0..sroa.543.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.pt = getelementptr inbounds nuw i8, ptr %i.gh, i64 296 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.pv = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.pw = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %.sroa.9.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.px = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.gh, i64 344
  %i.pz = getelementptr inbounds nuw i8, ptr %i.gh, i64 392
  %i.qa = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.qb = getelementptr inbounds nuw i8, ptr %i.gh, i64 488
  %i.qc = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.qh = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.qi = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.qj = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.qk = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.ql = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.qp = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %.sroa.42.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.qr = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.qs = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.qt = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.qu = getelementptr inbounds nuw i8, ptr %i.db, i64 392
  %.sroa.4.0..sroa_idx.i83.i = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %.sroa.5.0..sroa_idx.i.i210 = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.qv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.67.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.14.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.sroa.14.sroa.8.0..sroa.14.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %.sroa.14.sroa.8.sroa.8.0..sroa.14.sroa.8.0..sroa.14.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.fm, i64 20
  %i.qw = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.qx = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.qy = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.qz = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  %i.ra = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %.sroa.493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.re = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.rf = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.rg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !nonnull !145
  %i.ri = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.rj = load i64, ptr %i.ri, align 8
  %i.rk = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %.sroa.4424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.rl = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.rm = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %i.pt, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.gh, i64 1
  %i.rn = insertelement <2 x ptr> poison, ptr %i.py, i64 0
  %i.ro = insertelement <2 x ptr> %i.rn, ptr %i.pz, i64 1
  br label %bb.al

bb.al:                                            ; preds = %"_ZN4core3ptr52drop_in_place$LT$rustyline..error..ReadlineError$GT$17hdb4bce1ee1ce17faE.exit352", %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eu)
  store ptr null, ptr %i.eu, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !55621)
  call void @llvm.experimental.noalias.scope.decl(metadata !55622)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  %i.rp = load i8, ptr %i.jh, align 8, !range !153, !alias.scope !55622, !noalias !55623, !noundef !145
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.rr = load i8, ptr %i.ji, align 1, !range !153, !alias.scope !55622, !noalias !55623, !noundef !145
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.ap, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.rt = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !55624 ; 2 uses
  %i.ru = icmp ult i64 %i.rt, 6
  call void @llvm.assume(i1 %i.ru)
  %i.rv = icmp samesign ugt i64 %i.rt, 3
  br i1 %i.rv, label %bb.bp, label %bb.bo

bb.ao:                                            ; preds = %bb.am
  %i.rw = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hf1aeb8105e2d9ecfE monotonic, align 8, !noalias !55624 ; 2 uses
  %i.rx = icmp ult i64 %i.rw, 6
  call void @llvm.assume(i1 %i.rx)
  %i.ry = icmp samesign ugt i64 %i.rw, 3
  br i1 %i.ry, label %bb.ar, label %bb.aq

bb.ap:                                            ; preds = %bb.am
  invoke void @"_ZN76_$LT$rustyline..tty..unix..PosixTerminal$u20$as$u20$rustyline..tty..Term$GT$15enable_raw_mode17h3bbae0d440256b51E"(ptr noalias noundef nonnull sret([200 x i8]) align 8 captures(address) dereferenceable(200) %i.dv, ptr noalias noundef nonnull align 8 dereferenceable(832) %i.gd)
          to label %.noexc160 unwind label %.loopexit559

.noexc160:                                        ; preds = %bb.ap
  %i.rz = load i32, ptr %i.dv, align 8, !range !186, !noalias !55624, !noundef !145 ; 2 uses
  %i.sa = icmp eq i32 %i.rz, 2
  br i1 %i.sa, label %bb.as, label %bb.at

bb.aq:                                            ; preds = %.noexc164, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw), !noalias !55624
  %i.sb = invoke noundef nonnull align 8 ptr @_ZN3std2io5stdio5stdin17h098929a647404888E()
          to label %.noexc161 unwind label %.loopexit559

.noexc161:                                        ; preds = %bb.aq
  store ptr %i.sb, ptr %i.dw, align 8, !noalias !55624
  %i.sc = invoke { ptr, i1 } @_ZN3std2io5stdio5Stdin4lock17h3d3350dae1f67731E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dw)
          to label %.noexc162 unwind label %.loopexit559 ; 2 uses

.noexc162:                                        ; preds = %.noexc161
  %i.sd = extractvalue { ptr, i1 } %i.sc, 0
  %i.se = extractvalue { ptr, i1 } %i.sc, 1
  invoke fastcc void @_ZN9rustyline15readline_direct17h6137d60130290931E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ga, ptr noundef nonnull align 8 %i.sd, i1 noundef zeroext %i.se, ptr noundef nonnull align 8 %i.is)
          to label %.noexc163 unwind label %.loopexit559

.noexc163:                                        ; preds = %.noexc162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw), !noalias !55624
  br label %bb.bs

bb.ar:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !55625
  store i64 4, ptr %i.jj, align 8, !noalias !55625
  store ptr @3285, ptr %.sroa.431.0..sroa_idx.i.i.i, align 8, !noalias !55625
  store i64 9, ptr %.sroa.532.0..sroa_idx.i.i.i, align 8, !noalias !55625
  store ptr @3284, ptr %i.jk, align 8, !noalias !55625
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i, align 8, !noalias !55625
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.550.0..sroa_idx.i.i.i, align 8, !noalias !55625
  store i64 0, ptr %i.du, align 8, !noalias !55625
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.651.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !55624
  store ptr @3285, ptr %.sroa.462.0..sroa_idx.i.i.i, align 8, !noalias !55625
  store i64 9, ptr %.sroa.563.0..sroa_idx.i.i.i, align 8, !noalias !55625
  store i64 0, ptr %i.jl, align 8, !noalias !55625
  store ptr @3275, ptr %.sroa.524.0..sroa_idx25.i.i.i, align 8, !noalias !55625
  store i64 96, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i, align 8, !noalias !55625
  store i32 1, ptr %i.jm, align 8, !noalias !55625
  store i32 674, ptr %i.jn, align 4, !noalias !55625
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h0d08e70e01426ab4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.du)
          to label %.noexc164 unwind label %.loopexit559

.noexc164:                                        ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.du), !noalias !55625
  br label %bb.aq

bb.as:                                            ; preds = %.noexc160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.js, ptr noundef nonnull align 8 dereferenceable(16) %i.ju, i64 16, i1 false), !noalias !55626
  store i64 -9223372036854775808, ptr %i.ga, align 8, !alias.scope !55621, !noalias !55626
  br label %bb.bs

bb.at:                                            ; preds = %.noexc160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !55624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.244.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i157, i64 20, i1 false), !noalias !55624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.345.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.5.0..sroa_idx.i158, i64 128, i1 false), !noalias !55624
  store i32 %i.rz, ptr %i.ec, align 8, !noalias !55624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !55624
  store ptr %i.ec, ptr %i.eb, align 8, !noalias !55624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !55624
  invoke fastcc void @"_ZN9rustyline19Editor$LT$H$C$I$GT$13readline_edit17ha32f9caa3e5be488E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ea, ptr noalias noundef nonnull align 8 dereferenceable(832) %i.gd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.eu, ptr noundef nonnull align 8 %i.ec, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.jo)
          to label %bb.av unwind label %.split.thread.i

.split.thread.i:                                  ; preds = %bb.at
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.au:                                            ; preds = %bb.ay
  br i1 %.sroa.025.2.i, label %bb.bn, label %"_ZN4core3ptr37drop_in_place$LT$rustyline..Guard$GT$17h60f46c2db6bc06a8E.exit65.i"

.split.i:                                         ; preds = %bb.be
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr37drop_in_place$LT$rustyline..Guard$GT$17h60f46c2db6bc06a8E.exit65.i"

bb.av:                                            ; preds = %bb.at
  %i.sh = load i8, ptr %.sroa.5.sroa.0.sroa.11.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !range !153, !alias.scope !55622, !noalias !55623, !noundef !145
  %i.si = trunc nuw i8 %i.sh to i1
  %i.sj = load i64, ptr %i.ea, align 8, !range !168, !noalias !55624 ; 3 uses
  %i.sk = icmp ne i64 %i.sj, -9223372036854775808 ; 2 uses
  %or.cond.not.i = select i1 %i.si, i1 %i.sk, i1 false
  br i1 %or.cond.not.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.az, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !55624
  %i.sl = load ptr, ptr %i.eb, align 8, !noalias !55624, !nonnull !145, !align !149, !noundef !145
  store ptr %i.sl, ptr %i.dy, align 8, !noalias !55624
  invoke void @"_ZN58_$LT$rustyline..Guard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95448bbd8014149aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dy)
          to label %"_ZN4core3ptr37drop_in_place$LT$rustyline..Guard$GT$17h60f46c2db6bc06a8E.exit.i" unwind label %bb.ay, !noalias !55623

bb.ax:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !55624
  %i.sm = load ptr, ptr %i.jp, align 8, !noalias !55624, !nonnull !145, !noundef !145
  %i.sn = load i64, ptr %i.jq, align 8, !noalias !55624, !noundef !145
  invoke void @"_ZN79_$LT$rustyline..history..FileHistory$u20$as$u20$rustyline..history..History$GT$3add17hadf252e76619be24E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dz, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.jr, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.sm, i64 noundef %i.sn)
          to label %"_ZN9rustyline19Editor$LT$H$C$I$GT$17add_history_entry17h345fbc8f92d78e9aE.exit.i" unwind label %bb.ay, !noalias !55623

bb.ay:                                            ; preds = %"_ZN4core3ptr37drop_in_place$LT$rustyline..Guard$GT$17h60f46c2db6bc06a8E.exit.i", %bb.ax, %bb.aw
  %.sroa.025.2.i = phi i1 [ false, %"_ZN4core3ptr37drop_in_place$LT$rustyline..Guard$GT$17h60f46c2db6bc06a8E.exit.i" ], [ false, %bb.aw ], [ true, %bb.ax ]
  %i.so = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$rustyline..error..ReadlineError$GT$$GT$17h5893d73da8c11b5dE"(ptr noalias noundef align 8 dereferenceable(24) %i.ea) #86
          to label %bb.au unwind label %bb.bm, !noalias !55623

"_ZN9rustyline19Editor$LT$H$C$I$GT$17add_history_entry17h345fbc8f92d78e9aE.exit.i": ; preds = %bb.ax
  %i.sp = load i32, ptr %i.dz, align 8, !range !161, !noalias !55624, !noundef !145 ; 2 uses
  %.not.i159 = icmp eq i32 %i.sp, 5
  br i1 %.not.i159, label %bb.az, label %.thread23.i

.thread23.i:                                      ; preds = %"_ZN9rustyline19Editor$LT$H$C$I$GT$17add_history_entry17h345fbc8f92d78e9aE.exit.i"
  %.sroa.432.0.copyload.i = load i8, ptr %.sroa.432.0..sroa_idx.i, align 4, !noalias !55624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.336.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.533.0..sroa_idx.i, i64 11, i1 false), !noalias !55626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !55624
  store i32 %i.sp, ptr %i.js, align 8, !alias.scope !55621, !noalias !55626
  store i8 %.sroa.432.0.copyload.i, ptr %.sroa.235.0..sroa_idx.i, align 4, !alias.scope !55621, !noalias !55626
  store i64 -9223372036854775808, ptr %i.ga, align 8, !alias.scope !55621, !noalias !55626
  br label %bb.bb

bb.az:                                            ; preds = %"_ZN9rustyline19Editor$LT$H$C$I$GT$17add_history_entry17h345fbc8f92d78e9aE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !55624
  br label %bb.aw

bb.ba:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.235.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.440.0..sroa_idx.i, i64 12, i1 false), !noalias !55626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !55624
  store i32 %i.st, ptr %i.js, align 8, !alias.scope !55621, !noalias !55626
  store i64 -9223372036854775808, ptr %i.ga, align 8, !alias.scope !55621, !noalias !55626
  call void @llvm.experimental.noalias.scope.decl(metadata !55627)
  br i1 %i.sk, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba, %.thread23.i
  %.sroa.025.326.i = phi i1 [ true, %.thread23.i ], [ false, %bb.ba ]
  call void @llvm.experimental.noalias.scope.decl(metadata !55628)
  call void @llvm.experimental.noalias.scope.decl(metadata !55629)
  %i.sq = icmp eq i64 %i.sj, 0
  br i1 %i.sq, label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$rustyline..error..ReadlineError$GT$$GT$17h5893d73da8c11b5dE.exit.i", label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.val1.i.i.i.i = load ptr, ptr %i.jp, align 8, !alias.scope !55630, !noalias !55624, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.sj, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !55631
  br label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$rustyline..error..ReadlineError$GT$$GT$17h5893d73da8c11b5dE.exit.i"

bb.bd:                                            ; preds = %bb.ba
  %i.sr = load i32, ptr %i.jp, align 8, !range !224, !alias.scope !55632, !noalias !55624, !noundef !145
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %bb.be, label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$rustyline..error..ReadlineError$GT$$GT$17h5893d73da8c11b5dE.exit.thread.i"

bb.be:                                            ; preds = %bb.bd
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02aac197275825a2E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.jq)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$rustyline..error..ReadlineError$GT$$GT$17h5893d73da8c11b5dE.exit.thread.i" unwind label %.split.i, !noalias !55623

"_ZN4core3ptr37drop_in_place$LT$rustyline..Guard$GT$17h60f46c2db6bc06a8E.exit.i": ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !55624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !55624
  invoke void @"_ZN76_$LT$rustyline..tty..unix..PosixTerminal$u20$as$u20$rustyline..tty..Term$GT$7writeln17haffd6adec799d093E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(832) %i.gd)
          to label %bb.bf unwind label %bb.ay, !noalias !55623

bb.bf:                                            ; preds = %"_ZN4core3ptr37drop_in_place$LT$rustyline..Guard$GT$17h60f46c2db6bc06a8E.exit.i"
  %i.st = load i32, ptr %i.dx, align 8, !range !161, !noalias !55624, !noundef !145 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4repl18rustyline_frontend4repl17h3df1d2f871a45682E:bb.a
  store i64 %.sroa.8397.0.copyload, ptr %i.do, align 8, !noalias !55667
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4101.0..sroa_idx.i, align 8, !noalias !55667
  store i64 %.sroa.8397.0.copyload, ptr %.sroa.5102.0..sroa_idx.i, align 8, !noalias !55667
  invoke fastcc void @_ZN16nickel_lang_core5cache11SourceCache8add_file17he63c1a636c621117E(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.dp, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.gh, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.do, i8 noundef 0)
          to label %.noexc213 unwind label %.loopexit589

.noexc213:                                        ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h6295d2612874f8d2E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do), !noalias !55667
  %i.vs = load i32, ptr %i.dp, align 8, !range !197, !noalias !55667, !noundef !145
  %i.vt = trunc nuw i32 %i.vs to i1
  br i1 %i.vt, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %.noexc213
  %i.vu = load ptr, ptr %i.qv, align 8, !noalias !55667, !nonnull !145, !noundef !145
  invoke void @"_ZN101_$LT$nickel_lang_core..error..IOError$u20$as$u20$core..convert..From$LT$std..io..error..Error$GT$$GT$4from17h8759cc8650976fecE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dg, ptr noundef nonnull %i.vu)
          to label %.noexc216 unwind label %.loopexit589

.noexc216:                                        ; preds = %bb.dc
  %.sroa.05.0.copyload.i = load i64, ptr %i.dg, align 8, !noalias !55667
  %.sroa.67.0.copyload.i = load i32, ptr %.sroa.67.0..sroa_idx.i, align 8, !noalias !55667
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !55667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16, ptr noundef nonnull align 4 dereferenceable(12) %i.pr, i64 12, i1 false), !noalias !55670
  br label %bb.fh

bb.dd:                                            ; preds = %.noexc213
  %i.vv = load i32, ptr %i.ps, align 4, !noalias !55667, !noundef !145 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dp), !noalias !55667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !55667
  invoke void @_ZN16nickel_lang_core5cache8CacheHub12prepare_repl17h00998877f1863cb9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.dn, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.gh, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.sroa.4.0..sroa_idx.i, i32 noundef %i.vv)
          to label %.noexc217 unwind label %.loopexit589

.noexc217:                                        ; preds = %bb.dd
  %i.vw = load i64, ptr %i.dn, align 8, !range !272, !noalias !55667, !noundef !145 ; 2 uses
  %.not.i206 = icmp eq i64 %i.vw, 7
  br i1 %.not.i206, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.noexc217
  %.sroa.615.i.sroa.0.0.copyload = load i64, ptr %.sroa.543.0..sroa_idx.i, align 8, !noalias !55667
  %.sroa.615.i.sroa.5.0.copyload = load i32, ptr %.sroa.615.i.sroa.5.0..sroa.543.0..sroa_idx.i.sroa_idx, align 8, !noalias !55667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.16, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.615.i.sroa.6.0..sroa.543.0..sroa_idx.i.sroa_idx, i64 12, i1 false), !noalias !55670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !55667
  br label %bb.fh

bb.df:                                            ; preds = %.noexc217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn), !noalias !55667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !55667
  %i.vx = invoke noundef ptr @_ZN16nickel_lang_core5cache9TermCache9get_owned17hd68f2d4451c004a9E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.pt, i32 noundef %i.vv)
          to label %.noexc218 unwind label %.loopexit589 ; 5 uses

.noexc218:                                        ; preds = %bb.df
  %.not63.i = icmp eq ptr %i.vx, null
  br i1 %.not63.i, label %bb.dk, label %bb.dg, !prof !147

bb.dg:                                            ; preds = %.noexc218
  store ptr %i.vx, ptr %i.dm, align 8, !noalias !55667
  %i.vy = ptrtoint ptr %i.vx to i64               ; 3 uses
  %i.vz = and i64 %i.vy, 3                        ; 3 uses
  %..i.i207 = call i64 @llvm.umin.i64(i64 %i.vz, i64 2)
  switch i64 %..i.i207, label %bb.dh [
    i64 2, label %.invoke.i
    i64 0, label %bb.di
  ], !prof !150

bb.dh:                                            ; preds = %bb.dg
  %i.wa = icmp samesign ugt i64 %i.vz, 1
  br i1 %i.wa, label %.invoke.i, label %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i, !prof !147

.invoke.i:                                        ; preds = %bb.dh, %bb.dg
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.cont.i unwind label %.loopexit.split-lp595, !noalias !55671

.cont.i:                                          ; preds = %.invoke.i
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i: ; preds = %bb.dh
  %.not.not.i.i.i = icmp eq i64 %i.vz, 0
  %i.wb = lshr i64 %i.vy, 32
  %i.wc = trunc nuw i64 %i.wb to i32
  %.sroa.3.0.i.i.i = select i1 %.not.not.i.i.i, i32 undef, i32 %i.wc
  %i.wd = trunc i64 %i.vy to i1
  br i1 %i.wd, label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i, label %bb.dj, !prof !154

bb.di:                                            ; preds = %bb.dg
  %i.we = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.wf = load i32, ptr %i.we, align 8, !noalias !55672, !noundef !145
  br label %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i

bb.dj:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @740) #82
          to label %.noexc77.i unwind label %.loopexit.split-lp595, !noalias !55671

.noexc77.i:                                       ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %.noexc218
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2956) #82
          to label %.noexc219 unwind label %.loopexit.split-lp590

.noexc219:                                        ; preds = %bb.dk
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i: ; preds = %bb.di, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ %i.wf, %bb.di ], [ %.sroa.3.0.i.i.i, %_ZN16nickel_lang_core4eval5value11NickelValue14inline_pos_idx17h15c7f43697e607a8E.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !55667
  invoke fastcc void @"_ZN16nickel_lang_core4eval59VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$C$GT$3new17h850217f0ef42259bE"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.dj, ptr noalias noundef nonnull align 8 dereferenceable(728) %i.gh)
          to label %bb.dl unwind label %.loopexit594, !noalias !55671

bb.dl:                                            ; preds = %_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !55667
  %.val72.i = load ptr, ptr %i.gu, align 8, !alias.scope !55666, !noalias !55671, !nonnull !145, !noundef !145 ; 3 uses
  %.val73.i = load ptr, ptr %i.gv, align 8, !alias.scope !55666, !noalias !55671 ; 4 uses
  %.val.i.i.i = load i64, ptr %.val72.i, align 8, !noalias !55671, !noundef !145 ; 2 uses
  %i.wg = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.wg)
  %i.wh = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.wh, ptr %.val72.i, align 8, !noalias !55671
  %i.wi = icmp eq i64 %i.wh, 0
  br i1 %i.wi, label %bb.dm, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i, !prof !147

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i: ; preds = %bb.dl
  %.not.i78.i = icmp eq ptr %.val73.i, null
  br i1 %.not.i78.i, label %bb.dp, label %bb.dn

bb.dn:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val73.i, align 8, !noalias !55671, !noundef !145 ; 2 uses
  %i.wj = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.wj)
  %i.wk = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.wk, ptr %.val73.i, align 8, !noalias !55671
  %i.wl = icmp eq i64 %i.wk, 0
  br i1 %i.wl, label %bb.do, label %bb.dp, !prof !147

bb.do:                                            ; preds = %bb.dn
  call void @llvm.trap()
  unreachable

bb.dp:                                            ; preds = %bb.dn, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h41c23a9b09e3f58cE.exit.i.i
  store ptr %i.vx, ptr %i.di, align 8, !noalias !55667
  store ptr %.val72.i, ptr %i.pu, align 8, !noalias !55667
  store ptr %.val73.i, ptr %i.pv, align 8, !noalias !55667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.de), !noalias !55673
  invoke fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17eval_closure_impl17hf7dbabf42d816823E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.de, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.dj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.di)
          to label %.noexc79.i unwind label %bb.ds, !noalias !55671

.noexc79.i:                                       ; preds = %bb.dp
  %i.wm = load ptr, ptr %i.de, align 8, !noalias !55673, !noundef !145 ; 18 uses
  %i.wn = icmp eq ptr %i.wm, null
  %i.wo = load ptr, ptr %i.pw, align 8, !noalias !55674 ; 7 uses
  br i1 %i.wn, label %bb.dq, label %bb.du

bb.dq:                                            ; preds = %.noexc79.i
  %i.wp = invoke fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$13err_with_ctxt17h24b9997c4c44044dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.dj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(392) %i.wo)
          to label %bb.dt unwind label %bb.dr, !noalias !55675

bb.dr:                                            ; preds = %bb.dq
  %i.wq = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.wo, i64 noundef 392, i64 noundef 8) #83, !noalias !55676
  br label %.body80.i

.body80.i:                                        ; preds = %bb.ds, %bb.dr
  %.pn.i = phi { ptr, i32 } [ %i.wq, %bb.dr ], [ %i.wr, %bb.ds ]
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h21b4a65582747d15E"(ptr noalias noundef align 8 dereferenceable(72) %i.dj) #86
          to label %.body214 unwind label %bb.ez, !noalias !55671

bb.ds:                                            ; preds = %bb.dp
  %i.wr = landingpad { ptr, i32 }
          cleanup
  br label %.body80.i

bb.dt:                                            ; preds = %bb.dq
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.wo, i64 noundef 392, i64 noundef 8) #83, !noalias !55676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !55673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !55667
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h21b4a65582747d15E"(ptr noalias noundef align 8 dereferenceable(72) %i.dj)
          to label %.noexc220 unwind label %.loopexit589

.noexc220:                                        ; preds = %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !55667
  br label %bb.ey

bb.du:                                            ; preds = %.noexc79.i
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i208, align 8, !noalias !55674 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de), !noalias !55673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !55667
  invoke fastcc void @"_ZN4core3ptr148drop_in_place$LT$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$17h21b4a65582747d15E"(ptr noalias noundef align 8 dereferenceable(72) %i.dj)
          to label %.noexc221 unwind label %.loopexit589

.noexc221:                                        ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !55667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl), !noalias !55667
  store ptr %i.wm, ptr %i.dl, align 8, !noalias !55667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !55667
  store ptr %i.wo, ptr %i.dk, align 8, !noalias !55667
  store ptr %.sroa.9.0.copyload.i, ptr %i.px, align 8, !noalias !55667
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !55667
  store <2 x ptr> %4, ptr %i.dd, align 16, !noalias !55677
  store <2 x ptr> %i.ro, ptr %i.qa, align 16, !noalias !55677
  %i.ws = invoke noundef zeroext i1 @"_ZN16nickel_lang_core5cache9ast_cache88_$LT$impl$u20$nickel_lang_core..cache..ast_cache..ouroboros_impl_ast_cache..AstCache$GT$17add_type_bindings17h3a34935025772d36E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.qb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.dd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.dl)
          to label %bb.dv unwind label %.body.thread126.i.loopexit, !noalias !55671

.body.thread126.i.loopexit:                       ; preds = %.noexc221
  %lpad.loopexit599 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.thread126.i.loopexit.split-lp:              ; preds = %bb.em, %bb.eo
  %lpad.loopexit.split-lp600 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

.body.i209:                                       ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  %lpad.thr_comm.split-lp125.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread121.i

bb.dv:                                            ; preds = %.noexc221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd), !noalias !55667
  br i1 %i.ws, label %bb.dw, label %bb.el

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc), !noalias !55678
  store i64 0, ptr %i.dc, align 8, !noalias !55678
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !55678
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.54.0..sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !55678
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !55678
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !55678
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !55679
  %i.wt = call noundef dereferenceable_or_null(23) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 23, i64 noundef range(i64 1, 9) 1) #83, !noalias !55679 ; 3 uses
  %i.wu = icmp eq ptr %i.wt, null
  br i1 %i.wu, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82
          to label %.noexc.i.i211 unwind label %bb.ec, !noalias !55680

.noexc.i.i211:                                    ; preds = %bb.dx
  unreachable

bb.dy:                                            ; preds = %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.wt, ptr noundef nonnull align 1 dereferenceable(23) @2958, i64 23, i1 false), !noalias !55681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.db), !noalias !55682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.qu, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.dc, i64 48, i1 false), !noalias !55683
  store i64 41, ptr %i.db, align 8, !noalias !55684
  store i64 23, ptr %.sroa.4.0..sroa_idx.i83.i, align 8, !noalias !55684
  store ptr %i.wt, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !55684
  store i64 23, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !55684
  store i32 %.sroa.0.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i210, align 8, !noalias !55684
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !55685
  %i.wv = call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !55685 ; 3 uses
  %i.ww = icmp eq ptr %i.wv, null
  br i1 %i.ww, label %bb.dz, label %bb.ed, !prof !155

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 440) #82
          to label %.noexc.i.i.i unwind label %bb.ea, !noalias !55686

.noexc.i.i.i:                                     ; preds = %bb.dz
  unreachable

bb.ea:                                            ; preds = %bb.dz
  %i.wx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorData$GT$17h8376bc18ff2ef6edE"(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.db) #86
          to label %.body.thread.i unwind label %bb.eb, !noalias !55686

bb.eb:                                            ; preds = %bb.ea
  %i.wy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !55686
  unreachable

bb.ec:                                            ; preds = %bb.dx
  %i.wz = landingpad { ptr, i32 }
          cleanup
  call void @"_ZN4core3ptr54drop_in_place$LT$nickel_lang_core..error..EvalCtxt$GT$17hc26e92488d36c9dcE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.dc) #86, !noalias !55680
  br label %.body.thread.i

bb.ed:                                            ; preds = %bb.dy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.wv, ptr noundef nonnull align 8 dereferenceable(440) %i.db, i64 440, i1 false), !noalias !55686
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db), !noalias !55682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc), !noalias !55678
  %i.xa = load i64, ptr %i.wo, align 8, !noalias !55687, !noundef !145
  %i.xb = add i64 %i.xa, -1                       ; 2 uses
  store i64 %i.xb, ptr %i.wo, align 8, !noalias !55687
  %i.xc = icmp eq i64 %i.xb, 0
  br i1 %i.xc, label %bb.ee, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h67e578ae5e3c8fdfE.exit.i.i"

bb.ee:                                            ; preds = %bb.ed
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.dk) #84
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h67e578ae5e3c8fdfE.exit.i.i" unwind label %bb.ef, !noalias !55671, !inline_history !3

bb.ef:                                            ; preds = %bb.ee
  %i.xd = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.xe = icmp eq ptr %.sroa.9.0.copyload.i, null
  br i1 %i.xe, label %.body.thread121.i, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.xf = load i64, ptr %.sroa.9.0.copyload.i, align 8, !noalias !55688, !noundef !145
  %i.xg = add i64 %i.xf, -1                       ; 2 uses
  store i64 %i.xg, ptr %.sroa.9.0.copyload.i, align 8, !noalias !55688
  %i.xh = icmp eq i64 %i.xg, 0
  br i1 %i.xh, label %bb.eh, label %.body.thread121.i

bb.eh:                                            ; preds = %bb.eg
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.px) #84
          to label %.body.thread121.i unwind label %bb.ek, !noalias !55671, !inline_history !4

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h67e578ae5e3c8fdfE.exit.i.i": ; preds = %bb.ee, %bb.ed
  %i.xi = icmp eq ptr %.sroa.9.0.copyload.i, null
  br i1 %i.xi, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hdcdd944deda88889E.exit.i", label %bb.ei

bb.ei:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h67e578ae5e3c8fdfE.exit.i.i"
  %i.xj = load i64, ptr %.sroa.9.0.copyload.i, align 8, !noalias !55689, !noundef !145
  %i.xk = add i64 %i.xj, -1                       ; 2 uses
  store i64 %i.xk, ptr %.sroa.9.0.copyload.i, align 8, !noalias !55689
  %i.xl = icmp eq i64 %i.xk, 0
  br i1 %i.xl, label %bb.ej, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hdcdd944deda88889E.exit.i"

bb.ej:                                            ; preds = %bb.ei
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.px) #84
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hdcdd944deda88889E.exit.i" unwind label %bb.eu, !noalias !55671, !inline_history !171

bb.ek:                                            ; preds = %bb.eh
  %i.xm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !55690, !inline_history !171
  unreachable

bb.el:                                            ; preds = %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh), !noalias !55667
  %i.xn = ptrtoint ptr %i.wm to i64               ; 2 uses
  %i.xo = and i64 %i.xn, 3
  %..i90.i = call i64 @llvm.umin.i64(i64 %i.xo, i64 2) ; 3 uses
  switch i64 %..i90.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.em
    i64 0, label %bb.en
  ], !prof !150

bb.em:                                            ; preds = %bb.el
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1715, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #82
          to label %.noexc91.i unwind label %.body.thread126.i.loopexit.split-lp, !noalias !55671

.noexc91.i:                                       ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.xp = load i64, ptr %i.wm, align 8, !noalias !55671, !noundef !145 ; 3 uses
  %i.xq = and i64 %i.xp, 72057594037927935        ; 3 uses
  %i.xr = icmp ne i64 %i.xq, 0
  call void @llvm.assume(i1 %i.xr)
  %i.xs = add nuw nsw i64 %i.xq, 1
  %i.xt = and i64 %i.xp, 1080863910568919040
  %i.xu = icmp ult i64 %i.xp, 864691128455135232
  call void @llvm.assume(i1 %i.xu)
  %i.xv = or i64 %i.xs, %i.xt
  store i64 %i.xv, ptr %i.wm, align 8, !noalias !55671
  %i.xw = icmp eq i64 %i.xq, 72057594037927935
  br i1 %i.xw, label %bb.eo, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !147

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !55667
  store ptr @2796, ptr %i.da, align 8, !noalias !55667
  %i.xx = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 1, ptr %i.xx, align 8, !noalias !55667
  %i.xy = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store ptr null, ptr %i.xy, align 8, !noalias !55667
  %i.xz = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.xz, align 8, !noalias !55667
  %i.ya = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  store i64 0, ptr %i.ya, align 8, !noalias !55667
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.da, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2797) #82
          to label %.noexc92.i unwind label %.body.thread126.i.loopexit.split-lp, !noalias !55671

.noexc92.i:                                       ; preds = %bb.eo
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.en, %bb.el
  store ptr %i.wm, ptr %i.dh, align 8, !noalias !55667
  store ptr %i.wo, ptr %i.qc, align 8, !noalias !55667
  store ptr %.sroa.9.0.copyload.i, ptr %i.qd, align 8, !noalias !55667
  %i.yb = invoke fastcc noundef ptr @_ZN16nickel_lang_core4eval14env_add_record17h3578f973d470829aE(ptr noalias noundef nonnull align 1 %i.gu, ptr noalias noundef align 8 dereferenceable(16) %i.gu, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.dh)
          to label %bb.ep unwind label %.body.i209, !noalias !55671 ; 2 uses

bb.ep:                                            ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dh), !noalias !55667
  %.not.i.i = icmp eq ptr %i.yb, null
  br i1 %.not.i.i, label %bb.fi, label %bb.eq, !prof !154

bb.eq:                                            ; preds = %bb.ep
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !55667
  store ptr %i.yb, ptr %i.df, align 8, !noalias !55667
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1704, i64 noundef 43, ptr noundef nonnull align 1 %i.df, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2957) #82
          to label %bb.es unwind label %bb.er, !noalias !55671

bb.er:                                            ; preds = %bb.eq
  %i.yc = landingpad { ptr, i32 }
end_hunk_2
begin_hunk_3_@_ZN16nickel_lang_core7program3doc22ExtractedDocumentation14write_markdown17h8748244dcd0249c4E:bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !69727)
  call void @llvm.experimental.noalias.scope.decl(metadata !69728)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !146, !alias.scope !69729, !noalias !69725, !noundef !145 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.t, label %.body, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !69729, !noalias !69725, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !69730
  br label %.body

bb.l:                                             ; preds = %bb.i
  br i1 %i.r, label %bb.m, label %bb.s, !prof !147

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1645, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1696, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1646) #82
          to label %.noexc.i unwind label %bb.j, !noalias !69726

.noexc.i:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 7, ptr %0, align 8
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$comrak..parser..options..Options$GT$17hc06ee886ec2b47c1E"(ptr noalias noundef align 8 dereferenceable(184) %i.e)
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %bb.p, %.body
  %.pn = phi { ptr, i32 } [ %i.u, %bb.p ], [ %eh.lpad-body, %.body ]
  call fastcc void @"_ZN4core3ptr124drop_in_place$LT$typed_arena..Arena$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h3409e763eb354474E"(ptr noalias noundef align 8 dereferenceable(56) %i.f) #86
  br label %bb.c

bb.p:                                             ; preds = %bb.s, %bb.n
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @"_ZN4core3ptr124drop_in_place$LT$typed_arena..Arena$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h3409e763eb354474E"(ptr noalias noundef align 8 dereferenceable(56) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !69731)
  call void @llvm.experimental.noalias.scope.decl(metadata !69732)
  call void @llvm.experimental.noalias.scope.decl(metadata !69733)
  call void @llvm.experimental.noalias.scope.decl(metadata !69734)
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$comrak..nodes..NodeValue$GT$17hbeb417c4bb3cc962E"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !69735)
  call void @llvm.experimental.noalias.scope.decl(metadata !69736)
  %.val.i.i5.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !range !146, !alias.scope !69737, !noundef !145 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i5.i.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  %.val1.i.i6.i.i.i.i = load ptr, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8, !alias.scope !69737, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i6.i.i.i.i, i64 noundef %.val.i.i5.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !69737
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i": ; preds = %bb.r, %bb.q
  %.val.i.i.i.i = load i64, ptr %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx, align 8, !alias.scope !69738 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97", label %"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97.sink.split"

"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97.sink.split": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i94"
  %.val.i.i.i.i.sink = phi i64 [ %.val.i.i.i.i95, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i94" ], [ %.val.i.i.i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i" ]
  %.val2.i.i.i.i = load ptr, ptr %.sroa.42.sroa.7.0..sroa.42.0..sroa_idx.sroa_idx, align 8, !nonnull !145, !noundef !145
  %i.y = shl nuw i64 %.val.i.i.i.i.sink, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !145
  br label %"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97"

"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97": ; preds = %"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97.sink.split", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i94"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.s:                                             ; preds = %bb.l
  %.sroa.285.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.285.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !69725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !69725
  store i64 5, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$comrak..parser..options..Options$GT$17hc06ee886ec2b47c1E"(ptr noalias noundef align 8 dereferenceable(184) %i.e)
          to label %bb.t unwind label %bb.p

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call fastcc void @"_ZN4core3ptr124drop_in_place$LT$typed_arena..Arena$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$$GT$17h3409e763eb354474E"(ptr noalias noundef align 8 dereferenceable(56) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !69739)
  call void @llvm.experimental.noalias.scope.decl(metadata !69740)
  call void @llvm.experimental.noalias.scope.decl(metadata !69741)
  call void @llvm.experimental.noalias.scope.decl(metadata !69742)
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$comrak..nodes..NodeValue$GT$17hbeb417c4bb3cc962E"(ptr noalias noundef readonly align 8 dereferenceable(40) %i.z)
  call void @llvm.experimental.noalias.scope.decl(metadata !69743)
  call void @llvm.experimental.noalias.scope.decl(metadata !69744)
  %.val.i.i5.i.i.i.i92 = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !range !146, !alias.scope !69745, !noundef !145 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i5.i.i.i.i92, 0
  br i1 %i.aa, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i94", label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i6.i.i.i.i93 = load ptr, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 8, !alias.scope !69745, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i6.i.i.i.i93, i64 noundef %.val.i.i5.i.i.i.i92, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !69745
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i94"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit7.i.i.i.i94": ; preds = %bb.u, %bb.t
  %.val.i.i.i.i95 = load i64, ptr %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx, align 8, !alias.scope !69746 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i.i.i95, 0
  br i1 %i.ab, label %"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97", label %"_ZN4core3ptr98drop_in_place$LT$comrak..arena_tree..Node$LT$core..cell..RefCell$LT$comrak..nodes..Ast$GT$$GT$$GT$17hdc593d34f8eea1ecE.exit97.sink.split"

bb.v:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core7program3doc22ExtractedDocumentation15markdown_append17h8faedd026ac052edE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, i8 noundef %1, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i27.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.8.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [40 x i8], align 8                ; 35 uses
  %.sroa.01.i.i = alloca [24 x i8], align 8       ; 4 uses
  %.sroa.5.i.i = alloca [40 x i8], align 8        ; 4 uses
  %i.n = alloca [128 x i8], align 8               ; 8 uses
  %i.o = alloca [176 x i8], align 8               ; 5 uses
  %i.p = alloca [176 x i8], align 8               ; 19 uses
  %i.q = alloca [176 x i8], align 8               ; 5 uses
  %i.r = alloca [176 x i8], align 8               ; 5 uses
  %i.s = alloca [176 x i8], align 8               ; 20 uses
  %i.t = alloca [176 x i8], align 8               ; 19 uses
  %i.u = alloca [8 x i8], align 8                 ; 3 uses
  %i.v = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69959)
  %i.w = load ptr, ptr %0, align 8, !alias.scope !69959, !noalias !69960, !nonnull !145, !noundef !145 ; 4 uses
  %.val3.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !69961
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !69959, !noalias !69960, !noundef !145 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !69962
  %i.z = icmp eq i64 %i.y, 0
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sink.i.sroa.gep101 = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %.sink.i.sroa.gep103 = getelementptr inbounds nuw i8, ptr %i.s, i64 96 ; 2 uses
  %.sink.i.sroa.gep104 = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %.sink.i.sroa.gep106 = getelementptr inbounds nuw i8, ptr %i.s, i64 56 ; 2 uses
  %.sink.i.sroa.gep107 = getelementptr inbounds nuw i8, ptr %i.t, i64 56 ; 2 uses
  %.sink.i.sroa.gep109 = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %.sink.i.sroa.gep110 = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %.sink.i.sroa.gep112 = getelementptr inbounds nuw i8, ptr %i.s, i64 80 ; 2 uses
  %.sink.i.sroa.gep113 = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  br i1 %i.z, label %._crit_edge.thread, label %bb.b

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !69962
  br label %"_ZN4core3ptr150drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$alloc..string..String$C$$RF$nickel_lang_core..program..doc..DocumentationField$RP$$GT$$GT$17h007b9008cb6d407eE.exit31"

bb.b:                                             ; preds = %bb.a
  %i.aa = icmp sgt <16 x i8> %.val3.i.i, splat (i8 -1)
  %i.ab = bitcast <16 x i1> %i.aa to i16          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.ad = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ae = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ], [ %i.w, %bb.b ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ad, align 16, !noalias !69963
  %i.af = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -2304 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.af to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %.sroa.5.0.i.i = phi ptr [ %i.ac, %bb.b ], [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = phi ptr [ %i.w, %bb.b ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ab, %bb.b ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ai = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = and i16 %i.ai, %.lcssa.i.i.i.i.i.i.i
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [144 x i8], ptr %.sroa.01.0.copyload.i.i.i.i, i64 %i.am ; 2 uses
  %i.ao = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -144
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -120
  %.sroa.0.0.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.y, i64 4) ; 3 uses
  %i.ar = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.as = icmp ugt i64 %i.y, 1152921504606846975
  %i.at = icmp ugt i64 %i.ar, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.as, %i.at
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !69964
  %i.au = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ar, i64 noundef range(i64 1, 9) 8) #83, !noalias !69964 ; 7 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82, !noalias !69962
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store ptr %i.ap, ptr %i.au, align 8, !noalias !69962
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.aq, ptr %i.aw, align 8, !noalias !69962
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.v, align 8, !noalias !69962
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 4 uses
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !69962
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !69962
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69966)
  %i.ax = icmp eq i64 %i.ao, 0
  br i1 %i.ax, label %.thread393, label %.lr.ph.i.i.i.i.i.i

.thread393:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !69962
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  br label %.lr.ph253

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.az = phi ptr [ %i.bt, %.noexc.i.i.i.i ], [ %i.au, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ]
  %i.ba = phi i64 [ %i.bw, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 6 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %i.bb = phi i16 [ %i.bk, %.noexc.i.i.i.i ], [ %i.al, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i = phi i64 [ %i.bn, %.noexc.i.i.i.i ], [ %i.ao, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i89.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i7.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.bc = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bd = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bc, align 16, !noalias !69967
  %i.be = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 -2304 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.be to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i7.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.bb, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bh = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.bi = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = and i16 %i.bh, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.bl = sub nsw i64 0, %i.bj
  %i.bm = getelementptr inbounds [144 x i8], ptr %.pre.i.i.i7.i.i.i.i.i.i, i64 %i.bl ; 2 uses
  %i.bn = add i64 %.val510.i.i.i.i.i.i, -1        ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 -144
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 -120
  %i.bq = icmp samesign ult i64 %i.ba, 576460752303423488
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = load i64, ptr %i.v, align 8, !range !146, !alias.scope !69968, !noalias !69969, !noundef !145
  %i.bs = icmp eq i64 %i.ba, %i.br
  br i1 %i.bs, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v, i64 noundef %i.ba, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.d, !noalias !69962

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !69968, !noalias !69969
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i..noexc_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.bt = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.az, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %i.ba ; 2 uses
  store ptr %i.bo, ptr %i.bu, align 8, !noalias !69970
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bp, ptr %i.bv, align 8, !noalias !69970
  %i.bw = add nuw nsw i64 %i.ba, 1                ; 2 uses
  store i64 %i.bw, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !69968, !noalias !69969
  %i.bx = icmp eq i64 %i.bn, 0
  br i1 %i.bx, label %_ZN4core4iter6traits8iterator8Iterator7collect17h0386a40b6cfba69fE.exit, label %.lr.ph.i.i.i.i.i.i

bb.d:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h9da2272f19b8c89eE.exit.i.i.i.i.i.i"
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val9.i.i.i.i = load i64, ptr %i.v, align 8, !noalias !69962 ; 2 uses
  %i.bz = icmp eq i64 %.val9.i.i.i.i, 0
  br i1 %i.bz, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val10.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !69962, !nonnull !145, !noundef !145
  %i.ca = shl nuw i64 %.val9.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i, i64 noundef %i.ca, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !69962
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %.body, %bb.gp, %bb.gq, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.by, %bb.d ], [ %i.by, %bb.e ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.i ], [ %i.pa, %bb.gp ], [ %i.pa, %bb.gq ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h0386a40b6cfba69fE.exit: ; preds = %.noexc.i.i.i.i
  %.sroa.0.0.copyload77 = load i64, ptr %i.v, align 8, !noalias !69971 ; 3 uses
  %.sroa.6.0.copyload79 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !69971 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !69962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !69972
  %i.cb = icmp samesign ult i64 %i.ba, 20
  br i1 %i.cb, label %bb.g, label %bb.f, !prof !154

bb.f:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h0386a40b6cfba69fE.exit
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h3c742029ca75496eE(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload79, i64 noundef %i.y, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %bb.h unwind label %bb.gp

bb.g:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h0386a40b6cfba69fE.exit
  tail call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h1e1ae47a6e4cd747E(ptr noalias noundef nonnull align 8 %.sroa.6.0.copyload79, i64 noundef %i.y)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !69972
  %i.cc = icmp samesign ult i64 %i.y, 576460752303423488
  tail call void @llvm.assume(i1 %i.cc)
  %.idx = shl nuw nsw i64 %i.y, 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload79, i64 %.idx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload79) ]
  br label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.h, %.thread393
  %i.ce = phi ptr [ %i.ay, %.thread393 ], [ %i.cd, %bb.h ]
  %.sroa.6.0118399 = phi ptr [ %i.au, %.thread393 ], [ %.sroa.6.0.copyload79, %bb.h ] ; 3 uses
  %.sroa.0.0129398 = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.thread393 ], [ %.sroa.0.0.copyload77, %bb.h ] ; 4 uses
  %i.cf = add i8 %1, 1                            ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.410.sroa.5.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.sroa.410.sroa.8.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %.sroa.410.sroa.10.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 97
  %.sroa.410.sroa.11.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 98
  %.sroa.410.sroa.13.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %.sroa.410.sroa.15.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %.sroa.410.sroa.19.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 168
  %.sroa.410.sroa.20.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 169
  %.sroa.410.sroa.21.0..sroa.410.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 170
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.448.sroa.5.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %.sroa.448.sroa.8.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %.sroa.448.sroa.9.sroa.4.0..sroa.448.sroa.9.0..sroa.448.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %.sroa.448.sroa.9.sroa.5.0..sroa.448.sroa.9.0..sroa.448.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %.sroa.448.sroa.10.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 120
  %.sroa.448.sroa.11.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %.sroa.448.sroa.13.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %.sroa.448.sroa.17.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 168
  %.sroa.448.sroa.18.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 169
  %.sroa.448.sroa.19.0..sroa.448.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 170
  %.sroa.8104.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.49.sroa.4.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %.sroa.49.sroa.5.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %.sroa.49.sroa.7.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %.sroa.49.sroa.8.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  %.sroa.49.sroa.9.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  %.sroa.49.sroa.10.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %.sroa.49.sroa.12.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 120
  %.sroa.49.sroa.16.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 124
  %.sroa.49.sroa.18.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %.sroa.49.sroa.20.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %.sroa.49.sroa.24.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 168
  %.sroa.49.sroa.25.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 169
  %.sroa.49.sroa.26.0..sroa.49.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 170
  %.sroa.8.8..sroa_idx.i34 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 39 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.47.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  %.sroa.58.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 25
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0.24..sroa_idx.i.i35.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i27.i.i.i.i.i, i64 24
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.8.0..sroa_idx2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
end_hunk_3
begin_hunk_4_@_ZN4core4iter6traits8iterator8Iterator7collect17hffd5dfefd0eff357E:bb.a
  %i.bq = icmp eq ptr %i.ar, %2
  br i1 %i.bq, label %.thread43.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.noexc12.i.i.i.i.i.i.i:                           ; preds = %bb.q, %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.bt = load i32, ptr %i.bs, align 4, !alias.scope !101760, !noalias !101766, !noundef !145
  br label %bb.g

.loopexit.i.i.i.i.i.i.i:                          ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h00770b92b3d38b00E.exit.i.i.i.i.i.i.i.i.i"
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i.i.i:        ; preds = %.lr.ph.i.i.i.i17.i.i.i.i.i.i.i
  %lpad.loopexit32.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i: ; preds = %bb.k
  %lpad.loopexit.split-lp33.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %bb.n
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit32.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp33.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i ], [ %i.bi, %bb.n ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ]
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !noalias !101745 ; 2 uses
  %i.bu = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.bu, label %.thread.i.i, label %bb.s

bb.s:                                             ; preds = %.body.i.i.i.i.i.i.i
  %.val10.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !101745, !nonnull !145, !noundef !145
  %i.bv = shl nuw i64 %.val.i.i.i.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.i.i.i.i.i.i.i, i64 noundef %i.bv, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !101745
  br label %.thread.i.i

.thread43.i.i:                                    ; preds = %bb.f, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb59728ef3bc246deE.exit.i.i.i.i.i.i.i.i.i", %bb.r, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i.i"
  %.sroa.10.0.copyload1647.i.i = phi i64 [ %i.ao, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hb59728ef3bc246deE.exit.i.i.i.i.i.i.i.i.i" ], [ %i.ao, %bb.r ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i.i.i.i" ], [ 1, %bb.f ]
  %.sroa.0.0.copyload1245.i.i = load i64, ptr %i.e, align 8, !noalias !101768
  %.sroa.7.0.copyload1446.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !101768
  br label %.thread24.i.i

.thread24.i.i:                                    ; preds = %bb.c, %.thread43.i.i, %bb.a
  %.sroa.0.032.i.i = phi i64 [ %.sroa.0.0.copyload1245.i.i, %.thread43.i.i ], [ 0, %bb.a ], [ 0, %bb.c ]
  %.sroa.7.031.i.i = phi ptr [ %.sroa.7.0.copyload1446.i.i, %.thread43.i.i ], [ inttoptr (i64 8 to ptr), %bb.a ], [ inttoptr (i64 8 to ptr), %bb.c ]
  %.sroa.10.030.i.i = phi i64 [ %.sroa.10.0.copyload1647.i.i, %.thread43.i.i ], [ 0, %bb.a ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101745
  store i64 %.sroa.0.032.i.i, ptr %0, align 8, !alias.scope !101769
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.031.i.i, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !101769
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.10.030.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !101769
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h36e8c819891f0170E.exit"

bb.t:                                             ; preds = %_ZN16nickel_lang_core4term6record14SharedMetadata11clone_inner17hdad829067215fecbE.exit.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.bg, ptr noundef nonnull align 8 dereferenceable(384) %i.c, i64 384, i1 false), !noalias !101763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !101763
  %.sroa.0.0.copyload12.pre.i.i = load i64, ptr %i.e, align 8, !noalias !101768 ; 2 uses
  %.sroa.7.0.copyload14.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !101768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !101745
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bw, align 8, !alias.scope !101755, !noalias !101756
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !101755, !noalias !101756
  %i.bx = icmp eq i64 %.sroa.0.0.copyload12.pre.i.i, 0
  br i1 %i.bx, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h36e8c819891f0170E.exit", label %bb.u

bb.u:                                             ; preds = %bb.t, %.thread103.i.i
  %.sroa.0.0.copyload12108.i.i = phi i64 [ 4, %.thread103.i.i ], [ %.sroa.0.0.copyload12.pre.i.i, %bb.t ]
  %.sroa.7.0.copyload14107.i.i = phi ptr [ %i.p, %.thread103.i.i ], [ %.sroa.7.0.copyload14.pre.i.i, %bb.t ] ; 2 uses
  %i.by = shl nuw i64 %.sroa.0.0.copyload12108.i.i, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload14107.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload14107.i.i, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !101747
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h36e8c819891f0170E.exit"

.thread.i.i:                                      ; preds = %bb.s, %.body.i.i.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i.i.i

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h36e8c819891f0170E.exit": ; preds = %.thread49.i.i, %.thread24.i.i, %bb.t, %bb.u
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4core4iter6traits8iterator8Iterator8try_fold17h040c84151fae1ef3E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !145, !align !149 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !145, !align !163
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !145, !align !149
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !145, !align !163
  br label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hec6fe6d756705e8cE.exit"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hec6fe6d756705e8cE.exit": ; preds = %bb.b, %bb.a
  %i.h = tail call fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha56621c27cd2fb5bE"(ptr noalias noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hec6fe6d756705e8cE.exit"
  %i.i = load i64, ptr %i.a, align 8, !noalias !101778, !noundef !145
  %i.j = add i64 %i.i, -1
  store i64 %i.j, ptr %i.a, align 8, !noalias !101778
  %i.k = tail call fastcc noundef ptr @"_ZN151_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_parser..traverse..Traverse$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$12traverse_ref17h57be2f1b9c9ad8ffE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noundef nonnull align 1 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g), !noalias !101779, !inline_history !101777 ; 2 uses
  %i.l = load i64, ptr %i.a, align 8, !noundef !145
  %i.m = icmp ne i64 %i.l, 0
  %.not.i = icmp eq ptr %i.k, null
  %or.cond = and i1 %.not.i, %i.m
  br i1 %or.cond, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hec6fe6d756705e8cE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hec6fe6d756705e8cE.exit"
  %.sroa.3.0 = phi ptr [ undef, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hec6fe6d756705e8cE.exit" ], [ %i.k, %bb.b ]
  %.sroa.0.0 = phi i64 [ 0, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold5check28_$u7b$$u7b$closure$u7d$$u7d$17hec6fe6d756705e8cE.exit" ], [ 1, %bb.b ]
  %i.n = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.o = insertvalue { i64, ptr } %i.n, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.o
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4core4iter6traits8iterator8Iterator8try_fold17h0a63180e1627063cE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) unnamed_addr #42 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !101793, !noundef !145 ; 3 uses
  %.promoted = load i64, ptr %i.a, align 8, !alias.scope !101793 ; 3 uses
  %.val2.i.i = load ptr, ptr %0, align 8, !nonnull !145
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.d, align 8, !nonnull !145
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.c)
  %exitcond.not18.not = icmp ult i64 %.promoted, %i.c
  br i1 %exitcond.not18.not, label %.lr.ph, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread"

bb.b:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit"
  %exitcond.not = icmp eq i64 %i.f, %umax
  br i1 %exitcond.not, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread.loopexit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.f, %bb.b ], [ %.promoted, %bb.a ] ; 6 uses
  %i.f = add i64 %i.e, 1                          ; 4 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i, i64 %i.e ; 3 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i, i64 %i.e ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101794)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101795)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101796)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101797)
  %i.i = load i64, ptr %i.g, align 8, !range !168, !alias.scope !101798, !noalias !101799, !noundef !145
  %i.j = icmp eq i64 %i.i, -9223372036854775808
  %i.k = load i64, ptr %i.h, align 8, !range !168, !alias.scope !101799, !noalias !101798
  %i.l = icmp eq i64 %i.k, -9223372036854775808
  %or.cond.i.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread.loopexit", label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val2.i.i7 = load i64, ptr %i.m, align 8, !alias.scope !101798, !noalias !101799, !noundef !145 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val4.i.i = load i64, ptr %i.n, align 8, !alias.scope !101799, !noalias !101798, !noundef !145
  %.not.i.i.i.i = icmp eq i64 %.val2.i.i7, %.val4.i.i
  br i1 %.not.i.i.i.i, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit", label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread.loopexit"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit": ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val3.i.i = load ptr, ptr %i.o, align 8, !alias.scope !101799, !noalias !101798, !nonnull !145, !noundef !145
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i9 = load ptr, ptr %i.p, align 8, !alias.scope !101798, !noalias !101799, !nonnull !145, !noundef !145
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i9, ptr nonnull readonly align 1 %.val3.i.i, i64 %.val2.i.i7), !alias.scope !101800, !noalias !101801
  %.not = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %.not, label %bb.b, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread.loopexit"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread.loopexit": ; preds = %bb.b, %bb.c, %.lr.ph, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit"
  %.lcssa.ph = phi i64 [ %i.e, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit" ], [ %i.e, %.lr.ph ], [ %i.e, %bb.c ], [ %i.f, %bb.b ]
  store i64 %i.f, ptr %i.a, align 8, !alias.scope !101793
  %i.q = icmp ult i64 %.lcssa.ph, %i.c
  br label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread"

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread.loopexit", %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ %i.q, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h4bbb3e86873f26beE.exit.thread.loopexit" ]
  ret i1 %.lcssa
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator8try_fold17h746a6fb209e398acE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(160) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [88 x i8], align 8                ; 16 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [48 x i8], align 8                ; 7 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [72 x i8], align 8                ; 15 uses
  %.sroa.620 = alloca [64 x i8], align 8          ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.654.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.8.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.657.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %.sroa.812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 3 uses
  %.sroa.913.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %.sroa.1014.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 78 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 79
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %3 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %4 = insertelement <2 x ptr> %3, ptr %i.v, i64 1
  %.sink154.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink154.sroa.gep219 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val.i.i3 = load ptr, ptr %2, align 8          ; 3 uses
  %.val1.i.i = load i64, ptr %i.am, align 8       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.am, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !101867)
  %i.ba = load ptr, ptr %i.u, align 8, !alias.scope !101867, !noalias !101868, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !noalias !101869, !nonnull !145, !noundef !145
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !101869, !nonnull !145, !noundef !145
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 168
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !101869, !nonnull !145, !noundef !145 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i64, ptr %i.bg, align 8, !range !164, !noalias !101869, !noundef !145
  %i.bi = trunc nuw i64 %i.bh to i1
  br i1 %i.bi, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !noalias !101869
  %i.bl = call i64 @llvm.uadd.sat.i64(i64 %i.bk, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.5.0.i = phi i64 [ %i.bl, %bb.c ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !101869
  store ptr %i.ba, ptr %i.s, align 8, !noalias !101869
  store <2 x ptr> %4, ptr %i.x, align 8, !noalias !101869
  call void @llvm.experimental.noalias.scope.decl(metadata !101870)
  call void @llvm.experimental.noalias.scope.decl(metadata !101871)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !101872
  call fastcc void @"_ZN103_$LT$regex_automata..meta..regex..CapturesMatches$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hd0efe2458385515cE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y), !noalias !101873
  %i.bm = load i64, ptr %i.o, align 8, !range !175, !noalias !101872, !noundef !145 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 2
  %i.bo = load ptr, ptr %i.z, align 8, !noalias !101872 ; 2 uses
  br i1 %i.bn, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !101872
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.bp = load <2 x i64>, ptr %.sroa.654.0..sroa_idx.i.i.i, align 8, !noalias !101872
  %.sroa.654.0.copyload.i.i.i = load i64, ptr %.sroa.654.0..sroa_idx.i.i.i, align 8, !noalias !101872 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !101872
  %i.bq = trunc nuw i64 %i.bm to i1
  br i1 %i.bq, label %bb.g, label %_ZN14regex_automata4util4iter8Searcher7advance17h8836c35d1f10ddd6E.exit.i

bb.g:                                             ; preds = %bb.f
  %i.br = ptrtoint ptr %i.bo to i64               ; 2 uses
  %.not.i.i.i = icmp ule i64 %.sroa.654.0.copyload.i.i.i, %i.br
  %i.bs = load i64, ptr %i.w, align 8, !range !164, !alias.scope !101874, !noalias !101875
  %i.bt = trunc nuw i64 %i.bs to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.bt, i1 false
  %i.bu = load i64, ptr %i.aa, align 8, !alias.scope !101874, !noalias !101875
  %i.bv = icmp eq i64 %.sroa.654.0.copyload.i.i.i, %i.bu
  %or.cond66.i.i.i = select i1 %or.cond.i.i.i, i1 %i.bv, i1 false, !prof !180
  br i1 %or.cond66.i.i.i, label %bb.j, label %bb.h, !prof !180

bb.h:                                             ; preds = %bb.l, %bb.g
  %.sroa.8.0.i.i.i = phi i64 [ %.sroa.654.0.copyload.i.i.i, %bb.g ], [ %.sroa.657.0.copyload.i.i.i, %bb.l ] ; 4 uses
  %i.bw = load i64, ptr %i.ab, align 8, !alias.scope !101874, !noalias !101875, !noundef !145 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101876)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !101872
  store i64 %.sroa.8.0.i.i.i, ptr %i.l, align 8, !noalias !101877
  store i64 %i.bw, ptr %i.ac, align 8, !noalias !101877
  %i.bx = load i64, ptr %i.ad, align 8, !alias.scope !101878, !noalias !101875, !noundef !145 ; 2 uses
  %.not.i.i.i.i = icmp ugt i64 %i.bw, %i.bx
  %i.by = add i64 %i.bw, 1
  %.not8.i.i.i.i = icmp ugt i64 %.sroa.8.0.i.i.i, %i.by
  %or.cond.i.i.i.i = or i1 %.not8.i.i.i.i, %.not.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %bb.i, label %_ZN14regex_automata4util6search5Input8set_span17hd1a044d80b96194aE.exit.i.i.i, !prof !212

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !101877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !101877
  store i64 %i.bx, ptr %i.j, align 8, !noalias !101877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !101877
  store ptr %i.l, ptr %i.i, align 8, !noalias !101877
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN71_$LT$regex_automata..util..search..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17hccb532d965a06914E", ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !101877
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.bz, align 8, !noalias !101877
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !101877
  store ptr @655, ptr %i.k, align 8, !noalias !101877
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 2, ptr %i.ca, align 8, !noalias !101877
  %i.cb = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.cb, align 8, !noalias !101877
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.i, ptr %i.cc, align 8, !noalias !101877
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 2, ptr %i.cd, align 8, !noalias !101877
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @656) #82, !noalias !101879
  unreachable

_ZN14regex_automata4util6search5Input8set_span17hd1a044d80b96194aE.exit.i.i.i: ; preds = %bb.h
  store i64 %.sroa.8.0.i.i.i, ptr %i.ae, align 8, !alias.scope !101878, !noalias !101875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !101872
  store i64 1, ptr %i.w, align 8, !alias.scope !101874, !noalias !101875
  store i64 %.sroa.8.0.i.i.i, ptr %i.aa, align 8, !alias.scope !101874, !noalias !101875
  br label %_ZN14regex_automata4util4iter8Searcher7advance17h8836c35d1f10ddd6E.exit.i

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !101872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !101872
  store i64 %i.br, ptr %i.m, align 8, !noalias !101872
  store <2 x i64> %i.bp, ptr %.sroa.8.0..sroa_idx4.i.i.i, align 8, !noalias !101872
  call void @_ZN14regex_automata4util4iter8Searcher30handle_overlapping_empty_match17h512c8de02bfb79e5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s), !noalias !101873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !101872
  %i.ce = load i64, ptr %i.n, align 8, !range !175, !noalias !101872, !noundef !145 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 2
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cg = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !noalias !101872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !101872
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %.sroa.657.0.copyload.i.i.i = load i64, ptr %.sroa.657.0..sroa_idx.i.i.i, align 8, !noalias !101872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !101872
  %i.ci = trunc nuw i64 %i.ce to i1
  br i1 %i.ci, label %bb.h, label %_ZN14regex_automata4util4iter8Searcher7advance17h8836c35d1f10ddd6E.exit.i

bb.m:                                             ; preds = %bb.k, %bb.e
  %.sink.i.i.i = phi ptr [ %i.ch, %bb.k ], [ %i.bo, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !101880
  store ptr %.sink.i.i.i, ptr %i.r, align 8, !noalias !101880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !101880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !101880
  store ptr %i.r, ptr %i.p, align 8, !noalias !101880
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN79_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h39de6e426c58f75eE", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !101880
  store ptr @641, ptr %i.q, align 8, !noalias !101880
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 2, ptr %i.cj, align 8, !noalias !101880
  %i.ck = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store ptr null, ptr %i.ck, align 8, !noalias !101880
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.p, ptr %i.cl, align 8, !noalias !101880
  %i.cm = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 1, ptr %i.cm, align 8, !noalias !101880
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @642) #82
          to label %bb.n unwind label %bb.o, !noalias !101881

bb.n:                                             ; preds = %bb.m
  unreachable

common.resume:                                    ; preds = %.loopexit.i, %bb.ah, %bb.ai, %bb.o, %bb.u, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.da, %bb.u ], [ %i.cn, %bb.o ], [ %i.da, %bb.v ], [ %i.ea, %bb.ah ], [ %i.ea, %bb.ai ], [ %lpad.phi.i, %.loopexit.i ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %.val.i.i = load ptr, ptr %i.r, align 8, !noalias !101880, !nonnull !145, !noundef !145
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 16, i64 noundef 8) #83, !noalias !101881
  br label %common.resume

_ZN14regex_automata4util4iter8Searcher7advance17h8836c35d1f10ddd6E.exit.i: ; preds = %bb.l, %_ZN14regex_automata4util6search5Input8set_span17hd1a044d80b96194aE.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !101869
  %i.co = load i32, ptr %i.af, align 8, !range !197, !alias.scope !101867, !noalias !101868, !noundef !145
  %i.cp = trunc nuw i32 %i.co to i1
  br i1 %i.cp, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZN14regex_automata4util4iter8Searcher7advance17h8836c35d1f10ddd6E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !101882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !101883
  %i.cq = load ptr, ptr %i.ag, align 8, !alias.scope !101884, !noalias !101885, !nonnull !145, !noundef !145 ; 4 uses
  %i.cr = atomicrmw add ptr %i.cq, i64 1 monotonic, align 8, !noalias !101886
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cq, ptr %i.h, align 8, !noalias !101883
  %i.ct = load i32, ptr %i.ah, align 4, !alias.scope !101884, !noalias !101885
  %.val.i7.i = load ptr, ptr %i.ai, align 8, !alias.scope !101884, !noalias !101885, !nonnull !145, !noundef !145
  %.val3.i.i = load i64, ptr %i.aj, align 8, !alias.scope !101884, !noalias !101885, !noundef !145 ; 5 uses
  %i.cu = shl i64 %.val3.i.i, 3                   ; 5 uses
  %i.cv = icmp ugt i64 %.val3.i.i, 2305843009213693951
  %i.cw = icmp ugt i64 %i.cu, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.cv, %i.cw
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.s, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.cx = icmp eq i64 %i.cu, 0
  br i1 %i.cx, label %bb.x, label %bb.r

bb.r:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !101887
  %i.cy = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.cu, i64 noundef range(i64 1, 9) 8) #83, !noalias !101887 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.r ], [ 0, %bb.q ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.cu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82
          to label %.noexc.i.i unwind label %bb.u, !noalias !101886

.noexc.i.i:                                       ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.da = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.db = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !101888
  %i.dc = icmp eq i64 %i.db, 1
  br i1 %i.dc, label %bb.v, label %common.resume

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %common.resume unwind label %bb.w, !noalias !101886

bb.w:                                             ; preds = %bb.v
  %i.dd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #85, !noalias !101886
  unreachable

bb.x:                                             ; preds = %bb.r, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
end_hunk_4
begin_hunk_5_@"_ZN76_$LT$nickel_lang_core..package..PackageMap$u20$as$u20$core..fmt..Display$GT$3fmt17h3344f7e786294277E":bb.a
  %i.aq = phi ptr [ %i.as, %.lr.ph.i.i ], [ %.sroa.0.0556, %bb.c ]
  %.val11.i.i = load <16 x i8>, ptr %i.ap, align 16, !noalias !114542
  %i.ar = icmp sgt <16 x i8> %.val11.i.i, splat (i8 -1)
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -896 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.ar to i16     ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.loopexit501

.loopexit501:                                     ; preds = %.lr.ph.i.i, %bb.c
  %.sroa.6.1 = phi ptr [ %.sroa.6.0555, %bb.c ], [ %i.at, %.lr.ph.i.i ]
  %.sroa.0.1397 = phi ptr [ %.sroa.0.0556, %bb.c ], [ %i.as, %.lr.ph.i.i ] ; 2 uses
  %.lcssa.i.i = phi i16 [ %.sroa.8242.0554, %bb.c ], [ %.cast.i.i, %.lr.ph.i.i ] ; 3 uses
  %i.au = add i16 %.lcssa.i.i, -1
  %i.av = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = and i16 %i.au, %.lcssa.i.i
  %i.ay = sub nsw i64 0, %i.aw
  %i.az = getelementptr inbounds [56 x i8], ptr %.sroa.0.1397, i64 %i.ay ; 5 uses
  %i.ba = add i64 %.sroa.10243.0553, -1           ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -48
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !145, !noundef !145 ; 3 uses
  %i.bd = getelementptr inbounds i8, ptr %i.az, i64 -40
  %i.be = load i64, ptr %i.bd, align 8, !noundef !145 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114543)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.bc, ptr %i.j, align 8, !noalias !114544
  store i64 %i.be, ptr %i.am, align 8, !noalias !114544
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !114543, !noalias !114545, !noundef !145
  %.val6.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !114543, !noalias !114545, !noundef !145
  %i.bf = call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h7f617eca1b66291cE(i64 %.val.i, i64 %.val6.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.j), !noalias !114546 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !114547)
  call void @llvm.experimental.noalias.scope.decl(metadata !114548)
  %i.bg = lshr i64 %i.bf, 57
  %i.bh = trunc nuw nsw i64 %i.bg to i8           ; 3 uses
  %i.bi = load i64, ptr %i.an, align 8, !alias.scope !114549, !noalias !114550, !noundef !145 ; 2 uses
  %i.bj = load ptr, ptr %i.u, align 8, !alias.scope !114549, !noalias !114550, !nonnull !145, !noundef !145 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.bh, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.loopexit501
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.loopexit501 ], [ %i.cb, %bb.f ]
  %.pn.i.i = phi i64 [ %i.bf, %.loopexit501 ], [ %i.cc, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.bi     ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.bk, align 1, !noalias !114551 ; 2 uses
  %i.bl = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.bm = bitcast <16 x i1> %i.bl to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.bm, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i92, label %.lr.ph.i.i91

.lr.ph.i.i91:                                     ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.ca, %bb.e ], [ %i.bm, %bb.d ] ; 3 uses
  %i.bn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.bo = zext nneg i16 %i.bn to i64
  %i.bp = add i64 %.sroa.01.0.i.i.i, %i.bo
  %i.bq = and i64 %i.bp, %i.bi
  %i.br = sub nsw i64 0, %i.bq
  %i.bs = getelementptr inbounds [40 x i8], ptr %i.bj, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -40
  %.val3.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !114552, !nonnull !145, !align !163, !noundef !145
  %i.bu = getelementptr i8, ptr %i.bs, i64 -32
  %.val4.i.i.i = load i64, ptr %i.bu, align 8, !noalias !114552, !noundef !145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !114553
  invoke void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val3.i.i.i, i64 noundef %.val4.i.i.i)
          to label %.noexc unwind label %.thread409.loopexit

.noexc:                                           ; preds = %.lr.ph.i.i91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !114553
  invoke void @_ZN3std4path4Path10components17h13437a8377d0cf8dE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %i.be)
          to label %.noexc94 unwind label %.thread409.loopexit

.noexc94:                                         ; preds = %.noexc
  %i.bv = invoke fastcc noundef zeroext i1 @"_ZN62_$LT$std..path..Components$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd73b6a885411943fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.h)
          to label %.noexc95 unwind label %.thread409.loopexit

.noexc95:                                         ; preds = %.noexc94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !114553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !114553
  br i1 %i.bv, label %bb.bx, label %bb.e, !prof !154

._crit_edge.i.i92:                                ; preds = %bb.e, %bb.d
  %i.bw = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.bx = bitcast <16 x i1> %i.bw to i16
  %i.by = icmp eq i16 %i.bx, 0
  br i1 %i.by, label %bb.f, label %bb.g, !prof !147

bb.e:                                             ; preds = %.noexc95
  %i.bz = add i16 %.sroa.06.0.i33.i.i, -1
  %i.ca = and i16 %i.bz, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ca, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i92, label %.lr.ph.i.i91

bb.f:                                             ; preds = %._crit_edge.i.i92
  %i.cb = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.cc = add i64 %.sroa.01.0.i.i.i, %i.cb
  br label %bb.d

bb.g:                                             ; preds = %._crit_edge.i.i92
  %i.cd = load i64, ptr %i.ao, align 8, !alias.scope !114554, !noalias !114555, !noundef !145
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %.noexc96, !prof !147

bb.h:                                             ; preds = %bb.g
  %i.cf = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h853138571138eff3E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.u, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.4.0..sroa_idx, i1 noundef zeroext true)
          to label %.noexc96 unwind label %.thread409.loopexit.split-lp.loopexit ; 0 uses

._crit_edge:                                      ; preds = %bb.ca, %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load i64, ptr %i.cg, align 8, !noundef !145 ; 8 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val71 = load ptr, ptr %i.cj, align 8          ; 2 uses
  %.val70 = load ptr, ptr %1, align 8             ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val71, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !invariant.load !145, !noalias !114556, !nonnull !145
  %i.cm = invoke noundef zeroext i1 %i.cl(ptr noundef nonnull align 1 %.val70, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2618, i64 noundef 26)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit unwind label %.thread409.loopexit.split-lp.loopexit.split-lp, !inline_history !363

bb.j:                                             ; preds = %._crit_edge
  %.val68 = load ptr, ptr %1, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val69 = load ptr, ptr %i.cn, align 8, !nonnull !145, !noundef !145 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val69, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !145, !noalias !114557, !nonnull !145
  %i.cq = invoke noundef zeroext i1 %i.cp(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2619, i64 noundef 24)
          to label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105 unwind label %.thread409.loopexit.split-lp.loopexit.split-lp, !inline_history !363

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.i
  br i1 %i.cm, label %.critedge58, label %"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134"

"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134": ; preds = %._crit_edge560, %bb.u, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.val65 = phi ptr [ %.val69, %._crit_edge560 ], [ %.val69, %bb.u ], [ %.val71, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ] ; 4 uses
  %.val64 = phi ptr [ %.val68, %._crit_edge560 ], [ %.val68, %bb.u ], [ %.val70, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.sroa.0394.0.copyload = load ptr, ptr %i.u, align 8, !nonnull !145, !noundef !145 ; 6 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.3395.0.copyload = load i64, ptr %.sroa.3395.0..sroa_idx, align 8 ; 4 uses
  %.val3.i.i.i106 = load <16 x i8>, ptr %.sroa.0394.0.copyload, align 16, !noalias !114558
  %i.cr = icmp eq i64 %.sroa.2.0.copyload, 0      ; 4 uses
  br i1 %i.cr, label %bb.v, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %"_ZN4core3ptr134drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$$RF$nickel_lang_parser..identifier..Ident$C$$RF$std..path..PathBuf$RP$$GT$$GT$17h7a6b6717b330b032E.exit134"
  %i.cs = mul i64 %.sroa.2.0.copyload, 40         ; 2 uses
  %i.ct = add i64 %i.cs, 40
  %i.cu = icmp ult i64 %i.ct, -15
  call void @llvm.assume(i1 %i.cu)
  %i.cv = and i64 %i.cs, -16                      ; 2 uses
  %i.cw = add i64 %i.cv, 48                       ; 2 uses
  %i.cx = add i64 %.sroa.2.0.copyload, 17
  %i.cy = add i64 %i.cx, %i.cw                    ; 3 uses
  %i.cz = icmp uge i64 %i.cy, %i.cw
  call void @llvm.assume(i1 %i.cz)
  %i.da = icmp ult i64 %i.cy, 9223372036854775793
  call void @llvm.assume(i1 %i.da)
  %i.db = sub i64 -48, %i.cv
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0394.0.copyload, i64 %i.db
  br label %bb.v

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105: ; preds = %bb.j
  br i1 %i.cq, label %.critedge58, label %bb.k

bb.k:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit105
  call void @llvm.experimental.noalias.scope.decl(metadata !114559)
  %i.dd = load ptr, ptr %0, align 8, !alias.scope !114559, !noalias !114560, !nonnull !145, !noundef !145 ; 4 uses
  %.val3.i.i110 = load <16 x i8>, ptr %i.dd, align 16, !noalias !114561
  %i.de = icmp sgt <16 x i8> %.val3.i.i110, splat (i8 -1)
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.dg = bitcast <16 x i1> %i.de to i16          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !114562
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.dg, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i.i.i
  %i.dh = phi ptr [ %i.dl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.df, %bb.k ] ; 2 uses
  %i.di = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ], [ %i.dd, %bb.k ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.dh, align 16, !noalias !114563
  %i.dj = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -512 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.dj to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.k
  %.sroa.5.0.i.i = phi ptr [ %i.df, %bb.k ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.01.0.copyload.i.i.i.i = phi ptr [ %i.dd, %bb.k ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.dg, %bb.k ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.dm = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.dn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.do = zext nneg i16 %i.dn to i64
  %i.dp = and i16 %i.dm, %.lcssa.i.i.i.i.i.i.i
  %i.dq = sub nsw i64 0, %i.do
  %i.dr = getelementptr inbounds [32 x i8], ptr %.sroa.01.0.copyload.i.i.i.i, i64 %i.dq ; 2 uses
  %i.ds = add nsw i64 %i.ch, -1                   ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 -32
  %i.du = getelementptr inbounds i8, ptr %i.dr, i64 -24
  %.sroa.0.0.i.i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.ch, i64 4) ; 3 uses
  %i.dv = shl i64 %.sroa.0.0.i.i.i.i.i, 4         ; 3 uses
  %i.dw = icmp ugt i64 %i.ch, 1152921504606846975
  %i.dx = icmp ugt i64 %i.dv, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i = or i1 %i.dw, %i.dx
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.l, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %._crit_edge20.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !114564
  %i.dy = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dv, i64 noundef range(i64 1, 9) 8) #83, !noalias !114564 ; 6 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.l, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %._crit_edge20.i.i.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %._crit_edge20.i.i.i.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.dv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1687) #82
          to label %.noexc116 unwind label %.thread409.loopexit.split-lp.loopexit.split-lp

.noexc116:                                        ; preds = %bb.l
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  store ptr %i.dt, ptr %i.dy, align 8, !noalias !114562
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.du, ptr %i.ea, align 8, !noalias !114562
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.g, align 8, !noalias !114562
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.dy, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114562
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !114562
  call void @llvm.experimental.noalias.scope.decl(metadata !114565)
  call void @llvm.experimental.noalias.scope.decl(metadata !114566)
  %i.eb = icmp eq i64 %i.ds, 0
  br i1 %i.eb, label %.thread420, label %.lr.ph.i.i.i.i.i.i

.thread420:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114562
  br label %.lr.ph559

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i", %.noexc.i.i.i.i
  %i.ec = phi ptr [ %i.ew, %.noexc.i.i.i.i ], [ %i.dy, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ]
  %i.ed = phi i64 [ %i.ez, %.noexc.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 6 uses
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.5.0.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %i.ee = phi i16 [ %i.en, %.noexc.i.i.i.i ], [ %i.dp, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.val510.i.i.i.i.i.i = phi i64 [ %i.eq, %.noexc.i.i.i.i ], [ %i.ds, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.pre.i.i.i89.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i7.i.i.i.i.i.i, %.noexc.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hc3f204a63642c69eE.exit.i.i.i.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i.i = icmp eq i16 %i.ee, 0
  br i1 %.not13.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ef = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.eg = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ef, align 16, !noalias !114567
  %i.eh = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.ei = getelementptr inbounds i8, ptr %i.eg, i64 -512 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.eh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i.i

._crit_edge20.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa14.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.pre.i.i.i7.i.i.i.i.i.i = phi ptr [ %.pre.i.i.i89.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ee, %.lr.ph.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ek = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.el = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = and i16 %i.ek, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.eo = sub nsw i64 0, %i.em
  %i.ep = getelementptr inbounds [32 x i8], ptr %.pre.i.i.i7.i.i.i.i.i.i, i64 %i.eo ; 2 uses
  %i.eq = add i64 %.val510.i.i.i.i.i.i, -1        ; 2 uses
  %i.er = getelementptr inbounds i8, ptr %i.ep, i64 -32
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 -24
  %i.et = icmp samesign ult i64 %i.ed, 576460752303423488
  call void @llvm.assume(i1 %i.et)
  %i.eu = load i64, ptr %i.g, align 8, !range !146, !alias.scope !114568, !noalias !114569, !noundef !145
  %i.ev = icmp eq i64 %i.ed, %i.eu
  br i1 %i.ev, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i", label %.noexc.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ed, i64 noundef range(i64 1, 0) %.val510.i.i.i.i.i.i, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i" unwind label %bb.m, !noalias !114562

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !114568, !noalias !114569
  br label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i", %._crit_edge20.i.i.i.i.i.i.i.i.i
  %i.ew = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i..noexc_crit_edge.i.i.i.i" ], [ %i.ec, %._crit_edge20.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ew, i64 %i.ed ; 2 uses
  store ptr %i.er, ptr %i.ex, align 8, !noalias !114570
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store ptr %i.es, ptr %i.ey, align 8, !noalias !114570
  %i.ez = add nuw nsw i64 %i.ed, 1                ; 2 uses
  store i64 %i.ez, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !114568, !noalias !114569
  %i.fa = icmp eq i64 %i.eq, 0
  br i1 %i.fa, label %bb.o, label %.lr.ph.i.i.i.i.i.i

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h967df5f876954e00E.exit.i.i.i.i.i.i"
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !114562 ; 2 uses
  %i.fc = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.fc, label %.thread406, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114562, !nonnull !145, !noundef !145
  %i.fd = shl nuw i64 %.val.i.i.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.fd, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114562
  br label %.thread406

bb.o:                                             ; preds = %.noexc.i.i.i.i
  %.sroa.0268.0.copyload269 = load i64, ptr %i.g, align 8, !noalias !114571 ; 4 uses
  %.sroa.7270.0.copyload272 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !114571 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !114562
  %i.fe = icmp samesign ult i64 %i.ed, 20
  br i1 %i.fe, label %bb.q, label %bb.p, !prof !154

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h96dfd23d35507578E(ptr noalias noundef nonnull align 8 %.sroa.7270.0.copyload272, i64 noundef %i.ch, ptr noalias noundef nonnull align 1 %i.a)
          to label %.lr.ph559 unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.o
  %.idx.i.i = shl nuw nsw i64 %i.ch, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.7270.0.copyload272, i64 %.idx.i.i
  %.sroa.0.01.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7270.0.copyload272, i64 16
  br label %.lr.ph.i.i117

.lr.ph.i.i117:                                    ; preds = %.noexc120, %bb.q
  %.sroa.0.03.i.i = phi ptr [ %.sroa.0.0.i.i, %.noexc120 ], [ %.sroa.0.01.i.i, %bb.q ] ; 2 uses
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h5992ab24c06ea3dcE(ptr noundef nonnull align 8 %.sroa.7270.0.copyload272, ptr noundef %.sroa.0.03.i.i)
          to label %.noexc120 unwind label %.loopexit

.noexc120:                                        ; preds = %.lr.ph.i.i117
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i, i64 16 ; 2 uses
  %.not.i.i118 = icmp eq ptr %.sroa.0.0.i.i, %i.ff
  br i1 %.not.i.i118, label %.lr.ph559, label %.lr.ph.i.i117

.lr.ph559:                                        ; preds = %.noexc120, %.thread420, %bb.p
  %.sroa.7270.0.copyload272428 = phi ptr [ %i.dy, %.thread420 ], [ %.sroa.7270.0.copyload272, %bb.p ], [ %.sroa.7270.0.copyload272, %.noexc120 ] ; 6 uses
  %.sroa.0268.0.copyload269426 = phi i64 [ %.sroa.0.0.i.i.i.i.i, %.thread420 ], [ %.sroa.0268.0.copyload269, %bb.p ], [ %.sroa.0268.0.copyload269, %.noexc120 ] ; 6 uses
  %i.fg = icmp ult i64 %i.ch, 576460752303423488
  call void @llvm.assume(i1 %i.fg)
  %.idx = shl nuw nsw i64 %i.ch, 4
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.7270.0.copyload272428, i64 %.idx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7270.0.copyload272428) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.5295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.8297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.10298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  br label %bb.t

bb.r:                                             ; preds = %bb.t
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = icmp eq i64 %.sroa.0268.0.copyload269426, 0
  br i1 %i.fl, label %.thread406, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fm = shl nuw i64 %.sroa.0268.0.copyload269426, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7270.0.copyload272428, i64 noundef %i.fm, i64 noundef range(i64 1, -9223372036854775807) 8) #83, !noalias !114572
  br label %.thread406

bb.t:                                             ; preds = %.lr.ph559, %bb.bo
  %.sroa.7290.0557 = phi ptr [ %.sroa.7270.0.copyload272428, %.lr.ph559 ], [ %i.fn, %bb.bo ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.7290.0557, i64 16 ; 2 uses
  %i.fo = load ptr, ptr %.sroa.7290.0557, align 8, !noalias !114573, !nonnull !145, !align !176, !noundef !145
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.7290.0557, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !114573, !nonnull !145, !align !149, !noundef !145 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.fo, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !145, !noundef !145
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !145
  store ptr %i.fs, ptr %i.s, align 8
  store i64 %i.fu, ptr %i.fi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.t, ptr %i.r, align 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h65693749f68e8749E", ptr %.sroa.426.0..sroa_idx, align 8
  store ptr %i.s, ptr %i.fj, align 8
  store ptr @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17hdd6e065e2a6605deE", ptr %.sroa.430.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !114574
  store ptr @2626, ptr %i.f, align 8
  store i64 3, ptr %.sroa.5295.0..sroa_idx, align 8
  store ptr %i.r, ptr %.sroa.7296.0..sroa_idx, align 8
  store i64 2, ptr %.sroa.8297.0..sroa_idx, align 8
  store ptr null, ptr %.sroa.10298.0..sroa_idx, align 8
  %i.fv = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val68, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val69, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
          to label %.noexc131 unwind label %bb.r

.noexc131:                                        ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !114574
end_hunk_5
begin_hunk_6_@"_ZN9rustyline4edit14State$LT$H$GT$11edit_indent17h62c819f757989efaE":bb.a
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.02.0.i.i
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !134676, !noalias !134666, !noundef !145
  %i.db = icmp sgt i8 %i.da, -65
  br i1 %i.db, label %bb.ax, label %bb.ba

bb.aq:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17h304ee13777f26932E.exit.i"
  br i1 %.not.i102.i, label %bb.bv, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dc = icmp eq i64 %i.by, 0
  br i1 %i.dc, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not5.i103.i = icmp ult i64 %i.by, %.val216.i
  br i1 %.not5.i103.i, label %bb.au, label %.split.i104.i

bb.at:                                            ; preds = %bb.au, %.split.i104.i, %bb.ar
  %i.dd = icmp eq i64 %.sroa.02.0.i.i, 0
  br i1 %i.dd, label %bb.bs, label %bb.av

.split.i104.i:                                    ; preds = %bb.as
  %i.de = icmp eq i64 %i.by, %.val216.i
  br i1 %i.de, label %bb.at, label %bb.bv

bb.au:                                            ; preds = %bb.as
  %i.df = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.by
  %i.dg = load i8, ptr %i.df, align 1, !alias.scope !134677, !noalias !134666, !noundef !145
  %i.dh = icmp sgt i8 %i.dg, -65
  br i1 %i.dh, label %bb.at, label %bb.bv

bb.av:                                            ; preds = %bb.at
  %.not6.i107.i = icmp ult i64 %.sroa.02.0.i.i, %.val216.i
  br i1 %.not6.i107.i, label %bb.aw, label %.split7.i108.i

.split7.i108.i:                                   ; preds = %bb.av
  %i.di = icmp eq i64 %.sroa.02.0.i.i, %.val216.i
  br i1 %i.di, label %bb.bs, label %bb.bv

bb.aw:                                            ; preds = %bb.av
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.02.0.i.i
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !134677, !noalias !134666, !noundef !145
  %i.dl = icmp sgt i8 %i.dk, -65
  br i1 %i.dl, label %bb.bs, label %bb.bv

bb.ax:                                            ; preds = %bb.ap, %.split7.i.i, %bb.am
  %i.dm = sub nuw i64 %.sroa.02.0.i.i, %i.by      ; 19 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.by
  %i.do = icmp slt i64 %i.dm, 0
  br i1 %i.do, label %bb.az, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.ax
  %i.dp = icmp eq i64 %.sroa.02.0.i.i, %i.by      ; 3 uses
  br i1 %i.dp, label %.lr.ph291.i, label %bb.ay

bb.ay:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !134678
  %i.dq = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dm, i64 noundef range(i64 1, 9) 1) #83, !noalias !134678 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.az, label %.lr.ph291.i

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.ay ], [ 0, %bb.ax ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82, !noalias !134679
  unreachable

bb.ba:                                            ; preds = %bb.ap, %.split7.i.i, %bb.an, %.split.i99.i, %bb.aj
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cr, i64 noundef %.val216.i, i64 noundef %i.by, i64 noundef %.sroa.02.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3263) #82, !noalias !134666
  unreachable

.loopexit248.i:                                   ; preds = %bb.br, %bb.bo, %bb.bk
  %lpad.loopexit250.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp249.i

.loopexit.split-lp249.loopexit.i:                 ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %lpad.loopexit252.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp249.i

.loopexit.split-lp249.loopexit.split-lp.i:        ; preds = %.split.i.i.i
  %lpad.loopexit.split-lp253.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp249.i

.loopexit.split-lp249.i:                          ; preds = %.loopexit.split-lp249.loopexit.split-lp.i, %.loopexit.split-lp249.loopexit.i, %.loopexit248.i
  %lpad.phi251.i = phi { ptr, i32 } [ %lpad.loopexit250.i, %.loopexit248.i ], [ %lpad.loopexit252.i, %.loopexit.split-lp249.loopexit.i ], [ %lpad.loopexit.split-lp253.i, %.loopexit.split-lp249.loopexit.split-lp.i ] ; 2 uses
  br i1 %i.dp, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit.i", label %bb.bb

bb.bb:                                            ; preds = %.loopexit.split-lp249.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !134680
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit.i"

.lr.ph291.i:                                      ; preds = %bb.ay, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.dq, %bb.ay ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.dn, i64 %i.dm, i1 false), !noalias !134681
  %i.ds = lshr i64 %3, 5
  %i.dt = and i64 %3, 31
  %.not9.i.i.i = icmp ne i64 %i.dt, 0
  %i.du = zext i1 %.not9.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.ds, %i.du
  %.not81.not279.i = icmp eq i64 %3, 0
  %.sroa.4.1.i.ph.i = add i64 %3, 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bj, %.lr.ph291.i
  %.lcssa278296.i = phi i64 [ 0, %.lr.ph291.i ], [ %.lcssa278294.i, %bb.bj ] ; 3 uses
  %.sroa.07.0289.i = phi i64 [ %i.by, %.lr.ph291.i ], [ %i.et, %bb.bj ] ; 12 uses
  %.lcssa270283286.i = phi i64 [ 0, %.lr.ph291.i ], [ %.lcssa270282.i, %bb.bj ] ; 6 uses
  %i.dv = icmp ult i64 %i.dm, %.lcssa278296.i
  br i1 %i.dv, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.bc, %bb.be
  %i.dw = phi i64 [ %i.ej, %bb.be ], [ %.lcssa278296.i, %bb.bc ] ; 5 uses
  %i.dx = sub nuw nsw i64 %i.dm, %i.dw            ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.dw ; 2 uses
  %i.dz = icmp ult i64 %i.dx, 16
  br i1 %i.dz, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.dm, %i.dw
  br i1 %.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.bd
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ed, %bb.bd ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %.sroa.01.05.i.i.i.i
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !134682, !noalias !134683, !noundef !145
  %i.ec = icmp eq i8 %i.eb, 10
  br i1 %i.ec, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ed = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ed, %i.dx
  br i1 %exitcond.not.i.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %.lr.ph.split.i.i.i
  %i.ee = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dy, i64 noundef %i.dx)
          to label %.noexc.i unwind label %.loopexit.split-lp249.loopexit.i, !noalias !134666 ; 2 uses

.noexc.i:                                         ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %i.ef = extractvalue { i64, i64 } %i.ee, 0
  %i.eg = extractvalue { i64, i64 } %i.ee, 1
  %i.eh = trunc nuw i64 %i.ef to i1
  br i1 %i.eh, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.noexc.i
  %.sroa.4.0.i27.i.i.i = phi i64 [ %i.eg, %.noexc.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ei = add nuw i64 %i.dw, 1
  %i.ej = add i64 %i.ei, %.sroa.4.0.i27.i.i.i     ; 5 uses
  %.not21.i.i.i = icmp ugt i64 %i.ej, %i.dm
  %i.ek = add i64 %.sroa.4.0.i27.i.i.i, %i.dw     ; 3 uses
  %or.cond.i.i.not.i = icmp ult i64 %i.ek, %i.dm
  br i1 %or.cond.i.i.not.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bf, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  br i1 %.not21.i.i.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %.lr.ph.split.i.i.i

bb.bf:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.ek
  %lhsc.i = load i8, ptr %i.el, align 1, !noalias !134666
  %i.em = icmp eq i8 %lhsc.i, 10
  br i1 %i.em, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %bb.be

bb.bg:                                            ; preds = %bb.bj
  br i1 %i.dp, label %_ZN9rustyline11line_buffer10LineBuffer6indent17hb695589ae8390f10E.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !134684
  br label %_ZN9rustyline11line_buffer10LineBuffer6indent17hb695589ae8390f10E.exit

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i": ; preds = %bb.bf, %bb.be, %.noexc.i, %.preheader.i.i.i.i, %bb.bd, %bb.bc
  %.lcssa278294.i = phi i64 [ %.lcssa278296.i, %bb.bc ], [ %i.dm, %bb.bd ], [ %i.dm, %.preheader.i.i.i.i ], [ %i.dm, %.noexc.i ], [ %i.ej, %bb.bf ], [ %i.ej, %bb.be ]
  %.lcssa270282.i = phi i64 [ %.lcssa270283286.i, %bb.bc ], [ %.lcssa270283286.i, %bb.bd ], [ %.lcssa270283286.i, %.preheader.i.i.i.i ], [ %.lcssa270283286.i, %.noexc.i ], [ %i.ej, %bb.bf ], [ %.lcssa270283286.i, %bb.be ]
  %i.en = phi i1 [ true, %bb.bc ], [ true, %bb.bd ], [ true, %.preheader.i.i.i.i ], [ true, %.noexc.i ], [ false, %bb.bf ], [ true, %bb.be ]
  %.pn318.i = phi i64 [ %i.dm, %bb.bc ], [ %i.dm, %bb.bd ], [ %i.dm, %.preheader.i.i.i.i ], [ %i.dm, %.noexc.i ], [ %i.ek, %bb.bf ], [ %i.dm, %bb.be ]
  br i1 %.not81.not279.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i"
  %i.eo = icmp eq i64 %.sroa.07.0289.i, 0
  br label %bb.bk

._crit_edge.i:                                    ; preds = %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i"
  %i.ep = load i64, ptr %i.ba, align 8, !alias.scope !134665, !noalias !134669, !noundef !145 ; 2 uses
  %.not82.i = icmp ult i64 %i.ep, %.sroa.07.0289.i
  br i1 %.not82.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %._crit_edge.i
  %i.eq = add i64 %i.ep, %3
  store i64 %i.eq, ptr %i.ba, align 8, !alias.scope !134665, !noalias !134669
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %._crit_edge.i
  %i.er = add i64 %.sroa.4.1.i.ph.i, %.sroa.07.0289.i
  %i.es = sub i64 %i.er, %.lcssa270283286.i
  %i.et = add i64 %i.es, %.pn318.i
  br i1 %i.en, label %bb.bg, label %bb.bc

bb.bk:                                            ; preds = %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i, %.lr.ph.i
  %.in.i = phi i64 [ %.sroa.05.0.i.i.i, %.lr.ph.i ], [ %i.ev, %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i ]
  %i.eu = phi i64 [ 32, %.lr.ph.i ], [ %i.fs, %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i ] ; 2 uses
  %.sroa.070.0280.i = phi i64 [ 0, %.lr.ph.i ], [ %i.eu, %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i ]
  %i.ev = add nsw i64 %.in.i, -1                  ; 2 uses
  %i.ew = sub i64 %3, %.sroa.070.0280.i
  %.sroa.0.0.i114.i = call noundef i64 @llvm.umin.i64(i64 %i.ew, i64 32) ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !134685)
  invoke void @"_ZN85_$LT$rustyline..undo..Changeset$u20$as$u20$rustyline..line_buffer..ChangeListener$GT$10insert_str17hf513efb15e02cb4cE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.d, i64 noundef %.sroa.07.0289.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @3264, i64 noundef %.sroa.0.0.i114.i)
          to label %.noexc121.i unwind label %.loopexit248.i, !noalias !134666

.noexc121.i:                                      ; preds = %bb.bk
  %i.ex = load i64, ptr %i.bj, align 8, !alias.scope !134686, !noalias !134687, !noundef !145 ; 7 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = icmp eq i64 %.sroa.07.0289.i, %i.ex
  br i1 %i.ez, label %bb.bq, label %bb.bl

bb.bl:                                            ; preds = %.noexc121.i
  call void @llvm.experimental.noalias.scope.decl(metadata !134688)
  %i.fa = load ptr, ptr %i.bh, align 8, !alias.scope !134689, !noalias !134690, !nonnull !145, !noundef !145 ; 2 uses
  br i1 %i.eo, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.not.i.i119.i = icmp ult i64 %.sroa.07.0289.i, %i.ex
  br i1 %.not.i.i119.i, label %bb.bp, label %.split.i.i.i

bb.bn:                                            ; preds = %bb.bp, %bb.bl
  %i.fb = load i64, ptr %1, align 8, !range !146, !alias.scope !134691, !noalias !134690, !noundef !145
  %i.fc = sub nsw i64 %i.fb, %i.ex
  %i.fd = icmp ugt i64 %.sroa.0.0.i114.i, %i.fc
  br i1 %i.fd, label %bb.bo, label %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i.i, !prof !147

bb.bo:                                            ; preds = %bb.bn
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %i.ex, i64 noundef %.sroa.0.0.i114.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc122.i unwind label %.loopexit248.i, !noalias !134666

.noexc122.i:                                      ; preds = %bb.bo
  %.pre.i.i120.i = load ptr, ptr %i.bh, align 8, !alias.scope !134689, !noalias !134690
  br label %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i.i

bb.bp:                                            ; preds = %bb.bm
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.sroa.07.0289.i
  %i.ff = load i8, ptr %i.fe, align 1, !noalias !134692, !noundef !145
  %i.fg = icmp sgt i8 %i.ff, -65
  br i1 %i.fg, label %bb.bn, label %.split.i.i.i, !prof !154

.split.i.i.i:                                     ; preds = %bb.bp, %bb.bm
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1770, i64 noundef 44, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3256) #82
          to label %.noexc123.i unwind label %.loopexit.split-lp249.loopexit.split-lp.i, !noalias !134666

.noexc123.i:                                      ; preds = %.split.i.i.i
  unreachable

_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i.i: ; preds = %.noexc122.i, %bb.bn
  %i.fh = phi ptr [ %i.fa, %bb.bn ], [ %.pre.i.i120.i, %.noexc122.i ]
  %i.fi = getelementptr i8, ptr %i.fh, i64 %.sroa.07.0289.i ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 %.sroa.0.0.i114.i
  %i.fk = sub nsw i64 %i.ex, %.sroa.07.0289.i
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.fj, ptr nonnull align 1 %i.fi, i64 %i.fk, i1 false), !noalias !134692
  br label %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i

bb.bq:                                            ; preds = %.noexc121.i
  %i.fl = load i64, ptr %1, align 8, !range !146, !alias.scope !134693, !noalias !134687, !noundef !145
  %i.fm = sub nsw i64 %i.fl, %.sroa.07.0289.i
  %i.fn = icmp ugt i64 %.sroa.0.0.i114.i, %i.fm
  br i1 %i.fn, label %bb.br, label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i.i", !prof !147

bb.br:                                            ; preds = %bb.bq
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h668137d68fb7f885E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.07.0289.i, i64 noundef %.sroa.0.0.i114.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc124.i unwind label %.loopexit248.i, !noalias !134666

.noexc124.i:                                      ; preds = %bb.br
  %.pre.i.i.i.i = load i64, ptr %i.bj, align 8, !alias.scope !134694, !noalias !134687
  br label %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i.i"

"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i.i": ; preds = %.noexc124.i, %bb.bq
  %i.fo = phi i64 [ %.sroa.07.0289.i, %bb.bq ], [ %.pre.i.i.i.i, %.noexc124.i ] ; 3 uses
  %i.fp = icmp sgt i64 %i.fo, -1
  call void @llvm.assume(i1 %i.fp)
  %i.fq = load ptr, ptr %i.bh, align 8, !alias.scope !134694, !noalias !134687, !nonnull !145, !noundef !145
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fo
  br label %_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i

_ZN9rustyline11line_buffer10LineBuffer10insert_str17h1cb04a5c43050d58E.exit.i: ; preds = %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i.i", %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i.i
  %.sink.i.i = phi ptr [ %i.fr, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i.i" ], [ %i.fi, %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i.i ]
  %.pn.i.i = phi i64 [ %i.fo, %"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h8977bd82a29391d6E.exit.i.i" ], [ %i.ex, %_ZN5alloc6string6String10insert_str17h9b0e17a8247fb53fE.exit.i.i ]
  call void @llvm.memset.p0.i64(ptr align 1 %.sink.i.i, i8 32, i64 %.sroa.0.0.i114.i, i1 false), !noalias !134666
  %storemerge.i.i = add nuw i64 %.pn.i.i, %.sroa.0.0.i114.i
  store i64 %storemerge.i.i, ptr %i.bj, align 8, !alias.scope !134686, !noalias !134687
  %.not81.not.i = icmp eq i64 %i.ev, 0
  %i.fs = add i64 %i.eu, 32
  br i1 %.not81.not.i, label %._crit_edge.i, label %bb.bk

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit.i": ; preds = %bb.bw, %.loopexit.split-lp.i, %bb.bb, %.loopexit.split-lp249.i
  %.pn.i = phi { ptr, i32 } [ %lpad.phi251.i, %bb.bb ], [ %lpad.phi251.i, %.loopexit.split-lp249.i ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %lpad.phi.i, %bb.bw ]
  resume { ptr, i32 } %.pn.i

bb.bs:                                            ; preds = %bb.aw, %.split7.i108.i, %bb.at
  %i.ft = sub nuw i64 %.sroa.02.0.i.i, %i.by      ; 19 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.by
  %i.fv = icmp slt i64 %i.ft, 0
  br i1 %i.fv, label %bb.bu, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125.i, !prof !151

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125.i: ; preds = %bb.bs
  %i.fw = icmp eq i64 %.sroa.02.0.i.i, %i.by      ; 3 uses
  br i1 %i.fw, label %.lr.ph311.i, label %bb.bt

bb.bt:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #83, !noalias !134695
  %i.fx = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ft, i64 noundef range(i64 1, 9) 1) #83, !noalias !134695 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.bu, label %.lr.ph311.i

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.sroa.4.0.ph.i.i129.i = phi i64 [ 1, %bb.bt ], [ 0, %bb.bs ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i129.i, i64 %i.ft, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2913) #82, !noalias !134696
  unreachable

bb.bv:                                            ; preds = %bb.aw, %.split7.i108.i, %bb.au, %.split.i104.i, %bb.aq
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cr, i64 noundef %.val216.i, i64 noundef %i.by, i64 noundef %.sroa.02.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3265) #82, !noalias !134666
  unreachable

.loopexit243.i:                                   ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i141.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i.loopexit:           ; preds = %bb.cq, %_ZN9rustyline11line_buffer10LineBuffer5drain17h8fef9133f6bd56fbE.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i.loopexit.split-lp:  ; preds = %.invoke, %bb.cr
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.cu
  %lpad.loopexit.split-lp246.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.i.loopexit, %.loopexit.split-lp.loopexit.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit243.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit243.i ], [ %lpad.loopexit.split-lp246.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit, %.loopexit.split-lp.loopexit.i.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.i.loopexit.split-lp ] ; 2 uses
  br i1 %i.fw, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit.i", label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp.i
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i126.i, i64 noundef %i.ft, i64 noundef range(i64 1, -9223372036854775807) 1) #83, !noalias !134697
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h1f1c2976ae622c0aE.exit.i"

.lr.ph311.i:                                      ; preds = %bb.bt, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125.i
  %.sroa.10.0.i.i126.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i125.i ], [ %i.fx, %bb.bt ] ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i126.i, ptr nonnull readonly align 1 %i.fu, i64 %i.ft, i1 false), !noalias !134698
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cv, %.lr.ph311.i
  %.lcssa304316.i = phi i64 [ 0, %.lr.ph311.i ], [ %.lcssa304314.i, %bb.cv ] ; 3 uses
  %.sroa.07.1309.i = phi i64 [ %i.by, %.lr.ph311.i ], [ %i.ko, %bb.cv ] ; 17 uses
  %.lcssa257307308.i = phi i64 [ 0, %.lr.ph311.i ], [ %.lcssa257306.i, %bb.cv ] ; 7 uses
  %i.gd = icmp ult i64 %i.ft, %.lcssa304316.i
  br i1 %i.gd, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i159.i", label %.lr.ph.split.i.i139.i

.lr.ph.split.i.i139.i:                            ; preds = %bb.bx, %bb.bz
  %i.ge = phi i64 [ %i.gr, %bb.bz ], [ %.lcssa304316.i, %bb.bx ] ; 5 uses
  %i.gf = sub nuw nsw i64 %i.ft, %i.ge            ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i126.i, i64 %i.ge ; 2 uses
  %i.gh = icmp ult i64 %i.gf, 16
  br i1 %i.gh, label %.preheader.i.i.i160.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i141.i

.preheader.i.i.i160.i:                            ; preds = %.lr.ph.split.i.i139.i
  %.not.i.i.i161.i = icmp eq i64 %i.ft, %i.ge
  br i1 %.not.i.i.i161.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i159.i", label %.lr.ph.i.i.i162.i

.lr.ph.i.i.i162.i:                                ; preds = %.preheader.i.i.i160.i, %bb.by
  %.sroa.01.05.i.i.i163.i = phi i64 [ %i.gl, %bb.by ], [ 0, %.preheader.i.i.i160.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.01.05.i.i.i163.i
  %i.gj = load i8, ptr %i.gi, align 1, !alias.scope !134699, !noalias !134700, !noundef !145
  %i.gk = icmp eq i8 %i.gj, 10
  br i1 %i.gk, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i153.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph.i.i.i162.i
  %i.gl = add nuw nsw i64 %.sroa.01.05.i.i.i163.i, 1 ; 2 uses
  %exitcond.not.i.i.i164.i = icmp eq i64 %i.gl, %i.gf
  br i1 %exitcond.not.i.i.i164.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i159.i", label %.lr.ph.i.i.i162.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i141.i: ; preds = %.lr.ph.split.i.i139.i
  %i.gm = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 10, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gg, i64 noundef %i.gf)
          to label %.noexc165.i unwind label %.loopexit243.i, !noalias !134666 ; 2 uses

.noexc165.i:                                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i141.i
  %i.gn = extractvalue { i64, i64 } %i.gm, 0
  %i.go = extractvalue { i64, i64 } %i.gm, 1
  %i.gp = trunc nuw i64 %i.gn to i1
  br i1 %i.gp, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i153.i, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i159.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i153.i: ; preds = %.lr.ph.i.i.i162.i, %.noexc165.i
  %.sroa.4.0.i27.i.i154.i = phi i64 [ %i.go, %.noexc165.i ], [ %.sroa.01.05.i.i.i163.i, %.lr.ph.i.i.i162.i ] ; 2 uses
  %i.gq = add nuw i64 %i.ge, 1
  %i.gr = add i64 %i.gq, %.sroa.4.0.i27.i.i154.i  ; 5 uses
  %.not21.i.i156.i = icmp ugt i64 %i.gr, %i.ft
end_hunk_6
