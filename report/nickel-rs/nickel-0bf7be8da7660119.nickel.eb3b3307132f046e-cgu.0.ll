Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel-0bf7be8da7660119.nickel.eb3b3307132f046e-cgu.0?download=true
inline.NumInlined: 19446
inline.NumDeleted: 8632
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 132
begin_hunk_0_@"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$9clear_eqs17h3dedb17f9cae90d1E":bb.a
bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit"
  %i.f = phi i64 [ %.promoted, %.lr.ph ], [ %i.n, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17568)
  %i.g = getelementptr i8, ptr %i.d, i64 %i.f     ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !noalias !17569, !noundef !34 ; 2 uses
  %i.j = icmp ult i8 %i.i, 10
  call void @llvm.assume(i1 %i.j)
  %.not2.i = icmp eq i8 %i.i, 0
  br i1 %.not2.i, label %bb.c, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit2"

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !17570)
  %i.k = icmp sgt i64 %i.f, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp samesign ult i64 %i.f, 49
  br i1 %i.l, label %bb.d, label %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h19f9217f828473eaE.exit", !prof !37

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @316, i64 noundef 69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @317) #59, !noalias !17571
  unreachable

"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h19f9217f828473eaE.exit": ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.g, i64 -49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(48) %i.m, i64 48, i1 false), !noalias !17568
  %i.n = add nsw i64 %i.f, -49                    ; 3 uses
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !17572
  %.pr = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit2", label %bb.e

bb.e:                                             ; preds = %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h19f9217f828473eaE.exit"
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hf5d66bac970e23d9E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hf5d66bac970e23d9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #61
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.h:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.o

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit": ; preds = %bb.e
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hf5d66bac970e23d9E"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit2", label %bb.b

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit2": ; preds = %"_ZN16nickel_lang_core4eval5stack14Stack$LT$C$GT$3pop17h19f9217f828473eaE.exit", %bb.b, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..stack..EqItem$GT$$GT$17h33775d7ab65d0fcfE.exit", %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.bn = load i64, ptr %i.bk, align 8, !range !101, !noundef !34 ; 8 uses
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
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !34, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  invoke void %i.bw(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bc, ptr noundef nonnull %i.bu)
          to label %bb.j unwind label %bb.fq

bb.f:                                             ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !34, !noundef !34 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !34, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void %i.ca(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.bg, ptr noundef nonnull %i.by)
          to label %bb.bm unwind label %bb.fq

bb.g:                                             ; preds = %bb.b
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !34, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  %i.cf = invoke noundef nonnull ptr %i.ce(ptr noundef nonnull %i.cc)
          to label %bb.cj unwind label %bb.fq

bb.h:                                             ; preds = %bb.b
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !nonnull !34, !noundef !34 ; 36 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8 ; 22 uses
  switch i64 %i.bn, label %default.unreachable [
    i64 0, label %bb.cu
    i64 1, label %.thread398.thread
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
    i64 12, label %.thread398.thread
    i64 13, label %.thread398.thread
    i64 14, label %.thread398.thread
    i64 15, label %.thread398.thread
  ]

bb.i:                                             ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !34, !noundef !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  invoke void %i.cj(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ay, ptr noundef nonnull %i.ch)
          to label %bb.fw unwind label %bb.fq

bb.j:                                             ; preds = %bb.e
  %i.ck = load i64, ptr %i.bc, align 8, !range !57, !noundef !34
  %.not60 = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not60, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.cl, i64 24, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !34 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bd, i64 56
  %i.cp = load i64, ptr %i.co, align 8, !noundef !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$21into_iter_starting_at17h558426afdc451d94E"(ptr noalias noundef align 8 captures(address) dereferenceable(296) %i.y, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.x, i64 noundef %i.cn)
          to label %bb.m unwind label %bb.bk

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %i.cq = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull inttoptr (i64 -4294967283 to ptr), i32 noundef %i.bm)
          to label %.thread398.thread unwind label %bb.fq

bb.m:                                             ; preds = %bb.k
  %i.cr = sub i64 %i.cp, %i.cn                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !17803
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.cs, ptr noundef nonnull align 8 dereferenceable(296) %i.y, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !17804
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17805)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.g, i8 0, i64 17, i1 false), !noalias !17804
  call void @llvm.experimental.noalias.scope.decl(metadata !17806)
  %.sroa.4525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 312 ; 8 uses
  store i64 %i.cr, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !17807, !noalias !17808
  %.sroa.5526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 320 ; 5 uses
  store ptr %0, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !17807, !noalias !17808
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 5 uses
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !17807, !noalias !17808
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 336 ; 5 uses
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !17807, !noalias !17808
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 5 uses
  store ptr %4, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !17807, !noalias !17808
  store i64 0, ptr %i.f, align 8, !alias.scope !17809, !noalias !17803
  call void @llvm.experimental.noalias.scope.decl(metadata !17810)
  call void @llvm.experimental.noalias.scope.decl(metadata !17811)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 7 uses
  %i.cw = icmp eq i64 %i.cp, %i.cn
  br i1 %i.cw, label %.thread531, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i512"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i512": ; preds = %bb.m
  %i.cx = add i64 %i.cr, -1
  store i64 %i.cx, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !17812, !noalias !17803
  %i.cy = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he31fad0083f1bcecE"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.cs)
          to label %.noexc516 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !17589 ; 2 uses

.noexc516:                                        ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i512"
  %.not.i.i513 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i513, label %.thread531, label %bb.n

bb.n:                                             ; preds = %.noexc516
  %i.cz = load ptr, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !17813, !noalias !17803, !nonnull !34, !align !41, !noundef !34
  %i.da = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !17813, !noalias !17803, !nonnull !34, !align !52, !noundef !34
  %i.db = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !17813, !noalias !17803, !nonnull !34, !align !41, !noundef !34
  %i.dc = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !17813, !noalias !17803, !nonnull !34, !align !41, !noundef !34
  %i.dd = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, ptr noundef nonnull %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.db, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dc)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !17589

.body.i.i:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i", %bb.am, %bb.u, %bb.q
  %.pn.i.i = phi { ptr, i32 } [ %i.dp, %bb.u ], [ %i.di, %bb.q ], [ %i.fn, %bb.am ], [ %i.fn, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i.i" ], [ %lpad.loopexit.split-lp628, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr358drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..subst$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h24301bd82d746c26E"(ptr noalias noundef align 8 dereferenceable(352) %i.f) #61
          to label %.body.i unwind label %bb.bd, !noalias !17814, !inline_history !17592

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aj, %bb.ai, %bb.x, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i505", %bb.bb, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i", %bb.bc, %bb.ae, %bb.aa, %bb.n, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i512", %bb.ab
  %lpad.loopexit.split-lp628 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.thread531:                                       ; preds = %bb.m, %.noexc516
  store i64 1, ptr %i.f, align 8, !alias.scope !17810, !noalias !17803
  store ptr null, ptr %i.cv, align 8, !alias.scope !17810, !noalias !17803
  br label %.preheader

bb.o:                                             ; preds = %bb.n
  store i64 1, ptr %i.f, align 8, !alias.scope !17810, !noalias !17803
  store ptr %i.dd, ptr %i.cv, align 8, !alias.scope !17810, !noalias !17803
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17803
  store i64 1, ptr %i.e, align 8, !noalias !17803
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.de, align 8, !noalias !17803
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.df, align 8, !noalias !17803
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !17804
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !17815, !inline_history !17595
  %i.dg = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !17815, !inline_history !17595 ; 4 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit.i.i", !prof !45

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc7.i unwind label %bb.q, !noalias !17804, !inline_history !17595

.noexc7.i:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17ha7dbee90479a9e8dE"(ptr noalias noundef align 8 dereferenceable(280) %i.df)
          to label %.body.i.i unwind label %bb.r, !noalias !17804, !inline_history !17595

bb.r:                                             ; preds = %bb.q
  %i.dj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17803, !inline_history !17592
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit.i.i": ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dg, ptr noundef nonnull align 8 dereferenceable(296) %i.e, i64 296, i1 false), !noalias !17803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !17803
  call void @llvm.experimental.noalias.scope.decl(metadata !17816)
  %i.dk = load ptr, ptr %i.g, align 16, !alias.scope !17816, !noalias !17814, !noundef !34 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i", label %bb.s

bb.s:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit.i.i"
  %i.dm = load i64, ptr %i.dk, align 8, !noalias !17817, !noundef !34
  %i.dn = add i64 %i.dm, -1                       ; 2 uses
  store i64 %i.dn, ptr %i.dk, align 8, !noalias !17817
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.t, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i"

bb.t:                                             ; preds = %bb.s
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i" unwind label %bb.u, !noalias !17804, !inline_history !17595

bb.u:                                             ; preds = %bb.t
  %i.dp = landingpad { ptr, i32 }
          cleanup
  store ptr %i.dg, ptr %i.g, align 16, !alias.scope !17805, !noalias !17804
  br label %.body.i.i

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i": ; preds = %bb.t, %bb.s, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hcacdb4e012333663E.exit.i.i"
  store ptr %i.dg, ptr %i.g, align 16, !alias.scope !17805, !noalias !17804
  br label %.preheader

.preheader:                                       ; preds = %.thread531, %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i"
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !17818)
  call void @llvm.experimental.noalias.scope.decl(metadata !17819)
  %i.dq = load i64, ptr %i.f, align 8, !range !55, !alias.scope !17818, !noalias !17814, !noundef !34
  %i.dr = trunc nuw i64 %i.dq to i1
  br i1 %i.dr, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exit511thread-pre-split", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = load i64, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !17820, !noalias !17814, !noundef !34 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 0
  br i1 %i.dt, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i507", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i505"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i505": ; preds = %bb.w
  %i.du = add i64 %i.ds, -1
  store i64 %i.du, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !17820, !noalias !17814
  %i.dv = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he31fad0083f1bcecE"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.cs)
          to label %.noexc509 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !17589 ; 2 uses

.noexc509:                                        ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i505"
  %.not.i.i506 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i506, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i507", label %bb.x

bb.x:                                             ; preds = %.noexc509
  %i.dw = load ptr, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !17821, !noalias !17814, !nonnull !34, !align !41, !noundef !34
  %i.dx = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !17821, !noalias !17814, !nonnull !34, !align !52, !noundef !34
  %i.dy = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !17821, !noalias !17814, !nonnull !34, !align !41, !noundef !34
  %i.dz = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !17821, !noalias !17814, !nonnull !34, !align !41, !noundef !34
  %i.ea = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dx, ptr noundef nonnull %i.dv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dz)
          to label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i507" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !17589

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i507": ; preds = %bb.x, %.noexc509, %bb.w
  %.sroa.0.0.i.i508 = phi ptr [ null, %bb.w ], [ null, %.noexc509 ], [ %i.ea, %bb.x ] ; 2 uses
  store i64 1, ptr %i.f, align 8, !alias.scope !17818, !noalias !17814
  store ptr %.sroa.0.0.i.i508, ptr %i.cv, align 8, !alias.scope !17818, !noalias !17814
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exit511"

end_hunk_0
begin_hunk_1_@_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E:bb.a
  store ptr %.sroa.0.0.i.i26.i, ptr %i.gj, align 8, !alias.scope !17828, !noalias !17814
  %i.gk = load i64, ptr %i.ej, align 8, !alias.scope !17828, !noalias !17814, !noundef !34
  %i.gl = add i64 %i.gk, 1                        ; 3 uses
  store i64 %i.gl, ptr %i.ej, align 8, !alias.scope !17828, !noalias !17814
  %i.gm = icmp eq i64 %i.er, 0
  br i1 %i.gm, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.loopexit.i", label %bb.ag

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.loopexit.i": ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h792d842467bb0b2dE.exit.i.i", %bb.ah, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.loopexit_crit_edge.i"
  %.pre37.i = phi i64 [ %.pre37.pre.i, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i._ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.loopexit_crit_edge.i" ], [ %i.eq, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h792d842467bb0b2dE.exit.i.i" ], [ %i.gl, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h38d426d0244b0e22E.exit.i.i" ], [ %i.eq, %bb.ah ]
  %.pre38.i = load i64, ptr %i.el, align 8, !noalias !17814
  br label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.i"

"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.i": ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.loopexit.i", %bb.af
  %i.gn = phi i64 [ %.pre38.i, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.loopexit.i" ], [ %i.em, %bb.af ]
  %i.go = phi i64 [ %.pre37.i, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.loopexit.i" ], [ %i.ek, %bb.af ]
  %i.gp = add i64 %i.gn, %i.en
  %i.gq = sub i64 %i.go, %i.gp
  br label %bb.az

bb.az:                                            ; preds = %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.i", %bb.ae
  %.sroa.03.0.i.i = phi i64 [ %i.gq, %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h3664a116da3596d3E.exit.i" ], [ %i.ei, %bb.ae ]
  %i.gr = load i64, ptr %i.ct, align 8, !alias.scope !17805, !noalias !17804, !noundef !34
  %i.gs = add i64 %i.gr, %.sroa.03.0.i.i
  store i64 %i.gs, ptr %i.ct, align 8, !alias.scope !17805, !noalias !17804
  call void @llvm.experimental.noalias.scope.decl(metadata !17835)
  call void @llvm.experimental.noalias.scope.decl(metadata !17836)
  %i.gt = load i64, ptr %i.f, align 8, !range !55, !alias.scope !17835, !noalias !17814, !noundef !34
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exitthread-pre-split", label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = load i64, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !17837, !noalias !17814, !noundef !34 ; 2 uses
  %i.gw = icmp eq i64 %i.gv, 0
  br i1 %i.gw, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i": ; preds = %bb.ba
  %i.gx = add i64 %i.gv, -1
  store i64 %i.gx, ptr %.sroa.4525.0..sroa_idx, align 8, !alias.scope !17837, !noalias !17814
  %i.gy = invoke fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he31fad0083f1bcecE"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.cs)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !17589 ; 2 uses

.noexc:                                           ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.i"
  %.not.i.i502 = icmp eq ptr %i.gy, null
  br i1 %.not.i.i502, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i", label %bb.bb

bb.bb:                                            ; preds = %.noexc
  %i.gz = load ptr, ptr %.sroa.5526.0..sroa_idx, align 8, !alias.scope !17838, !noalias !17814, !nonnull !34, !align !41, !noundef !34
  %i.ha = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !17838, !noalias !17814, !nonnull !34, !align !52, !noundef !34
  %i.hb = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !17838, !noalias !17814, !nonnull !34, !align !41, !noundef !34
  %i.hc = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !alias.scope !17838, !noalias !17814, !nonnull !34, !align !41, !noundef !34
  %i.hd = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ha, ptr noundef nonnull %i.gy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hc)
          to label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !17589

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i": ; preds = %bb.bb, %.noexc, %bb.ba
  %.sroa.0.0.i.i503 = phi ptr [ null, %bb.ba ], [ null, %.noexc ], [ %i.hd, %bb.bb ] ; 2 uses
  store i64 1, ptr %i.f, align 8, !alias.scope !17835, !noalias !17814
  store ptr %.sroa.0.0.i.i503, ptr %i.cv, align 8, !alias.scope !17835, !noalias !17814
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exitthread-pre-split": ; preds = %bb.az
  %.pr534 = load ptr, ptr %i.cv, align 8, !noalias !17822
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exitthread-pre-split", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i"
  %i.he = phi ptr [ %.pr534, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exitthread-pre-split" ], [ %.sroa.0.0.i.i503, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hdaf771c204fb85e6E.exit.i.thread.i" ]
  %.not9.i.i = icmp eq ptr %i.he, null
  br i1 %.not9.i.i, label %.backedge, label %bb.bc

bb.bc:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exit"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17he6eaf355c781ad83E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !17814, !inline_history !17592

.backedge:                                        ; preds = %bb.bc, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hcd8c13c9fabaaa86E.exit"
  br label %bb.v

bb.bd:                                            ; preds = %.body.i.i
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17814, !inline_history !17592
  unreachable

bb.be:                                            ; preds = %bb.z
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.be, %.body.i.i
  %eh.lpad-body.i498 = phi { ptr, i32 } [ %i.hg, %bb.be ], [ %.pn.i.i, %.body.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17839)
  call void @llvm.experimental.noalias.scope.decl(metadata !17840)
  %i.hh = load ptr, ptr %i.g, align 16, !alias.scope !17841, !noalias !17804, !noundef !34 ; 3 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %.body, label %bb.bf

bb.bf:                                            ; preds = %.body.i
  %i.hj = load i64, ptr %i.hh, align 8, !noalias !17842, !noundef !34
  %i.hk = add i64 %i.hj, -1                       ; 2 uses
  store i64 %i.hk, ptr %i.hh, align 8, !noalias !17842
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %bb.bg, label %.body

bb.bg:                                            ; preds = %bb.bf
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body unwind label %bb.bh, !noalias !17804, !inline_history !17595

bb.bh:                                            ; preds = %bb.bg
  %i.hm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17804, !inline_history !17595
  unreachable

bb.bi:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !17803
  %.sroa.5.0.copyload523 = load i64, ptr %i.cu, align 16, !noalias !17843
  %.sroa.4.0.copyload521 = load i64, ptr %i.ct, align 8, !noalias !17843
  %i.hn = load <2 x i64>, ptr %i.g, align 16, !noalias !17843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !17804
  store <2 x i64> %i.hn, ptr %i.bb, align 16, !noalias !17844
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %.sroa.5.0.copyload523, ptr %.sroa.5.0..sroa_idx, align 16, !noalias !17844
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store i64 0, ptr %i.ho, align 8, !alias.scope !17845
  %i.hp = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store i64 %.sroa.4.0.copyload521, ptr %i.hp, align 16, !alias.scope !17845
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
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef align 8 dereferenceable(24) %i.bd) #61
          to label %.thread unwind label %bb.bl

bb.bl:                                            ; preds = %bb.fu, %bb.fo, %.sink.split.i, %bb.gd, %bb.fv, %bb.ge, %bb.fg, %bb.ff, %bb.fd, %bb.ep, %bb.en, %bb.em, %bb.ek, %bb.ea, %bb.dz, %bb.du, %bb.ds, %.thread353, %bb.cl, %.body
  %i.hr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.bm:                                            ; preds = %bb.f
  %i.hs = load i64, ptr %i.bg, align 8, !range !57, !noundef !34
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
  call void @llvm.experimental.noalias.scope.decl(metadata !17846)
  call void @llvm.experimental.noalias.scope.decl(metadata !17847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.be, ptr %i.s, align 8, !noalias !17848
  %.sroa.0238.sroa.0.0.copyload = load i64, ptr %i.bh, align 8, !noalias !17849
  %.sroa.0238.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.sroa.0238.sroa.4.0.copyload = load ptr, ptr %.sroa.0238.sroa.4.0..sroa_idx, align 8, !noalias !17849 ; 4 uses
  %.sroa.0238.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %.sroa.0238.sroa.5.0.copyload = load i64, ptr %.sroa.0238.sroa.5.0..sroa_idx, align 8, !noalias !17849 ; 5 uses
  %.sroa.5240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.sroa.5240.0.copyload = load i64, ptr %.sroa.5240.0..sroa_idx, align 8, !noalias !17849 ; 4 uses
  %i.hw = icmp eq i64 %.sroa.5240.0.copyload, 0
  br i1 %i.hw, label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17hd92c04f82909230fE.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i: ; preds = %bb.bn
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.4239.0.copyload = load ptr, ptr %.sroa.4239.0..sroa_idx, align 8, !noalias !17849, !nonnull !34, !noundef !34
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
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.if, i64 noundef %i.ib, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !17850, !inline_history !17661
  br label %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17hd92c04f82909230fE.exit.i"

"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17hd92c04f82909230fE.exit.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i, %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0238.sroa.4.0.copyload) ]
  %i.ig = icmp ult i64 %.sroa.0238.sroa.5.0.copyload, 128102389400760776
  call void @llvm.assume(i1 %i.ig)
  %i.ih = getelementptr inbounds nuw [72 x i8], ptr %.sroa.0238.sroa.4.0.copyload, i64 %.sroa.0238.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17851
  store ptr %.sroa.0238.sroa.4.0.copyload, ptr %i.o, align 8, !alias.scope !17852, !noalias !17853
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.0238.sroa.4.0.copyload, ptr %.sroa.4254.0..sroa_idx, align 8, !alias.scope !17852, !noalias !17853
  %.sroa.5255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.0238.sroa.0.0.copyload, ptr %.sroa.5255.0..sroa_idx, align 8, !alias.scope !17852, !noalias !17853
  %.sroa.6256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.ih, ptr %.sroa.6256.0..sroa_idx, align 8, !alias.scope !17852, !noalias !17853
  %.sroa.7257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.s, ptr %.sroa.7257.0..sroa_idx, align 8, !alias.scope !17852, !noalias !17853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17851
  %i.ii = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.ik = load i8, ptr %i.ij, align 8, !range !44, !noalias !17854, !noundef !34
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i: ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17hd92c04f82909230fE.exit.i"
  %.pre.i.i.i.i = load i64, ptr %i.ii, align 8, !noalias !17855
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !17855
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i": ; preds = %"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$12into_entries17hd92c04f82909230fE.exit.i"
  %i.im = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i112 unwind label %bb.cd, !noalias !17851, !inline_history !17676 ; 2 uses

.noexc.i112:                                      ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i"
  %i.in = extractvalue { i64, i64 } %i.im, 0
  %i.io = extractvalue { i64, i64 } %i.im, 1      ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  store i64 %i.io, ptr %i.ip, align 8, !noalias !17856
  store i8 1, ptr %i.ij, align 8, !noalias !17856
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i": ; preds = %.noexc.i112, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i
  %.pre-phi473 = phi i64 [ %i.io, %.noexc.i112 ], [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i ]
  %.pre-phi = phi i64 [ %i.in, %.noexc.i112 ], [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.iq = add i64 %.pre-phi, 1
  store i64 %i.iq, ptr %i.ii, align 8, !noalias !17855
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4feb009fbcbcfc15E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.n, i64 noundef %.sroa.0238.sroa.5.0.copyload, i64 noundef %.pre-phi, i64 noundef %.pre-phi473)
          to label %bb.bo unwind label %bb.cd, !noalias !17851, !inline_history !17676

bb.bo:                                            ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %i.ir = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.is = load i64, ptr %i.ir, align 8, !alias.scope !17857, !noalias !17851, !noundef !34
  %i.it = icmp eq i64 %i.is, 0
  %i.iu = add nuw nsw i64 %.sroa.0238.sroa.5.0.copyload, 1
  %i.iv = lshr i64 %i.iu, 1
  %.sroa.0.0.i.i = select i1 %i.it, i64 %.sroa.0238.sroa.5.0.copyload, i64 %i.iv ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !17858, !noalias !17859, !noundef !34
  %i.iz = icmp ugt i64 %.sroa.0.0.i.i, %i.iy
  br i1 %i.iz, label %bb.bp, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i", !prof !37

.body123:                                         ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i._crit_edge"
  %lpad.thr_comm.split-lp336 = landingpad { ptr, i32 }
          cleanup
  br label %.body123.thread

bb.bp:                                            ; preds = %bb.bo
  %i.ja = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.jb = load i64, ptr %i.iw, align 8, !alias.scope !17860, !noalias !17859, !noundef !34
  %i.jc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !alias.scope !17860, !noalias !17859, !nonnull !34, !noundef !34
  %i.je = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ja, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.jd, i64 noundef %i.jb, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i" unwind label %bb.ca, !noalias !17851, !inline_history !17676 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i": ; preds = %bb.bp, %bb.bo
  %i.jf = load i64, ptr %i.n, align 8, !range !42, !alias.scope !17860, !noalias !17859, !noundef !34
  %i.jg = load i64, ptr %i.iw, align 8, !alias.scope !17860, !noalias !17859, !noundef !34 ; 2 uses
  %i.jh = icmp ult i64 %i.jg, 128102389400760776
  call void @llvm.assume(i1 %i.jh), !noalias !17861
  %i.ji = sub nsw i64 %i.jf, %i.jg
  %i.jj = icmp ugt i64 %.sroa.0.0.i.i, %i.ji
  br i1 %i.jj, label %bb.bq, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i"

bb.bq:                                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i"
  %i.jk = load i64, ptr %i.ir, align 8, !alias.scope !17860, !noalias !17859, !noundef !34
  %i.jl = load i64, ptr %i.ix, align 8, !alias.scope !17860, !noalias !17859, !noundef !34
  %i.jm = add i64 %i.jl, %i.jk
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h37476e418f2febaaE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n, i64 noundef %.sroa.0.0.i.i, i64 noundef %i.jm)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i" unwind label %bb.ca, !noalias !17851, !inline_history !17676

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i": ; preds = %bb.bq, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !17863)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !17864, !noalias !17851, !nonnull !34, !noundef !34 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.jp, align 8, !alias.scope !17864, !noalias !17851 ; 3 uses
  %i.jq = icmp eq ptr %.promoted, %i.jo
  br i1 %i.jq, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i._crit_edge", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.lr.ph": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i"
  %.sroa.6285.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.js = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %.sroa.0280.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0280, i64 24
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.6282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.lr.ph", %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd16f07a7621db1dcE.exit.i"
  %i.jv = phi ptr [ %.promoted, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.lr.ph" ], [ %i.jw, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd16f07a7621db1dcE.exit.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17865), !noalias !17851
  call void @llvm.experimental.noalias.scope.decl(metadata !17866), !noalias !17851
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 72 ; 6 uses
  %.sroa.0.0.copyload.i.i116 = load i64, ptr %i.jv, align 8, !noalias !17867 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i116, -9223372036854775808
  br i1 %.not.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i._crit_edge", label %bb.bs

bb.br:                                            ; preds = %bb.by, %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17h4e298660ed129641E.exit.i"
  %i.jx = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jw, ptr %i.jp, align 8
  br label %.body.i119

.body.i119:                                       ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i", %bb.br
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jx, %bb.br ], [ %i.kj, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i" ]
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h9a6a2309b3a8fefdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #61
          to label %.body123.thread unwind label %bb.bz, !noalias !17851, !inline_history !17699

bb.bs:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i"
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jv, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !17868
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6285.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, i64 32, i1 false), !noalias !17869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !17870
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0280)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %i.jy, i64 20, i1 false)
  store i64 %.sroa.0.0.copyload.i.i116, ptr %i.h, align 8, !noalias !17871
  %i.jz = load ptr, ptr %i.jr, align 8, !noalias !17868, !noundef !34 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i, label %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17h4e298660ed129641E.exit.i", label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ka = load ptr, ptr %i.s, align 8, !alias.scope !17872, !noalias !17873, !nonnull !34, !align !41, !noundef !34 ; 4 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !alias.scope !17874, !noalias !17873, !nonnull !34, !align !41, !noundef !34
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8, !alias.scope !17874, !noalias !17873, !nonnull !34, !align !52, !noundef !34
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !alias.scope !17874, !noalias !17873, !nonnull !34, !align !41, !noundef !34
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !alias.scope !17874, !noalias !17873, !nonnull !34, !align !41, !noundef !34
  %i.ki = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kd, ptr noundef nonnull %i.jz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.kh)
          to label %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17h4e298660ed129641E.exit.i" unwind label %bb.bu, !noalias !17869, !inline_history !17713

bb.bu:                                            ; preds = %bb.bt
  %i.kj = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jw, ptr %i.jp, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !17875), !noalias !17851
  call void @llvm.experimental.noalias.scope.decl(metadata !17876), !noalias !17851
  %i.kk = load ptr, ptr %i.js, align 8, !alias.scope !17877, !noalias !17868, !noundef !34 ; 3 uses
  %i.kl = icmp eq ptr %i.kk, null
  br i1 %i.kl, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i", label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.km = load i64, ptr %i.kk, align 8, !noalias !17878, !noundef !34
  %i.kn = add i64 %i.km, -1                       ; 2 uses
  store i64 %i.kn, ptr %i.kk, align 8, !noalias !17878
  %i.ko = icmp eq i64 %i.kn, 0
  br i1 %i.ko, label %bb.bw, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i"

bb.bw:                                            ; preds = %bb.bv
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.js)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i" unwind label %bb.bx, !noalias !17873, !inline_history !17722

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i": ; preds = %bb.bw, %bb.bv, %bb.bu
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef align 8 dereferenceable(24) %i.h) #61
          to label %.body.i119 unwind label %bb.bx, !noalias !17873, !inline_history !17722

bb.bx:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i.i", %bb.bw
  %i.kp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17873, !inline_history !17722
  unreachable

"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17h4e298660ed129641E.exit.i": ; preds = %bb.bt, %bb.bs
  %.sroa.02.0.i.i.i = phi ptr [ null, %bb.bs ], [ %i.ki, %bb.bt ]
  %i.kq = load ptr, ptr %i.js, align 8, !noalias !17868, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0280.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !17879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0280, ptr noundef nonnull align 4 dereferenceable(20) %i.i, i64 20, i1 false), !noalias !17879
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !17868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0280, i64 48, i1 false), !noalias !17870
  store ptr %.sroa.02.0.i.i.i, ptr %.sroa.5281.0..sroa_idx, align 8, !noalias !17870
  store ptr %i.kq, ptr %.sroa.6282.0..sroa_idx, align 8, !noalias !17870
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !17880
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h07b046f055ab188aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.l, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.jt)
          to label %.noexc3.i unwind label %bb.br, !noalias !17869, !inline_history !17699

.noexc3.i:                                        ; preds = %"_ZN16nickel_lang_core4term6record10RecordData10map_values28_$u7b$$u7b$closure$u7d$$u7d$17h4e298660ed129641E.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.ju, i64 40, i1 false), !noalias !17880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !17880
  %i.kr = load i64, ptr %i.k, align 8, !range !57, !alias.scope !17881, !noalias !17880, !noundef !34
  %i.ks = icmp eq i64 %i.kr, -9223372036854775808
  br i1 %i.ks, label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd16f07a7621db1dcE.exit.i", label %bb.by

bb.by:                                            ; preds = %.noexc3.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd16f07a7621db1dcE.exit.i" unwind label %bb.br, !noalias !17869, !inline_history !17699

"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd16f07a7621db1dcE.exit.i": ; preds = %bb.by, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !17880
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0280)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !17870
  %i.kt = icmp eq ptr %i.jw, %i.jo
  br i1 %i.kt, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i._crit_edge", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i._crit_edge": ; preds = %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd16f07a7621db1dcE.exit.i", %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i"
  %i.ku = phi ptr [ %.promoted, %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i" ], [ %i.jw, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i" ], [ %i.jw, %"_ZN4core4iter6traits8iterator8Iterator8for_each4call28_$u7b$$u7b$closure$u7d$$u7d$17hd16f07a7621db1dcE.exit.i" ]
  store ptr %i.ku, ptr %i.jp, align 8
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h9a6a2309b3a8fefdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.ci unwind label %.body123, !inline_history !17699

bb.bz:                                            ; preds = %.body.i119
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17869, !inline_history !17699
  unreachable

.body123.thread:                                  ; preds = %bb.ca, %.body.i119, %.body123
  %eh.lpad-body124334 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp336, %.body123 ], [ %eh.lpad-body.i, %.body.i119 ], [ %lpad.thr_comm335, %bb.ca ]
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE"(ptr noalias noundef align 8 dereferenceable(72) %i.n) #61
          to label %.body114 unwind label %bb.cc, !noalias !17851, !inline_history !17676

bb.ca:                                            ; preds = %bb.bq, %bb.bp
  %lpad.thr_comm335 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h9a6a2309b3a8fefdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.body123.thread unwind label %bb.cb, !noalias !17851

bb.cb:                                            ; preds = %bb.ca
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17859, !inline_history !17729
  unreachable

bb.cc:                                            ; preds = %bb.cd, %.body123.thread
  %i.kx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17851, !inline_history !17676
  unreachable

bb.cd:                                            ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i"
  %i.ky = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h9a6a2309b3a8fefdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o)
          to label %.body114 unwind label %bb.cc, !noalias !17851, !inline_history !17676

.body114:                                         ; preds = %bb.cd, %.body123.thread
  %eh.lpad-body115 = phi { ptr, i32 } [ %i.ky, %bb.cd ], [ %eh.lpad-body124334, %.body123.thread ] ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bh, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17882)
  %i.la = load ptr, ptr %i.kz, align 8, !alias.scope !17883, !noundef !34 ; 3 uses
  %i.lb = icmp eq ptr %i.la, null
  br i1 %i.lb, label %.thread309, label %bb.ce

bb.ce:                                            ; preds = %.body114
  %i.lc = load i64, ptr %i.la, align 8, !noalias !17884, !noundef !34
  %i.ld = add i64 %i.lc, -1                       ; 2 uses
  store i64 %i.ld, ptr %i.la, align 8, !noalias !17884
  %i.le = icmp eq i64 %i.ld, 0
  br i1 %i.le, label %bb.cf, label %.thread309

bb.cf:                                            ; preds = %bb.ce
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kz)
          to label %.thread309 unwind label %bb.cg, !noalias !17846, !inline_history !17661

bb.cg:                                            ; preds = %bb.cf
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17846, !inline_history !17661
  unreachable

bb.ch:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.lg = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull inttoptr (i64 -4294967279 to ptr), i32 noundef %i.bm)
          to label %.thread398.thread unwind label %bb.fq

bb.ci:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i._crit_edge"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17862
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bf, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false), !noalias !17847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17851
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.li = load i8, ptr %i.lh, align 8, !range !44, !alias.scope !17847, !noundef !34
  %i.lj = getelementptr inbounds nuw i8, ptr %i.bh, i64 81
  %i.lk = load i8, ptr %i.lj, align 1, !range !44, !alias.scope !17847, !noundef !34
  %i.ll = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  store i8 %i.li, ptr %i.ll, align 8, !alias.scope !17846
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bf, i64 81
  store i8 %i.lk, ptr %i.lm, align 1, !alias.scope !17846
  %i.ln = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.lo = load ptr, ptr %i.ln, align 8, !alias.scope !17847, !noundef !34
  %i.lp = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  store ptr %i.lo, ptr %i.lp, align 8, !alias.scope !17846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.lq = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue6record17h6a415f67381847fbE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.bf, i32 noundef %i.bm)
          to label %.thread398 unwind label %bb.fq

.thread398.thread:                                ; preds = %bb.ch, %bb.l, %.thread398, %.thread398, %.thread398, %.thread398, %.thread398, %bb.gc, %bb.d, %bb.es, %bb.ew, %bb.fm, %bb.fs, %bb.fj, %bb.fb, %bb.ei, %bb.dy, %bb.dh, %bb.ee, %bb.ed, %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h63677e19df7e1cfcE.exit, %bb.bj, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit", %bb.h, %bb.h, %bb.h, %bb.h, %bb.h
  %.sroa.0.2 = phi ptr [ %.sroa.9.0.copyload, %bb.h ], [ %.sroa.0.0, %bb.gc ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %.sroa.0.0, %.thread398 ], [ %i.bs, %bb.d ], [ %i.hq, %bb.bj ], [ %i.op, %bb.ed ], [ %i.oq, %bb.ee ], [ %i.pt, %bb.fb ], [ %i.oy, %bb.ei ], [ %i.py, %bb.fj ], [ %i.oi, %bb.dy ], [ %i.mv, %bb.dh ], [ %i.qc, %bb.fm ], [ %i.pj, %bb.ew ], [ %i.pe, %bb.es ], [ %i.qq, %bb.fs ], [ %i.qy, %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h63677e19df7e1cfcE.exit ], [ %i.lt, %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit" ], [ %.sroa.9.0.copyload, %bb.h ], [ %.sroa.9.0.copyload, %bb.h ], [ %.sroa.9.0.copyload, %bb.h ], [ %.sroa.9.0.copyload, %bb.h ], [ %i.cq, %bb.l ], [ %i.lg, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.2) ]
  ret ptr %.sroa.0.2

bb.cj:                                            ; preds = %bb.g
  invoke fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.bi, ptr noundef nonnull %i.cf)
          to label %bb.ck unwind label %bb.fq

bb.ck:                                            ; preds = %bb.cj
  %i.lr = load ptr, ptr %i.bi, align 8, !nonnull !34, !noundef !34
  %i.ls = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.lt = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.lr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ls)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E"(ptr noalias noundef align 8 dereferenceable(16) %i.ls) #61
          to label %.thread unwind label %bb.bl

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.experimental.noalias.scope.decl(metadata !17885)
  call void @llvm.experimental.noalias.scope.decl(metadata !17886)
  call void @llvm.experimental.noalias.scope.decl(metadata !17887)
  %i.lv = load ptr, ptr %i.ls, align 8, !alias.scope !17888, !nonnull !34, !noundef !34 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !noalias !17888, !noundef !34
  %i.lx = add i64 %i.lw, -1                       ; 2 uses
  store i64 %i.lx, ptr %i.lv, align 8, !noalias !17888
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.cn, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"

bb.cn:                                            ; preds = %bb.cm
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ls)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i" unwind label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.lz = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17889)
  %i.mb = load ptr, ptr %i.ma, align 8, !alias.scope !17890, !noundef !34 ; 3 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.md = load i64, ptr %i.mb, align 8, !noalias !17891, !noundef !34
  %i.me = add i64 %i.md, -1                       ; 2 uses
  store i64 %i.me, ptr %i.mb, align 8, !noalias !17891
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %bb.cq, label %.thread

bb.cq:                                            ; preds = %bb.cp
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ma)
          to label %.thread unwind label %bb.ct

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i": ; preds = %bb.cn, %bb.cm
  %i.mg = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17892)
  %i.mh = load ptr, ptr %i.mg, align 8, !alias.scope !17893, !noundef !34 ; 3 uses
  %i.mi = icmp eq ptr %i.mh, null
  br i1 %i.mi, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit", label %bb.cr

bb.cr:                                            ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"
  %i.mj = load i64, ptr %i.mh, align 8, !noalias !17894, !noundef !34
  %i.mk = add i64 %i.mj, -1                       ; 2 uses
  store i64 %i.mk, ptr %i.mh, align 8, !noalias !17894
  %i.ml = icmp eq i64 %i.mk, 0
  br i1 %i.ml, label %bb.cs, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"

bb.cs:                                            ; preds = %bb.cr
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.mg)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit" unwind label %bb.fq

bb.ct:                                            ; preds = %bb.cq
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit": ; preds = %bb.cr, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i", %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %.thread398.thread

bb.cu:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.df unwind label %bb.di

bb.cv:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  %i.mn = invoke noundef nonnull align 8 ptr %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.dj unwind label %bb.di     ; 8 uses

bb.cw:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.mo = invoke { ptr, ptr } %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.dv unwind label %bb.di     ; 2 uses

bb.cx:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.ax, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.eb unwind label %bb.di

bb.cy:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  %i.mp = invoke noundef nonnull align 8 ptr %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.ef unwind label %bb.di     ; 11 uses

bb.cz:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.mq = invoke noundef nonnull ptr %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.eq unwind label %bb.di

bb.da:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.as, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.eu unwind label %bb.di

bb.db:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aq, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.ey unwind label %bb.di

bb.dc:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ao, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.fh unwind label %bb.di

bb.dd:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void %.sroa.22.0.copyload(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.fk unwind label %bb.di

bb.de:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.22.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.mr = invoke { ptr, ptr } %.sroa.22.0.copyload(ptr noundef nonnull %.sroa.9.0.copyload)
          to label %bb.fp unwind label %bb.di     ; 2 uses

bb.df:                                            ; preds = %bb.cu
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !alias.scope !17895
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !17895, !nonnull !34, !noundef !34 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !17895 ; 2 uses
  %i.ms = icmp ult i64 %.sroa.5.0.copyload.i, 384307168202282326
  call void @llvm.assume(i1 %i.ms)
  %i.mt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5.0.copyload.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17896
  store ptr %.sroa.4.0.copyload.i, ptr %i.r, align 8, !alias.scope !17897, !noalias !17898
  %.sroa.4208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4208.0..sroa_idx, align 8, !alias.scope !17897, !noalias !17898
  %.sroa.5209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.5209.0..sroa_idx, align 8, !alias.scope !17897, !noalias !17898
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.mt, ptr %.sroa.6210.0..sroa_idx, align 8, !alias.scope !17897, !noalias !17898
  %.sroa.7211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %0, ptr %.sroa.7211.0..sroa_idx, align 8, !alias.scope !17897, !noalias !17898
  %.sroa.8212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %1, ptr %.sroa.8212.0..sroa_idx, align 8, !alias.scope !17897, !noalias !17898
  %.sroa.9213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store ptr %3, ptr %.sroa.9213.0..sroa_idx, align 8, !alias.scope !17897, !noalias !17898
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store ptr %4, ptr %.sroa.10.0..sroa_idx, align 8, !alias.scope !17897, !noalias !17898
  invoke fastcc void @"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17hb43e9058fcde0d29E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.r)
          to label %bb.dg unwind label %bb.di, !inline_history !17762

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17896
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.mu, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  store i64 -9223372036854775764, ptr %i.ac, align 8
  %i.mv = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hffd3a014825ac915E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ac, i32 noundef %i.bm)
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
  %i.my = load i64, ptr %i.mx, align 8, !alias.scope !17899, !noundef !34 ; 2 uses
  %i.mz = icmp ugt i64 %i.my, 4                   ; 2 uses
  %i.na = load ptr, ptr %i.mw, align 8, !alias.scope !17899, !nonnull !34
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mn, i64 40
  %.sink10.i.i = select i1 %i.mz, ptr %i.na, ptr %i.mw ; 3 uses
  %.val.i = load i64, ptr %i.nb, align 8, !alias.scope !17900
  %i.nc = select i1 %i.mz, i64 %.val.i, i64 %i.my ; 2 uses
  %.idx = shl nuw nsw i64 %i.nc, 5
  %i.nd = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 %.idx
  %.not456 = icmp eq i64 %i.nc, 0
  br i1 %.not456, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.dj
  %.sroa.053.1448 = getelementptr inbounds nuw i8, ptr %.sink10.i.i, i64 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit"
  %.sroa.053.1450 = phi ptr [ %.sroa.053.1, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" ], [ %.sroa.053.1448, %.lr.ph.preheader ] ; 3 uses
  %.sroa.053.0449 = phi ptr [ %.sroa.053.1450, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" ], [ %.sink10.i.i, %.lr.ph.preheader ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.053.0449, i64 24 ; 5 uses
  %i.nf = load ptr, ptr %i.ne, align 8, !nonnull !34, !noundef !34
  store ptr inttoptr (i64 -4294967295 to ptr), ptr %i.ne, align 8
  %i.ng = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.nf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.dl unwind label %.thread353.loopexit ; 2 uses

._crit_edge:                                      ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit", %bb.dj
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mn, i64 24 ; 2 uses
  %i.ni = load ptr, ptr %i.nh, align 8, !nonnull !34, !noundef !34
  %i.nj = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.ni, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.dk unwind label %.thread353.loopexit.split-lp

bb.dk:                                            ; preds = %._crit_edge
  store ptr %i.nj, ptr %i.nh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.mn, ptr %i.nk, align 8
  store i64 -9223372036854775762, ptr %i.av, align 8
  %i.nl = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hffd3a014825ac915E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.av, i32 noundef %i.bm)
          to label %bb.et unwind label %bb.di

bb.dl:                                            ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !17901)
  %.val.i79 = load ptr, ptr %i.ne, align 8, !alias.scope !17901, !nonnull !34, !noundef !34 ; 4 uses
  %i.nm = ptrtoint ptr %.val.i79 to i64
  %i.nn = and i64 %i.nm, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.nn, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit" [
    i64 2, label %bb.dm
    i64 0, label %bb.dn
  ], !prof !47

bb.dm:                                            ; preds = %bb.dl
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc80 unwind label %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc80:                                         ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !17901
  store ptr %.val.i79, ptr %i.v, align 8, !noalias !17901
  %i.no = load i64, ptr %.val.i79, align 8, !noalias !17902, !noundef !34 ; 3 uses
  %i.np = and i64 %i.no, 72057594037927935
  %i.nq = add nsw i64 %i.np, -1                   ; 3 uses
  %i.nr = and i64 %i.no, 1080863910568919040
  %i.ns = icmp ult i64 %i.no, 864691128455135232
  call void @llvm.assume(i1 %i.ns)
  %i.nt = or i64 %i.nq, %i.nr
  store i64 %i.nt, ptr %.val.i79, align 8, !noalias !17902
  %i.nu = icmp ugt i64 %i.nq, 72057594037927935
  br i1 %i.nu, label %bb.dp, label %bb.do, !prof !37

bb.do:                                            ; preds = %bb.dn
  %i.nv = icmp eq i64 %i.nq, 0
  br i1 %i.nv, label %bb.dq, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i"

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17902
  store ptr @1344, ptr %i.u, align 8, !noalias !17902
  %i.nw = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %i.nw, align 8, !noalias !17902
  %i.nx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %i.nx, align 8, !noalias !17902
  %i.ny = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ny, align 8, !noalias !17902
  %i.nz = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 0, ptr %i.nz, align 8, !noalias !17902
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc81 unwind label %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.dp
  unreachable

bb.dq:                                            ; preds = %bb.do
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i" unwind label %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i": ; preds = %bb.dq, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !17901
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit"

.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dq, %bb.dp, %bb.dm
  %lpad.loopexit.split-lp633 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ng, ptr %i.ne, align 8
  br label %.thread353

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h1496bbc7960f880bE.exit.i.i", %bb.dl
  store ptr %i.ng, ptr %i.ne, align 8
  %.not457 = icmp eq ptr %.sroa.053.1450, %i.nd   ; 2 uses
  %.sroa.053.1.idx = select i1 %.not457, i64 0, i64 32
  %.sroa.053.1 = getelementptr inbounds nuw i8, ptr %.sroa.053.1450, i64 %.sroa.053.1.idx
  br i1 %.not457, label %._crit_edge, label %.lr.ph

.thread353:                                       ; preds = %.thread353.loopexit, %.thread353.loopexit.split-lp, %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn348 = phi { ptr, i32 } [ %lpad.loopexit.split-lp633, %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit, %.thread353.loopexit ], [ %lpad.loopexit.split-lp, %.thread353.loopexit.split-lp ]
  %.sroa.050.0347 = phi i1 [ true, %.thread343.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ true, %.thread353.loopexit ], [ false, %.thread353.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr161drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u3b$$u20$4$u5d$$GT$$GT$17ha5d6e9260391d34eE"(ptr noalias noundef align 8 dereferenceable(136) %i.mw) #61
          to label %bb.dr unwind label %bb.bl

bb.dr:                                            ; preds = %.thread353
  br i1 %.sroa.050.0347, label %bb.ds, label %bb.du

bb.ds:                                            ; preds = %bb.dr
  %i.oa = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.oa) #61
          to label %bb.du unwind label %bb.bl

bb.dt:                                            ; preds = %bb.du
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mn, i64 noundef 168, i64 noundef 8) #53
  br label %.thread367

bb.du:                                            ; preds = %bb.dr, %bb.ds
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..LetAttrs$GT$17h6e592642af39b876E"(ptr noalias noundef align 8 dereferenceable(24) %i.mn) #61
          to label %bb.dt unwind label %bb.bl

end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E:bb.a
  %i.pl = load i8, ptr %i.as, align 8, !range !96, !alias.scope !17906, !noundef !34
  %.off.i = add nsw i8 %i.pl, -36
  %switch.i = icmp ult i8 %.off.i, 3
  br i1 %switch.i, label %.sink.split.i, label %.thread

.sink.split.i:                                    ; preds = %bb.ex
  %i.pm = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17h181390edb1d475afE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.pm)
          to label %.thread unwind label %bb.bl

bb.ey:                                            ; preds = %bb.db
  %i.pn = getelementptr inbounds nuw i8, ptr %i.aq, i64 40 ; 3 uses
  %i.po = load ptr, ptr %i.pn, align 8, !nonnull !34, !noundef !34
  %i.pp = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.po, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.ez unwind label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  store ptr %i.pp, ptr %i.pn, align 8
  %i.pq = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !nonnull !34, !noundef !34
  %i.ps = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.pr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fa unwind label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  store ptr %i.ps, ptr %i.pq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ap, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  %i.pt = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hffd3a014825ac915E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ap, i32 noundef %i.bm)
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
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h9558ce74c32955f7E"(ptr noalias noundef align 8 dereferenceable(40) %i.aq) #61
          to label %bb.fc unwind label %bb.bl

bb.fe:                                            ; preds = %bb.ff, %bb.fc
  br i1 %.sroa.042.0.ph, label %bb.fg, label %.thread

bb.ff:                                            ; preds = %bb.fc
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pn) #61
          to label %bb.fe unwind label %bb.bl

bb.fg:                                            ; preds = %bb.fe
  %i.pu = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.pu) #61
          to label %.thread unwind label %bb.bl

bb.fh:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %.sroa.0173.0.copyload = load i64, ptr %i.ao, align 8
  %.sroa.4174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.4174.0.copyload = load ptr, ptr %.sroa.4174.0..sroa_idx, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.5175.0.copyload = load i64, ptr %.sroa.5175.0..sroa_idx, align 8 ; 2 uses
  %i.pv = icmp ult i64 %.sroa.5175.0.copyload, 1152921504606846976
  call void @llvm.assume(i1 %i.pv)
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.4174.0.copyload, i64 %.sroa.5175.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17907
  store ptr %.sroa.4174.0.copyload, ptr %i.p, align 8, !alias.scope !17908, !noalias !17909
  %.sroa.4223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.4174.0.copyload, ptr %.sroa.4223.0..sroa_idx, align 8, !alias.scope !17908, !noalias !17909
  %.sroa.5224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %.sroa.0173.0.copyload, ptr %.sroa.5224.0..sroa_idx, align 8, !alias.scope !17908, !noalias !17909
  %.sroa.6225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %i.pw, ptr %.sroa.6225.0..sroa_idx, align 8, !alias.scope !17908, !noalias !17909
  %.sroa.7226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %0, ptr %.sroa.7226.0..sroa_idx, align 8, !alias.scope !17908, !noalias !17909
  %.sroa.8227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %1, ptr %.sroa.8227.0..sroa_idx, align 8, !alias.scope !17908, !noalias !17909
  %.sroa.9228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %3, ptr %.sroa.9228.0..sroa_idx, align 8, !alias.scope !17908, !noalias !17909
  %.sroa.10229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store ptr %4, ptr %.sroa.10229.0..sroa_idx, align 8, !alias.scope !17908, !noalias !17909
  invoke fastcc void @"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h362314efd3be9c7bE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
          to label %bb.fi unwind label %bb.di, !inline_history !17789

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17907
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %i.an, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.px = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.px, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  store i64 -9223372036854775755, ptr %i.am, align 8
  %i.py = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hffd3a014825ac915E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.am, i32 noundef %i.bm)
          to label %bb.fj unwind label %bb.di

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread398.thread

bb.fk:                                            ; preds = %bb.dd
  %i.pz = load ptr, ptr %i.al, align 8, !nonnull !34, !noundef !34
  %i.qa = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.pz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fl unwind label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  store ptr %i.qa, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qb, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  store i64 -9223372036854775754, ptr %i.ak, align 8
  %i.qc = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hffd3a014825ac915E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ak, i32 noundef %i.bm)
          to label %bb.fm unwind label %bb.fq

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.thread398.thread

bb.fn:                                            ; preds = %bb.fk
  %i.qd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17910)
  call void @llvm.experimental.noalias.scope.decl(metadata !17911)
  %i.qf = load ptr, ptr %i.qe, align 8, !alias.scope !17912, !nonnull !34, !noundef !34 ; 2 uses
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !17912, !noundef !34
  %i.qh = add i64 %i.qg, -1                       ; 2 uses
  store i64 %i.qh, ptr %i.qf, align 8, !noalias !17912
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
  %i.qm = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
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
  %i.qq = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hffd3a014825ac915E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aa, i32 noundef %i.bm)
          to label %bb.fs unwind label %bb.fq

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread398.thread

bb.ft:                                            ; preds = %bb.fp
  %i.qr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qs = load i64, ptr %i.qj, align 8, !noalias !17913, !noundef !34
  %i.qt = add i64 %i.qs, -1                       ; 2 uses
  store i64 %i.qt, ptr %i.qj, align 8, !noalias !17913
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
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$nickel_lang_core..eval..value..lens..TermContent$GT$17h7545013d74a4e8a3E"(i64 %i.bn, ptr nonnull %.sroa.9.0.copyload) #61
          to label %.thread309 unwind label %bb.bl

bb.fw:                                            ; preds = %bb.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(20) %i.qv, i64 20, i1 false)
  %i.qw = load ptr, ptr %i.ay, align 8, !noundef !34 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq ptr %i.qw, null
  br i1 %.not, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit", label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.qx = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit" unwind label %bb.fq, !inline_history !17798

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit": ; preds = %bb.fx, %bb.fw
  %.sroa.06.0 = phi ptr [ null, %bb.fw ], [ %i.qx, %bb.fx ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !17914
  %i.qy = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #53, !noalias !17914 ; 6 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.fz, label %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h63677e19df7e1cfcE.exit, !prof !37

bb.fy:                                            ; preds = %bb.fz
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17ha0500a057c85eb99E"(ptr %.sroa.06.0) #61
          to label %.thread unwind label %bb.gb, !noalias !17914

bb.fz:                                            ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17914
  store ptr @320, ptr %i.t, align 8, !noalias !17914
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.rb, align 8, !noalias !17914
  %i.rc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.rc, align 8, !noalias !17914
  %i.rd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.rd, align 8, !noalias !17914
  %i.re = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.re, align 8, !noalias !17914
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321) #59
          to label %bb.ga unwind label %bb.fy, !noalias !17914

bb.ga:                                            ; preds = %bb.fz
  unreachable

bb.gb:                                            ; preds = %bb.fy
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !17914
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h63677e19df7e1cfcE.exit: ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hb7a7100b80d24462E.exit"
  store i64 504403158265495553, ptr %i.qy, align 8, !noalias !17914
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i32 %i.bm, ptr %i.rg, align 8, !noalias !17914
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %.sroa.06.0, ptr %i.rh, align 8, !noalias !17915
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
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h0353b356dcdecd25E"(i64 %i.bn, ptr nonnull %.val73)
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
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h0353b356dcdecd25E"(i64 %i.bn, ptr %.val71) #61
          to label %.thread unwind label %bb.bl

.thread:                                          ; preds = %bb.co, %bb.cp, %bb.cq, %bb.fy, %.body, %bb.cl, %bb.ft, %bb.fu, %bb.fn, %bb.fo, %bb.ex, %.sink.split.i, %bb.dz, %bb.ea, %bb.fe, %bb.fg, %bb.eo, %.thread309, %.thread309, %.thread309, %.thread309, %.thread309, %bb.gd, %bb.ge
  %.pn63292 = phi { ptr, i32 } [ %.pn61302, %bb.gd ], [ %lpad.thr_comm.split-lp, %bb.ge ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %lpad.thr_comm404, %bb.fe ], [ %lpad.thr_comm.split-lp360, %bb.dz ], [ %lpad.thr_comm404, %bb.fg ], [ %i.qd, %bb.fn ], [ %i.pk, %.sink.split.i ], [ %i.pk, %bb.ex ], [ %i.qd, %bb.fo ], [ %i.qr, %bb.fu ], [ %i.qr, %bb.ft ], [ %lpad.thr_comm379395, %bb.eo ], [ %i.lu, %bb.cl ], [ %eh.lpad-body, %.body ], [ %i.lz, %bb.cp ], [ %i.lz, %bb.co ], [ %i.lz, %bb.cq ], [ %lpad.thr_comm359372, %bb.ea ], [ %i.ra, %bb.fy ]
  resume { ptr, i32 } %.pn63292

bb.ge:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl) #61
          to label %.thread unwind label %bb.bl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h2161d526ecae9bc4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !34, !align !52, !noundef !34
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !34, !align !41, !noundef !34
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !34, !noundef !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !34, !align !41, !noundef !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.i = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #61
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !17934)
  call void @llvm.experimental.noalias.scope.decl(metadata !17935)
  call void @llvm.experimental.noalias.scope.decl(metadata !17936)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !17937, !nonnull !34, !noundef !34 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !17937, !noundef !34
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !17937
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17938)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !17939, !noundef !34 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !noalias !17940, !noundef !34
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !17940
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %common.resume unwind label %bb.j

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i": ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17941)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !17942, !noundef !34 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i"
  %i.y = load i64, ptr %i.w, align 8, !noalias !17943, !noundef !34
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.w, align 8, !noalias !17943
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit"

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hbf0bf6f57231cc98E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hb695bd2fbe66fa13E.exit.i", %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h86280e4cd689a6a0E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, i32 %.0.val, ptr noalias noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
begin_hunk_3_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h954cb38e42081a6bE":bb.a

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @400, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @401) #59
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$17h98c19254fcdd7829E"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #61
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.d, %bb.b
  store ptr %.24.val, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.u, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op19seq_terms17h490095fcbd2804b8E"(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(80) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19907)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19908)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !19909, !noundef !34 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9169d4b34cbd55f8E.exit.i.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9169d4b34cbd55f8E.exit.i.i": ; preds = %bb.a
  %i.o = add i64 %i.m, -1
  store i64 %i.o, ptr %i.l, align 8, !alias.scope !19909
  %i.p = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb850492b82192a4bE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %.noexc unwind label %bb.al    ; 2 uses

.noexc:                                           ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h9169d4b34cbd55f8E.exit.i.i"
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %bb.j, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !19910 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val3.i.i = load i32, ptr %i.r, align 8, !alias.scope !19910
  %.val4.i.i = load ptr, ptr %i.p, align 8, !nonnull !34, !noundef !34 ; 4 uses
  %i.s = ptrtoint ptr %.val4.i.i to i64
  %i.t = and i64 %i.s, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.t, i64 2)
  switch i64 %..i.i.i.i, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !47

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc9 unwind label %bb.al

.noexc9:                                          ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %.val4.i.i, align 8, !noundef !34 ; 3 uses
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
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !37

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !19910
  store ptr @1344, ptr %i.k, align 8, !noalias !19910
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.ac, align 8, !noalias !19910
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.ad, align 8, !noalias !19910
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8, !noalias !19910
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !19910
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc10 unwind label %bb.al

.noexc10:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !34, !noundef !34 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !34
  %i.ak = getelementptr inbounds nuw [160 x i8], ptr %i.ah, i64 %i.aj
  %i.al = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h7d88dd0bd4472adfE(ptr noundef nonnull %.val4.i.i, ptr noundef nonnull %i.ah, ptr noundef %i.ak, i32 noundef %.val3.i.i)
          to label %.noexc11 unwind label %bb.al

.noexc11:                                         ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val.i = load ptr, ptr %i.am, align 8, !alias.scope !19907, !nonnull !34, !align !52, !noundef !34
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val3.i = load ptr, ptr %i.an, align 8, !alias.scope !19907, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %.val.i4.i = load ptr, ptr %.val3.i, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %i.ao = getelementptr i8, ptr %.val3.i, i64 8
  %.val2.i.i = load ptr, ptr %i.ao, align 8       ; 4 uses
  %.val.i.i.i.i = load i64, ptr %.val.i4.i, align 8, !noundef !34 ; 2 uses
  %i.ap = icmp ne i64 %.val.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add i64 %.val.i.i.i.i, 1                ; 2 uses
  store i64 %i.aq, ptr %.val.i4.i, align 8
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i, !prof !37

bb.g:                                             ; preds = %.noexc11
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i: ; preds = %.noexc11
  %.not.i.i.i = icmp eq ptr %.val2.i.i, null
  br i1 %.not.i.i.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i", label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i
  %.val.i2.i.i.i = load i64, ptr %.val2.i.i, align 8, !noundef !34 ; 2 uses
  %i.as = icmp ne i64 %.val.i2.i.i.i, 0
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add i64 %.val.i2.i.i.i, 1               ; 2 uses
  store i64 %i.at, ptr %.val2.i.i, align 8
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i", !prof !37

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i": ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i
  %i.av = invoke fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h865f9053b568f185E"(ptr noundef nonnull %i.al, ptr noalias noundef nonnull align 1 %.val.i, ptr noundef nonnull %.val.i4.i, ptr noundef %.val2.i.i, i64 noundef 0, ptr undef)
          to label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he44af2664cd32686E.exit" unwind label %bb.al

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he44af2664cd32686E.exit": ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i"
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !19911
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i8 19, ptr %i.aw, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !19911
  store i64 -9223372036854775757, ptr %i.j, align 8, !noalias !19911
  %i.ax = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.j)
          to label %bb.l unwind label %bb.aj

bb.j:                                             ; preds = %bb.a, %.noexc
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @402, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @403) #59
          to label %bb.k unwind label %bb.al

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he44af2664cd32686E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !19911
  %i.ay = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.ax, i32 noundef %1)
          to label %bb.m unwind label %bb.aj      ; 2 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.622.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.823.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !19912
  store i64 %.sroa.017.0.copyload, ptr %i.i, align 8, !noalias !19913
  %.sroa.5.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx19, align 8, !noalias !19913
  %.sroa.6.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx21, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false), !noalias !19913
  call void @llvm.experimental.noalias.scope.decl(metadata !19914)
  call void @llvm.experimental.noalias.scope.decl(metadata !19915)
  call void @llvm.experimental.noalias.scope.decl(metadata !19916)
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !19917, !noalias !19912, !noundef !34
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold17h206de127b535a76cE.exit.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !19918
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
  %i.bi = invoke fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb850492b82192a4bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.p unwind label %bb.ad, !noalias !19919 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i, label %.sink.split.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bi, align 8, !noalias !19919, !nonnull !34, !noundef !34 ; 4 uses
  %i.bj = load i64, ptr %i.az, align 8, !alias.scope !19917, !noalias !19920, !noundef !34
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %i.az, align 8, !alias.scope !19917, !noalias !19920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !19921
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.g, align 8, !noalias !19921
  %i.bl = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.bm = and i64 %i.bl, 3
  %..i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bm, i64 2)
  switch i64 %..i.i.i.i.i.i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i" [
    i64 2, label %bb.r
    i64 0, label %bb.s
  ], !prof !47

bb.r:                                             ; preds = %bb.q
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @767, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @777, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @318) #59
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19922

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bn = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !19922, !noundef !34 ; 3 uses
  %i.bo = and i64 %i.bn, 72057594037927935        ; 3 uses
  %i.bp = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  %i.br = and i64 %i.bn, 1080863910568919040
  %i.bs = icmp ult i64 %i.bn, 864691128455135232
  call void @llvm.assume(i1 %i.bs)
  %i.bt = or i64 %i.bq, %i.br
  store i64 %i.bt, ptr %.val.i.i.i.i.i.i, align 8, !noalias !19922
  %i.bu = icmp eq i64 %i.bo, 72057594037927935
  br i1 %i.bu, label %bb.t, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i", !prof !37

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !19921
  store ptr @1344, ptr %i.f, align 8, !noalias !19921
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bv, align 8, !noalias !19921
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.bw, align 8, !noalias !19921
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bx, align 8, !noalias !19921
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.by, align 8, !noalias !19921
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1345) #59
          to label %.noexc4.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19922

.noexc4.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.t
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.s, %bb.q
  %i.bz = load ptr, ptr %i.bc, align 8, !noalias !19922, !nonnull !34, !noundef !34 ; 2 uses
  %i.ca = load i64, ptr %i.bd, align 8, !noalias !19922, !noundef !34
  %i.cb = getelementptr inbounds nuw [160 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h7d88dd0bd4472adfE(ptr noundef nonnull %.val.i.i.i.i.i.i, ptr noundef nonnull %i.bz, ptr noundef %i.cb, i32 noundef %.sroa.7.0.copyload)
          to label %"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17hbb48e025bda4d913E.exit.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !19922

"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17hbb48e025bda4d913E.exit.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !19923
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !19923
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.9.0.copyload, align 8, !noalias !19924, !nonnull !34, !noundef !34 ; 3 uses
  %.val2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !noalias !19924 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !19924, !noundef !34 ; 2 uses
  %i.cd = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.ce, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !19924
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.u, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i, !prof !37

bb.u:                                             ; preds = %"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17hbb48e025bda4d913E.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts28_$u7b$$u7b$closure$u7d$$u7d$17hbb48e025bda4d913E.exit.i.i.i.i.i.i.i.i.i"
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !19924, !noundef !34 ; 2 uses
  %i.cg = icmp ne i64 %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.cg)
  %i.ch = add i64 %.val.i2.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  store i64 %i.ch, ptr %.val2.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !19924
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %bb.w, label %bb.x, !prof !37

bb.w:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.v, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cj = invoke fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h865f9053b568f185E"(ptr noundef nonnull %i.cc, ptr noalias noundef nonnull align 1 %.sroa.823.0.copyload, ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noundef %.val2.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 0, ptr undef)
          to label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i.i.i.i.i.i.i.i.i.i" unwind label %bb.aa, !noalias !19924

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !19923
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !19923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19923
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19925
  store i8 19, ptr %i.bf, align 8, !noalias !19923
  store ptr %i.cj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !19925
  store i64 -9223372036854775757, ptr %i.b, align 8, !noalias !19925
  %i.ck = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hcdbcb035fa119140E.exit.i.i.i.i.i.i.i" unwind label %bb.y, !noalias !19924

bb.y:                                             ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i.i.i.i.i.i.i.i.i.i"
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #61
          to label %.body.i.i.i.i unwind label %bb.z, !noalias !19924

bb.z:                                             ; preds = %bb.y
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !19924
  unreachable

bb.aa:                                            ; preds = %bb.x
  %lpad.thr_comm.split-lp.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #61
          to label %.body.i.i.i.i unwind label %bb.ab, !noalias !19924

bb.ab:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !19924
  unreachable

.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i.i.i.i.i.i", %bb.t, %bb.r
  %lpad.loopexit.split-lp74 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #61
          to label %.body.i.i.i.i unwind label %bb.ac, !noalias !19922

bb.ac:                                            ; preds = %.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !19922
  unreachable

"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hcdbcb035fa119140E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hdd14b7f5982939caE.exit.i.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !19925
  store ptr %i.ck, ptr %i.bg, align 8, !noalias !19923
  store ptr %storemerge.i.i.i.i.i.i, ptr %i.bh, align 8, !noalias !19923
  store i64 -9223372036854775761, ptr %i.c, align 8, !noalias !19923
  %i.co = invoke noundef nonnull ptr @"_ZN118_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..convert..From$LT$nickel_lang_core..term..Term$GT$$GT$4from17h1fb3531f2197356dE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.c)
          to label %.noexc.i.i.i.i unwind label %bb.af, !noalias !19926

.noexc.i.i.i.i:                                   ; preds = %"_ZN4core3ops9try_trait26NeverShortCircuit$LT$T$GT$10wrap_mut_228_$u7b$$u7b$closure$u7d$$u7d$17hcdbcb035fa119140E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19923
  %i.cp = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.co, i32 noundef %1)
          to label %.noexc4.i.i.i.i unwind label %bb.af, !noalias !19926 ; 2 uses

.noexc4.i.i.i.i:                                  ; preds = %.noexc.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !19923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !19923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !19921
  %i.cq = load i64, ptr %i.az, align 8, !alias.scope !19917, !noalias !19920, !noundef !34
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.sink.split.i.i.i.i.i, label %bb.o

end_hunk_3
begin_hunk_4_@_ZN16nickel_lang_core4term4make12enum_variant17h7569897ffcaa6da8E:bb.a

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h1ee81237e1b640e7E.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !25290
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.l, align 8, !noalias !25290
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.m, align 8, !noalias !25291
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
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17h2043370c4e326e18E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #61
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term4make7builder6Record4path17h6bc693657dd839f8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !25317 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !25317, !nonnull !34, !noundef !34 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !25317 ; 4 uses
  %i.d = icmp ult i64 %.sroa.5.0.copyload.i, 461168601842738791
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..make..builder..Record$GT$17hd7c02d6059130f13E"(ptr noalias noundef align 8 dereferenceable(32) %1) #61
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.e = mul nuw i64 %.sroa.0.0.copyload.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !25318
  br label %.body

bb.c:                                             ; preds = %.noexc12.i.i.i.i.i, %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.g, label %.body, label %bb.b

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.noexc13.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc13.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25319
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.h, i64 20, i1 false), !noalias !25319
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !25320
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i, !prof !40

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25320
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !25320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25320
  store ptr %i.b, ptr %i.a, align 8, !noalias !25320
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @736, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @735)
          to label %.noexc.i.i.i.i.i unwind label %bb.c, !noalias !25321

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25320
  br label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = invoke { ptr, i64 } @"_ZN92_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17ha8e0a3be93011bbfE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c)
          to label %.noexc12.i.i.i.i.i unwind label %bb.c, !noalias !25321 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h7187b0cbe8e16d67E.exit.i.i.i.i.i.i.i"
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17h6ccd93571e91409cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %.noexc13.i.i.i.i.i unwind label %bb.c, !noalias !25321

.noexc13.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25319
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !noalias !25321
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData10map_values17hc91c36656ab42694E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !nonnull !34, !noundef !34
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #53, !noalias !25400
  br label %bb.d

.body:                                            ; preds = %bb.t, %.body8.thread
  %eh.lpad-body = phi { ptr, i32 } [ %i.cv, %bb.t ], [ %eh.lpad-body973, %.body8.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25401)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !25401, !noundef !34 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17h6bdb7cbb8a8ecf39E.exit", label %bb.b

bb.b:                                             ; preds = %.body
  %i.w = load i64, ptr %i.u, align 8, !noalias !25402, !noundef !34
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !25402
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17h6bdb7cbb8a8ecf39E.exit"

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17h6bdb7cbb8a8ecf39E.exit" unwind label %bb.v

bb.d:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.4.0.copyload) ]
  %i.z = icmp ult i64 %.sroa.021.sroa.5.0.copyload, 128102389400760776
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %.sroa.021.sroa.4.0.copyload, i64 %.sroa.021.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !25403
  store ptr %.sroa.021.sroa.4.0.copyload, ptr %i.h, align 8, !alias.scope !25404, !noalias !25405
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.021.sroa.4.0.copyload, ptr %.sroa.434.0..sroa_idx, align 8, !alias.scope !25404, !noalias !25405
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.021.sroa.0.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8, !alias.scope !25404, !noalias !25405
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.aa, ptr %.sroa.636.0..sroa_idx, align 8, !alias.scope !25404, !noalias !25405
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !25404, !noalias !25405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !25403
  %i.ab = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !44, !noalias !25406, !noundef !34
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !25407
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !25407
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i": ; preds = %bb.d
  %i.af = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i unwind label %bb.t, !noalias !25403, !inline_history !25345 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i"
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !noalias !25408
  store i8 1, ptr %i.ac, align 8, !noalias !25408
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i": ; preds = %.noexc.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i
  %.pre-phi85 = phi i64 [ %i.ah, %.noexc.i ], [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i ]
  %.pre-phi = phi i64 [ %i.ag, %.noexc.i ], [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.aj = add i64 %.pre-phi, 1
  store i64 %i.aj, ptr %i.ab, align 8, !noalias !25407
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4feb009fbcbcfc15E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, i64 noundef %.sroa.021.sroa.5.0.copyload, i64 noundef %.pre-phi, i64 noundef %.pre-phi85)
          to label %bb.e unwind label %bb.t, !noalias !25403, !inline_history !25345

bb.e:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !25403, !nonnull !34, !noundef !34
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8, !noalias !25403, !nonnull !34, !noundef !34
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !25409, !noalias !25403, !noundef !34
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
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !25410, !noalias !25411, !noundef !34
  %i.aw = icmp ugt i64 %.sroa.0.0.i.i, %i.av
  br i1 %i.aw, label %bb.f, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i", !prof !37

.body8:                                           ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h6d734a646197abcdE.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body8.thread

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ay = load i64, ptr %i.at, align 8, !alias.scope !25412, !noalias !25411, !noundef !34
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !25412, !noalias !25411, !nonnull !34, !noundef !34
  %i.bb = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ba, i64 noundef %i.ay, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i" unwind label %bb.q ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i": ; preds = %bb.f, %bb.e
  %i.bc = load i64, ptr %i.g, align 8, !range !42, !alias.scope !25412, !noalias !25411, !noundef !34
  %i.bd = load i64, ptr %i.at, align 8, !alias.scope !25412, !noalias !25411, !noundef !34 ; 2 uses
  %i.be = icmp ult i64 %i.bd, 128102389400760776
  call void @llvm.assume(i1 %i.be), !noalias !25411
  %i.bf = sub nsw i64 %i.bc, %i.bd
  %i.bg = icmp ugt i64 %.sroa.0.0.i.i, %i.bf
  br i1 %i.bg, label %bb.g, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit"

bb.g:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i"
  %i.bh = load i64, ptr %i.ak, align 8, !alias.scope !25412, !noalias !25411, !noundef !34
  %i.bi = load i64, ptr %i.au, align 8, !alias.scope !25412, !noalias !25411, !noundef !34
  %i.bj = add i64 %i.bi, %i.bh
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h37476e418f2febaaE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %.sroa.0.0.i.i, i64 noundef %i.bj)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit" unwind label %bb.q

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i", %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25413
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !25414), !noalias !25411
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !25415, !noalias !25416, !nonnull !34, !noundef !34 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %.promoted = load ptr, ptr %i.bm, align 8, !alias.scope !25415, !noalias !25416 ; 3 uses
  %i.bn = icmp eq ptr %.promoted, %i.bl
  br i1 %i.bn, label %_ZN4core4iter6traits8iterator8Iterator4fold17h6d734a646197abcdE.exit.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i.lr.ph"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i.lr.ph": ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit"
  %.sroa.663.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %.sroa.058.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.058, i64 24
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i.lr.ph", %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h353ce45fb9cb966fE.exit.i.i"
  %i.bs = phi ptr [ %.promoted, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i.lr.ph" ], [ %i.bt, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h353ce45fb9cb966fE.exit.i.i" ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25417), !noalias !25418
  call void @llvm.experimental.noalias.scope.decl(metadata !25419), !noalias !25418
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72 ; 6 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.bs, align 8, !noalias !25420 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h6d734a646197abcdE.exit.i, label %bb.i

bb.h:                                             ; preds = %bb.o, %.noexc.i.i
  %i.bu = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bt, ptr %i.bm, align 8
  br label %.body19

.body19:                                          ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i", %bb.h
  %eh.lpad-body20 = phi { ptr, i32 } [ %i.bu, %bb.h ], [ %i.cg, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i" ]
  invoke fastcc void @"_ZN4core3ptr138drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h9a6a2309b3a8fefdE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #61
          to label %.body8.thread unwind label %bb.p, !noalias !25421, !inline_history !25368

bb.i:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha26a53622be5dae8E.exit.i.i.i"
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.663.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !25423
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !25424
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.bv, i64 20, i1 false)
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.a, align 8, !noalias !25425
  %i.bw = load ptr, ptr %i.bo, align 8, !noalias !25422, !noundef !34 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i15, label %.noexc.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.i, align 8, !alias.scope !25426, !noalias !25422, !nonnull !34, !align !41, !noundef !34 ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !25427, !noalias !25422, !nonnull !34, !align !41, !noundef !34
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !25427, !noalias !25422, !nonnull !34, !align !52, !noundef !34
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !25427, !noalias !25422, !nonnull !34, !align !41, !noundef !34
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !25427, !noalias !25422, !nonnull !34, !align !41, !noundef !34
  %i.cf = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h93cf491631966c79E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ca, ptr noundef nonnull %i.bw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.cc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ce)
          to label %.noexc.i.i unwind label %bb.k, !noalias !25422, !inline_history !25382

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bt, ptr %i.bm, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !25428), !noalias !25423
  call void @llvm.experimental.noalias.scope.decl(metadata !25429), !noalias !25423
  %i.ch = load ptr, ptr %i.bp, align 8, !alias.scope !25430, !noalias !25422, !noundef !34 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = load i64, ptr %i.ch, align 8, !noalias !25431, !noundef !34
  %i.ck = add i64 %i.cj, -1                       ; 2 uses
  store i64 %i.ck, ptr %i.ch, align 8, !noalias !25431
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %bb.m, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i"

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i" unwind label %bb.n, !noalias !25422, !inline_history !25391

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i": ; preds = %bb.m, %bb.l, %bb.k
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h7e944a18cbc2e1abE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #61
          to label %.body19 unwind label %bb.n, !noalias !25422, !inline_history !25391

bb.n:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17h0324633f657496e5E.exit.i", %bb.m
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !25422, !inline_history !25391
  unreachable

.noexc.i.i:                                       ; preds = %bb.j, %bb.i
  %.sroa.02.0.i.i = phi ptr [ null, %bb.i ], [ %i.cf, %bb.j ]
  %i.cn = load ptr, ptr %i.bp, align 8, !noalias !25422, !noundef !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.058.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !25432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.058, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false), !noalias !25432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.058, i64 48, i1 false), !noalias !25424
  store ptr %.sroa.02.0.i.i, ptr %.sroa.559.0..sroa_idx, align 8, !noalias !25424
  store ptr %i.cn, ptr %.sroa.660.0..sroa_idx, align 8, !noalias !25424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !25433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !25433
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h07b046f055ab188aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.bq)
          to label %.noexc13 unwind label %bb.h

.noexc13:                                         ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.br, i64 40, i1 false), !noalias !25433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !25433
end_hunk_4
begin_hunk_5_@_ZN3md58compress4soft8compress17hbeab66e367b3ff69E:.lr.ph
  %i.np = add i32 %.sroa.13.0.copyload.i, -640364487
  %i.nq = add i32 %i.np, %i.mr
  %i.nr = add i32 %i.nq, %i.no                    ; 2 uses
  %i.ns = tail call i32 @llvm.fshl.i32(i32 %i.nr, i32 %i.nr, i32 4)
  %i.nt = add i32 %i.ns, %i.nm                    ; 5 uses
  %i.nu = xor i32 %i.nm, %i.nf
  %i.nv = xor i32 %i.nu, %i.nt
  %i.nw = add i32 %.sroa.16.0.copyload.i, -421815835
  %i.nx = add i32 %i.nw, %i.my
  %i.ny = add i32 %i.nx, %i.nv                    ; 2 uses
  %i.nz = tail call i32 @llvm.fshl.i32(i32 %i.ny, i32 %i.ny, i32 11)
  %i.oa = add i32 %i.nz, %i.nt                    ; 5 uses
  %i.ob = xor i32 %i.nt, %i.nm
  %i.oc = xor i32 %i.ob, %i.oa
  %i.od = add i32 %.sroa.19.0.copyload.i, 530742520
  %i.oe = add i32 %i.od, %i.nf
  %i.of = add i32 %i.oe, %i.oc                    ; 2 uses
  %i.og = tail call i32 @llvm.fshl.i32(i32 %i.of, i32 %i.of, i32 16)
  %i.oh = add i32 %i.og, %i.oa                    ; 5 uses
  %i.oi = xor i32 %i.oa, %i.nt
  %i.oj = xor i32 %i.oi, %i.oh
  %i.ok = add i32 %.sroa.6.0.copyload.i, -995338651
  %i.ol = add i32 %i.ok, %i.nm
  %i.om = add i32 %i.ol, %i.oj                    ; 2 uses
  %i.on = tail call i32 @llvm.fshl.i32(i32 %i.om, i32 %i.om, i32 23)
  %i.oo = add i32 %i.on, %i.oh                    ; 5 uses
  %i.op = xor i32 %i.oa, -1
  %i.oq = or i32 %i.oo, %i.op
  %i.or = xor i32 %i.oq, %i.oh
  %i.os = add i32 %.sroa.0.0.copyload.i, -198630844
  %i.ot = add i32 %i.os, %i.nt
  %i.ou = add i32 %i.ot, %i.or                    ; 2 uses
  %i.ov = tail call i32 @llvm.fshl.i32(i32 %i.ou, i32 %i.ou, i32 6)
  %i.ow = add i32 %i.ov, %i.oo                    ; 5 uses
  %i.ox = xor i32 %i.oh, -1
  %i.oy = or i32 %i.ow, %i.ox
  %i.oz = xor i32 %i.oy, %i.oo
  %i.pa = add i32 %.sroa.11.0.copyload.i, 1126891415
  %i.pb = add i32 %i.pa, %i.oa
  %i.pc = add i32 %i.pb, %i.oz                    ; 2 uses
  %i.pd = tail call i32 @llvm.fshl.i32(i32 %i.pc, i32 %i.pc, i32 10)
  %i.pe = add i32 %i.pd, %i.ow                    ; 5 uses
  %i.pf = xor i32 %i.oo, -1
  %i.pg = or i32 %i.pe, %i.pf
  %i.ph = xor i32 %i.pg, %i.ow
  %i.pi = add i32 %.sroa.18.0.copyload.i, -1416354905
  %i.pj = add i32 %i.pi, %i.oh
  %i.pk = add i32 %i.pj, %i.ph                    ; 2 uses
  %i.pl = tail call i32 @llvm.fshl.i32(i32 %i.pk, i32 %i.pk, i32 15)
  %i.pm = add i32 %i.pl, %i.pe                    ; 5 uses
  %i.pn = xor i32 %i.ow, -1
  %i.po = or i32 %i.pm, %i.pn
  %i.pp = xor i32 %i.po, %i.pe
  %i.pq = add i32 %.sroa.9.0.copyload.i, -57434055
  %i.pr = add i32 %i.pq, %i.oo
  %i.ps = add i32 %i.pr, %i.pp                    ; 2 uses
  %i.pt = tail call i32 @llvm.fshl.i32(i32 %i.ps, i32 %i.ps, i32 21)
  %i.pu = add i32 %i.pt, %i.pm                    ; 5 uses
  %i.pv = xor i32 %i.pe, -1
  %i.pw = or i32 %i.pu, %i.pv
  %i.px = xor i32 %i.pw, %i.pm
  %i.py = add i32 %.sroa.16.0.copyload.i, 1700485571
  %i.pz = add i32 %i.py, %i.ow
  %i.qa = add i32 %i.pz, %i.px                    ; 2 uses
  %i.qb = tail call i32 @llvm.fshl.i32(i32 %i.qa, i32 %i.qa, i32 6)
  %i.qc = add i32 %i.qb, %i.pu                    ; 5 uses
  %i.qd = xor i32 %i.pm, -1
  %i.qe = or i32 %i.qc, %i.qd
  %i.qf = xor i32 %i.qe, %i.pu
  %i.qg = add i32 %.sroa.7.0.copyload.i, -1894986606
  %i.qh = add i32 %i.qg, %i.pe
  %i.qi = add i32 %i.qh, %i.qf                    ; 2 uses
  %i.qj = tail call i32 @llvm.fshl.i32(i32 %i.qi, i32 %i.qi, i32 10)
  %i.qk = add i32 %i.qj, %i.qc                    ; 5 uses
  %i.ql = xor i32 %i.pu, -1
  %i.qm = or i32 %i.qk, %i.ql
  %i.qn = xor i32 %i.qm, %i.qc
  %i.qo = add i32 %.sroa.14.0.copyload.i, -1051523
  %i.qp = add i32 %i.qo, %i.pm
  %i.qq = add i32 %i.qp, %i.qn                    ; 2 uses
  %i.qr = tail call i32 @llvm.fshl.i32(i32 %i.qq, i32 %i.qq, i32 15)
  %i.qs = add i32 %i.qr, %i.qk                    ; 5 uses
  %i.qt = xor i32 %i.qc, -1
  %i.qu = or i32 %i.qs, %i.qt
  %i.qv = xor i32 %i.qu, %i.qk
  %i.qw = add i32 %.sroa.5.0.copyload.i, -2054922799
  %i.qx = add i32 %i.qw, %i.pu
  %i.qy = add i32 %i.qx, %i.qv                    ; 2 uses
  %i.qz = tail call i32 @llvm.fshl.i32(i32 %i.qy, i32 %i.qy, i32 21)
  %i.ra = add i32 %i.qz, %i.qs                    ; 5 uses
  %i.rb = xor i32 %i.qk, -1
  %i.rc = or i32 %i.ra, %i.rb
  %i.rd = xor i32 %i.rc, %i.qs
  %i.re = add i32 %.sroa.12.0.copyload.i, 1873313359
  %i.rf = add i32 %i.re, %i.qc
  %i.rg = add i32 %i.rf, %i.rd                    ; 2 uses
  %i.rh = tail call i32 @llvm.fshl.i32(i32 %i.rg, i32 %i.rg, i32 6)
  %i.ri = add i32 %i.rh, %i.ra                    ; 5 uses
  %i.rj = xor i32 %i.qs, -1
  %i.rk = or i32 %i.ri, %i.rj
  %i.rl = xor i32 %i.rk, %i.ra
  %i.rm = add i32 %.sroa.19.0.copyload.i, -30611744
  %i.rn = add i32 %i.rm, %i.qk
  %i.ro = add i32 %i.rn, %i.rl                    ; 2 uses
  %i.rp = tail call i32 @llvm.fshl.i32(i32 %i.ro, i32 %i.ro, i32 10)
  %i.rq = add i32 %i.rp, %i.ri                    ; 5 uses
  %i.rr = xor i32 %i.ra, -1
  %i.rs = or i32 %i.rq, %i.rr
  %i.rt = xor i32 %i.rs, %i.ri
  %i.ru = add i32 %.sroa.10.0.copyload.i, -1560198380
  %i.rv = add i32 %i.ru, %i.qs
  %i.rw = add i32 %i.rv, %i.rt                    ; 2 uses
  %i.rx = tail call i32 @llvm.fshl.i32(i32 %i.rw, i32 %i.rw, i32 15)
  %i.ry = add i32 %i.rx, %i.rq                    ; 5 uses
  %i.rz = xor i32 %i.ri, -1
  %i.sa = or i32 %i.ry, %i.rz
  %i.sb = xor i32 %i.sa, %i.rq
  %i.sc = add i32 %.sroa.17.0.copyload.i, 1309151649
  %i.sd = add i32 %i.sc, %i.ra
  %i.se = add i32 %i.sd, %i.sb                    ; 2 uses
  %i.sf = tail call i32 @llvm.fshl.i32(i32 %i.se, i32 %i.se, i32 21)
  %i.sg = add i32 %i.sf, %i.ry                    ; 5 uses
  %i.sh = xor i32 %i.rq, -1
  %i.si = or i32 %i.sg, %i.sh
  %i.sj = xor i32 %i.si, %i.ry
  %i.sk = add i32 %.sroa.8.0.copyload.i, -145523070
  %i.sl = add i32 %i.sk, %i.ri
  %i.sm = add i32 %i.sl, %i.sj                    ; 2 uses
  %i.sn = tail call i32 @llvm.fshl.i32(i32 %i.sm, i32 %i.sm, i32 6)
  %i.so = add i32 %i.sn, %i.sg                    ; 5 uses
  %i.sp = xor i32 %i.ry, -1
  %i.sq = or i32 %i.so, %i.sp
  %i.sr = xor i32 %i.sq, %i.sg
  %i.ss = add i32 %.sroa.15.0.copyload.i, -1120210379
  %i.st = add i32 %i.ss, %i.rq
  %i.su = add i32 %i.st, %i.sr                    ; 2 uses
  %i.sv = tail call i32 @llvm.fshl.i32(i32 %i.su, i32 %i.su, i32 10)
  %i.sw = add i32 %i.sv, %i.so                    ; 4 uses
  %i.sx = xor i32 %i.sg, -1
  %i.sy = or i32 %i.sw, %i.sx
  %i.sz = xor i32 %i.sy, %i.so
  %i.ta = add i32 %.sroa.6.0.copyload.i, 718787259
  %i.tb = add i32 %i.ta, %i.ry
  %i.tc = add i32 %i.tb, %i.sz                    ; 2 uses
  %i.td = tail call i32 @llvm.fshl.i32(i32 %i.tc, i32 %i.tc, i32 15)
  %i.te = add i32 %i.td, %i.sw                    ; 3 uses
  %i.tf = xor i32 %i.so, -1
  %i.tg = or i32 %i.te, %i.tf
  %i.th = xor i32 %i.tg, %i.sw
  %i.ti = add i32 %.sroa.13.0.copyload.i, -343485551
  %i.tj = add i32 %i.ti, %i.sg
  %i.tk = add i32 %i.tj, %i.th                    ; 2 uses
  %i.tl = tail call i32 @llvm.fshl.i32(i32 %i.tk, i32 %i.tk, i32 21)
  %i.tm = add i32 %i.so, %i.h                     ; 2 uses
  %i.tn = add i32 %i.te, %i.g
  %i.to = add i32 %i.tn, %i.tl                    ; 2 uses
  %i.tp = add i32 %i.te, %i.f                     ; 2 uses
  %i.tq = add i32 %i.sw, %i.e                     ; 2 uses
  %i.tr = icmp eq ptr %i.i, %i.a
  br i1 %i.tr, label %bb.b, label %bb.a

bb.b:                                             ; preds = %bb.a
  store i32 %i.to, ptr %i.b, align 4, !alias.scope !31592
  store i32 %i.tp, ptr %i.c, align 4, !alias.scope !31592
  store i32 %i.tq, ptr %i.d, align 4, !alias.scope !31592
  store i32 %i.tm, ptr %0, align 4, !alias.scope !31592
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_ZN3std2io5Write14write_vectored17h290ff3683c41aeb3E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.a, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31606)
  %.idx = shl nuw nsw i64 %2, 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %_ZN3std2io22default_write_vectored17h46d8ce1e674ef6a7E.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN3std2io22default_write_vectored17h46d8ce1e674ef6a7E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !31606, !noalias !31607, !noundef !34 ; 2 uses
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !31608, !noundef !34
  br label %_ZN3std2io22default_write_vectored17h46d8ce1e674ef6a7E.exit

_ZN3std2io22default_write_vectored17h46d8ce1e674ef6a7E.exit: ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.h, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !34, !noalias !31609, !nonnull !34
  %i.k = tail call { i64, ptr } %i.j(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !31610, !inline_history !31605
  ret { i64, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_ZN3std2io5Write14write_vectored17he503cfa1d5e8dc32E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31641)
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i", label %.lr.ph

"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i": ; preds = %bb.b, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !31642, !noalias !31643, !noundef !34
  br label %_ZN3std2io22default_write_vectored17ha1a79b51ed237a3dE.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !31641, !noalias !31644, !noundef !34 ; 5 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i": ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !31645, !nonnull !34, !noundef !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31648)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !31649, !noalias !31650, !noundef !34 ; 3 uses
  %i.l = load i64, ptr %.val, align 8, !range !42, !alias.scope !31649, !noalias !31650, !noundef !34
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.i, %i.m
  br i1 %i.n, label %bb.c, label %_ZN3std2io22default_write_vectored17ha1a79b51ed237a3dE.exit, !prof !117

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.k, i64 noundef %i.i, i64 noundef 1, i64 noundef 1), !noalias !31651
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !31652, !noalias !31650
  br label %_ZN3std2io22default_write_vectored17ha1a79b51ed237a3dE.exit

_ZN3std2io22default_write_vectored17ha1a79b51ed237a3dE.exit: ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i", %bb.c
  %i.o = phi ptr [ %i.j, %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i" ], [ %i.j, %bb.c ], [ %i.e, %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i" ]
  %.sroa.02.0.i6.i = phi ptr [ %.val.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i" ], [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i" ]
  %.sroa.3.0.i5.i = phi i64 [ %i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i" ], [ %i.i, %bb.c ], [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i" ] ; 3 uses
  %i.p = phi i64 [ %i.k, %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.i" ], [ %.pre.i.i.i.i.i.i.i, %bb.c ], [ %i.f, %"_ZN4core6option15Option$LT$T$GT$6map_or17h4197ad72881d741dE.exit.thread.i" ] ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !31652, !noalias !31650, !nonnull !34, !noundef !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull readonly align 1 %.sroa.02.0.i6.i, i64 %.sroa.3.0.i5.i, i1 false), !noalias !31653
  %i.u = add i64 %i.p, %.sroa.3.0.i5.i
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !31652, !noalias !31650
  %i.v = inttoptr i64 %.sroa.3.0.i5.i to ptr
  %i.w = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.v, 1
  ret { i64, ptr } %i.w
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_ZN3std2io5Write14write_vectored17hf0692de43a722f50E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31675)
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !31675, !noalias !31676, !noundef !34 ; 2 uses
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !31677, !noundef !34
  br label %"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i": ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0.i.i = phi i64 [ %i.g, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ] ; 4 uses
  %.sroa.02.0.i.i = phi ptr [ %.val.i.i, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31680)
  %i.h = load i64, ptr %0, align 8, !range !63, !alias.scope !31681, !noundef !34
  switch i64 %i.h, label %default.unreachable [
    i64 0, label %bb.d
    i64 1, label %bb.g
    i64 2, label %bb.j
  ], !prof !118

default.unreachable:                              ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i"
  unreachable

bb.d:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !55, !alias.scope !31682, !noundef !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = trunc nuw i64 %i.j to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !31675
  br label %_ZN3std2io22default_write_vectored17h5f9c5c5a9cfb2bb1E.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !31675
  br label %_ZN3std2io22default_write_vectored17h5f9c5c5a9cfb2bb1E.exit

bb.g:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !55, !alias.scope !31683, !noundef !34
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = trunc nuw i64 %i.p to i1
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !31675
  br label %_ZN3std2io22default_write_vectored17h5f9c5c5a9cfb2bb1E.exit

bb.i:                                             ; preds = %bb.g
  %i.t = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i, i64 noundef %.sroa.3.0.i.i), !noalias !31675
  br label %_ZN3std2io22default_write_vectored17h5f9c5c5a9cfb2bb1E.exit

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h27217247123a5d32E.exit.i"
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1017) #59, !noalias !31684
  unreachable

_ZN3std2io22default_write_vectored17h5f9c5c5a9cfb2bb1E.exit: ; preds = %bb.e, %bb.f, %bb.h, %bb.i
  %.pn.i.i.i.i = phi { i64, ptr } [ %i.n, %bb.f ], [ %i.m, %bb.e ], [ %i.s, %bb.h ], [ %i.t, %bb.i ]
  ret { i64, ptr } %.pn.i.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal { i64, ptr } @_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31715)
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i", label %.lr.ph

"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i": ; preds = %bb.b, %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !31716, !noalias !31717, !noundef !34
  br label %_ZN3std2io22default_write_vectored17h954bbeab2a5caf8fE.exit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !31715, !noalias !31718, !noundef !34 ; 5 uses
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i": ; preds = %.lr.ph
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !31719, !nonnull !34, !noundef !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31722)
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 4 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !31723, !noalias !31724, !noundef !34 ; 3 uses
  %i.l = load i64, ptr %.val, align 8, !range !42, !alias.scope !31723, !noalias !31724, !noundef !34
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.i, %i.m
  br i1 %i.n, label %bb.c, label %_ZN3std2io22default_write_vectored17h954bbeab2a5caf8fE.exit, !prof !117

bb.c:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, i64 noundef %i.k, i64 noundef %i.i, i64 noundef 1, i64 noundef 1), !noalias !31725
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !31726, !noalias !31724
  br label %_ZN3std2io22default_write_vectored17h954bbeab2a5caf8fE.exit

_ZN3std2io22default_write_vectored17h954bbeab2a5caf8fE.exit: ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i", %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i", %bb.c
  %i.o = phi ptr [ %i.j, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i" ], [ %i.j, %bb.c ], [ %i.e, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i" ]
end_hunk_5
begin_hunk_6_@_ZN3std2io5Write18write_all_vectored17hf2258fa20f20eccaE:bb.a
  %.sroa.0.02538 = phi ptr [ %i.o, %.lr.ph ], [ %i.at, %bb.i ] ; 5 uses
  %.sroa.8.037 = phi i64 [ %i.p, %.lr.ph ], [ %i.as, %bb.i ] ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31830)
  %.idx = shl nuw nsw i64 %.sroa.8.037, 4
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.02538, i64 %.idx
  %i.t = icmp eq i64 %.sroa.8.037, 0
  br i1 %i.t, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i.i", label %.lr.ph77

bb.e:                                             ; preds = %.lr.ph77
  %i.u = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i.i", label %.lr.ph77

"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i.i": ; preds = %bb.e, %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  br label %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit.sink.split

.lr.ph77:                                         ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %i.u, %bb.e ], [ %.sroa.0.02538, %bb.d ] ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !31831, !noalias !31832, !noundef !34 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i.i"

"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i.i": ; preds = %.lr.ph77
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !31833, !nonnull !34, !noundef !34 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31836)
  %i.z = load i64, ptr %i.q, align 8, !alias.scope !31837, !noalias !31838, !noundef !34 ; 3 uses
  %i.aa = load i64, ptr %.val.i, align 8, !range !42, !alias.scope !31837, !noalias !31838, !noundef !34
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.f, label %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit, !prof !117

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i.i"
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb541626e6efd6b77E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.z, i64 noundef %i.y, i64 noundef 1, i64 noundef 1), !noalias !31839
  br label %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit.sink.split

_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit.sink.split: ; preds = %bb.f, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i.i"
  %.sroa.02.0.i6.i.i.ph = phi ptr [ inttoptr (i64 1 to ptr), %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i.i" ], [ %.val.i.i.i, %bb.f ]
  %.sroa.3.0.i5.i.i.ph = phi i64 [ 0, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.thread.i.i" ], [ %i.y, %bb.f ]
  %i.ad = load i64, ptr %i.q, align 8, !noalias !31840
  br label %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit

_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit: ; preds = %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit.sink.split, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i.i"
  %.sroa.02.0.i6.i.i = phi ptr [ %.val.i.i.i, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i.i" ], [ %.sroa.02.0.i6.i.i.ph, %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit.sink.split ]
  %.sroa.3.0.i5.i.i = phi i64 [ %i.y, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i.i" ], [ %.sroa.3.0.i5.i.i.ph, %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit.sink.split ] ; 4 uses
  %i.ae = phi i64 [ %i.z, %"_ZN4core6option15Option$LT$T$GT$6map_or17h9b8b9569699ed07aE.exit.i.i" ], [ %i.ad, %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit.sink.split ] ; 3 uses
  %i.af = icmp sgt i64 %i.ae, -1
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = load ptr, ptr %i.r, align 8, !alias.scope !31841, !noalias !31838, !nonnull !34, !noundef !34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr nonnull readonly align 1 %.sroa.02.0.i6.i.i, i64 %.sroa.3.0.i5.i.i, i1 false), !noalias !31842
  %i.ai = add i64 %i.ae, %.sroa.3.0.i5.i.i
  store i64 %i.ai, ptr %i.q, align 8, !alias.scope !31841, !noalias !31838
  %i.aj = icmp eq i64 %.sroa.3.0.i5.i.i, 0
  br i1 %i.aj, label %.loopexit, label %.lr.ph.preheader.i6

.loopexit:                                        ; preds = %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15", %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i", %bb.a
  %.sroa.0.0 = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i" ], [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15" ], [ null, %bb.a ], [ @689, %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit ]
  ret ptr %.sroa.0.0

.lr.ph.preheader.i6:                              ; preds = %_ZN3std2io5Write14write_vectored17hf3c52a9f9acab4b8E.exit
  %.idx.i5 = shl nuw i64 %.sroa.8.037, 4          ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.02538, i64 %.idx.i5
  %i.al = add i64 %.idx.i5, -16
  %i.am = lshr exact i64 %i.al, 4
  %i.an = add nuw nsw i64 %i.am, 1
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.g, %.lr.ph.preheader.i6
  %.sroa.0.016.i8 = phi i64 [ %i.ax, %bb.g ], [ 0, %.lr.ph.preheader.i6 ] ; 2 uses
  %.sroa.02.015.i9 = phi i64 [ %i.aw, %bb.g ], [ %.sroa.3.0.i5.i.i, %.lr.ph.preheader.i6 ] ; 3 uses
  %.sroa.0.01014.i10 = phi ptr [ %i.av, %bb.g ], [ %.sroa.0.02538, %.lr.ph.preheader.i6 ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i10, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !31843, !noundef !34 ; 2 uses
  %i.aq = icmp ult i64 %.sroa.02.015.i9, %i.ap
  br i1 %i.aq, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11", label %bb.g

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11": ; preds = %bb.g, %.lr.ph.i7
  %.sroa.02.0.lcssa.i12 = phi i64 [ %i.aw, %bb.g ], [ %.sroa.02.015.i9, %.lr.ph.i7 ] ; 4 uses
  %.sroa.0.0.lcssa.i13 = phi i64 [ %i.an, %bb.g ], [ %.sroa.0.016.i8, %.lr.ph.i7 ] ; 5 uses
  %i.ar = icmp ugt i64 %.sroa.0.0.lcssa.i13, %.sroa.8.037
  br i1 %i.ar, label %.noexc, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14", !prof !45

.noexc:                                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0.lcssa.i13, i64 noundef %.sroa.8.037, i64 noundef %.sroa.8.037, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @691) #59
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11"
  %i.as = sub nuw i64 %.sroa.8.037, %.sroa.0.0.lcssa.i13
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02538, i64 %.sroa.0.0.lcssa.i13 ; 4 uses
  %i.au = icmp eq i64 %.sroa.8.037, %.sroa.0.0.lcssa.i13
  br i1 %i.au, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15", label %bb.h

bb.g:                                             ; preds = %.lr.ph.i7
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i10, i64 16 ; 2 uses
  %i.aw = sub nuw i64 %.sroa.02.015.i9, %i.ap     ; 2 uses
  %i.ax = add nuw nsw i64 %.sroa.0.016.i8, 1
  %i.ay = icmp eq ptr %i.av, %i.ak
  br i1 %i.ay, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11", label %.lr.ph.i7

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15": ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14"
  %i.az = icmp eq i64 %.sroa.02.0.lcssa.i12, 0
  br i1 %i.az, label %.loopexit, label %.noexc17, !prof !40

.noexc17:                                         ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31843
  store ptr @693, ptr %i.b, align 8, !noalias !31843
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ba, align 8, !noalias !31843
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bb, align 8, !noalias !31843
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bc, align 8, !noalias !31843
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bd, align 8, !noalias !31843
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @694) #59
  unreachable

bb.h:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14"
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !noalias !31843, !noundef !34 ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %.sroa.02.0.lcssa.i12
  br i1 %i.bg, label %.noexc18, label %bb.i, !prof !37

.noexc18:                                         ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31843
  store ptr @696, ptr %i.a, align 8, !noalias !31843
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !31843
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bi, align 8, !noalias !31843
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8, !noalias !31843
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bk, align 8, !noalias !31843
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @698) #59
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bl = sub nuw i64 %i.bf, %.sroa.02.0.lcssa.i12
  store i64 %i.bl, ptr %i.be, align 8, !noalias !31843
  %i.bm = load ptr, ptr %i.at, align 8, !noalias !31843, !noundef !34
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.02.0.lcssa.i12
  store ptr %i.bn, ptr %i.at, align 8, !noalias !31843
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_ZN3std2io5Write18write_all_vectored17hfae160ae171a1268E(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 captures(address) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.idx.i = shl i64 %2, 4                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = add i64 %.idx.i, -16
  %i.g = lshr exact i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.g, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.sroa.0.016.i = phi i64 [ %i.n, %bb.c ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.01014.i = phi ptr [ %i.m, %bb.c ], [ %1, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !31865, !noundef !34
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %bb.c, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i": ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.0.lcssa.i = phi i64 [ %i.h, %bb.c ], [ %.sroa.0.016.i, %.lr.ph.i ] ; 5 uses
  %i.k = icmp ugt i64 %.sroa.0.0.lcssa.i, %2
  br i1 %i.k, label %bb.b, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i", !prof !45

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %2, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @691) #59, !noalias !31866
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i"
  %i.l = icmp eq i64 %2, %.sroa.0.0.lcssa.i
  br i1 %i.l, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i, i64 16 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.0.016.i, 1
  %i.o = icmp eq ptr %i.m, %i.d
  br i1 %i.o, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i", label %.lr.ph.i

.lr.ph:                                           ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i"
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.sroa.0.0.lcssa.i
  %i.q = sub nuw i64 %2, %.sroa.0.0.lcssa.i
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !31867, !nonnull !34, !noundef !34
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !31867, !nonnull !34, !noundef !34
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !invariant.load !34, !noalias !31868, !nonnull !34
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19
  %.sroa.0.02974 = phi ptr [ %i.p, %.lr.ph ], [ %.sroa.0.13038, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19 ] ; 6 uses
  %.sroa.8.073 = phi i64 [ %i.q, %.lr.ph ], [ %.sroa.8.136, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19 ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31867)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31869)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31870)
  %.idx = shl nuw nsw i64 %.sroa.8.073, 4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.02974, i64 %.idx
  %i.w = icmp eq i64 %.sroa.8.073, 0
  br i1 %i.w, label %_ZN3std2io5Write14write_vectored17h290ff3683c41aeb3E.exit, label %.lr.ph120

bb.e:                                             ; preds = %.lr.ph120
  %i.x = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %_ZN3std2io5Write14write_vectored17h290ff3683c41aeb3E.exit, label %.lr.ph120

.lr.ph120:                                        ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %.sroa.0.02974, %bb.d ] ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !31871, !noalias !31872, !noundef !34 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.f

bb.f:                                             ; preds = %.lr.ph120
  %.val.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !31873, !noundef !34
  br label %_ZN3std2io5Write14write_vectored17h290ff3683c41aeb3E.exit

_ZN3std2io5Write14write_vectored17h290ff3683c41aeb3E.exit: ; preds = %bb.e, %bb.d, %bb.f
  %.sroa.3.0.i.i.i = phi i64 [ %i.ab, %bb.f ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.sroa.02.0.i.i.i = phi ptr [ %.val.i.i.i, %bb.f ], [ inttoptr (i64 1 to ptr), %bb.d ], [ inttoptr (i64 1 to ptr), %bb.e ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.02.0.i.i.i) ]
  %i.ac = tail call { i64, ptr } %i.t(ptr noundef nonnull align 1 %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.02.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i), !noalias !31874, !inline_history !31862 ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0      ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 11 uses
  store i64 %i.ad, ptr %i.c, align 8
  store ptr %i.ae, ptr %i.u, align 8
  %i.af = trunc nuw i64 %i.ad to i1
  %i.ag = ptrtoint ptr %i.ae to i64               ; 4 uses
  br i1 %i.af, label %bb.g, label %bb.h

.loopexit.sink.split:                             ; preds = %bb.h, %.split58, %.split57, %.split, %bb.l, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15"
  %.sroa.0.0.ph = phi ptr [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15" ], [ @689, %bb.h ], [ %i.ae, %.split58 ], [ %i.ae, %.split57 ], [ %i.ae, %.split ], [ %i.ae, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19, %.loopexit.sink.split, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i", %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %.sroa.0.0.ph, %.loopexit.sink.split ], [ null, %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i" ], [ null, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19 ]
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %_ZN3std2io5Write14write_vectored17h290ff3683c41aeb3E.exit
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %.split
    i64 3, label %bb.l
    i64 0, label %.split58
    i64 1, label %.split57
  ], !prof !36

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN3std2io5Write14write_vectored17h290ff3683c41aeb3E.exit
  %i.ai = icmp eq ptr %i.ae, null
  br i1 %i.ai, label %.loopexit.sink.split, label %.lr.ph.preheader.i6

.lr.ph.preheader.i6:                              ; preds = %bb.h
  %.idx.i5 = shl nuw i64 %.sroa.8.073, 4          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.02974, i64 %.idx.i5
  %i.ak = add i64 %.idx.i5, -16
  %i.al = lshr exact i64 %i.ak, 4
  %i.am = add nuw nsw i64 %i.al, 1
  br label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.i, %.lr.ph.preheader.i6
  %.sroa.0.016.i8 = phi i64 [ %i.aw, %bb.i ], [ 0, %.lr.ph.preheader.i6 ] ; 2 uses
  %.sroa.02.015.i9 = phi i64 [ %i.av, %bb.i ], [ %i.ag, %.lr.ph.preheader.i6 ] ; 3 uses
  %.sroa.0.01014.i10 = phi ptr [ %i.au, %bb.i ], [ %.sroa.0.02974, %.lr.ph.preheader.i6 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i10, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !noalias !31875, !noundef !34 ; 2 uses
  %i.ap = icmp ult i64 %.sroa.02.015.i9, %i.ao
  br i1 %i.ap, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11", label %bb.i

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11": ; preds = %bb.i, %.lr.ph.i7
  %.sroa.02.0.lcssa.i12 = phi i64 [ %i.av, %bb.i ], [ %.sroa.02.015.i9, %.lr.ph.i7 ] ; 4 uses
  %.sroa.0.0.lcssa.i13 = phi i64 [ %i.am, %bb.i ], [ %.sroa.0.016.i8, %.lr.ph.i7 ] ; 5 uses
  %i.aq = icmp ugt i64 %.sroa.0.0.lcssa.i13, %.sroa.8.073
  br i1 %i.aq, label %.noexc, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14", !prof !45

.noexc:                                           ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11"
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0.lcssa.i13, i64 noundef %.sroa.8.073, i64 noundef %.sroa.8.073, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @691) #59
  unreachable

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11"
  %i.ar = sub nuw i64 %.sroa.8.073, %.sroa.0.0.lcssa.i13
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02974, i64 %.sroa.0.0.lcssa.i13 ; 4 uses
  %i.at = icmp eq i64 %.sroa.8.073, %.sroa.0.0.lcssa.i13
  br i1 %i.at, label %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15", label %bb.j

bb.i:                                             ; preds = %.lr.ph.i7
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01014.i10, i64 16 ; 2 uses
  %i.av = sub nuw i64 %.sroa.02.015.i9, %i.ao     ; 2 uses
  %i.aw = add nuw nsw i64 %.sroa.0.016.i8, 1
  %i.ax = icmp eq ptr %i.au, %i.aj
  br i1 %i.ax, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4b76cda5e5560ed2E.exit.thread.i11", label %.lr.ph.i7

"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15": ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14"
  %i.ay = icmp eq i64 %.sroa.02.0.lcssa.i12, 0
  br i1 %i.ay, label %.loopexit.sink.split, label %.noexc17, !prof !40

.noexc17:                                         ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.thread.i15"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31875
  store ptr @693, ptr %i.b, align 8, !noalias !31875
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.az, align 8, !noalias !31875
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ba, align 8, !noalias !31875
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bb, align 8, !noalias !31875
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bc, align 8, !noalias !31875
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @694) #59
  unreachable

bb.j:                                             ; preds = %"_ZN110_$LT$core..ops..range..RangeFrom$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h48743ff39ea652baE.exit.i14"
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !noalias !31875, !noundef !34 ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.sroa.02.0.lcssa.i12
  br i1 %i.bf, label %.noexc18, label %bb.k, !prof !37

bb.k:                                             ; preds = %bb.j
  %i.bg = sub nuw i64 %i.be, %.sroa.02.0.lcssa.i12
  store i64 %i.bg, ptr %i.bd, align 8, !noalias !31875
  %i.bh = load ptr, ptr %i.as, align 8, !noalias !31875, !noundef !34
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.02.0.lcssa.i12
  store ptr %i.bi, ptr %i.as, align 8, !noalias !31875
  br label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19

.noexc18:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31875
  store ptr @696, ptr %i.a, align 8, !noalias !31875
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bj, align 8, !noalias !31875
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.bk, align 8, !noalias !31875
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8, !noalias !31875
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.bm, align 8, !noalias !31875
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @698) #59
  unreachable

.split:                                           ; preds = %bb.g
  %.mask59 = and i64 %i.ag, -4294967296
  %i.bn = icmp eq i64 %.mask59, 17179869184
  br i1 %i.bn, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

.split58:                                         ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bp = load i8, ptr %i.bo, align 8, !range !38, !noundef !34
  %i.bq = icmp eq i8 %i.bp, 35
  br i1 %i.bq, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

.split57:                                         ; preds = %bb.g
  %i.br = getelementptr i8, ptr %i.ae, i64 15
  %i.bs = load i8, ptr %i.br, align 8, !range !38, !noundef !34
  %i.bt = icmp eq i8 %i.bs, 35
  br i1 %i.bt, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

bb.l:                                             ; preds = %bb.g
  %i.bu = icmp ult ptr %i.ae, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.bu)
  %.mask = and i64 %i.ag, -4294967296
  %i.bv = icmp eq i64 %.mask, 150323855360
  br i1 %i.bv, label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread, label %.loopexit.sink.split

_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread: ; preds = %bb.l, %.split, %.split57, %.split58
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h02edb7d549bf98baE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19

_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19: ; preds = %bb.k, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread
  %.sroa.0.13038 = phi ptr [ %.sroa.0.02974, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread ], [ %i.as, %bb.k ]
  %.sroa.8.136 = phi i64 [ %.sroa.8.073, %_ZN3std2io7IoSlice14advance_slices17h9e16e71327fba4c6E.exit19.thread ], [ %i.ar, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bw = icmp eq i64 %.sroa.8.136, 0
  br i1 %i.bw, label %.loopexit, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN3std2io5Write9write_all17h07548a4d7bbf2b9dE(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.0.042 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.116, %bb.k ] ; 4 uses
  %.sroa.5.041 = phi i64 [ %2, %.lr.ph ], [ %.sroa.5.114, %bb.k ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %0, align 8, !range !55, !alias.scope !31878, !noundef !34
  %i.f = trunc nuw i64 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StderrLock$u20$as$u20$std..io..Write$GT$5write17h5766cce4ff8238b1E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.5.041)
  br label %"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit"

bb.d:                                             ; preds = %bb.b
  %i.h = tail call { i64, ptr } @"_ZN61_$LT$std..io..stdio..StdoutLock$u20$as$u20$std..io..Write$GT$5write17h2bc3c411733c9682E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.042, i64 noundef %.sroa.5.041)
  br label %"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit"

"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit": ; preds = %bb.c, %bb.d
  %.pn.i = phi { i64, ptr } [ %i.g, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = extractvalue { i64, ptr } %.pn.i, 0      ; 2 uses
  %i.j = extractvalue { i64, ptr } %.pn.i, 1      ; 11 uses
  store i64 %i.i, ptr %i.a, align 8
  store ptr %i.j, ptr %i.d, align 8
  %i.k = trunc nuw i64 %i.i to i1
  %i.l = ptrtoint ptr %i.j to i64                 ; 7 uses
  br i1 %i.k, label %bb.e, label %bb.f

.loopexit:                                        ; preds = %bb.k, %bb.a, %bb.h
  %.sroa.05.0 = phi ptr [ %.sroa.05.1, %bb.h ], [ null, %bb.a ], [ null, %bb.k ]
  ret ptr %.sroa.05.0

bb.e:                                             ; preds = %"_ZN66_$LT$termcolor..IoStandardStreamLock$u20$as$u20$std..io..Write$GT$5write17h35ce872412bf4c9cE.exit"
end_hunk_6
begin_hunk_7_@_ZN4core4iter6traits8iterator8Iterator7collect17h5a6a04be8b19ec6aE:bb.a
bb.e:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hdec3f97340ad60e5E.exit.i.i.i.i.i.i.i.i.i"
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17had255f657750177bE"(ptr nonnull %i.p) #61
          to label %.body.i.i.i.i.i.i.i unwind label %bb.f, !noalias !43486

bb.f:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !43486
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17he0b37c6ac3d3a8f8E.exit.i.i.i.i.i.i.i.i.i", %bb.d
  %lpad.loopexit.split-lp24 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i:                              ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %lpad.loopexit.split-lp24, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h78eaac1eca06219bE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #61
          to label %.body.i.i unwind label %bb.g, !noalias !43479

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.loopexit.i.i": ; preds = %.noexc11.i.i.i.i.i.i.i
  %.sroa.0.0.copyload19.pre.i.i = load i64, ptr %i.b, align 8, !noalias !43487
  %.sroa.7.0.copyload21.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !43487
  br label %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.i.i"

"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.i.i": ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.loopexit.i.i", %.noexc10.i.i.i.i.i.i.i
  %.sroa.9.0.copyload23.i.i = phi i64 [ %i.y, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.loopexit.i.i" ], [ 1, %.noexc10.i.i.i.i.i.i.i ]
  %.sroa.7.0.copyload21.i.i = phi ptr [ %.sroa.7.0.copyload21.pre.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.loopexit.i.i" ], [ %i.g, %.noexc10.i.i.i.i.i.i.i ]
  %.sroa.0.0.copyload19.i.i = phi i64 [ %.sroa.0.0.copyload19.pre.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.loopexit.i.i" ], [ 4, %.noexc10.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43479
  br label %bb.i

bb.g:                                             ; preds = %.body.i.i.i.i.i.i.i, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !43479
  unreachable

.body.i.i:                                        ; preds = %bb.h, %.body.i.i.i.i.i.i.i, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.af, %bb.h ], [ %eh.lpad-body.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.ae = load ptr, ptr %i.d, align 8, !noalias !43474, !align !41, !noundef !34 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %.body.thread.i.i, label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.i:                                             ; preds = %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.i.i", %.noexc.i.i
  %.sroa.9.0.i.i = phi i64 [ %.sroa.9.0.copyload23.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.i.i" ], [ 0, %.noexc.i.i ] ; 2 uses
  %.sroa.7.0.i.i = phi ptr [ %.sroa.7.0.copyload21.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.i.i" ], [ inttoptr (i64 8 to ptr), %.noexc.i.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload19.i.i, %"_ZN97_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$T$C$I$GT$$GT$11spec_extend17hb79bc3b65c2786e1E.exit.i.i.i.i.i.i.i" ], [ 0, %.noexc.i.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43475
  %i.ag = load ptr, ptr %i.d, align 8, !noalias !43474, !align !41, !noundef !34 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.not.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i64 %.sroa.0.0.i.i, ptr %0, align 8, !alias.scope !43488
  %.sroa.4.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.i.i, ptr %.sroa.4.0..sroa_idx25.i.i, align 8, !alias.scope !43488
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.9.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !43488
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h76ff802bce4c6401E.exit"

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.ah, align 8, !alias.scope !43489
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !43489
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h0abcf92f1483dc75E"(ptr noalias noundef nonnull readonly align 8 %.sroa.7.0.i.i, i64 noundef %.sroa.9.0.i.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha58a9b8fb7fa30e4E.exit.i.i.i" unwind label %bb.l, !noalias !43490

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.aj, label %.body.thread.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = shl nuw i64 %.sroa.0.0.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43490
  br label %.body.thread.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha58a9b8fb7fa30e4E.exit.i.i.i": ; preds = %bb.k
  %i.al = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.al, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h76ff802bce4c6401E.exit", label %bb.n

bb.n:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha58a9b8fb7fa30e4E.exit.i.i.i"
  %i.am = shl nuw i64 %.sroa.0.0.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.i.i, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43490
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h76ff802bce4c6401E.exit"

bb.o:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !43474
  unreachable

.body.thread.i.i:                                 ; preds = %bb.p, %bb.m, %bb.l, %.body.i.i
  %.pn13.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %.pn.i.i, %bb.p ], [ %i.ai, %bb.m ], [ %i.ai, %bb.l ]
  resume { ptr, i32 } %.pn13.i.i

bb.p:                                             ; preds = %.body.i.i
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17hfb1fe2aa46e606cbE"(ptr %i.ae) #61
          to label %.body.thread.i.i unwind label %bb.o, !noalias !43474

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter17h76ff802bce4c6401E.exit": ; preds = %bb.j, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha58a9b8fb7fa30e4E.exit.i.i.i", %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43474
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h5e0bbf8167e2fb77E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [72 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !34, !noundef !34 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.f = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 72                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43533
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load i8, ptr %i.k, align 8, !range !44, !noalias !43534, !noundef !34
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i", !prof !40

._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !43535
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !43535
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i": ; preds = %bb.a
  %i.n = tail call { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE(), !noalias !43536 ; 2 uses
  %i.o = extractvalue { i64, i64 } %i.n, 0
  %i.p = extractvalue { i64, i64 } %i.n, 1        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.p, ptr %i.q, align 8, !noalias !43536
  store i8 1, ptr %i.k, align 8, !noalias !43536
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i": ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i", %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i
  %.pre-phi20.i = phi i64 [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i ], [ %i.p, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i" ]
  %i.r = phi i64 [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h2017926fa805e40bE.exit_crit_edge.i.i.i.i ], [ %i.o, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h63b4bd0ba0722244E.exit.i.i.i.i" ] ; 2 uses
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.j, align 8, !noalias !43535
  call fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h4feb009fbcbcfc15E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.e, i64 noundef %i.i, i64 noundef %i.r, i64 noundef %.pre-phi20.i), !noalias !43533
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43537)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !43537, !noalias !43533, !noundef !34
  %i.v = icmp eq i64 %i.u, 0
  %i.w = add nuw nsw i64 %i.i, 1
  %i.x = lshr i64 %i.w, 1
  %.sroa.0.0.i.i = select i1 %i.v, i64 %i.i, i64 %i.x ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !43538, !noalias !43533, !noundef !34
  %i.ab = icmp ugt i64 %.sroa.0.0.i.i, %i.aa
  br i1 %i.ab, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i", !prof !37

bb.b:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ad = load i64, ptr %i.y, align 8, !alias.scope !43539, !noalias !43533, !noundef !34
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !43539, !noalias !43533, !nonnull !34, !noundef !34
  %i.ag = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h1edceb31bf7fd235E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.af, i64 noundef %i.ad, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !43533 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i": ; preds = %bb.b, %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %i.ah = load i64, ptr %i.e, align 8, !range !42, !alias.scope !43539, !noalias !43533, !noundef !34
  %i.ai = load i64, ptr %i.y, align 8, !alias.scope !43539, !noalias !43533, !noundef !34 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 128102389400760776
  call void @llvm.assume(i1 %i.aj)
  %i.ak = sub nsw i64 %i.ah, %i.ai
  %i.al = icmp ugt i64 %.sroa.0.0.i.i, %i.ak
  br i1 %i.al, label %bb.c, label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i"

bb.c:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i"
  %i.am = load i64, ptr %i.t, align 8, !alias.scope !43539, !noalias !43533, !noundef !34
  %i.an = load i64, ptr %i.z, align 8, !alias.scope !43539, !noalias !43533, !noundef !34
  %i.ao = add i64 %i.an, %i.am
  invoke fastcc void @_ZN8indexmap3map4core15reserve_entries17h37476e418f2febaaE(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, i64 noundef %.sroa.0.0.i.i, i64 noundef %i.ao)
          to label %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !43533

"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i": ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17he916de7c025c01efE.exit.i.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.ap = icmp eq ptr %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %i.ap, label %"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h082c6dac8a8f1d23E.exit", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i"
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.as = getelementptr i8, ptr %.sroa.6.0.copyload, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h39052dabdbd880a7E.exit.i.i.i.i.i", %.lr.ph.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %.sroa.0.0.copyload, %.lr.ph.i.i.i.i.i ], [ %i.av, %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h39052dabdbd880a7E.exit.i.i.i.i.i" ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 72 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !43540)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43541
  call void @llvm.experimental.noalias.scope.decl(metadata !43542)
  %i.ax = invoke noundef ptr @_ZN16nickel_lang_core4term6record5Field28value_with_pending_contracts17he2fe0b498dcf1434E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.09.i.i.i.i.i)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !43533

.noexc5.i:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !43543
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !43544, !noalias !43545, !noundef !34 ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.noexc5.i
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.az, align 8, !noalias !43546, !noundef !34 ; 2 uses
  %i.ba = icmp ne i64 %.val.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = add i64 %.val.i.i.i.i.i.i.i.i, 1        ; 2 uses
  store i64 %i.bb, ptr %i.az, align 8, !noalias !43546
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit.i.i.i.i.i.i.i, !prof !37

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %.noexc5.i
  store ptr %i.ax, ptr %i.aq, align 8, !noalias !43543
  store ptr %i.az, ptr %i.ar, align 8, !noalias !43543
  store i64 0, ptr %i.c, align 8, !noalias !43543
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !43543
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !43543
  %.val4.i.i.i.i.i.i.i = load ptr, ptr %.sroa.6.0.copyload, align 8, !noalias !43547, !nonnull !34, !noundef !34 ; 3 uses
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !43547 ; 4 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.val4.i.i.i.i.i.i.i, align 8, !noalias !43546, !noundef !34 ; 2 uses
  %i.bd = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bd)
  %i.be = add i64 %.val.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.be, ptr %.val4.i.i.i.i.i.i.i, align 8, !noalias !43546
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i, !prof !37

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit.i.i.i.i.i.i.i
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h6c7c81f343502e49E.exit.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val5.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h48ff9a662c05deb4E.exit.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i
  %.val.i2.i.i.i.i.i.i.i.i = load i64, ptr %.val5.i.i.i.i.i.i.i, align 8, !noalias !43546, !noundef !34 ; 2 uses
  %i.bg = icmp ne i64 %.val.i2.i.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add i64 %.val.i2.i.i.i.i.i.i.i.i, 1     ; 2 uses
  store i64 %i.bh, ptr %.val5.i.i.i.i.i.i.i, align 8, !noalias !43546
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.i, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h48ff9a662c05deb4E.exit.i.i.i.i.i.i", !prof !37

bb.i:                                             ; preds = %bb.h
  call void @llvm.trap()
  unreachable

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h48ff9a662c05deb4E.exit.i.i.i.i.i.i": ; preds = %bb.h, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h2ae09a214f8f1e0eE.exit.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN96_$LT$nickel_lang_core..term..record..Field$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h3a0bcebd8de5f180E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.at, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 1 %.sroa.5.0.copyload, ptr noundef nonnull %.val4.i.i.i.i.i.i.i, ptr noundef %.val5.i.i.i.i.i.i.i, i64 noundef 0, ptr undef)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !43533

.noexc6.i:                                        ; preds = %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h48ff9a662c05deb4E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !43543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(20) %i.aw, i64 20, i1 false), !noalias !43548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43549
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43549
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h07b046f055ab188aE"(ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef readonly align 8 captures(address) dereferenceable(40) %i.at)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !43533

.noexc7.i:                                        ; preds = %.noexc6.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.au, i64 40, i1 false), !noalias !43549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43549
  %i.bj = load i64, ptr %i.b, align 8, !range !57, !alias.scope !43550, !noalias !43549, !noundef !34
  %i.bk = icmp eq i64 %i.bj, -9223372036854775808
  br i1 %i.bk, label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h39052dabdbd880a7E.exit.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %.noexc7.i
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17heaed33bcf911817eE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h39052dabdbd880a7E.exit.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !43533

"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h39052dabdbd880a7E.exit.i.i.i.i.i": ; preds = %bb.j, %.noexc7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !43549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !43541
  %i.bl = icmp eq ptr %i.av, %.sroa.4.0.copyload
  br i1 %i.bl, label %"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h082c6dac8a8f1d23E.exit", label %bb.d

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %.noexc6.i, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h48ff9a662c05deb4E.exit.i.i.i.i.i.i", %bb.d, %bb.c, %bb.b
  %lpad.loopexit.split-lp3 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr132drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$GT$17h2791d5c43122a13eE"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #61
          to label %bb.l unwind label %bb.k, !noalias !43533

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !43533
  unreachable

bb.l:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp3

"_ZN123_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$K$C$V$RP$$GT$$GT$9from_iter17h082c6dac8a8f1d23E.exit": ; preds = %"_ZN4core4iter8adapters3map8map_fold28_$u7b$$u7b$closure$u7d$$u7d$17h39052dabdbd880a7E.exit.i.i.i.i.i", %"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$7reserve17h6f2310496427d5b5E.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !43551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43533
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h641e2085410eb04dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 16 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !43605
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43606)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !43605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !43607
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !alias.scope !43608, !noalias !43609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43611)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43614)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !43615, !noalias !43607, !nonnull !34, !noundef !34
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !43615, !noalias !43607, !nonnull !34, !noundef !34 ; 3 uses
  %i.l = icmp eq ptr %i.k, %i.i
  br i1 %i.l, label %.thread.i.i.i.i, label %bb.b

.thread.i.i.i.i:                                  ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !43610, !noalias !43607
  store ptr null, ptr %i.g, align 8, !alias.scope !43610, !noalias !43607
  br label %.preheader

.body.i.i.i.i:                                    ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.t, %bb.d ], [ %lpad.loopexit.split-lp8, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr457drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h18aa4ea4ac6b61cfE"(ptr noalias noundef align 8 dereferenceable(48) %i.b) #61
          to label %.body.i.i.i unwind label %bb.x, !noalias !43616

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.q, %bb.p, %bb.l, %bb.m
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.j, align 8, !alias.scope !43615, !noalias !43607
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !43617, !nonnull !34, !noundef !34
  store i64 1, ptr %i.b, align 8, !alias.scope !43610, !noalias !43607
  store ptr %i.o, ptr %i.g, align 8, !alias.scope !43610, !noalias !43607
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43607
  store i64 1, ptr %i.a, align 8, !noalias !43607
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !43607
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8, !noalias !43607
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !43607
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !43618
  %i.r = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !43618 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.c, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17ha1a65390a2589ecfE.exit.i.i.i.i", !prof !45

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #59
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !43616

.noexc.i.i.i.i:                                   ; preds = %bb.c
  unreachable

end_hunk_7
begin_hunk_8_@_ZN6pretty6render4best17hb2a4aad9f31d995dE:bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.480.0..sroa_idx.i, align 8, !noalias !58201
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.581.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !58201
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.474.0..sroa_idx.i, align 8, !noalias !58201
  store i64 0, ptr %.sroa.575.0..sroa_idx.i, align 8, !noalias !58201
  %i.da = invoke fastcc noundef i8 @"_ZN6pretty6render17Best$LT$T$C$A$GT$4best17h31364b72586f5119E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d, i64 noundef %i.ct, ptr noalias noundef align 8 dereferenceable(48) %i.c)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !58175

bb.z:                                             ; preds = %.backedge.i
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i, i64 8
  %i.dc = load ptr, ptr %i.o, align 8, !alias.scope !58174, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58202)
  %i.dd = load ptr, ptr %i.db, align 8, !alias.scope !58202, !noalias !58175, !nonnull !34, !noundef !34
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !58202, !noalias !58175, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !range !43, !invariant.load !34, !noalias !58203
  %i.di = add i64 %i.dh, -1
  %i.dj = and i64 %i.di, -16
  %i.dk = getelementptr i8, ptr %i.dd, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  %i.dm = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !invariant.load !34, !noalias !58175, !nonnull !34
  %i.dp = invoke noundef nonnull align 8 ptr %i.do(ptr noundef align 1 %i.dl, i64 noundef %i.dm)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !58107 ; 3 uses

.noexc26:                                         ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58201
  store ptr %i.dp, ptr %i.b, align 8, !noalias !58204
  %i.dq = load i64, ptr %i.dc, align 8, !noalias !58205, !noundef !34
  %.not.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i, label %bb.aa, label %bb.ab, !prof !40

bb.aa:                                            ; preds = %.noexc26
  store i64 -1, ptr %i.dc, align 8, !noalias !58205
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dc, i64 24 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !noalias !58205, !noundef !34 ; 5 uses
  %i.du = icmp ult i64 %i.dt, 1152921504606846976
  call void @llvm.assume(i1 %i.du)
  %i.dv = load i64, ptr %i.dr, align 8, !range !42, !noalias !58205, !noundef !34
  %i.dw = icmp samesign ult i64 %i.dt, %i.dv
  br i1 %i.dw, label %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h414729eb6dcf23d0E.exit.i", label %bb.cj

bb.ab:                                            ; preds = %.noexc26
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #59
          to label %bb.ad unwind label %bb.ae, !noalias !58175

bb.ac:                                            ; preds = %bb.ae
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !58175
  unreachable

bb.ad:                                            ; preds = %bb.ab
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17had777544ae75c631E"(ptr noalias noundef align 8 dereferenceable(8) %i.b) #61
          to label %.body unwind label %bb.ac, !noalias !58175

"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h414729eb6dcf23d0E.exit.i": ; preds = %bb.aa
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %.pre.i159.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !alias.scope !58206, !noalias !58205
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.pre.i159.i, i64 %i.dt
  store ptr %i.dp, ptr %i.dz, align 8, !noalias !58175
  %i.ea = add nuw nsw i64 %i.dt, 1
  store i64 %i.ea, ptr %i.ds, align 8, !alias.scope !58206, !noalias !58205
  %i.eb = load ptr, ptr %.phi.trans.insert.i.i, align 8, !noalias !58205, !nonnull !34, !noundef !34
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dt
  %.pre12.i.i = load i64, ptr %i.dc, align 8, !noalias !58205
  %i.ed = add i64 %.pre12.i.i, 1
  store i64 %i.ed, ptr %i.dc, align 8, !noalias !58205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58201
  br label %.noexc38

bb.af:                                            ; preds = %.backedge.i
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i, i64 8
  %i.ef = load ptr, ptr %i.o, align 8, !alias.scope !58174, !nonnull !34, !align !41, !noundef !34 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !58207)
  %i.eg = load ptr, ptr %i.ee, align 8, !alias.scope !58207, !noalias !58175, !nonnull !34, !noundef !34
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.094.0.i, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !58207, !noalias !58175, !nonnull !34, !align !41, !noundef !34 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !range !43, !invariant.load !34, !noalias !58208
  %i.el = add i64 %i.ek, -1
  %i.em = and i64 %i.el, -16
  %i.en = getelementptr i8, ptr %i.eg, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !invariant.load !34, !noalias !58175, !nonnull !34
  %i.er = invoke noundef nonnull align 8 ptr %i.eq(ptr noundef align 1 %i.eo, i64 noundef %.sroa.092.0.i)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !58107 ; 3 uses

.noexc27:                                         ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58201
  store ptr %i.er, ptr %i.a, align 8, !noalias !58209
  %i.es = load i64, ptr %i.ef, align 8, !noalias !58210, !noundef !34
  %.not.i160.i = icmp eq i64 %i.es, 0
  br i1 %.not.i160.i, label %bb.ag, label %bb.ah, !prof !40

bb.ag:                                            ; preds = %.noexc27
  store i64 -1, ptr %i.ef, align 8, !noalias !58210
  %i.et = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !noalias !58210, !noundef !34 ; 5 uses
  %i.ew = icmp ult i64 %i.ev, 1152921504606846976
  call void @llvm.assume(i1 %i.ew)
  %i.ex = load i64, ptr %i.et, align 8, !range !42, !noalias !58210, !noundef !34
  %i.ey = icmp samesign ult i64 %i.ev, %i.ex
  br i1 %i.ey, label %"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h414729eb6dcf23d0E.exit166.i", label %bb.ck

bb.ah:                                            ; preds = %.noexc27
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @119) #59
          to label %bb.aj unwind label %bb.ak, !noalias !58175

bb.ai:                                            ; preds = %bb.ak
  %i.ez = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #60, !noalias !58175
  unreachable

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ah
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr35drop_in_place$LT$pretty..BoxDoc$GT$17had777544ae75c631E"(ptr noalias noundef align 8 dereferenceable(8) %i.a) #61
          to label %.body unwind label %bb.ai, !noalias !58175

"_ZN11typed_arena14Arena$LT$T$GT$15alloc_fast_path17h414729eb6dcf23d0E.exit166.i": ; preds = %bb.ag
  %.phi.trans.insert.i163.i = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %.pre.i164.i = load ptr, ptr %.phi.trans.insert.i163.i, align 8, !alias.scope !58211, !noalias !58210
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.pre.i164.i, i64 %i.ev
  store ptr %i.er, ptr %i.fb, align 8, !noalias !58175
  %i.fc = add nuw nsw i64 %i.ev, 1
  store i64 %i.fc, ptr %i.eu, align 8, !alias.scope !58211, !noalias !58210
  %i.fd = load ptr, ptr %.phi.trans.insert.i163.i, align 8, !noalias !58210, !nonnull !34, !noundef !34
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %i.ev
  %.pre12.i165.i = load i64, ptr %i.ef, align 8, !noalias !58210
  %i.ff = add i64 %.pre12.i165.i, 1
  store i64 %i.ff, ptr %i.ef, align 8, !noalias !58210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58201
  br label %.noexc39

bb.al:                                            ; preds = %.backedge.i
  %i.fg = invoke noundef nonnull ptr @_ZN3std2io5error5Error3new17h2fc9d5dda48b3f00E(i8 noundef 40, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1280, i64 noundef 25)
          to label %.loopexit24 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %.noexc29, %bb.n
  %.sroa.093.1.i = phi i8 [ 1, %bb.n ], [ %spec.select.i, %.noexc29 ]
  %.val145.i = load ptr, ptr %i.bf, align 8, !noalias !58175, !nonnull !34, !align !41, !noundef !34
  br label %.backedge.i.backedge

bb.an:                                            ; preds = %bb.n
  %.val144.i = load ptr, ptr %i.bf, align 8, !noalias !58175, !nonnull !34, !align !41, !noundef !34
  %i.fh = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.fi = invoke fastcc noundef zeroext i1 @"_ZN6pretty6render17Best$LT$T$C$A$GT$7fitting17hba31316334a5728fE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %.val144.i, i64 noundef %i.fh, i64 noundef %.sroa.092.0.i)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.an
  %spec.select.i = zext i1 %i.fi to i8
  br label %bb.am

bb.ao:                                            ; preds = %bb.p
  %i.fj = sub i64 0, %i.bh
  %i.fk = call i64 @llvm.usub.sat.i64(i64 %.sroa.092.0.i, i64 %i.fj)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.p
  %i.fl = call i64 @llvm.uadd.sat.i64(i64 %.sroa.092.0.i, i64 %i.bh)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.012.0.i = phi i64 [ %i.fl, %bb.ap ], [ %i.fk, %bb.ao ]
  %.val141.i = load ptr, ptr %i.bi, align 8, !noalias !58175, !nonnull !34, !align !41, !noundef !34
  br label %.backedge.i.backedge

bb.ar:                                            ; preds = %bb.q
  %i.fm = add nsw i64 %i.bk, -1                   ; 3 uses
  store i64 %i.fm, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !58174
  %i.fn = load i64, ptr %i.d, align 8, !range !42, !alias.scope !58174, !noundef !34
  %i.fo = icmp samesign ult i64 %i.fm, %i.fn
  call void @llvm.assume(i1 %i.fo)
  %i.fp = load ptr, ptr %.sroa.4.0..sroa_idx3, align 8, !alias.scope !58174, !nonnull !34, !noundef !34
  %i.fq = icmp ult i64 %i.bk, 384307168202282327
  call void @llvm.assume(i1 %i.fq)
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fp, i64 %i.fm ; 3 uses
  %.sroa.068.0.copyload.i = load i64, ptr %i.fr, align 8, !noalias !58175 ; 5 uses
  %.sroa.469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %.sroa.469.0.copyload.i = load i8, ptr %.sroa.469.0..sroa_idx.i, align 8, !noalias !58175 ; 2 uses
  %.sroa.671.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %.sroa.671.0.copyload.i = load ptr, ptr %.sroa.671.0..sroa_idx.i, align 8, !noalias !58175 ; 2 uses
  %.not125.i = icmp eq i8 %.sroa.469.0.copyload.i, 2
  br i1 %.not125.i, label %.thread.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.671.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.fs = invoke noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h767631693dd4e92aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 1)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc30:                                         ; preds = %bb.as
  %.not.i167.i = icmp eq ptr %i.fs, null
  br i1 %.not.i167.i, label %bb.at, label %.loopexit24

bb.at:                                            ; preds = %.noexc30
  %.not.i.i.i = icmp eq i64 %.sroa.068.0.copyload.i, 0
  br i1 %.not.i.i.i, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit.thread.i, label %.lr.ph.i.i169.i

.lr.ph.i.i169.i:                                  ; preds = %bb.at, %bb.au
  %.sroa.01.03.i.i.i = phi i64 [ %i.fz, %bb.au ], [ 0, %bb.at ] ; 2 uses
  %i.ft = sub nuw i64 %.sroa.068.0.copyload.i, %.sroa.01.03.i.i.i
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ft, i64 100)
  %i.fu = invoke { i64, ptr } @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5write17h181826f2b31968f4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @991, i64 noundef %.sroa.0.0.i.i.i.i)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc31:                                         ; preds = %.lr.ph.i.i169.i
  %i.fv = extractvalue { i64, ptr } %i.fu, 0
  %i.fw = extractvalue { i64, ptr } %i.fu, 1      ; 3 uses
  %i.fx = trunc nuw i64 %i.fv to i1
  br i1 %i.fx, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit.i, label %bb.au

bb.au:                                            ; preds = %.noexc31
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = add i64 %.sroa.01.03.i.i.i, %i.fy       ; 2 uses
  %i.ga = icmp ult i64 %i.fz, %.sroa.068.0.copyload.i
  br i1 %i.ga, label %.lr.ph.i.i169.i, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit.thread.i

_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit.i: ; preds = %.noexc31
  %.not128.i = icmp eq ptr %i.fw, null
  br i1 %.not128.i, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit.thread.i, label %.loopexit24

.thread.i:                                        ; preds = %bb.ar, %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.gb = invoke noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h767631693dd4e92aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 1)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc32:                                         ; preds = %.thread.i
  %.not.i170.i = icmp eq ptr %i.gb, null
  br i1 %.not.i170.i, label %bb.av, label %.loopexit24

bb.av:                                            ; preds = %.noexc32
  %.not.i.i172.i = icmp eq i64 %.sroa.092.0.i, 0
  br i1 %.not.i.i172.i, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit176.thread.i, label %.lr.ph.i.i173.i

.lr.ph.i.i173.i:                                  ; preds = %bb.av, %bb.aw
  %.sroa.01.03.i.i174.i = phi i64 [ %i.gi, %bb.aw ], [ 0, %bb.av ] ; 2 uses
  %i.gc = sub nuw i64 %.sroa.092.0.i, %.sroa.01.03.i.i174.i
  %.sroa.0.0.i.i.i175.i = call noundef i64 @llvm.umin.i64(i64 %i.gc, i64 100)
  %i.gd = invoke { i64, ptr } @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$5write17h181826f2b31968f4E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @991, i64 noundef %.sroa.0.0.i.i.i175.i)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc33:                                         ; preds = %.lr.ph.i.i173.i
  %i.ge = extractvalue { i64, ptr } %i.gd, 0
  %i.gf = extractvalue { i64, ptr } %i.gd, 1      ; 3 uses
  %i.gg = trunc nuw i64 %i.ge to i1
  br i1 %i.gg, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit176.i, label %bb.aw

bb.aw:                                            ; preds = %.noexc33
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = add i64 %.sroa.01.03.i.i174.i, %i.gh    ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %.sroa.092.0.i
  br i1 %i.gj, label %.lr.ph.i.i173.i, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit176.thread.i

_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit176.i: ; preds = %.noexc33
  %.not126.i = icmp eq ptr %i.gf, null
  br i1 %.not126.i, label %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit176.thread.i, label %.loopexit24

_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit.thread.i: ; preds = %bb.au, %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit.i, %bb.at
  store i64 %.sroa.068.0.copyload.i, ptr %i.k, align 8, !alias.scope !58174
  br label %.backedge.i.backedge

_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit176.thread.i: ; preds = %bb.aw, %_ZN6pretty6render13write_newline17hf2d64ffab745df5aE.exit176.i, %bb.av
  store i64 %.sroa.092.0.i, ptr %i.k, align 8, !alias.scope !58174
  br label %.preheader.i

bb.ax:                                            ; preds = %bb.r
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @17, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @994) #59
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.r
  %i.gk = getelementptr inbounds nuw i8, ptr %.val147.i, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !noalias !58175, !nonnull !34, !align !52, !noundef !34
  %i.gm = getelementptr inbounds nuw i8, ptr %.val147.i, i64 16
  %i.gn = load i64, ptr %i.gm, align 8, !noalias !58175, !noundef !34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.go = invoke noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h767631693dd4e92aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gl, i64 noundef %i.gn)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc35:                                         ; preds = %bb.ay
  %.not122.i = icmp eq ptr %i.go, null
  br i1 %.not122.i, label %bb.bb, label %.loopexit24

bb.az:                                            ; preds = %bb.r
  %i.gp = getelementptr inbounds nuw i8, ptr %.val147.i, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !58175, !nonnull !34, !align !52, !noundef !34
  %i.gr = getelementptr inbounds nuw i8, ptr %.val147.i, i64 16
  %i.gs = load i64, ptr %i.gr, align 8, !noalias !58175, !noundef !34
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.gt = invoke noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h767631693dd4e92aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gq, i64 noundef %i.gs)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc36:                                         ; preds = %bb.az
  %.not119.i = icmp eq ptr %i.gt, null
  br i1 %.not119.i, label %bb.bc, label %.loopexit24

bb.ba:                                            ; preds = %bb.r
  %i.gu = getelementptr inbounds nuw i8, ptr %.val147.i, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.val147.i, i64 23
  %i.gw = load i8, ptr %i.gv, align 1, !noalias !58175, !noundef !34
  %i.gx = zext i8 %i.gw to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.gy = invoke noundef ptr @"_ZN57_$LT$std..io..stdio..Stdout$u20$as$u20$std..io..Write$GT$9write_all17h767631693dd4e92aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gu, i64 noundef %i.gx)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc37:                                         ; preds = %bb.ba
  %.not116.i = icmp eq ptr %i.gy, null
  br i1 %.not116.i, label %bb.bd, label %.loopexit24

bb.bb:                                            ; preds = %.noexc35
  %i.gz = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.ha = add i64 %i.gz, %i.bn
  store i64 %i.ha, ptr %i.k, align 8, !alias.scope !58174
  br label %.preheader.i

bb.bc:                                            ; preds = %.noexc36
  %i.hb = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.hc = add i64 %i.hb, %i.bn
  store i64 %i.hc, ptr %i.k, align 8, !alias.scope !58174
  br label %.preheader.i

bb.bd:                                            ; preds = %.noexc37
  %i.hd = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.he = add i64 %i.hd, %i.bn
  store i64 %i.he, ptr %i.k, align 8, !alias.scope !58174
  br label %.preheader.i

bb.be:                                            ; preds = %.noexc21
  %i.hf = load i64, ptr %i.bs, align 8, !noalias !58175, !noundef !34
  %i.hg = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.hh = add i64 %i.hg, %i.hf
  store i64 %i.hh, ptr %i.k, align 8, !alias.scope !58174
  br label %.preheader.i

bb.bf:                                            ; preds = %.noexc22
  %i.hi = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.hj = add i64 %i.hi, %i.by
  store i64 %i.hj, ptr %i.k, align 8, !alias.scope !58174
  br label %.preheader.i

bb.bg:                                            ; preds = %.noexc23
  %i.hk = load i8, ptr %i.cb, align 1, !noalias !58175, !noundef !34
  %i.hl = zext i8 %i.hk to i64
  %i.hm = load i64, ptr %i.k, align 8, !alias.scope !58174, !noundef !34
  %i.hn = add i64 %i.hm, %i.hl
  store i64 %i.hn, ptr %i.k, align 8, !alias.scope !58174
  br label %.preheader.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdc08bf7aaf9d5321E.exit.i", %bb.bt, %bb.bv, %.invoke.i
  %lpad.loopexit.split-lp116 = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$pretty..render..BufferWrite$LT$$LP$$RP$$GT$$GT$17hfd0e1aced78f4c88E"(ptr noalias noundef align 8 dereferenceable(48) %i.c) #61, !noalias !58175
  br label %.body

bb.bh:                                            ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hdc08bf7aaf9d5321E.exit.i"
  %i.ho = and i8 %i.da, 1
  %or.cond.not.i = icmp eq i8 %i.ho, 0
  br i1 %or.cond.not.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i64 %i.cq, ptr %i.k, align 8, !alias.scope !58174
  %i.hp = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !58174, !noundef !34
  %i.hq = icmp ugt i64 %i.ct, %i.hp
  br i1 %i.hq, label %bb.ce, label %bb.cd

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !58212)
  %i.hr = load ptr, ptr %.sroa.474.0..sroa_idx.i, align 8, !alias.scope !58212, !noalias !58201, !nonnull !34, !noundef !34 ; 2 uses
  %i.hs = load i64, ptr %.sroa.575.0..sroa_idx.i, align 8, !alias.scope !58212, !noalias !58201, !noundef !34 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.hs, 4
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %.idx.i.i
  %i.hu = icmp eq i64 %i.hs, 0
  %.pre24.i.i = load ptr, ptr %.sroa.480.0..sroa_idx.i, align 8, !alias.scope !58212, !noalias !58201 ; 6 uses
  %.pre26.i.i = load i64, ptr %.sroa.581.0..sroa_idx.i, align 8, !alias.scope !58212, !noalias !58201 ; 11 uses
  br i1 %i.hu, label %._crit_edge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bj, %bb.bu
  %.sroa.01.016.i.i = phi i64 [ %i.iq, %bb.bu ], [ 0, %bb.bj ] ; 14 uses
  %.sroa.024.015.i.i = phi ptr [ %i.hv, %bb.bu ], [ %i.hr, %bb.bj ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.024.015.i.i, i64 16 ; 2 uses
  %i.hw = load i64, ptr %.sroa.024.015.i.i, align 8, !noalias !58213, !noundef !34 ; 12 uses
  %.not.i.i178.i = icmp ugt i64 %.sroa.01.016.i.i, %i.hw
  br i1 %.not.i.i178.i, label %.invoke.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.i.i
end_hunk_8
