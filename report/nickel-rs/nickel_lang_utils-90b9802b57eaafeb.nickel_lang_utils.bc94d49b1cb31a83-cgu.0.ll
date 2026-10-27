Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_utils-90b9802b57eaafeb.nickel_lang_utils.bc94d49b1cb31a83-cgu.0?download=true
inline.NumInlined: 8202
inline.NumDeleted: 3888
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$9clear_eqs17h844b374f2831c562E":bb.a
bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit"
  %i.f = phi i64 [ %.promoted, %.lr.ph ], [ %i.n, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7026)
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !noalias !7027, !noundef !15 ; 2 uses
  %i.j = icmp ult i8 %i.i, 10
  call void @llvm.assume(i1 %i.j)
  %.not2.i = icmp eq i8 %i.i, 0
  br i1 %.not2.i, label %bb.c, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit2"

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !7028)
  %i.k = icmp sgt i64 %i.f, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.f, 49
  br i1 %i.l, label %bb.d, label %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h1ae1f5208abf89d4E.exit", !prof !21

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @150, i64 noundef 69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #41, !noalias !7029
  unreachable

"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h1ae1f5208abf89d4E.exit": ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 -49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !7026
  %i.n = add nsw i64 %i.f, -49                    ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !7030
  %.pr = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit2", label %bb.e

bb.e:                                             ; preds = %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h1ae1f5208abf89d4E.exit"
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17h5cc86025df591e91E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17h5cc86025df591e91E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #43
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit": ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17h5cc86025df591e91E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit2", label %bb.b

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit2": ; preds = %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h1ae1f5208abf89d4E.exit", %bb.b, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h8e8196cd4cf708bdE.exit", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [296 x i8], align 8               ; 7 uses
  %i.f = alloca [352 x i8], align 8               ; 21 uses
  %i.g = alloca [24 x i8], align 16               ; 15 uses
  %i.h = alloca [40 x i8], align 8                ; 8 uses
  %i.i = alloca [20 x i8], align 4                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.0280 = alloca [48 x i8], align 8         ; 5 uses
  %i.l = alloca [64 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [72 x i8], align 8                ; 13 uses
  %i.o = alloca [40 x i8], align 8                ; 10 uses
  %i.p = alloca [64 x i8], align 8                ; 11 uses
  %i.q = alloca [64 x i8], align 8                ; 11 uses
  %i.r = alloca [64 x i8], align 8                ; 11 uses
  %i.s = alloca [8 x i8], align 8                 ; 5 uses
  %i.t = alloca [48 x i8], align 8                ; 7 uses
  %i.u = alloca [48 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [20 x i8], align 4                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 2 uses
  %i.y = alloca [296 x i8], align 8               ; 4 uses
  %i.z = alloca [56 x i8], align 8                ; 5 uses
  %i.aa = alloca [56 x i8], align 8               ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [56 x i8], align 8               ; 5 uses
  %i.ad = alloca [24 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 2 uses
  %i.af = alloca [56 x i8], align 8               ; 5 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [88 x i8], align 8               ; 4 uses
  %i.aj = alloca [88 x i8], align 8               ; 4 uses
  %i.ak = alloca [56 x i8], align 8               ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [56 x i8], align 8               ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 8 uses
  %i.ap = alloca [56 x i8], align 8               ; 4 uses
  %i.aq = alloca [56 x i8], align 8               ; 8 uses
  %i.ar = alloca [56 x i8], align 8               ; 5 uses
  %i.as = alloca [48 x i8], align 8               ; 7 uses
  %i.at = alloca [56 x i8], align 8               ; 6 uses
  %i.au = alloca [16 x i8], align 8               ; 6 uses
  %i.av = alloca [56 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 4 uses
  %i.ax = alloca [20 x i8], align 4               ; 3 uses
  %i.ay = alloca [32 x i8], align 8               ; 5 uses
  %i.az = alloca [20 x i8], align 4               ; 2 uses
  %i.ba = alloca [24 x i8], align 8               ; 4 uses
  %i.bb = alloca [40 x i8], align 16              ; 5 uses
  %i.bc = alloca [64 x i8], align 8               ; 6 uses
  %i.bd = alloca [64 x i8], align 8               ; 8 uses
  %i.be = alloca [32 x i8], align 8               ; 7 uses
  %i.bf = alloca [88 x i8], align 8               ; 5 uses
  %i.bg = alloca [88 x i8], align 8               ; 6 uses
  %i.bh = alloca [88 x i8], align 8               ; 10 uses
  %i.bi = alloca [24 x i8], align 8               ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 2 uses
  %i.bk = alloca [24 x i8], align 8               ; 15 uses
  %i.bl = alloca [8 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.bl, align 8
  %i.bm = invoke noundef i32 @_ZN16nickel_lang_core4eval5value11NickelValue7pos_idx17h071dc4c03a649931E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bl)
          to label %bb.b unwind label %bb.ge      ; 16 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @_ZN16nickel_lang_core4eval5value11NickelValue7content17h5471752e14fb6256E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bk, ptr noundef nonnull %2)
  %i.bn = load i64, ptr %i.bk, align 8, !range !7261, !noundef !15 ; 8 uses
  %i.bo = icmp ne i64 %i.bn, 23
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add nsw i64 %i.bn, -16
  %i.bq = icmp samesign ugt i64 %i.bn, 15
  %i.br = select i1 %i.bq, i64 %i.bp, i64 7       ; 3 uses
  switch i64 %i.br, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.d
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.d
    i64 6, label %bb.g
    i64 7, label %bb.h
    i64 8, label %bb.d
    i64 9, label %bb.i
    i64 10, label %bb.d
    i64 11, label %bb.d
    i64 12, label %bb.d
    i64 13, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.h
  unreachable

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %i.bs = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueContent7restore17hfb083f1ff11168ebE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.bj)
  br label %.thread398.thread

bb.e:                                             ; preds = %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void %i.bw(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bc, ptr noundef nonnull %i.bu)
          to label %bb.j unwind label %bb.fq

bb.f:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !15, !noundef !15 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void %i.ca(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.bg, ptr noundef nonnull %i.by)
          to label %bb.bm unwind label %bb.fq

bb.g:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.cf = invoke noundef nonnull ptr %i.ce(ptr noundef nonnull %i.cc)
          to label %bb.cj unwind label %bb.fq

bb.h:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 44 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8 ; 22 uses
  switch i64 %i.bn, label %default.unreachable [
    i64 0, label %bb.cu
    i64 1, label %5
    i64 2, label %bb.cv
    i64 3, label %bb.cw
    i64 4, label %bb.cx
    i64 5, label %bb.cy
    i64 6, label %bb.cz
    i64 7, label %bb.da
    i64 8, label %bb.db
    i64 9, label %bb.dc
    i64 10, label %bb.dd
    i64 11, label %bb.de
    i64 12, label %5
    i64 13, label %5
    i64 14, label %5
    i64 15, label %5
  ]

bb.i:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void %i.cj(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ay, ptr noundef nonnull %i.ch)
          to label %bb.fw unwind label %bb.fq

bb.j:                                             ; preds = %bb.e
  %i.ck = load i64, ptr %i.bc, align 8, !range !33, !noundef !15
  %.not60 = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !15 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$21into_iter_starting_at17h1df3fb56c9a608e7E"(ptr noalias noundef align 8 captures(address) dereferenceable(296) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, i64 noundef %i.cn)
          to label %bb.m unwind label %bb.bk

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.cq = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull inttoptr (i64 -4294967283 to ptr), i32 noundef %i.bm)
          to label %.thread398.thread unwind label %bb.fq

bb.m:                                             ; preds = %bb.k
  %i.cr = sub i64 %i.cp, %i.cn                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.cs, ptr noundef nonnull align 8 dereferenceable(296) %i.y, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7263
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7264)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.g, i8 0, i64 17, i1 false), !noalias !7263
  call void @llvm.experimental.noalias.scope.decl(metadata !7265)
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 8 uses
  store i64 %i.cr, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !7266, !noalias !7267
  %.sroa.5526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 5 uses
  store ptr %0, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !7266, !noalias !7267
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 5 uses
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7266, !noalias !7267
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 5 uses
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !7266, !noalias !7267
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 5 uses
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !7266, !noalias !7267
  store i64 0, ptr %i.f, align 8, !alias.scope !7268, !noalias !7262
  call void @llvm.experimental.noalias.scope.decl(metadata !7269)
  call void @llvm.experimental.noalias.scope.decl(metadata !7270)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.cw = icmp eq i64 %i.cp, %i.cn
  br i1 %i.cw, label %.thread531, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i512"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i512": ; preds = %bb.m
  %i.cx = add i64 %i.cr, -1
  store i64 %i.cx, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !7271, !noalias !7262
  %i.cy = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7442af9ae7ba0aeE"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.cs)
          to label %.noexc516 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7047 ; 2 uses

.noexc516:                                        ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i512"
  %.not.i.i513 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i513, label %.thread531, label %bb.n

bb.n:                                             ; preds = %.noexc516
  %i.cz = load ptr, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !7272, !noalias !7262, !nonnull !15, !align !22, !noundef !15
  %i.da = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7272, !noalias !7262, !nonnull !15, !align !27, !noundef !15
  %i.db = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !7272, !noalias !7262, !nonnull !15, !align !22, !noundef !15
  %i.dc = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !7272, !noalias !7262, !nonnull !15, !align !22, !noundef !15
  %i.dd = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, ptr noundef nonnull %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dc)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7047

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i", %bb.am, %bb.u, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.dp, %bb.u ], [ %i.di, %bb.q ], [ %i.fn, %bb.am ], [ %i.fn, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i" ], [ %lpad.loopexit.split-lp628, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr358drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..subst$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc41e2569efe29d9bE"(ptr noalias noundef align 8 dereferenceable(352) %i.f) #43
          to label %.body.i unwind label %bb.bd, !noalias !7273, !inline_history !7050

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ai, %bb.x, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i505", %bb.bb, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i", %bb.bc, %bb.ae, %bb.aa, %bb.n, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i512", %bb.ab
  %lpad.loopexit.split-lp628 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.thread531:                                       ; preds = %bb.m, %.noexc516
  store i64 1, ptr %i.f, align 8, !alias.scope !7269, !noalias !7262
  store ptr null, ptr %i.cv, align 8, !alias.scope !7269, !noalias !7262
  br label %.preheader

bb.o:                                             ; preds = %bb.n
  store i64 1, ptr %i.f, align 8, !alias.scope !7269, !noalias !7262
  store ptr %i.dd, ptr %i.cv, align 8, !alias.scope !7269, !noalias !7262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7262
  store i64 1, ptr %i.e, align 8, !noalias !7262
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.de, align 8, !noalias !7262
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.df, align 8, !noalias !7262
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !7263
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !7274, !inline_history !7053
  %i.dg = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !7274, !inline_history !7053 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5b56d7ad8bed21d6E.exit.i.i", !prof !18

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #41
          to label %.noexc7.i unwind label %bb.q, !noalias !7263, !inline_history !7053

.noexc7.i:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h2cb75c4908742365E"(ptr noalias noundef align 8 dereferenceable(280) %i.df)
          to label %.body.i.i unwind label %bb.r, !noalias !7263, !inline_history !7053

bb.r:                                             ; preds = %bb.q
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7262, !inline_history !7050
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5b56d7ad8bed21d6E.exit.i.i": ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dg, ptr noundef nonnull align 8 dereferenceable(296) %i.e, i64 296, i1 false), !noalias !7262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7262
  call void @llvm.experimental.noalias.scope.decl(metadata !7275)
  %i.dk = load ptr, ptr %i.g, align 16, !alias.scope !7275, !noalias !7273, !noundef !15 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hb5dea8d8b9425af4E.exit.i", label %bb.s

bb.s:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5b56d7ad8bed21d6E.exit.i.i"
  %i.dm = load i64, ptr %i.dk, align 8, !noalias !7276, !noundef !15
  %i.dn = add i64 %i.dm, -1                       ; 2 uses
  store i64 %i.dn, ptr %i.dk, align 8, !noalias !7276
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.t, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hb5dea8d8b9425af4E.exit.i"

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hb5dea8d8b9425af4E.exit.i" unwind label %bb.u, !noalias !7263, !inline_history !7053

bb.u:                                             ; preds = %bb.t
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dg, ptr %i.g, align 16, !alias.scope !7264, !noalias !7263
  br label %.body.i.i

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hb5dea8d8b9425af4E.exit.i": ; preds = %bb.t, %bb.s, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h5b56d7ad8bed21d6E.exit.i.i"
  store ptr %i.dg, ptr %i.g, align 16, !alias.scope !7264, !noalias !7263
  br label %.preheader

.preheader:                                       ; preds = %.thread531, %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hb5dea8d8b9425af4E.exit.i"
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !7277)
  call void @llvm.experimental.noalias.scope.decl(metadata !7278)
  %i.dq = load i64, ptr %i.f, align 8, !range !29, !alias.scope !7277, !noalias !7273, !noundef !15
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exit511thread-pre-split", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = load i64, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !7279, !noalias !7273, !noundef !15 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i507", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i505"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i505": ; preds = %bb.w
  %i.du = add i64 %i.ds, -1
  store i64 %i.du, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !7279, !noalias !7273
  %i.dv = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7442af9ae7ba0aeE"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.cs)
          to label %.noexc509 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7047 ; 2 uses

.noexc509:                                        ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i505"
  %.not.i.i506 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i506, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i507", label %bb.x

bb.x:                                             ; preds = %.noexc509
  %i.dw = load ptr, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !7280, !noalias !7273, !nonnull !15, !align !22, !noundef !15
  %i.dx = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7280, !noalias !7273, !nonnull !15, !align !27, !noundef !15
  %i.dy = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !7280, !noalias !7273, !nonnull !15, !align !22, !noundef !15
  %i.dz = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !7280, !noalias !7273, !nonnull !15, !align !22, !noundef !15
  %i.ea = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, ptr noundef nonnull %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dz)
          to label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i507" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7047

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i507": ; preds = %bb.x, %.noexc509, %bb.w
  %.sroa.0.0.i.i508 = phi ptr [ null, %bb.w ], [ null, %.noexc509 ], [ %i.ea, %bb.x ] ; 2 uses
  store i64 1, ptr %i.f, align 8, !alias.scope !7277, !noalias !7273
  store ptr %.sroa.0.0.i.i508, ptr %i.cv, align 8, !alias.scope !7277, !noalias !7273
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exit511"

end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE:bb.a
  store ptr %.sroa.0.0.i.i26.i, ptr %i.gj, align 8, !alias.scope !7287, !noalias !7273
  %i.gk = load i64, ptr %i.ej, align 8, !alias.scope !7287, !noalias !7273, !noundef !15
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  store i64 %i.gl, ptr %i.ej, align 8, !alias.scope !7287, !noalias !7273
  %i.gm = icmp eq i64 %i.er, 0
  br i1 %i.gm, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.loopexit.i", label %bb.ag

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.loopexit.i": ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hdfa942ecece69fe9E.exit.i.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bb8707a95d81aeaE.exit.i.i", %bb.ah, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.loopexit_crit_edge.i"
  %.pre37.i = phi i64 [ %.pre37.pre.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.loopexit_crit_edge.i" ], [ %i.eq, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4bb8707a95d81aeaE.exit.i.i" ], [ %i.gl, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hdfa942ecece69fe9E.exit.i.i" ], [ %i.eq, %bb.ah ]
  %.pre38.i = load i64, ptr %i.el, align 8, !noalias !7273
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.i"

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.i": ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.loopexit.i", %bb.af
  %i.gn = phi i64 [ %.pre38.i, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.loopexit.i" ], [ %i.em, %bb.af ]
  %i.go = phi i64 [ %.pre37.i, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.loopexit.i" ], [ %i.ek, %bb.af ]
  %i.gp = add i64 %i.gn, %i.en
  %i.gq = sub i64 %i.go, %i.gp
  br label %bb.az

bb.az:                                            ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.i", %bb.ae
  %.sroa.03.0.i.i = phi i64 [ %i.gq, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3e1dedfc34099107E.exit.i" ], [ %i.ei, %bb.ae ]
  %i.gr = load i64, ptr %i.ct, align 8, !alias.scope !7264, !noalias !7263, !noundef !15
  %i.gs = add i64 %i.gr, %.sroa.03.0.i.i
  store i64 %i.gs, ptr %i.ct, align 8, !alias.scope !7264, !noalias !7263
  call void @llvm.experimental.noalias.scope.decl(metadata !7294)
  call void @llvm.experimental.noalias.scope.decl(metadata !7295)
  %i.gt = load i64, ptr %i.f, align 8, !range !29, !alias.scope !7294, !noalias !7273, !noundef !15
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exitthread-pre-split", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = load i64, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !7296, !noalias !7273, !noundef !15 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i": ; preds = %bb.ba
  %i.gx = add i64 %i.gv, -1
  store i64 %i.gx, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !7296, !noalias !7273
  %i.gy = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf7442af9ae7ba0aeE"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.cs)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7047 ; 2 uses

.noexc:                                           ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.i"
  %.not.i.i502 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i502, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i", label %bb.bb

bb.bb:                                            ; preds = %.noexc
  %i.gz = load ptr, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !7297, !noalias !7273, !nonnull !15, !align !22, !noundef !15
  %i.ha = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !7297, !noalias !7273, !nonnull !15, !align !27, !noundef !15
  %i.hb = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !7297, !noalias !7273, !nonnull !15, !align !22, !noundef !15
  %i.hc = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !7297, !noalias !7273, !nonnull !15, !align !22, !noundef !15
  %i.hd = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ha, ptr noundef nonnull %i.gy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hc)
          to label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !7047

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i": ; preds = %bb.bb, %.noexc, %bb.ba
  %.sroa.0.0.i.i503 = phi ptr [ null, %bb.ba ], [ null, %.noexc ], [ %i.hd, %bb.bb ] ; 2 uses
  store i64 1, ptr %i.f, align 8, !alias.scope !7294, !noalias !7273
  store ptr %.sroa.0.0.i.i503, ptr %i.cv, align 8, !alias.scope !7294, !noalias !7273
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exitthread-pre-split": ; preds = %bb.az
  %.pr534 = load ptr, ptr %i.cv, align 8, !noalias !7281
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exitthread-pre-split", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i"
  %i.he = phi ptr [ %.pr534, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exitthread-pre-split" ], [ %.sroa.0.0.i.i503, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb83a8092ff509393E.exit.i.thread.i" ]
  %.not9.i.i = icmp eq ptr %i.he, null
  br i1 %.not9.i.i, label %.backedge, label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exit"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17h4ad8959b66fb9863E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !7273, !inline_history !7050

.backedge:                                        ; preds = %bb.bc, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hbe9b0b95f9706cacE.exit"
  br label %bb.v

bb.bd:                                            ; preds = %.body.i.i
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7273, !inline_history !7050
  unreachable

bb.be:                                            ; preds = %bb.z
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.be, %.body.i.i
  %eh.lpad-body.i498 = phi { ptr, i32 } [ %i.hg, %bb.be ], [ %.pn.i.i, %.body.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7298)
  call void @llvm.experimental.noalias.scope.decl(metadata !7299)
  %i.hh = load ptr, ptr %i.g, align 16, !alias.scope !7300, !noalias !7263, !noundef !15 ; 3 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %.body, label %bb.bf

bb.bf:                                            ; preds = %.body.i
  %i.hj = load i64, ptr %i.hh, align 8, !noalias !7301, !noundef !15
  %i.hk = add i64 %i.hj, -1                       ; 2 uses
  store i64 %i.hk, ptr %i.hh, align 8, !noalias !7301
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.bg, label %.body

bb.bg:                                            ; preds = %bb.bf
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.bh, !noalias !7263, !inline_history !7053

bb.bh:                                            ; preds = %bb.bg
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7263, !inline_history !7053
  unreachable

bb.bi:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7262
  %.sroa.5.0.copyload523 = load i64, ptr %i.cu, align 16, !noalias !7302
  %.sroa.4.0.copyload521 = load i64, ptr %i.ct, align 8, !noalias !7302
  %i.hn = load <2 x i64>, ptr %i.g, align 16, !noalias !7302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7263
  store <2 x i64> %i.hn, ptr %i.bb, align 16, !noalias !7303
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.5.0.copyload523, ptr %.sroa.5.0..sroa_idx, align 16, !noalias !7303
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 0, ptr %i.ho, align 8, !alias.scope !7304
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %.sroa.4.0.copyload521, ptr %i.hp, align 16, !alias.scope !7304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.hq = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue5array17h650af8dba8a4cfcfE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.bb, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ba, i32 noundef %i.bm)
          to label %bb.bj unwind label %bb.fq

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %.thread398.thread

bb.bk:                                            ; preds = %bb.k
  %lpad.thr_comm321 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.bf, %bb.bg, %bb.bk
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.thr_comm321, %bb.bk ], [ %eh.lpad-body.i498, %bb.bg ], [ %eh.lpad-body.i498, %bb.bf ], [ %eh.lpad-body.i498, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #43
          to label %.thread unwind label %bb.bl

bb.bl:                                            ; preds = %bb.fu, %bb.fo, %.sink.split.i, %bb.gd, %bb.fv, %bb.ge, %bb.fg, %bb.ff, %bb.fd, %bb.ep, %bb.en, %bb.em, %bb.ek, %bb.ea, %bb.dz, %bb.du, %bb.ds, %.thread353, %bb.cl, %.body
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.bm:                                            ; preds = %bb.f
  %i.hs = load i64, ptr %i.bg, align 8, !range !33, !noundef !15
  %.not59 = icmp eq i64 %i.hs, -9223372036854775808
  br i1 %.not59, label %bb.ch, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bh, ptr noundef nonnull align 8 dereferenceable(88) %i.bg, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %0, ptr %i.be, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %1, ptr %i.ht, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %3, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %4, ptr %i.hv, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7305)
  call void @llvm.experimental.noalias.scope.decl(metadata !7306)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.be, ptr %i.s, align 8, !noalias !7307
  %.sroa.0238.sroa.0.0.copyload = load i64, ptr %i.bh, align 8, !noalias !7308
  %.sroa.0238.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0238.sroa.4.0.copyload = load ptr, ptr %.sroa.0238.sroa.4.0..sroa_idx, align 8, !noalias !7308 ; 4 uses
  %.sroa.0238.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.0238.sroa.5.0.copyload = load i64, ptr %.sroa.0238.sroa.5.0..sroa_idx, align 8, !noalias !7308 ; 5 uses
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.sroa.5240.0.copyload = load i64, ptr %.sroa.5240.0..sroa_idx, align 8, !noalias !7308 ; 4 uses
  %i.hw = icmp eq i64 %.sroa.5240.0.copyload, 0
  br i1 %i.hw, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17he85f7b7bd62f632aE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.bn
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.4239.0.copyload = load ptr, ptr %.sroa.4239.0..sroa_idx, align 8, !noalias !7308, !nonnull !15, !noundef !15
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.sroa.5240.0.copyload, 2305843009213693950
  call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.hx = shl i64 %.sroa.5240.0.copyload, 3
  %i.hy = and i64 %i.hx, -16                      ; 2 uses
  %i.hz = add i64 %i.hy, 16                       ; 2 uses
  %i.ia = add nsw i64 %.sroa.5240.0.copyload, 17
  %i.ib = add i64 %i.ia, %i.hz                    ; 3 uses
  %i.ic = icmp uge i64 %i.ib, %i.hz
  call void @llvm.assume(i1 %i.ic)
  %i.id = icmp ult i64 %i.ib, 9223372036854775793
  call void @llvm.assume(i1 %i.id)
  %i.ie = sub nuw nsw i64 -16, %i.hy
  %i.if = getelementptr inbounds i8, ptr %.sroa.4239.0.copyload, i64 %i.ie
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !7309, !inline_history !7119
  br label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17he85f7b7bd62f632aE.exit.i"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17he85f7b7bd62f632aE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i, %bb.bn
  %i.ig = icmp ult i64 %.sroa.0238.sroa.5.0.copyload, 128102389400760776
  call void @llvm.assume(i1 %i.ig)
  %i.ih = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0238.sroa.4.0.copyload, i64 %.sroa.0238.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7310
  store ptr %.sroa.0238.sroa.4.0.copyload, ptr %i.o, align 8, !alias.scope !7311, !noalias !7312
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.0238.sroa.4.0.copyload, ptr %.sroa.4254.0..sroa_idx, align 8, !alias.scope !7311, !noalias !7312
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0238.sroa.0.0.copyload, ptr %.sroa.5255.0..sroa_idx, align 8, !alias.scope !7311, !noalias !7312
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ih, ptr %.sroa.6256.0..sroa_idx, align 8, !alias.scope !7311, !noalias !7312
  %.sroa.7257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.s, ptr %.sroa.7257.0..sroa_idx, align 8, !alias.scope !7311, !noalias !7312
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0238.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7310
  %i.ii = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 8, !range !16, !noalias !7313, !noundef !15
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i: ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17he85f7b7bd62f632aE.exit.i"
  %.pre.i.i.i.i = load i64, ptr %i.ii, align 8, !noalias !7314
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !7314
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i": ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17he85f7b7bd62f632aE.exit.i"
  %i.im = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i112 unwind label %bb.cd, !noalias !7310, !inline_history !7134 ; 2 uses

.noexc.i112:                                      ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i"
  %i.in = extractvalue { i64, i64 } %i.im, 0
  %i.io = extractvalue { i64, i64 } %i.im, 1      ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 %i.io, ptr %i.ip, align 8, !noalias !7315
  store i8 1, ptr %i.ij, align 8, !noalias !7315
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i": ; preds = %.noexc.i112, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i
  %.pre-phi473 = phi i64 [ %i.io, %.noexc.i112 ], [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i ]
  %.pre-phi = phi i64 [ %i.in, %.noexc.i112 ], [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.iq = add i64 %.pre-phi, 1
  store i64 %i.iq, ptr %i.ii, align 8, !noalias !7314
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hefc8b000c428d777E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, i64 noundef %.sroa.0238.sroa.5.0.copyload, i64 noundef %.pre-phi, i64 noundef %.pre-phi473)
          to label %bb.bo unwind label %bb.cd, !noalias !7310, !inline_history !7134

bb.bo:                                            ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %i.ir = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !7316, !noalias !7310, !noundef !15
  %i.it = icmp eq i64 %i.is, 0
  %i.iu = add nuw nsw i64 %.sroa.0238.sroa.5.0.copyload, 1
  %i.iv = lshr i64 %i.iu, 1
  %.sroa.0.0.i.i = select i1 %i.it, i64 %.sroa.0238.sroa.5.0.copyload, i64 %i.iv ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !7317, !noalias !7318, !noundef !15
  %i.iz = icmp ugt i64 %.sroa.0.0.i.i, %i.iy
  br i1 %i.iz, label %bb.bp, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i", !prof !21

.body123:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i._crit_edge"
  %lpad.thr_comm.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %.body123.thread

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.jb = load i64, ptr %i.iw, align 8, !alias.scope !7319, !noalias !7318, !noundef !15
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !alias.scope !7319, !noalias !7318, !nonnull !15, !noundef !15
  %i.je = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ja, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jd, i64 noundef %i.jb, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i" unwind label %bb.ca, !noalias !7310, !inline_history !7134 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i": ; preds = %bb.bp, %bb.bo
  %i.jf = load i64, ptr %i.n, align 8, !range !39, !alias.scope !7319, !noalias !7318, !noundef !15
  %i.jg = load i64, ptr %i.iw, align 8, !alias.scope !7319, !noalias !7318, !noundef !15 ; 2 uses
  %i.jh = icmp ult i64 %i.jg, 128102389400760776
  call void @llvm.assume(i1 %i.jh), !noalias !7320
  %i.ji = sub nsw i64 %i.jf, %i.jg
  %i.jj = icmp ugt i64 %.sroa.0.0.i.i, %i.ji
  br i1 %i.jj, label %bb.bq, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i"

bb.bq:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i"
  %i.jk = load i64, ptr %i.ir, align 8, !alias.scope !7319, !noalias !7318, !noundef !15
  %i.jl = load i64, ptr %i.ix, align 8, !alias.scope !7319, !noalias !7318, !noundef !15
  %i.jm = add i64 %i.jl, %i.jk
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h70ec2df240746fe8E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n, i64 noundef %.sroa.0.0.i.i, i64 noundef %i.jm)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i" unwind label %bb.ca, !noalias !7310, !inline_history !7134

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i": ; preds = %bb.bq, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !7322)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !7323, !noalias !7310, !nonnull !15, !noundef !15 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.jp, align 8, !alias.scope !7323, !noalias !7310 ; 3 uses
  %i.jq = icmp eq ptr %.promoted, %i.jo
  br i1 %i.jq, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i._crit_edge", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.lr.ph": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i"
  %.sroa.6285.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.js = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %.sroa.0280.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0280, i64 24
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.6282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.lr.ph", %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbd742e43c313cdadE.exit.i"
  %i.jv = phi ptr [ %.promoted, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.lr.ph" ], [ %i.jw, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbd742e43c313cdadE.exit.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7324), !noalias !7310
  call void @llvm.experimental.noalias.scope.decl(metadata !7325), !noalias !7310
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 72 ; 6 uses
  %.sroa.0.0.copyload.i.i116 = load i64, ptr %i.jv, align 8, !noalias !7326 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i116, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i._crit_edge", label %bb.bs

bb.br:                                            ; preds = %bb.by, %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17hcb85df8dfb6deccfE.exit.i"
  %i.jx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jw, ptr %i.jp, align 8
  br label %.body.i119

.body.i119:                                       ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i.i", %bb.br
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jx, %bb.br ], [ %i.kj, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i.i" ]
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h0a2d0ea0b23c238dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #43
          to label %.body123.thread unwind label %bb.bz, !noalias !7310, !inline_history !7157

bb.bs:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i"
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7327
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6285.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, i64 32, i1 false), !noalias !7328
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7329
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0280)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.jy, i64 20, i1 false)
  store i64 %.sroa.0.0.copyload.i.i116, ptr %i.h, align 8, !noalias !7330
  %i.jz = load ptr, ptr %i.jr, align 8, !noalias !7327, !noundef !15 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i, label %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17hcb85df8dfb6deccfE.exit.i", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ka = load ptr, ptr %i.s, align 8, !alias.scope !7331, !noalias !7332, !nonnull !15, !align !22, !noundef !15 ; 4 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !alias.scope !7333, !noalias !7332, !nonnull !15, !align !22, !noundef !15
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !7333, !noalias !7332, !nonnull !15, !align !27, !noundef !15
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !7333, !noalias !7332, !nonnull !15, !align !22, !noundef !15
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !alias.scope !7333, !noalias !7332, !nonnull !15, !align !22, !noundef !15
  %i.ki = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kd, ptr noundef nonnull %i.jz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kh)
          to label %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17hcb85df8dfb6deccfE.exit.i" unwind label %bb.bu, !noalias !7328, !inline_history !7171

bb.bu:                                            ; preds = %bb.bt
  %i.kj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jw, ptr %i.jp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7334), !noalias !7310
  call void @llvm.experimental.noalias.scope.decl(metadata !7335), !noalias !7310
  %i.kk = load ptr, ptr %i.js, align 8, !alias.scope !7336, !noalias !7327, !noundef !15 ; 3 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i.i", label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.km = load i64, ptr %i.kk, align 8, !noalias !7337, !noundef !15
  %i.kn = add i64 %i.km, -1                       ; 2 uses
  store i64 %i.kn, ptr %i.kk, align 8, !noalias !7337
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %bb.bw, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i.i"

bb.bw:                                            ; preds = %bb.bv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.js)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i.i" unwind label %bb.bx, !noalias !7332, !inline_history !7180

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i.i": ; preds = %bb.bw, %bb.bv, %bb.bu
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #43
          to label %.body.i119 unwind label %bb.bx, !noalias !7332, !inline_history !7180

bb.bx:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i.i", %bb.bw
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7332, !inline_history !7180
  unreachable

"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17hcb85df8dfb6deccfE.exit.i": ; preds = %bb.bt, %bb.bs
  %.sroa.02.0.i.i.i = phi ptr [ null, %bb.bs ], [ %i.ki, %bb.bt ]
  %i.kq = load ptr, ptr %i.js, align 8, !noalias !7327, !noundef !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0280.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !7338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0280, ptr noundef nonnull align 4 dereferenceable(20) %i.i, i64 20, i1 false), !noalias !7338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0280, i64 48, i1 false), !noalias !7329
  store ptr %.sroa.02.0.i.i.i, ptr %.sroa.5281.0..sroa_idx, align 8, !noalias !7329
  store ptr %i.kq, ptr %.sroa.6282.0..sroa_idx, align 8, !noalias !7329
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7339
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7339
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17he6ff7b7f8a5bc3d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.jt)
          to label %.noexc3.i unwind label %bb.br, !noalias !7328, !inline_history !7157

.noexc3.i:                                        ; preds = %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17hcb85df8dfb6deccfE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.ju, i64 40, i1 false), !noalias !7339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7339
  %i.kr = load i64, ptr %i.k, align 8, !range !33, !alias.scope !7340, !noalias !7339, !noundef !15
  %i.ks = icmp eq i64 %i.kr, -9223372036854775808
  br i1 %i.ks, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbd742e43c313cdadE.exit.i", label %bb.by

bb.by:                                            ; preds = %.noexc3.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbd742e43c313cdadE.exit.i" unwind label %bb.br, !noalias !7328, !inline_history !7157

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbd742e43c313cdadE.exit.i": ; preds = %bb.by, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0280)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7329
  %i.kt = icmp eq ptr %i.jw, %i.jo
  br i1 %i.kt, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i._crit_edge", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i._crit_edge": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbd742e43c313cdadE.exit.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i"
  %i.ku = phi ptr [ %.promoted, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i" ], [ %i.jw, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i" ], [ %i.jw, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hbd742e43c313cdadE.exit.i" ]
  store ptr %i.ku, ptr %i.jp, align 8
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h0a2d0ea0b23c238dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.ci unwind label %.body123, !inline_history !7157

bb.bz:                                            ; preds = %.body.i119
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7328, !inline_history !7157
  unreachable

.body123.thread:                                  ; preds = %bb.ca, %.body.i119, %.body123
  %eh.lpad-body124334 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp336, %.body123 ], [ %eh.lpad-body.i, %.body.i119 ], [ %lpad.thr_comm335, %bb.ca ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.n) #43
          to label %.body114 unwind label %bb.cc, !noalias !7310, !inline_history !7134

bb.ca:                                            ; preds = %bb.bq, %bb.bp
  %lpad.thr_comm335 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h0a2d0ea0b23c238dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.body123.thread unwind label %bb.cb, !noalias !7310

bb.cb:                                            ; preds = %bb.ca
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7318, !inline_history !7187
  unreachable

bb.cc:                                            ; preds = %bb.cd, %.body123.thread
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7310, !inline_history !7134
  unreachable

bb.cd:                                            ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i"
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h0a2d0ea0b23c238dE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.body114 unwind label %bb.cc, !noalias !7310, !inline_history !7134

.body114:                                         ; preds = %bb.cd, %.body123.thread
  %eh.lpad-body115 = phi { ptr, i32 } [ %i.ky, %bb.cd ], [ %eh.lpad-body124334, %.body123.thread ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bh, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7341)
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !7342, !noundef !15 ; 3 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %.thread309, label %bb.ce

bb.ce:                                            ; preds = %.body114
  %i.lc = load i64, ptr %i.la, align 8, !noalias !7343, !noundef !15
  %i.ld = add i64 %i.lc, -1                       ; 2 uses
  store i64 %i.ld, ptr %i.la, align 8, !noalias !7343
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %bb.cf, label %.thread309

bb.cf:                                            ; preds = %bb.ce
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kz)
          to label %.thread309 unwind label %bb.cg, !noalias !7305, !inline_history !7119

bb.cg:                                            ; preds = %bb.cf
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7305, !inline_history !7119
  unreachable

bb.ch:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.lg = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull inttoptr (i64 -4294967279 to ptr), i32 noundef %i.bm)
          to label %.thread398.thread unwind label %bb.fq

bb.ci:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i._crit_edge"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !7306
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7310
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.li = load i8, ptr %i.lh, align 8, !range !16, !alias.scope !7306, !noundef !15
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bh, i64 81
  %i.lk = load i8, ptr %i.lj, align 1, !range !16, !alias.scope !7306, !noundef !15
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  store i8 %i.li, ptr %i.ll, align 8, !alias.scope !7305
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bf, i64 81
  store i8 %i.lk, ptr %i.lm, align 1, !alias.scope !7305
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !7306, !noundef !15
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store ptr %i.lo, ptr %i.lp, align 8, !alias.scope !7305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.lq = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue6record17h6a415f67381847fbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.bf, i32 noundef %i.bm)
          to label %.thread398 unwind label %bb.fq

.thread398.thread:                                ; preds = %bb.ch, %bb.l, %.thread398, %.thread398, %.thread398, %.thread398, %.thread398, %bb.gc, %bb.d, %bb.es, %bb.ew, %bb.fm, %bb.fs, %bb.fj, %bb.fb, %bb.ei, %bb.dy, %bb.dh, %bb.ee, %bb.ed, %5, %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17hc57ba0f2632d9afbE.exit, %bb.bj, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit"
  %.sroa.0.2 = phi ptr [ %i.hq, %bb.bj ], [ %.sroa.0.0, %bb.gc ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %i.bs, %bb.d ], [ %.sroa.9.0.copyload, %5 ], [ %i.op, %bb.ed ], [ %i.oq, %bb.ee ], [ %i.pt, %bb.fb ], [ %i.oy, %bb.ei ], [ %i.py, %bb.fj ], [ %i.oi, %bb.dy ], [ %i.mv, %bb.dh ], [ %i.qc, %bb.fm ], [ %i.pj, %bb.ew ], [ %i.pe, %bb.es ], [ %i.qq, %bb.fs ], [ %i.qy, %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17hc57ba0f2632d9afbE.exit ], [ %i.lt, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit" ], [ %i.cq, %bb.l ], [ %i.lg, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  ret ptr %.sroa.0.2

bb.cj:                                            ; preds = %bb.g
  invoke fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi, ptr noundef nonnull %i.cf)
          to label %bb.ck unwind label %bb.fq

bb.ck:                                            ; preds = %bb.cj
  %i.lr = load ptr, ptr %i.bi, align 8, !nonnull !15, !noundef !15
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.lt = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ls)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE"(ptr noalias noundef align 8 dereferenceable(16) %i.ls) #43
          to label %.thread unwind label %bb.bl

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !7344)
  call void @llvm.experimental.noalias.scope.decl(metadata !7345)
  call void @llvm.experimental.noalias.scope.decl(metadata !7346)
  %i.lv = load ptr, ptr %i.ls, align 8, !alias.scope !7347, !nonnull !15, !noundef !15 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !7347, !noundef !15
  %i.lx = add i64 %i.lw, -1                       ; 2 uses
  store i64 %i.lx, ptr %i.lv, align 8, !noalias !7347
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.cn, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i"

bb.cn:                                            ; preds = %bb.cm
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ls)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i" unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7348)
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !7349, !noundef !15 ; 3 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.md = load i64, ptr %i.mb, align 8, !noalias !7350, !noundef !15
  %i.me = add i64 %i.md, -1                       ; 2 uses
  store i64 %i.me, ptr %i.mb, align 8, !noalias !7350
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %bb.cq, label %.thread

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ma)
          to label %.thread unwind label %bb.ct

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i": ; preds = %bb.cn, %bb.cm
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7351)
  %i.mh = load ptr, ptr %i.mg, align 8, !alias.scope !7352, !noundef !15 ; 3 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit", label %bb.cr

bb.cr:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i"
  %i.mj = load i64, ptr %i.mh, align 8, !noalias !7353, !noundef !15
  %i.mk = add i64 %i.mj, -1                       ; 2 uses
  store i64 %i.mk, ptr %i.mh, align 8, !noalias !7353
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %bb.cs, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit"

bb.cs:                                            ; preds = %bb.cr
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mg)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit" unwind label %bb.fq

bb.ct:                                            ; preds = %bb.cq
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit": ; preds = %bb.cr, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i", %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %.thread398.thread

bb.cu:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.df unwind label %bb.di

5:                                                ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  br label %.thread398.thread

bb.cv:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  %i.mn = invoke noundef nonnull align 8 ptr %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.dj unwind label %bb.di     ; 8 uses

bb.cw:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.mo = invoke { ptr, ptr } %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.dv unwind label %bb.di     ; 2 uses

bb.cx:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ax, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.eb unwind label %bb.di

bb.cy:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  %i.mp = invoke noundef nonnull align 8 ptr %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.ef unwind label %bb.di     ; 11 uses

bb.cz:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.mq = invoke noundef nonnull ptr %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.eq unwind label %bb.di

bb.da:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.as, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.eu unwind label %bb.di

bb.db:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aq, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.ey unwind label %bb.di

bb.dc:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ao, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.fh unwind label %bb.di

bb.dd:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.fk unwind label %bb.di

bb.de:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload), "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.mr = invoke { ptr, ptr } %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.fp unwind label %bb.di     ; 2 uses

bb.df:                                            ; preds = %bb.cu
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !alias.scope !7354
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !7354, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !7354 ; 2 uses
  %i.ms = icmp ult i64 %.sroa.5.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ms)
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7355
  store ptr %.sroa.4.0.copyload.i, ptr %i.r, align 8, !alias.scope !7356, !noalias !7357
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4208.0..sroa_idx, align 8, !alias.scope !7356, !noalias !7357
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5209.0..sroa_idx, align 8, !alias.scope !7356, !noalias !7357
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.mt, ptr %.sroa.6210.0..sroa_idx, align 8, !alias.scope !7356, !noalias !7357
  %.sroa.7211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %0, ptr %.sroa.7211.0..sroa_idx, align 8, !alias.scope !7356, !noalias !7357
  %.sroa.8212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %1, ptr %.sroa.8212.0..sroa_idx, align 8, !alias.scope !7356, !noalias !7357
  %.sroa.9213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %3, ptr %.sroa.9213.0..sroa_idx, align 8, !alias.scope !7356, !noalias !7357
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %4, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !7356, !noalias !7357
  invoke fastcc void @"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h0132b19179003f9bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.r)
          to label %bb.dg unwind label %bb.di, !inline_history !7220

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7355
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 -9223372036854775764, ptr %i.ac, align 8
  %i.mv = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h766f2f57969bffd4E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ac, i32 noundef %i.bm)
          to label %bb.dh unwind label %bb.di

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %.thread398.thread

.thread353.loopexit:                              ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread353

.thread353.loopexit.split-lp:                     ; preds = %._crit_edge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread353

bb.di:                                            ; preds = %bb.cu, %bb.cv, %bb.cw, %bb.cx, %bb.cy, %bb.cz, %bb.da, %bb.db, %bb.dc, %bb.dd, %bb.de, %bb.dg, %bb.eb, %bb.ed, %bb.eq, %bb.er, %bb.fi, %bb.ee, %bb.df, %bb.fh, %bb.dk
  %lpad.thr_comm.split-lp352 = landingpad { ptr, i32 }
          cleanup
  br label %.thread367

bb.dj:                                            ; preds = %bb.cv
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 32 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 160
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !7358, !noundef !15 ; 2 uses
  %i.mz = icmp ugt i64 %i.my, 4                   ; 2 uses
  %i.na = load ptr, ptr %i.mw, align 8, !alias.scope !7358, !nonnull !15
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  %.sink10.i.i = select i1 %i.mz, ptr %i.na, ptr %i.mw ; 3 uses
  %.val.i = load i64, ptr %i.nb, align 8, !alias.scope !7359
  %i.nc = select i1 %i.mz, i64 %.val.i, i64 %i.my ; 2 uses
  %.idx = shl nuw nsw i64 %i.nc, 5
  %i.nd = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 %.idx
  %.not456 = icmp eq i64 %i.nc, 0
  br i1 %.not456, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.dj
  %.sroa.053.1448 = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit"
  %.sroa.053.1450 = phi ptr [ %.sroa.053.1, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit" ], [ %.sroa.053.1448, %.lr.ph.preheader ] ; 3 uses
  %.sroa.053.0449 = phi ptr [ %.sroa.053.1450, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit" ], [ %.sink10.i.i, %.lr.ph.preheader ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.053.0449, i64 24 ; 5 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !nonnull !15, !noundef !15
  store ptr inttoptr (i64 -4294967295 to ptr), ptr %i.ne, align 8
  %i.ng = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.nf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.dl unwind label %.thread353.loopexit ; 2 uses

._crit_edge:                                      ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit", %bb.dj
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mn, i64 24 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !nonnull !15, !noundef !15
  %i.nj = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.ni, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.dk unwind label %.thread353.loopexit.split-lp

bb.dk:                                            ; preds = %._crit_edge
  store ptr %i.nj, ptr %i.nh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.mn, ptr %i.nk, align 8
  store i64 -9223372036854775762, ptr %i.av, align 8
  %i.nl = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h766f2f57969bffd4E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.av, i32 noundef %i.bm)
          to label %bb.et unwind label %bb.di

bb.dl:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !7360)
  %.val.i79 = load ptr, ptr %i.ne, align 8, !alias.scope !7360, !nonnull !15, !noundef !15 ; 4 uses
  %i.nm = ptrtoint ptr %.val.i79 to i64
  %i.nn = and i64 %i.nm, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.nn, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit" [
    i64 2, label %bb.dm
    i64 0, label %bb.dn
  ], !prof !20

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc80 unwind label %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7360
  store ptr %.val.i79, ptr %i.v, align 8, !noalias !7360
  %i.no = load i64, ptr %.val.i79, align 8, !noalias !7361, !noundef !15 ; 3 uses
  %i.np = and i64 %i.no, 72057594037927935
  %i.nq = add nsw i64 %i.np, -1                   ; 3 uses
  %i.nr = and i64 %i.no, 1080863910568919040
  %i.ns = icmp ult i64 %i.no, 864691128455135232
  call void @llvm.assume(i1 %i.ns)
  %i.nt = or i64 %i.nq, %i.nr
  store i64 %i.nt, ptr %.val.i79, align 8, !noalias !7361
  %i.nu = icmp ugt i64 %i.nq, 72057594037927935
  br i1 %i.nu, label %bb.dp, label %bb.do, !prof !21

bb.do:                                            ; preds = %bb.dn
  %i.nv = icmp eq i64 %i.nq, 0
  br i1 %i.nv, label %bb.dq, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i"

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7361
  store ptr @825, ptr %i.u, align 8, !noalias !7361
  %i.nw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.nw, align 8, !noalias !7361
  %i.nx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.nx, align 8, !noalias !7361
  %i.ny = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ny, align 8, !noalias !7361
  %i.nz = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.nz, align 8, !noalias !7361
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc81 unwind label %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.do
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i" unwind label %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i": ; preds = %bb.dq, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !7360
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit"

.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dq, %bb.dp, %bb.dm
  %lpad.loopexit.split-lp633 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ng, ptr %i.ne, align 8
  br label %.thread353

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i", %bb.dl
  store ptr %i.ng, ptr %i.ne, align 8
  %.not457 = icmp eq ptr %.sroa.053.1450, %i.nd   ; 2 uses
  %.sroa.053.1.idx = select i1 %.not457, i64 0, i64 32
  %.sroa.053.1 = getelementptr inbounds nuw i8, ptr %.sroa.053.1450, i64 %.sroa.053.1.idx
  br i1 %.not457, label %._crit_edge, label %.lr.ph

.thread353:                                       ; preds = %.thread353.loopexit, %.thread353.loopexit.split-lp, %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn348 = phi { ptr, i32 } [ %lpad.loopexit.split-lp633, %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.thread353.loopexit ], [ %lpad.loopexit.split-lp, %.thread353.loopexit.split-lp ]
  %.sroa.050.0347 = phi i1 [ true, %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %.thread353.loopexit ], [ false, %.thread353.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr161drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u3b$$u20$4$u5d$$GT$$GT$17h195ca4da9463c33cE"(ptr noalias noundef align 8 dereferenceable(136) %i.mw) #43
          to label %bb.dr unwind label %bb.bl

bb.dr:                                            ; preds = %.thread353
  br i1 %.sroa.050.0347, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.oa) #43
          to label %bb.du unwind label %bb.bl

bb.dt:                                            ; preds = %bb.du
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mn, i64 noundef 168, i64 noundef 8) #40
  br label %.thread367

bb.du:                                            ; preds = %bb.dr, %bb.ds
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..LetAttrs$GT$17h1fc9da446434c761E"(ptr noalias noundef align 8 dereferenceable(24) %i.mn) #43
          to label %bb.dt unwind label %bb.bl

end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE:bb.a
  %i.pl = load i8, ptr %i.as, align 8, !range !58, !alias.scope !7365, !noundef !15
  %.off.i = add nsw i8 %i.pl, -36
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %.sink.split.i, label %.thread

.sink.split.i:                                    ; preds = %bb.ex
  %i.pm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17hcc97b258ef37ea41E"(ptr noalias noundef align 8 dereferenceable(32) %i.pm)
          to label %.thread unwind label %bb.bl

bb.ey:                                            ; preds = %bb.db
  %i.pn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 3 uses
  %i.po = load ptr, ptr %i.pn, align 8, !nonnull !15, !noundef !15
  %i.pp = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.po, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.ez unwind label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  store ptr %i.pp, ptr %i.pn, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !nonnull !15, !noundef !15
  %i.ps = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.pr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fa unwind label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  store ptr %i.ps, ptr %i.pq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  %i.pt = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h766f2f57969bffd4E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ap, i32 noundef %i.bm)
          to label %bb.fb unwind label %bb.fq

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %.thread398.thread

bb.fc:                                            ; preds = %bb.fd
  br i1 %.sroa.043.0.ph, label %bb.ff, label %bb.fe

bb.fd:                                            ; preds = %bb.ez, %bb.ey
  %.sroa.042.0.ph = phi i1 [ true, %bb.ey ], [ false, %bb.ez ]
  %.sroa.043.0.ph = phi i1 [ false, %bb.ey ], [ true, %bb.ez ]
  %lpad.thr_comm404 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hb145868da0cbcd5cE"(ptr noalias noundef align 8 dereferenceable(40) %i.aq) #43
          to label %bb.fc unwind label %bb.bl

bb.fe:                                            ; preds = %bb.ff, %bb.fc
  br i1 %.sroa.042.0.ph, label %bb.fg, label %.thread

bb.ff:                                            ; preds = %bb.fc
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pn) #43
          to label %bb.fe unwind label %bb.bl

bb.fg:                                            ; preds = %bb.fe
  %i.pu = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pu) #43
          to label %.thread unwind label %bb.bl

bb.fh:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.sroa.0173.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.4174.0.copyload = load ptr, ptr %.sroa.4174.0..sroa_idx, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5175.0.copyload = load i64, ptr %.sroa.5175.0..sroa_idx, align 8 ; 2 uses
  %i.pv = icmp ult i64 %.sroa.5175.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.pv)
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4174.0.copyload, i64 %.sroa.5175.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7366
  store ptr %.sroa.4174.0.copyload, ptr %i.p, align 8, !alias.scope !7367, !noalias !7368
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.4174.0.copyload, ptr %.sroa.4223.0..sroa_idx, align 8, !alias.scope !7367, !noalias !7368
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.0173.0.copyload, ptr %.sroa.5224.0..sroa_idx, align 8, !alias.scope !7367, !noalias !7368
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.pw, ptr %.sroa.6225.0..sroa_idx, align 8, !alias.scope !7367, !noalias !7368
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %0, ptr %.sroa.7226.0..sroa_idx, align 8, !alias.scope !7367, !noalias !7368
  %.sroa.8227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %1, ptr %.sroa.8227.0..sroa_idx, align 8, !alias.scope !7367, !noalias !7368
  %.sroa.9228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %3, ptr %.sroa.9228.0..sroa_idx, align 8, !alias.scope !7367, !noalias !7368
  %.sroa.10229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %4, ptr %.sroa.10229.0..sroa_idx, align 8, !alias.scope !7367, !noalias !7368
  invoke fastcc void @"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h8bba3556a11da408E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
          to label %bb.fi unwind label %bb.di, !inline_history !7247

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7366
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.px = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.px, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  store i64 -9223372036854775755, ptr %i.am, align 8
  %i.py = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h766f2f57969bffd4E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.am, i32 noundef %i.bm)
          to label %bb.fj unwind label %bb.di

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread398.thread

bb.fk:                                            ; preds = %bb.dd
  %i.pz = load ptr, ptr %i.al, align 8, !nonnull !15, !noundef !15
  %i.qa = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.pz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fl unwind label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  store ptr %i.qa, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  store i64 -9223372036854775754, ptr %i.ak, align 8
  %i.qc = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h766f2f57969bffd4E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ak, i32 noundef %i.bm)
          to label %bb.fm unwind label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.thread398.thread

bb.fn:                                            ; preds = %bb.fk
  %i.qd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7369)
  call void @llvm.experimental.noalias.scope.decl(metadata !7370)
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !7371, !nonnull !15, !noundef !15 ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !7371, !noundef !15
  %i.qh = add i64 %i.qg, -1                       ; 2 uses
  store i64 %i.qh, ptr %i.qf, align 8, !noalias !7371
  %i.qi = icmp eq i64 %i.qh, 0
  br i1 %i.qi, label %bb.fo, label %.thread

bb.fo:                                            ; preds = %bb.fn
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6a62d9c4eafed149E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qe)
          to label %.thread unwind label %bb.bl

bb.fp:                                            ; preds = %bb.de
  %i.qj = extractvalue { ptr, ptr } %i.mr, 0      ; 4 uses
  %i.qk = extractvalue { ptr, ptr } %i.mr, 1      ; 2 uses
  store ptr %i.qj, ptr %i.ab, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.qk, ptr %i.ql, align 8
  %i.qm = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fr unwind label %bb.ft     ; 2 uses

bb.fq:                                            ; preds = %bb.fl, %bb.ev, %bb.dx, %bb.l, %bb.e, %bb.ci, %bb.i, %bb.ch, %bb.f, %bb.cs, %bb.cj, %bb.g, %bb.fx, %bb.bi, %bb.eh, %bb.fa, %bb.fr
  %.val71471 = phi ptr [ %.sroa.9.0.copyload, %bb.fl ], [ %.sroa.9.0.copyload, %bb.ev ], [ %.sroa.9.0.copyload, %bb.dx ], [ %i.bu, %bb.l ], [ %i.bu, %bb.e ], [ %i.by, %bb.ci ], [ %i.ch, %bb.i ], [ %i.by, %bb.ch ], [ %i.by, %bb.f ], [ %i.cc, %bb.cs ], [ %i.cc, %bb.cj ], [ %i.cc, %bb.g ], [ %.sroa.9.0.copyload, %bb.fr ], [ %i.ch, %bb.fx ], [ %i.bu, %bb.bi ], [ %.sroa.9.0.copyload, %bb.eh ], [ %.sroa.9.0.copyload, %bb.fa ]
  %i.qn = landingpad { ptr, i32 }
          cleanup
  br label %.thread309

bb.fr:                                            ; preds = %bb.fp
  store ptr %i.qm, ptr %i.ql, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.qj, ptr %i.qo, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.qm, ptr %i.qp, align 8
  store i64 -9223372036854775753, ptr %i.aa, align 8
  %i.qq = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h766f2f57969bffd4E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aa, i32 noundef %i.bm)
          to label %bb.fs unwind label %bb.fq

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread398.thread

bb.ft:                                            ; preds = %bb.fp
  %i.qr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qs = load i64, ptr %i.qj, align 8, !noalias !7372, !noundef !15
  %i.qt = add i64 %i.qs, -1                       ; 2 uses
  store i64 %i.qt, ptr %i.qj, align 8, !noalias !7372
  %i.qu = icmp eq i64 %i.qt, 0
  br i1 %i.qu, label %bb.fu, label %.thread

bb.fu:                                            ; preds = %bb.ft
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h11e86ee6dea44245E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.thread unwind label %bb.bl

.thread367:                                       ; preds = %bb.di, %bb.dt
  %.pn57 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp352, %bb.di ], [ %.pn348, %bb.dt ] ; 12 uses
  switch i64 %i.bn, label %bb.fv [
    i64 0, label %.thread309
    i64 2, label %.thread309
    i64 3, label %.thread309
    i64 4, label %.thread309
    i64 5, label %.thread309
    i64 6, label %.thread309
    i64 7, label %.thread309
    i64 8, label %.thread309
    i64 9, label %.thread309
    i64 10, label %.thread309
    i64 11, label %.thread309
  ]

bb.fv:                                            ; preds = %.thread367
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$nickel_lang_core..eval..value..lens..TermContent$GT$17h896b339535baf7fbE"(i64 %i.bn, ptr %.sroa.9.0.copyload) #43
          to label %.thread309 unwind label %bb.bl

bb.fw:                                            ; preds = %bb.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(20) %i.qv, i64 20, i1 false)
  %i.qw = load ptr, ptr %i.ay, align 8, !noundef !15 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq ptr %i.qw, null
  br i1 %.not, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h4a3e452edeece8d2E.exit", label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.qx = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h4a3e452edeece8d2E.exit" unwind label %bb.fq, !inline_history !7256

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h4a3e452edeece8d2E.exit": ; preds = %bb.fx, %bb.fw
  %.sroa.06.0 = phi ptr [ null, %bb.fw ], [ %i.qx, %bb.fx ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !7373
  %i.qy = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #40, !noalias !7373 ; 6 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.fz, label %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17hc57ba0f2632d9afbE.exit, !prof !21

bb.fy:                                            ; preds = %bb.fz
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h56667d468acc95faE"(ptr %.sroa.06.0) #43
          to label %.thread unwind label %bb.gb, !noalias !7373

bb.fz:                                            ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h4a3e452edeece8d2E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7373
  store ptr @155, ptr %i.t, align 8, !noalias !7373
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.rb, align 8, !noalias !7373
  %i.rc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.rc, align 8, !noalias !7373
  %i.rd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.rd, align 8, !noalias !7373
  %i.re = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.re, align 8, !noalias !7373
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #41
          to label %bb.ga unwind label %bb.fy, !noalias !7373

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %bb.fy
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7373
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17hc57ba0f2632d9afbE.exit: ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h4a3e452edeece8d2E.exit"
  store i64 504403158265495553, ptr %i.qy, align 8, !noalias !7373
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i32 %i.bm, ptr %i.rg, align 8, !noalias !7373
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %.sroa.06.0, ptr %i.rh, align 8, !noalias !7374
  %.sroa.5.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i100, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.az, i64 20, i1 false)
  br label %.thread398.thread

.thread398:                                       ; preds = %bb.et, %bb.ci
  %.val73 = phi ptr [ %.sroa.9.0.copyload, %bb.et ], [ %i.by, %bb.ci ]
  %.sroa.0.0 = phi ptr [ %i.nl, %bb.et ], [ %i.lq, %bb.ci ] ; 6 uses
  switch i64 %i.br, label %bb.gc [
    i64 3, label %.thread398.thread
    i64 4, label %.thread398.thread
    i64 6, label %.thread398.thread
    i64 7, label %.thread398.thread
    i64 9, label %.thread398.thread
  ]

bb.gc:                                            ; preds = %.thread398
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17hfea4b60301434fe6E"(i64 %i.bn, ptr nonnull %.val73)
  br label %.thread398.thread

.thread309:                                       ; preds = %bb.fq, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %bb.fv, %bb.cf, %bb.ce, %.body114
  %.val71 = phi ptr [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %i.by, %bb.cf ], [ %.sroa.9.0.copyload, %.thread367 ], [ %i.by, %.body114 ], [ %i.by, %bb.ce ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %bb.fv ], [ %.val71471, %bb.fq ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ]
  %.pn61302 = phi { ptr, i32 } [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %eh.lpad-body115, %bb.cf ], [ %.pn57, %.thread367 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body115, %bb.ce ], [ %.pn57, %.thread367 ], [ %.pn57, %bb.fv ], [ %i.qn, %bb.fq ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ] ; 6 uses
  switch i64 %i.br, label %bb.gd [
    i64 3, label %.thread
    i64 4, label %.thread
    i64 6, label %.thread
    i64 7, label %.thread
    i64 9, label %.thread
  ]

bb.gd:                                            ; preds = %.thread309
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17hfea4b60301434fe6E"(i64 %i.bn, ptr %.val71) #43
          to label %.thread unwind label %bb.bl

.thread:                                          ; preds = %bb.co, %bb.cp, %bb.cq, %bb.fy, %.body, %bb.cl, %bb.ft, %bb.fu, %bb.fn, %bb.fo, %bb.ex, %.sink.split.i, %bb.dz, %bb.ea, %bb.fe, %bb.fg, %bb.eo, %.thread309, %.thread309, %.thread309, %.thread309, %.thread309, %bb.gd, %bb.ge
  %.pn63292 = phi { ptr, i32 } [ %.pn61302, %bb.gd ], [ %lpad.thr_comm.split-lp, %bb.ge ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %lpad.thr_comm404, %bb.fe ], [ %lpad.thr_comm.split-lp360, %bb.dz ], [ %lpad.thr_comm404, %bb.fg ], [ %i.qd, %bb.fn ], [ %i.pk, %.sink.split.i ], [ %i.pk, %bb.ex ], [ %i.qd, %bb.fo ], [ %i.qr, %bb.fu ], [ %i.qr, %bb.ft ], [ %lpad.thr_comm379395, %bb.eo ], [ %i.lu, %bb.cl ], [ %eh.lpad-body, %.body ], [ %i.lz, %bb.cp ], [ %i.lz, %bb.co ], [ %i.lz, %bb.cq ], [ %lpad.thr_comm359372, %bb.ea ], [ %i.ra, %bb.fy ]
  resume { ptr, i32 } %.pn63292

bb.ge:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl) #43
          to label %.thread unwind label %bb.bl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h7c08f2cecc2c7f4fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !align !27, !noundef !15
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !15, !align !22, !noundef !15
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !15, !align !22, !noundef !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.i = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #43
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7393)
  call void @llvm.experimental.noalias.scope.decl(metadata !7394)
  call void @llvm.experimental.noalias.scope.decl(metadata !7395)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !7396, !nonnull !15, !noundef !15 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !7396, !noundef !15
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !7396
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7397)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !7398, !noundef !15 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !noalias !7399, !noundef !15
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !7399
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %common.resume unwind label %bb.j

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i": ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7400)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !7401, !noundef !15 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i"
  %i.y = load i64, ptr %i.w, align 8, !noalias !7402, !noundef !15
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.w, align 8, !noalias !7402
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit"

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hfff78958d354b56cE.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h1375864748e9c2aeE.exit.i", %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17he50b0540d6508aabE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, i32 %.0.val, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
begin_hunk_3_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17he14bb5dce5b66c0aE":bb.a
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb15157c9d6644190E.exit", !prof !18

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h221047cb3d118c1eE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

common.resume:                                    ; preds = %.body, %bb.d, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.o, %bb.d ], [ %i.o, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hb15157c9d6644190E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.ae, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms17h772e153790b68e81E"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [32 x i8], align 8            ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9337)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !9338, !noundef !15 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0941ae57ff71c228E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0941ae57ff71c228E.exit.i.i": ; preds = %bb.a
  %i.o = add i64 %i.m, -1
  store i64 %i.o, ptr %i.l, align 8, !alias.scope !9338
  %i.p = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c9a5378d815980eE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0941ae57ff71c228E.exit.i.i"
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !9339 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val3.i.i = load i32, ptr %i.r, align 8, !alias.scope !9339
  %.val4.i.i = load ptr, ptr %i.p, align 8, !nonnull !15, !noundef !15 ; 4 uses
  %i.s = ptrtoint ptr %.val4.i.i to i64
  %i.t = and i64 %i.s, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2)
  switch i64 %..i.i.i.i, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !20

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc9 unwind label %bb.al

.noexc9:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %.val4.i.i, align 8, !noundef !15 ; 3 uses
  %i.v = and i64 %i.u, 72057594037927935          ; 3 uses
  %i.w = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  %i.y = and i64 %i.u, 1080863910568919040
  %i.z = icmp ult i64 %i.u, 864691128455135232
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = or i64 %i.x, %i.y
  store i64 %i.aa, ptr %.val4.i.i, align 8
  %i.ab = icmp eq i64 %i.v, 72057594037927935
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !21

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9339
  store ptr @825, ptr %i.k, align 8, !noalias !9339
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.ac, align 8, !noalias !9339
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.ad, align 8, !noalias !9339
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !noalias !9339
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !9339
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc10 unwind label %bb.al

.noexc10:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !15
  %i.ak = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.aj
  %i.al = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h1e1eabfe14b7d8eeE(ptr noundef nonnull %.val4.i.i, ptr noundef nonnull %i.ah, ptr noundef %i.ak, i32 noundef %.val3.i.i)
          to label %.noexc11 unwind label %bb.al

.noexc11:                                         ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val.i = load ptr, ptr %i.am, align 8, !alias.scope !9336, !nonnull !15, !align !27, !noundef !15
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val3.i = load ptr, ptr %i.an, align 8, !alias.scope !9336, !nonnull !15, !align !22, !noundef !15 ; 2 uses
  %.val.i4.i = load ptr, ptr %.val3.i, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %i.ao = getelementptr i8, ptr %.val3.i, i64 8
  %.val2.i.i = load ptr, ptr %i.ao, align 8       ; 4 uses
  %.val.i.i.i.i = load i64, ptr %.val.i4.i, align 8, !noundef !15 ; 2 uses
  %i.ap = icmp ne i64 %.val.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %.val.i.i.i.i, 1                ; 2 uses
  store i64 %i.aq, ptr %.val.i4.i, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i, !prof !21

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i: ; preds = %.noexc11
  %.not.i.i.i = icmp eq ptr %.val2.i.i, null
  br i1 %.not.i.i.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i", label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i
  %.val.i2.i.i.i = load i64, ptr %.val2.i.i, align 8, !noundef !15 ; 2 uses
  %i.as = icmp ne i64 %.val.i2.i.i.i, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i64 %.val.i2.i.i.i, 1               ; 2 uses
  store i64 %i.at, ptr %.val2.i.i, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i", !prof !21

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i": ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i
  %i.av = invoke fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h5b1004cc67eb92fcE"(ptr noundef nonnull %i.al, ptr noalias noundef nonnull align 1 %.val.i, ptr noundef nonnull %.val.i4.i, ptr noundef %.val2.i.i, i64 noundef 0, ptr undef)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0e898cc36a38f277E.exit" unwind label %bb.al

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0e898cc36a38f277E.exit": ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.017.0.copyload = load i64, ptr %0, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, i64 32, i1 false)
  %.sroa.622.0.copyload = load ptr, ptr %i.q, align 8 ; 3 uses
  %.sroa.7.0.copyload = load i32, ptr %i.r, align 8
  %.sroa.823.0.copyload = load ptr, ptr %i.am, align 8 ; 2 uses
  %.sroa.9.0.copyload = load ptr, ptr %i.an, align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9340
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 19, ptr %i.aw, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !9340
  store i64 -9223372036854775757, ptr %i.j, align 8, !noalias !9340
  %i.ax = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.j)
          to label %bb.l unwind label %bb.aj

bb.j:                                             ; preds = %bb.a, %.noexc
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @238, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @239) #41
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0e898cc36a38f277E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9340
  %i.ay = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.ax, i32 noundef %1)
          to label %bb.m unwind label %bb.aj      ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.622.0.copyload), "nonnull"(ptr %.sroa.823.0.copyload), "nonnull"(ptr %.sroa.9.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9341
  store i64 %.sroa.017.0.copyload, ptr %i.i, align 8, !noalias !9342
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx19, align 8, !noalias !9342
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !noalias !9342
  call void @llvm.experimental.noalias.scope.decl(metadata !9343)
  call void @llvm.experimental.noalias.scope.decl(metadata !9344)
  call void @llvm.experimental.noalias.scope.decl(metadata !9345)
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !9346, !noalias !9341, !noundef !15
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h0336e84be6c8cfe4E.exit.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9347
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.622.0.copyload, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.622.0.copyload, i64 16
  %i.be = getelementptr i8, ptr %.sroa.9.0.copyload, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.o

bb.o:                                             ; preds = %.noexc4.i.i.i.i, %bb.n
  %storemerge.i.i.i.i.i.i = phi ptr [ %i.ay, %bb.n ], [ %i.cp, %.noexc4.i.i.i.i ] ; 6 uses
  %i.bi = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9c9a5378d815980eE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.p unwind label %bb.ad, !noalias !9348 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !9348, !nonnull !15, !noundef !15 ; 4 uses
  %i.bj = load i64, ptr %i.az, align 8, !alias.scope !9346, !noalias !9349, !noundef !15
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.az, align 8, !alias.scope !9346, !noalias !9349
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9350
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !9350
  %i.bl = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bm = and i64 %i.bl, 3
  %..i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i" [
    i64 2, label %bb.r
    i64 0, label %bb.s
  ], !prof !20

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9351

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bn = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !9351, !noundef !15 ; 3 uses
  %i.bo = and i64 %i.bn, 72057594037927935        ; 3 uses
  %i.bp = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  %i.br = and i64 %i.bn, 1080863910568919040
  %i.bs = icmp ult i64 %i.bn, 864691128455135232
  call void @llvm.assume(i1 %i.bs)
  %i.bt = or i64 %i.bq, %i.br
  store i64 %i.bt, ptr %.val.i.i.i.i.i.i, align 8, !noalias !9351
  %i.bu = icmp eq i64 %i.bo, 72057594037927935
  br i1 %i.bu, label %bb.t, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i", !prof !21

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9350
  store ptr @825, ptr %i.f, align 8, !noalias !9350
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bv, align 8, !noalias !9350
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.bw, align 8, !noalias !9350
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !noalias !9350
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.by, align 8, !noalias !9350
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc4.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9351

.noexc4.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.t
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.s, %bb.q
  %i.bz = load ptr, ptr %i.bc, align 8, !noalias !9351, !nonnull !15, !noundef !15 ; 2 uses
  %i.ca = load i64, ptr %i.bd, align 8, !noalias !9351, !noundef !15
  %i.cb = getelementptr inbounds nuw [160 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h1e1eabfe14b7d8eeE(ptr noundef nonnull %.val.i.i.i.i.i.i, ptr noundef nonnull %i.bz, ptr noundef %i.cb, i32 noundef %.sroa.7.0.copyload)
          to label %"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17h6450e54ec40e570eE.exit.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !9351

"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17h6450e54ec40e570eE.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9352
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !9352
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0.copyload, align 8, !noalias !9353, !nonnull !15, !noundef !15 ; 3 uses
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !9353 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9353, !noundef !15 ; 2 uses
  %i.cd = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.ce, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9353
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.u, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !21

bb.u:                                             ; preds = %"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17h6450e54ec40e570eE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17h6450e54ec40e570eE.exit.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9353, !noundef !15 ; 2 uses
  %i.cg = icmp ne i64 %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add i64 %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.ch, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9353
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %bb.x, !prof !21

bb.w:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.v, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = invoke fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h5b1004cc67eb92fcE"(ptr noundef nonnull %i.cc, ptr noalias noundef nonnull align 1 %.sroa.823.0.copyload, ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 0, ptr undef)
          to label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.aa, !noalias !9353

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9352
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !9352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9354
  store i8 19, ptr %i.bf, align 8, !noalias !9352
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !9354
  store i64 -9223372036854775757, ptr %i.b, align 8, !noalias !9354
  %i.ck = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h1763a247376632edE.exit.i.i.i.i.i.i.i" unwind label %bb.y, !noalias !9353

bb.y:                                             ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i.i.i.i.i.i.i.i.i.i"
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #43
          to label %.body.i.i.i.i unwind label %bb.z, !noalias !9353

bb.z:                                             ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !9353
  unreachable

bb.aa:                                            ; preds = %bb.x
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #43
          to label %.body.i.i.i.i unwind label %bb.ab, !noalias !9353

bb.ab:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !9353
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i", %bb.t, %bb.r
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #43
          to label %.body.i.i.i.i unwind label %bb.ac, !noalias !9351

bb.ac:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !9351
  unreachable

"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h1763a247376632edE.exit.i.i.i.i.i.i.i": ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h56987c256bdc7522E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9354
  store ptr %i.ck, ptr %i.bg, align 8, !noalias !9352
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !9352
  store i64 -9223372036854775761, ptr %i.c, align 8, !noalias !9352
  %i.co = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !9355

.noexc.i.i.i.i:                                   ; preds = %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17h1763a247376632edE.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9352
  %i.cp = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.co, i32 noundef %1)
          to label %.noexc4.i.i.i.i unwind label %bb.af, !noalias !9355 ; 2 uses

.noexc4.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9350
  %i.cq = load i64, ptr %i.az, align 8, !alias.scope !9346, !noalias !9349, !noundef !15
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.sink.split.i.i.i.i.i, label %bb.o

end_hunk_3
begin_hunk_4_@_ZN16nickel_lang_core4term4make12enum_variant17hb5ce7b4200da3117E:bb.a

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h64fd8bdfd94445eaE.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !14709
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.l, align 8, !noalias !14709
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.m, align 8, !noalias !14710
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body3

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term4make7builder6Record4path17h33b22ded55e4fee9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !14736 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !14736, !nonnull !15, !noundef !15 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !14736 ; 4 uses
  %i.d = icmp ult i64 %.sroa.5.0.copyload.i, 461168601842738791
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..make..builder..Record$GT$17h7b33e8b3efbfd9a9E"(ptr noalias noundef align 8 dereferenceable(32) %1) #43
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.e = mul nuw i64 %.sroa.0.0.copyload.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !14737
  br label %.body

bb.c:                                             ; preds = %.noexc12.i.i.i.i.i, %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17hd3426ade00f6d267E.exit.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.g, label %.body, label %bb.b

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.noexc13.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc13.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14738
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.h, i64 20, i1 false), !noalias !14738
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !14739
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17hd3426ade00f6d267E.exit.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i, !prof !17

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14739
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !14739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14739
  store ptr %i.b, ptr %i.a, align 8, !noalias !14739
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @461, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @463)
          to label %.noexc.i.i.i.i.i unwind label %bb.c, !noalias !14740

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14739
  br label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17hd3426ade00f6d267E.exit.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17hd3426ade00f6d267E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = invoke { ptr, i64 } @"_ZN92_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17ha8e0a3be93011bbfE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c)
          to label %.noexc12.i.i.i.i.i unwind label %bb.c, !noalias !14740 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17hd3426ade00f6d267E.exit.i.i.i.i.i.i.i"
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hc73812be4bb17e91E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %.noexc13.i.i.i.i.i unwind label %bb.c, !noalias !14740

.noexc13.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14738
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !noalias !14740
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.p, %.sroa.5.0.copyload.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.loopexit:                                        ; preds = %.noexc13.i.i.i.i.i, %bb.a
  %i.q = mul nuw i64 %.sroa.0.0.copyload.i, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.q, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx17, align 8
  store i64 18, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 -9223372036854775806, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  ret void

bb.d:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData10map_values17heb9f60197d70aa2fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.058 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.i, align 8
  %.sroa.021.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.sroa.4.0.copyload = load ptr, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.021.sroa.5.0.copyload = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.j = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.j, label %bb.d, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.a
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !nonnull !15, !noundef !15
  %or.cond.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.k = shl i64 %.sroa.5.0.copyload, 3
  %i.l = and i64 %i.k, -16                        ; 2 uses
  %i.m = add i64 %i.l, 16                         ; 2 uses
  %i.n = add nsw i64 %.sroa.5.0.copyload, 17
  %i.o = add i64 %i.n, %i.m                       ; 3 uses
  %i.p = icmp uge i64 %i.o, %i.m
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %i.o, 9223372036854775793
  tail call void @llvm.assume(i1 %i.q)
  %i.r = sub nuw nsw i64 -16, %i.l
  %i.s = getelementptr inbounds i8, ptr %.sroa.422.0.copyload, i64 %i.r
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !14819
  br label %bb.d

.body:                                            ; preds = %bb.t, %.body8.thread
  %eh.lpad-body = phi { ptr, i32 } [ %i.cv, %bb.t ], [ %eh.lpad-body973, %.body8.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14820)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !14820, !noundef !15 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17hd2f0c2e33411130bE.exit", label %bb.b

bb.b:                                             ; preds = %.body
  %i.w = load i64, ptr %i.u, align 8, !noalias !14821, !noundef !15
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !14821
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17hd2f0c2e33411130bE.exit"

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17hd2f0c2e33411130bE.exit" unwind label %bb.v

bb.d:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i
  %i.z = icmp ult i64 %.sroa.021.sroa.5.0.copyload, 128102389400760776
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %.sroa.021.sroa.4.0.copyload, i64 %.sroa.021.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14822
  store ptr %.sroa.021.sroa.4.0.copyload, ptr %i.h, align 8, !alias.scope !14823, !noalias !14824
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.021.sroa.4.0.copyload, ptr %.sroa.434.0..sroa_idx, align 8, !alias.scope !14823, !noalias !14824
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.021.sroa.0.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8, !alias.scope !14823, !noalias !14824
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.aa, ptr %.sroa.636.0..sroa_idx, align 8, !alias.scope !14823, !noalias !14824
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !14823, !noalias !14824
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.4.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14822
  %i.ab = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !16, !noalias !14825, !noundef !15
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !14826
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !14826
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i": ; preds = %bb.d
  %i.af = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i unwind label %bb.t, !noalias !14822, !inline_history !14764 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i"
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !noalias !14827
  store i8 1, ptr %i.ac, align 8, !noalias !14827
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i": ; preds = %.noexc.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i
  %.pre-phi85 = phi i64 [ %i.ah, %.noexc.i ], [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i ]
  %.pre-phi = phi i64 [ %i.ag, %.noexc.i ], [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.aj = add i64 %.pre-phi, 1
  store i64 %i.aj, ptr %i.ab, align 8, !noalias !14826
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hefc8b000c428d777E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, i64 noundef %.sroa.021.sroa.5.0.copyload, i64 noundef %.pre-phi, i64 noundef %.pre-phi85)
          to label %bb.e unwind label %bb.t, !noalias !14822, !inline_history !14764

bb.e:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !14822, !nonnull !15, !noundef !15
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8, !noalias !14822, !nonnull !15, !noundef !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !14828, !noalias !14822, !noundef !15
  %i.am = icmp eq i64 %i.al, 0
  %i.an = ptrtoint ptr %.sroa.496.0.copyload to i64
  %i.ao = ptrtoint ptr %.sroa.3.0.copyload to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = udiv exact i64 %i.ap, 72                ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = lshr i64 %i.ar, 1
  %.sroa.0.0.i.i = select i1 %i.am, i64 %i.aq, i64 %i.as ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !14829, !noalias !14830, !noundef !15
  %i.aw = icmp ugt i64 %.sroa.0.0.i.i, %i.av
  br i1 %i.aw, label %bb.f, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i", !prof !21

.body8:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h60cf6e9682b8f8bdE.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body8.thread

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ay = load i64, ptr %i.at, align 8, !alias.scope !14831, !noalias !14830, !noundef !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !14831, !noalias !14830, !nonnull !15, !noundef !15
  %i.bb = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ba, i64 noundef %i.ay, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i" unwind label %bb.q ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i": ; preds = %bb.f, %bb.e
  %i.bc = load i64, ptr %i.g, align 8, !range !39, !alias.scope !14831, !noalias !14830, !noundef !15
  %i.bd = load i64, ptr %i.at, align 8, !alias.scope !14831, !noalias !14830, !noundef !15 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 128102389400760776
  call void @llvm.assume(i1 %i.be), !noalias !14830
  %i.bf = sub nsw i64 %i.bc, %i.bd
  %i.bg = icmp ugt i64 %.sroa.0.0.i.i, %i.bf
  br i1 %i.bg, label %bb.g, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit"

bb.g:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i"
  %i.bh = load i64, ptr %i.ak, align 8, !alias.scope !14831, !noalias !14830, !noundef !15
  %i.bi = load i64, ptr %i.au, align 8, !alias.scope !14831, !noalias !14830, !noundef !15
  %i.bj = add i64 %i.bi, %i.bh
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h70ec2df240746fe8E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %.sroa.0.0.i.i, i64 noundef %i.bj)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit" unwind label %bb.q

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i", %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14832
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14833), !noalias !14830
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !14834, !noalias !14835, !nonnull !15, !noundef !15 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.bm, align 8, !alias.scope !14834, !noalias !14835 ; 3 uses
  %i.bn = icmp eq ptr %.promoted, %i.bl
  br i1 %i.bn, label %_ZN4core4iter6traits8iterator8Iterator4fold17h60cf6e9682b8f8bdE.exit.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.i.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.i.lr.ph": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit"
  %.sroa.663.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.sroa.058.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.058, i64 24
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.i.lr.ph", %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc98e120715e7db55E.exit.i.i"
  %i.bs = phi ptr [ %.promoted, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.i.lr.ph" ], [ %i.bt, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hc98e120715e7db55E.exit.i.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14836), !noalias !14837
  call void @llvm.experimental.noalias.scope.decl(metadata !14838), !noalias !14837
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 6 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bs, align 8, !noalias !14839 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h60cf6e9682b8f8bdE.exit.i, label %bb.i

bb.h:                                             ; preds = %bb.o, %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bt, ptr %i.bm, align 8
  br label %.body19

.body19:                                          ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i", %bb.h
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.bu, %bb.h ], [ %i.cg, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i" ]
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h0a2d0ea0b23c238dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #43
          to label %.body8.thread unwind label %bb.p, !noalias !14840, !inline_history !14787

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h68a3fc1c9adaba0eE.exit.i.i.i"
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !14842
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14843
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i64 20, i1 false)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !noalias !14844
  %i.bw = load ptr, ptr %i.bo, align 8, !noalias !14841, !noundef !15 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i15, label %.noexc.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.i, align 8, !alias.scope !14845, !noalias !14841, !nonnull !15, !align !22, !noundef !15 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !14846, !noalias !14841, !nonnull !15, !align !22, !noundef !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !14846, !noalias !14841, !nonnull !15, !align !27, !noundef !15
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !14846, !noalias !14841, !nonnull !15, !align !22, !noundef !15
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !14846, !noalias !14841, !nonnull !15, !align !22, !noundef !15
  %i.cf = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17hcb5792e2a390306dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, ptr noundef nonnull %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce)
          to label %.noexc.i.i unwind label %bb.k, !noalias !14841, !inline_history !14801

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bt, ptr %i.bm, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14847), !noalias !14842
  call void @llvm.experimental.noalias.scope.decl(metadata !14848), !noalias !14842
  %i.ch = load ptr, ptr %i.bp, align 8, !alias.scope !14849, !noalias !14841, !noundef !15 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load i64, ptr %i.ch, align 8, !noalias !14850, !noundef !15
  %i.ck = add i64 %i.cj, -1                       ; 2 uses
  store i64 %i.ck, ptr %i.ch, align 8, !noalias !14850
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i"

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i" unwind label %bb.n, !noalias !14841, !inline_history !14810

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i": ; preds = %bb.m, %bb.l, %bb.k
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hc23effa4373bf2d7E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #43
          to label %.body19 unwind label %bb.n, !noalias !14841, !inline_history !14810

bb.n:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h12b0ac5991e0700cE.exit.i", %bb.m
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !14841, !inline_history !14810
  unreachable

.noexc.i.i:                                       ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i = phi ptr [ null, %bb.i ], [ %i.cf, %bb.j ]
  %i.cn = load ptr, ptr %i.bp, align 8, !noalias !14841, !noundef !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !14851
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.058, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false), !noalias !14851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14841
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.058, i64 48, i1 false), !noalias !14843
  store ptr %.sroa.02.0.i.i, ptr %.sroa.559.0..sroa_idx, align 8, !noalias !14843
  store ptr %i.cn, ptr %.sroa.660.0..sroa_idx, align 8, !noalias !14843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14852
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17he6ff7b7f8a5bc3d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.bq)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.br, i64 40, i1 false), !noalias !14852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14852
end_hunk_4
begin_hunk_5_@_ZN4core4iter6traits8iterator8Iterator7collect17h86e9fb186429a6c0E:bb.a
  %i.cj = udiv exact i64 %i.ci, 72
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i"

bb.af:                                            ; preds = %bb.ac
  br i1 %.not.i12.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ck = ptrtoint ptr %i.cb to i64
  %i.cl = sub nuw i64 %i.bg, %i.ck
  %i.cm = udiv exact i64 %i.cl, 72                ; 2 uses
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc3591295eb5afe97E.exit.i.i.i.i.i.i.i", label %bb.aj

bb.ah:                                            ; preds = %bb.af
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc3591295eb5afe97E.exit.i.i.i.i.i.i.i", label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cn = ptrtoint ptr %i.ca to i64
  %i.co = sub nuw i64 %i.bh, %i.cn
  %i.cp = udiv exact i64 %i.co, 112
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc3591295eb5afe97E.exit.i.i.i.i.i.i.i"

bb.aj:                                            ; preds = %bb.ag
  %i.cq = ptrtoint ptr %i.ca to i64
  %i.cr = sub nuw i64 %i.bh, %i.cq
  %i.cs = udiv exact i64 %i.cr, 112
  %i.ct = add nuw nsw i64 %i.cm, %i.cs
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc3591295eb5afe97E.exit.i.i.i.i.i.i.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc3591295eb5afe97E.exit.i.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sink24.i.i.i.i.i.i.i.i = phi i64 [ %i.ct, %bb.aj ], [ %i.cp, %bb.ai ], [ %i.cm, %bb.ag ], [ 0, %bb.ah ]
  %i.cu = ptrtoint ptr %i.bz to i64
  %i.cv = sub nuw i64 %i.bf, %i.cu
  %i.cw = udiv exact i64 %i.cv, 72
  %i.cx = add nuw nsw i64 %.sink24.i.i.i.i.i.i.i.i, %i.cw
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i"

bb.ak:                                            ; preds = %bb.ac
  br i1 %.not.i12.i.i.i.i.i.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = ptrtoint ptr %i.cb to i64
  %i.cz = sub nuw i64 %i.bg, %i.cy
  %i.da = udiv exact i64 %i.cz, 72                ; 2 uses
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i", label %bb.ao

bb.am:                                            ; preds = %bb.ak
  br i1 %.not7.i13.i.i.i.i.i.i.i, label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.db = ptrtoint ptr %i.ca to i64
  %i.dc = sub nuw i64 %i.bh, %i.db
  %i.dd = udiv exact i64 %i.dc, 112
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i"

bb.ao:                                            ; preds = %bb.al
  %i.de = ptrtoint ptr %i.ca to i64
  %i.df = sub nuw i64 %i.bh, %i.de
  %i.dg = udiv exact i64 %i.df, 112
  %i.dh = add nuw nsw i64 %i.da, %i.dg
  br label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i"

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i": ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc3591295eb5afe97E.exit.i.i.i.i.i.i.i", %bb.ae, %bb.ad
  %.sink30.i.i.i.i.i.i.i = phi i64 [ %i.cx, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hc3591295eb5afe97E.exit.i.i.i.i.i.i.i" ], [ %i.cj, %bb.ae ], [ 0, %bb.am ], [ %i.dh, %bb.ao ], [ %i.dd, %bb.an ], [ %i.da, %bb.al ], [ 0, %bb.ad ]
  %i.di = add nuw nsw i64 %.sink30.i.i.i.i.i.i.i, 1
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb9b8d757c4430a9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bj, i64 noundef range(i64 1, 0) %i.di, i64 noundef 4, i64 noundef 20)
          to label %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc2ed55029ee618e4E.exit.i.i_crit_edge.i.i.i" unwind label %bb.ap, !noalias !23504

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc2ed55029ee618e4E.exit.i.i_crit_edge.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i"
  %.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !23511, !noalias !23504
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc2ed55029ee618e4E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc2ed55029ee618e4E.exit.i.i.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc2ed55029ee618e4E.exit.i.i_crit_edge.i.i.i", %bb.aa
  %i.dj = phi ptr [ %.pre.i.i.i, %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hc2ed55029ee618e4E.exit.i.i_crit_edge.i.i.i" ], [ %i.bi, %bb.aa ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [20 x i8], ptr %i.dj, i64 %i.bj ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.i.i.i.i.i, i64 16, i1 false), !noalias !23510
  store i32 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.dk, align 4, !noalias !23510
  %i.dl = add nuw nsw i64 %i.bj, 1                ; 2 uses
  store i64 %i.dl, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !23511, !noalias !23504
  br label %bb.v

"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h70ae4cbf1034d3f5E.exit.thread.i.i.i": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h70ae4cbf1034d3f5E.exit.i.i.i", %_ZN4core3ops8function6FnOnce9call_once17hb04b3b4e48a7b3fbE.exit.i.i.i.i.i.i
  store i64 0, ptr %0, align 8, !alias.scope !23512
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.dm, align 8, !alias.scope !23512
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.dn, align 8, !alias.scope !23512
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9531e5a0d929a865E.exit"

bb.ap:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hd4a75d3967256a24E.exit.i.i.i.i.i"
  %i.do = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i = load i64, ptr %i.a, align 8, !noalias !23504 ; 2 uses
  %i.dp = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dp, label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h4996b6a85d34454aE.exit.i.i.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.val5.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !23504, !nonnull !15, !noundef !15
  %i.dq = mul nuw i64 %.val.i.i.i, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !23504
  br label %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h4996b6a85d34454aE.exit.i.i.i"

bb.ar:                                            ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h70ae4cbf1034d3f5E.exit.i.i.i.i.i", %_ZN4core3ops8function6FnOnce9call_once17hb04b3b4e48a7b3fbE.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !23513
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9531e5a0d929a865E.exit"

"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h4996b6a85d34454aE.exit.i.i.i": ; preds = %bb.aq, %bb.ap
  resume { ptr, i32 } %i.do

"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h9531e5a0d929a865E.exit": ; preds = %"_ZN104_$LT$core..iter..adapters..copied..Copied$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h70ae4cbf1034d3f5E.exit.thread.i.i.i", %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23504
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h96294a585dc4c247E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.f = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 72                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23556
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !16, !noalias !23557, !noundef !15
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i", !prof !17

._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !23558
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !23558
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i": ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !23559 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !23559
  store i8 1, ptr %i.k, align 8, !noalias !23559
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i
  %.pre-phi20.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i ], [ %i.p, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i" ]
  %i.r = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hd5ab6ff9245d0c76E.exit_crit_edge.i.i.i.i ], [ %i.o, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h6b5f8e9c7973b4f2E.exit.i.i.i.i" ] ; 2 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.j, align 8, !noalias !23558
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17hefc8b000c428d777E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef %i.i, i64 noundef %i.r, i64 noundef %.pre-phi20.i), !noalias !23556
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23560)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !23560, !noalias !23556, !noundef !15
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add nuw nsw i64 %i.i, 1
  %i.x = lshr i64 %i.w, 1
  %.sroa.0.0.i.i = select i1 %i.v, i64 %i.i, i64 %i.x ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !23561, !noalias !23556, !noundef !15
  %i.ab = icmp ugt i64 %.sroa.0.0.i.i, %i.aa
  br i1 %i.ab, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i", !prof !21

bb.b:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ad = load i64, ptr %i.y, align 8, !alias.scope !23562, !noalias !23556, !noundef !15
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !23562, !noalias !23556, !nonnull !15, !noundef !15
  %i.ag = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ad, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23556 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i": ; preds = %bb.b, %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %i.ah = load i64, ptr %i.e, align 8, !range !39, !alias.scope !23562, !noalias !23556, !noundef !15
  %i.ai = load i64, ptr %i.y, align 8, !alias.scope !23562, !noalias !23556, !noundef !15 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 128102389400760776
  call void @llvm.assume(i1 %i.aj)
  %i.ak = sub nsw i64 %i.ah, %i.ai
  %i.al = icmp ugt i64 %.sroa.0.0.i.i, %i.ak
  br i1 %i.al, label %bb.c, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i"

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i"
  %i.am = load i64, ptr %i.t, align 8, !alias.scope !23562, !noalias !23556, !noundef !15
  %i.an = load i64, ptr %i.z, align 8, !alias.scope !23562, !noalias !23556, !noundef !15
  %i.ao = add i64 %i.an, %i.am
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h70ec2df240746fe8E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i, i64 noundef %i.ao)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23556

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i": ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdea4942fb52e9661E.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload), "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.ap = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %i.ap, label %"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h689430e7a755af4eE.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = getelementptr i8, ptr %.sroa.6.0.copyload, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcfdc0c7621d683c4E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i ], [ %i.av, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcfdc0c7621d683c4E.exit.i.i.i.i.i" ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !23563)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23564
  call void @llvm.experimental.noalias.scope.decl(metadata !23565)
  %i.ax = invoke noundef ptr @_ZN16nickel_lang_core4term6record5Field28value_with_pending_contracts17he2fe0b498dcf1434E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.09.i.i.i.i.i)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23556

.noexc5.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23566
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !23567, !noalias !23568, !noundef !15 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc5.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !23569, !noundef !15 ; 2 uses
  %i.ba = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add i64 %.val.i.i.i.i.i.i.i.i, 1        ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !noalias !23569
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit.i.i.i.i.i.i.i, !prof !21

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.noexc5.i
  store ptr %i.ax, ptr %i.aq, align 8, !noalias !23566
  store ptr %i.az, ptr %i.ar, align 8, !noalias !23566
  store i64 0, ptr %i.c, align 8, !noalias !23566
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !23566
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !23566
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !23570, !nonnull !15, !noundef !15 ; 3 uses
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !23570 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.val4.i.i.i.i.i.i.i, align 8, !noalias !23569, !noundef !15 ; 2 uses
  %i.bd = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = add i64 %.val.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.be, ptr %.val4.i.i.i.i.i.i.i, align 8, !noalias !23569
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i, !prof !21

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit.i.i.i.i.i.i.i
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6783bf1fc9e6e9edE.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val5.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hb672aefe71d5c3e8E.exit.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i.i.i = load i64, ptr %.val5.i.i.i.i.i.i.i, align 8, !noalias !23569, !noundef !15 ; 2 uses
  %i.bg = icmp ne i64 %.val.i2.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add i64 %.val.i2.i.i.i.i.i.i.i.i, 1     ; 2 uses
  store i64 %i.bh, ptr %.val5.i.i.i.i.i.i.i, align 8, !noalias !23569
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hb672aefe71d5c3e8E.exit.i.i.i.i.i.i", !prof !21

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hb672aefe71d5c3e8E.exit.i.i.i.i.i.i": ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h7fe6fcb98cc0d5e3E.exit.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN96_$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17hbba2189199305bd0E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.at, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %.sroa.5.0.copyload, ptr noundef nonnull %.val4.i.i.i.i.i.i.i, ptr noundef %.val5.i.i.i.i.i.i.i, i64 noundef 0, ptr undef)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23556

.noexc6.i:                                        ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hb672aefe71d5c3e8E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23566
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.aw, i64 20, i1 false), !noalias !23571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23572
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17he6ff7b7f8a5bc3d9E"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.at)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23556

.noexc7.i:                                        ; preds = %.noexc6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !noalias !23572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23572
  %i.bj = load i64, ptr %i.b, align 8, !range !33, !alias.scope !23573, !noalias !23572, !noundef !15
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %i.bk, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcfdc0c7621d683c4E.exit.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %.noexc7.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcfdc0c7621d683c4E.exit.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !23556

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcfdc0c7621d683c4E.exit.i.i.i.i.i": ; preds = %bb.j, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23564
  %i.bl = icmp eq ptr %i.av, %.sroa.4.0.copyload
  br i1 %i.bl, label %"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h689430e7a755af4eE.exit", label %bb.d

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %.noexc6.i, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hb672aefe71d5c3e8E.exit.i.i.i.i.i.i", %bb.d, %bb.c, %bb.b
  %lpad.loopexit.split-lp3 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h63a573f95455ebc4E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #43
          to label %bb.l unwind label %bb.k, !noalias !23556

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !23556
  unreachable

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp3

"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h689430e7a755af4eE.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17hcfdc0c7621d683c4E.exit.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17hcc7cb1013cacbaaeE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !23574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !23556
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h99a7d12c5348b288E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [64 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23619)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23620
  store ptr null, ptr %i.f, align 8, !noalias !23620
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !23621
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !23622, !noalias !23623
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %i.f, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !23622, !noalias !23624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23625
  %i.g = invoke fastcc { ptr, ptr } @"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e5d62906326e8bE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e)
          to label %bb.c unwind label %bb.b, !noalias !23626 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 0        ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { ptr, ptr } %i.g, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23625
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  store ptr %i.i, ptr %i.c, align 8, !noalias !23625
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.k, align 8, !noalias !23625
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !23627
  %i.l = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #40, !noalias !23627 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23625
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h2f92e8fdf35c4338E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.e)
          to label %bb.t unwind label %bb.s, !noalias !23620

bb.f:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17h385924a26048430cE"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #43
          to label %bb.r unwind label %bb.q, !noalias !23625

bb.g:                                             ; preds = %bb.d
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @474) #41
          to label %.noexc.i.i.i.i.i.i.i unwind label %bb.f, !noalias !23625

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.d
  store ptr %i.i, ptr %i.l, align 8, !noalias !23625
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.j, ptr %i.o, align 8, !noalias !23625
  store i64 4, ptr %i.d, align 8, !noalias !23625
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !23625
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !23625
end_hunk_5
