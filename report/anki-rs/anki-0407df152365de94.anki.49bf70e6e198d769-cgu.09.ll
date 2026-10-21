Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5377
inline.NumDeleted: 2914
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17h7929abada69f62cbE":bb.a

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10339
  store i64 %i.n, ptr %i.j, align 8, !noalias !10340
  %i.u = icmp eq i32 %1, 6
  br i1 %i.u, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10340
  store ptr @162, ptr %i.i, align 8, !noalias !10340
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !10340
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !10340
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !10340
  invoke void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @175, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #43
          to label %.noexc16 unwind label %bb.y

.noexc16:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10340
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !10340, !noundef !4
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef %i.w)
          to label %.noexc17 unwind label %bb.y

.noexc17:                                         ; preds = %bb.e
  %i.x = load i64, ptr %i.h, align 8, !range !36, !noalias !10340, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.x, 1
  br i1 %.not.i.i.i, label %bb.f, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit64.i.i.i"

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit64.i.i.i": ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10340
  br label %bb.aa

bb.f:                                             ; preds = %.noexc17
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.z = load i64, ptr %i.y, align 8, !noalias !10340, !noundef !4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10340
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !10340, !noundef !4
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef %i.ab)
          to label %.noexc18 unwind label %bb.y

.noexc18:                                         ; preds = %bb.f
  %i.ac = load i64, ptr %i.g, align 8, !range !36, !noalias !10340, !noundef !4
  %.not42.i.i.i = icmp eq i64 %i.ac, 1
  br i1 %.not42.i.i.i, label %bb.g, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit74.i.i.i"

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit74.i.i.i": ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10340
  br label %bb.aa

bb.g:                                             ; preds = %.noexc18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !10340, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10340
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !10340, !noundef !4
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noundef %i.ag)
          to label %.noexc19 unwind label %bb.y

.noexc19:                                         ; preds = %bb.g
  %i.ah = load i64, ptr %i.f, align 8, !range !36, !noalias !10340, !noundef !4
  %.not44.i.i.i = icmp eq i64 %i.ah, 1
  br i1 %.not44.i.i.i, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit79.i.i.i", label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit84.i.i.i"

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit79.i.i.i": ; preds = %.noexc19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !10340, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10340
  %i.ak = icmp sgt i64 %i.z, 365000
  br i1 %i.ak, label %bb.h, label %bb.i

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit84.i.i.i": ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10340
  br label %bb.aa

bb.h:                                             ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit79.i.i.i"
  %i.al = trunc i64 %i.aj to i32
  %i.am = trunc i64 %i.z to i32
  %i.an = call i32 @llvm.usub.sat.i32(i32 %i.al, i32 %i.am)
  br label %bb.j

bb.i:                                             ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit79.i.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10340
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !10340, !noundef !4
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef %i.ap)
          to label %.noexc20 unwind label %bb.y

.noexc20:                                         ; preds = %bb.i
  %i.aq = load i64, ptr %i.e, align 8, !range !36, !noalias !10340, !noundef !4
  %.not46.i.i.i = icmp eq i64 %i.aq, 1
  br i1 %.not46.i.i.i, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit89.i.i.i", label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit94.i.i.i"

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit89.i.i.i": ; preds = %.noexc20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noalias !10340, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10340
  %i.at = call i64 @llvm.ssub.sat.i64(i64 %i.z, i64 %i.ae)
  %i.au = trunc i64 %i.as to i32
  %i.av = trunc i64 %i.at to i32
  %i.aw = call i32 @llvm.usub.sat.i32(i32 %i.au, i32 %i.av)
  %i.ax = mul i32 %i.aw, 86400
  br label %bb.j

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit94.i.i.i": ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10340
  br label %bb.aa

bb.j:                                             ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit89.i.i.i", %bb.h
  %.sroa.01.0.i.i.i = phi i32 [ %i.an, %bb.h ], [ %i.ax, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit89.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10340
  %i.ay = load ptr, ptr %2, align 8, !noalias !10340, !noundef !4
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef %i.ay)
          to label %.noexc21 unwind label %bb.y

.noexc21:                                         ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !10341)
  call void @llvm.experimental.noalias.scope.decl(metadata !10342)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10340
  %i.az = load i64, ptr %i.c, align 8, !range !36, !alias.scope !10342, !noalias !10340, !noundef !4
  %i.ba = icmp eq i64 %i.az, 3
  br i1 %i.ba, label %bb.k, label %bb.m

bb.k:                                             ; preds = %.noexc21
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !10342, !noalias !10340, !nonnull !4, !align !16, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !10342, !noalias !10340, !noundef !4
  invoke void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bc, i64 noundef %i.be)
          to label %.noexc22 unwind label %bb.y

.noexc22:                                         ; preds = %bb.k
  %i.bf = load i64, ptr %i.a, align 8, !range !13, !noalias !10343, !noundef !4
  %i.bg = trunc nuw i64 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.noexc22
  call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !10344
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10340
  br label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i"

bb.m:                                             ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10340
  br label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i"

"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i": ; preds = %bb.w, %bb.n, %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10340
  %i.bh = udiv i32 %.sroa.01.0.i.i.i, 86400
  %i.bi = uitofp nneg i32 %i.bh to float
  %i.bj = fadd float %i.bi, 1.000000e-03
  %i.bk = fneg float %i.bj
  %i.bl = sitofp i64 %i.ae to float
  %i.bm = call float @llvm.maxnum.f32(float %i.bl, float 1.000000e+00)
  %i.bn = fdiv float %i.bk, %i.bm
  br label %bb.aa

bb.n:                                             ; preds = %.noexc22
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !10343, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !noalias !10343, !noundef !4 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bp, ptr %i.bs, align 8, !alias.scope !10341, !noalias !10340
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.br, ptr %i.bt, align 8, !alias.scope !10341, !noalias !10340
  store i64 4, ptr %i.d, align 8, !alias.scope !10341, !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10340
  %i.bu = icmp eq i64 %i.br, 0
  br i1 %i.bu, label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10340
  invoke void @_ZN4anki7storage4card4data8CardData8from_str17h26c52951704023a7E(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bp, i64 noundef %i.br)
          to label %bb.q unwind label %bb.p, !noalias !10340

bb.p:                                             ; preds = %bb.u, %bb.r, %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #41
          to label %.body23 unwind label %bb.x, !noalias !10340

bb.q:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bx = load i32, ptr %i.bw, align 8, !range !39, !noalias !10340, !noundef !4
  %i.by = trunc nuw i32 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !range !39, !noalias !10340
  %i.cb = trunc nuw i32 %i.ca to i1
  %or.cond.i.i.i = select i1 %i.by, i1 %i.cb, i1 false
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.cd = load float, ptr %i.cc, align 4, !noalias !10340
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cf = load i32, ptr %i.ce, align 8, !range !39, !noalias !10340
  %i.cg = trunc nuw i32 %i.cf to i1
  %or.cond59.i.i.i = select i1 %or.cond.i.i.i, i1 %i.cg, i1 false
  br i1 %or.cond59.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E"(ptr noalias noundef align 8 dereferenceable(80) %i.b)
          to label %bb.w unwind label %bb.p, !noalias !10340

bb.s:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.ci = load float, ptr %i.ch, align 4, !noalias !10340
  %i.cj = call float @llvm.maxnum.f32(float %i.ci, float f0x38D1B717)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cl = load i32, ptr %i.ck, align 8, !range !39, !noalias !10340, !noundef !4
  %i.cm = trunc nuw i32 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.co = load float, ptr %i.cn, align 4, !noalias !10340
  %.sroa.09.0.i.i.i = select i1 %i.cm, float %i.co, float 5.000000e-01 ; 2 uses
  %i.cp = load i64, ptr %i.b, align 8, !range !13, !noalias !10340, !noundef !4
  %i.cq = trunc nuw i64 %i.cp to i1
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !10340, !noundef !4
  %i.ct = trunc i64 %i.aj to i32
  %i.cu = trunc i64 %i.cs to i32
  %i.cv = call i32 @llvm.usub.sat.i32(i32 %i.ct, i32 %i.cu)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.01.1.i.i.i = phi i32 [ %i.cv, %bb.t ], [ %.sroa.01.0.i.i.i, %bb.s ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$anki..storage..card..data..CardData$GT$17h5a41185a76bdc655E"(ptr noalias noundef align 8 dereferenceable(80) %i.b)
          to label %bb.v unwind label %bb.p, !noalias !10340

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10340
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE"(ptr noalias noundef align 8 dereferenceable(24) %i.d)
          to label %.noexc25 unwind label %bb.y

.noexc25:                                         ; preds = %bb.v
  %i.cw = fdiv float -1.000000e+00, %.sroa.09.0.i.i.i ; 3 uses
  %i.cx = call float @llvm.pow.f32(float f0x3F666666, float %i.cw)
  %i.cy = fadd float %i.cx, -1.000000e+00
  %i.cz = uitofp i32 %.sroa.01.1.i.i.i to float
  %i.da = fdiv nnan float %i.cz, 8.640000e+04
  %i.db = fdiv float %i.da, %i.cd
  %i.dc = fmul float %i.cy, %i.db
  %i.dd = fadd float %i.dc, 1.000000e+00
  %i.de = fneg float %.sroa.09.0.i.i.i
  %i.df = call float @llvm.pow.f32(float %i.dd, float %i.de)
  %i.dg = call float @llvm.maxnum.f32(float %i.df, float f0x38D1B717)
  %i.dh = call float @llvm.pow.f32(float %i.dg, float %i.cw)
  %i.di = fadd float %i.dh, -1.000000e+00
  %i.dj = fneg float %i.di
  %i.dk = call float @llvm.pow.f32(float %i.cj, float %i.cw)
  %i.dl = fadd float %i.dk, -1.000000e+00
  %i.dm = fdiv float %i.dj, %i.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10340
  br label %bb.aa

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10340
  br label %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i"

bb.x:                                             ; preds = %bb.p
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42, !noalias !10340
  unreachable

bb.y:                                             ; preds = %bb.v, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  br label %.body23

.body23:                                          ; preds = %bb.p, %bb.y
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.do, %bb.y ], [ %i.bv, %bb.p ]
  %i.dp = extractvalue { ptr, i32 } %eh.lpad-body24, 0
  %i.dq = invoke { ptr, ptr } @_ZN3std9panicking12catch_unwind7cleanup17h4334ae8ed31d71f7E(ptr noundef %i.dp)
          to label %.thread unwind label %bb.z    ; 2 uses

bb.z:                                             ; preds = %.body23
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #42
  unreachable

.thread:                                          ; preds = %.body23
  %i.ds = extractvalue { ptr, ptr } %i.dq, 0      ; 6 uses
  %i.dt = extractvalue { ptr, ptr } %i.dq, 1      ; 6 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.ds, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.dt, ptr %i.dv, align 8
  store i64 -9223372036854775782, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  invoke void @_ZN8rusqlite9functions12report_error17h4fb0d31a667dc200E(ptr noundef %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @428)
          to label %bb.ac unwind label %bb.ai

bb.aa:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit64.i.i.i", %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit74.i.i.i", %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit84.i.i.i", %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit94.i.i.i", %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i", %.noexc25
  %.sroa.15.0.i = phi float [ %i.bn, %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i" ], [ %i.dm, %.noexc25 ], [ undef, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit94.i.i.i" ], [ undef, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit84.i.i.i" ], [ undef, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit74.i.i.i" ], [ undef, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit64.i.i.i" ]
  %.sroa.9.0.i = phi i32 [ 1, %"_ZN4core3ptr98drop_in_place$LT$core..result..Result$LT$$RF$str$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17h511f0bbb80b2d96cE.exit.i.i.i" ], [ 1, %.noexc25 ], [ 0, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit94.i.i.i" ], [ 0, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit84.i.i.i" ], [ 0, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit74.i.i.i" ], [ 0, %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$i64$C$rusqlite..types..from_sql..FromSqlError$GT$$GT$17he7e2c0bd68751d56E.exit64.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10339
  store i32 %.sroa.9.0.i, ptr %.sroa.8, align 8
  %.sroa.8.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 4
  store float %.sroa.15.0.i, ptr %.sroa.8.4..sroa_idx, align 4
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload = load ptr, ptr %.sroa.8, align 8
  store i64 -9223372036854775783, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  invoke fastcc void @_ZN8rusqlite9functions10sql_result17h8135a7b88279c9f7E(ptr noundef %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %i.n, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.l)
          to label %"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14" unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dw = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.ag, %bb.ah, %bb.ai
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #42
  unreachable

"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14": ; preds = %bb.aa, %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ac:                                            ; preds = %.thread
  %i.dx = load ptr, ptr %i.dt, align 8, !invariant.load !4, !noalias !10345 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i9, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  invoke void %i.dx(ptr noundef nonnull %i.ds)
          to label %bb.ae unwind label %bb.ag, !noalias !10345

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !range !15, !invariant.load !4, !noalias !10345 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !23, !invariant.load !4, !noalias !10345 ; 2 uses
  %i.ec = icmp ult i64 %i.eb, -9223372036854775807
  call void @llvm.assume(i1 %i.ec)
  %i.ed = icmp eq i64 %i.dz, 0
  br i1 %i.ed, label %"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14", label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ds) ]
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef range(i64 1, 0) %i.dz, i64 noundef range(i64 1, -9223372036854775807) %i.eb) #44, !noalias !10345
  br label %"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE.exit14"

bb.ag:                                            ; preds = %bb.ad
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !range !15, !invariant.load !4, !noalias !10345 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !range !23, !invariant.load !4, !noalias !10345 ; 2 uses
  %i.ej = icmp ult i64 %i.ei, -9223372036854775807
  call void @llvm.assume(i1 %i.ej)
  %i.ek = icmp eq i64 %i.eg, 0
  br i1 %i.ek, label %.body, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef range(i64 1, 0) %i.eg, i64 noundef range(i64 1, -9223372036854775807) %i.ei) #44, !noalias !10345
  br label %.body

bb.ai:                                            ; preds = %.thread
  %i.el = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  invoke fastcc void @"_ZN4core3ptr206drop_in_place$LT$core..result..Result$LT$core..result..Result$LT$core..option..Option$LT$f32$GT$$C$rusqlite..error..Error$GT$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h46c08b63caae976cE"(ptr noalias noundef align 8 dereferenceable(64) %i.m) #41
          to label %.body unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.em = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @"_ZN8rusqlite9functions61_$LT$impl$u20$rusqlite..inner_connection..InnerConnection$GT$22create_scalar_function18call_boxed_closure17hbcb851633a988558E"(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 12 uses
  %i.h = alloca [64 x i8], align 8                ; 10 uses
  %i.i = alloca [64 x i8], align 8                ; 10 uses
  %i.j = sext i32 %1 to i64                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = tail call noundef ptr @sqlite3_user_data(ptr noundef %0) #44, !noalias !10365
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10365
  store ptr @430, ptr %i.f, align 8, !noalias !10365
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.m, align 8, !noalias !10365
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.n, align 8, !noalias !10365
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !10365
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.p, align 8, !noalias !10365
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @431) #43
          to label %.noexc21 unwind label %bb.j

.noexc21:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10365
  store i64 %i.j, ptr %i.e, align 8, !noalias !10366
  %i.q = icmp eq i32 %1, 1
  br i1 %i.q, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10366
  store ptr @162, ptr %i.d, align 8, !noalias !10366
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !10366
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !10366
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !noalias !10366
  invoke void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @178, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #43
          to label %.noexc22 unwind label %bb.j

.noexc22:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10366
  %i.r = load ptr, ptr %2, align 8, !noalias !10366, !noundef !4
  invoke void @_ZN8rusqlite5types9value_ref8ValueRef10from_value17h1875f7ae7acdfe73E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef %i.r)
end_hunk_0
