Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@"_ZN72_$LT$core..pin..Pin$LT$P$GT$$u20$as$u20$core..future..future..Future$GT$4poll17hce30d2f4c5f0895eE":bb.a
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.9280.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %.sroa.10283.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit.i, %bb.cw
  %.sroa.0247.0.i = phi ptr [ %i.fj, %bb.cw ], [ %i.fz, %.loopexit.i ] ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0247.0.i) ]
  %i.fy = icmp eq ptr %.sroa.0247.0.i, %i.fk
  br i1 %i.fy, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98f9714e1013b8e8E.exit.thread.i", label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0247.0.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !13550
  %i.ga = invoke noundef align 8 dereferenceable(32) ptr @"_ZN10serde_json5value5index87_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$serde_json..value..Value$GT$5index17hed31524881cbfb2bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0247.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @499, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @500)
          to label %bb.da unwind label %bb.cz, !noalias !13547 ; 3 uses

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h98f9714e1013b8e8E.exit.thread.i": ; preds = %bb.cx, %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(96) %i.s, i64 96, i1 false), !noalias !13550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13550
  %i.gb = getelementptr inbounds nuw i8, ptr %.val, i64 59
  store i8 0, ptr %i.gb, align 1, !noalias !13550
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.val, i64 24, i1 false), !noalias !13550
  invoke void @"_ZN87_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..invalid_input..OrInvalid$GT$10or_invalid17h622a710e74c254daE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.fd unwind label %bb.fh, !noalias !13547

bb.cz:                                            ; preds = %bb.da, %bb.cy
  %i.gc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13550
  br label %.loopexit.split-lp.i

bb.da:                                            ; preds = %bb.cy
  %i.gd = load i8, ptr %i.ga, align 8, !range !96, !alias.scope !13638, !noalias !13547, !noundef !3
  %i.ge = icmp eq i8 %i.gd, 3                     ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !alias.scope !13638, !noalias !13547, !nonnull !3
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !13638, !noalias !13547
  %.sroa.3.0.i122.i = select i1 %i.ge, i64 %i.gi, i64 undef
  %.sroa.0.0.i123.i = select i1 %i.ge, ptr %i.gg, ptr null
  invoke void @"_ZN87_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..invalid_input..OrInvalid$GT$10or_invalid17h4e4dae783568baa1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.r, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.0.0.i123.i, i64 %.sroa.3.0.i122.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @501, i64 noundef 22)
          to label %bb.db unwind label %bb.cz, !noalias !13547

bb.db:                                            ; preds = %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !13641)
  %i.gj = load i64, ptr %i.r, align 8, !range !1923, !alias.scope !13644, !noalias !13646, !noundef !3 ; 2 uses
  %.not.i124.i = icmp eq i64 %i.gj, -9223372036854775773
  %i.gk = load ptr, ptr %i.fl, align 8, !alias.scope !13647, !noalias !13550 ; 12 uses
  %i.gl = load i64, ptr %i.fm, align 8, !alias.scope !13647, !noalias !13550 ; 18 uses
  br i1 %.not.i124.i, label %bb.dc, label %bb.fm

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !13550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !13550
  %i.gm = invoke noundef align 8 dereferenceable(32) ptr @"_ZN10serde_json5value5index87_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$serde_json..value..Value$GT$5index17hed31524881cbfb2bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0247.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @502, i64 noundef 20, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @503)
          to label %bb.de unwind label %bb.dd, !noalias !13547 ; 3 uses

bb.dd:                                            ; preds = %bb.de, %bb.dc
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13550
  br label %.loopexit.split-lp.i

bb.de:                                            ; preds = %bb.dc
  %i.go = load i8, ptr %i.gm, align 8, !range !96, !alias.scope !13648, !noalias !13547, !noundef !3
  %i.gp = icmp eq i8 %i.go, 3                     ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !13648, !noalias !13547, !nonnull !3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !13648, !noalias !13547
  %.sroa.3.0.i126.i = select i1 %i.gp, i64 %i.gt, i64 undef
  %.sroa.0.0.i127.i = select i1 %i.gp, ptr %i.gr, ptr null
  invoke void @"_ZN87_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..invalid_input..OrInvalid$GT$10or_invalid17h4e4dae783568baa1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.q, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.0.0.i127.i, i64 %.sroa.3.0.i126.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @504, i64 noundef 22)
          to label %bb.df unwind label %bb.dd, !noalias !13547

bb.df:                                            ; preds = %bb.de
  call void @llvm.experimental.noalias.scope.decl(metadata !13651)
  %i.gu = load i64, ptr %i.q, align 8, !range !1923, !alias.scope !13654, !noalias !13656, !noundef !3 ; 2 uses
  %.not.i128.i = icmp eq i64 %i.gu, -9223372036854775773
  %i.gv = load ptr, ptr %i.fn, align 8, !alias.scope !13657, !noalias !13550 ; 2 uses
  %i.gw = load i64, ptr %i.fo, align 8, !alias.scope !13657, !noalias !13550 ; 2 uses
  br i1 %.not.i128.i, label %bb.dg, label %bb.fl

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !13550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !13550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !13550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !13550
  %i.gx = invoke noundef align 8 dereferenceable(32) ptr @"_ZN10serde_json5value5index87_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$serde_json..value..Value$GT$5index17hed31524881cbfb2bE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0247.0.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @505, i64 noundef 6, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @506)
          to label %bb.di unwind label %bb.dh, !noalias !13547 ; 3 uses

bb.dh:                                            ; preds = %bb.di, %bb.dg
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13550
  br label %bb.fi

bb.di:                                            ; preds = %bb.dg
  %i.gz = load i8, ptr %i.gx, align 8, !range !96, !alias.scope !13658, !noalias !13547, !noundef !3
  %i.ha = icmp eq i8 %i.gz, 3                     ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !13658, !noalias !13547, !nonnull !3
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.he = load i64, ptr %i.hd, align 8, !alias.scope !13658, !noalias !13547
  %.sroa.3.0.i130.i = select i1 %i.ha, i64 %i.he, i64 undef
  %.sroa.0.0.i131.i = select i1 %i.ha, ptr %i.hc, ptr null
  invoke void @"_ZN87_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..invalid_input..OrInvalid$GT$10or_invalid17h4e4dae783568baa1E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.n, ptr noalias noundef readonly align 1 captures(address, read_provenance) %.sroa.0.0.i131.i, i64 %.sroa.3.0.i130.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @507, i64 noundef 24)
          to label %bb.dj unwind label %bb.dh, !noalias !13547

bb.dj:                                            ; preds = %bb.di
  call void @llvm.experimental.noalias.scope.decl(metadata !13661)
  %i.hf = load i64, ptr %i.n, align 8, !range !1923, !alias.scope !13664, !noalias !13666, !noundef !3 ; 2 uses
  %.not.i132.i = icmp eq i64 %i.hf, -9223372036854775773
  %i.hg = load ptr, ptr %i.fp, align 8, !alias.scope !13667, !noalias !13550 ; 4 uses
  %i.hh = load i64, ptr %i.fq, align 8, !alias.scope !13667, !noalias !13550 ; 3 uses
  br i1 %.not.i132.i, label %bb.dk, label %bb.fj

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !13550
  call void @llvm.experimental.noalias.scope.decl(metadata !13668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13671
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hg, i64 noundef %i.hh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @508, i64 noundef 7)
          to label %.noexc134.i unwind label %bb.dn, !noalias !13547

.noexc134.i:                                      ; preds = %bb.dk
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef align 8 dereferenceable(104) %i.d)
          to label %.noexc135.i unwind label %bb.dn, !noalias !13547

.noexc135.i:                                      ; preds = %.noexc134.i
  %i.hi = load i64, ptr %i.e, align 8, !range !47, !noalias !13671, !noundef !3
  %i.hj = trunc nuw i64 %i.hi to i1
  br i1 %i.hj, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.noexc135.i
  %i.hk = load i64, ptr %i.fr, align 8, !noalias !13671, !noundef !3
  %i.hl = load i64, ptr %i.fs, align 8, !noalias !13671, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13671
  %i.hm = sub nuw i64 %i.hh, %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hl
  store i64 %i.hk, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !13668, !noalias !13673
  store ptr %i.hn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !13668, !noalias !13673
  store i64 %i.hm, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !alias.scope !13668, !noalias !13673
  br label %bb.do

bb.dm:                                            ; preds = %.noexc135.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13671
  br label %bb.do

bb.dn:                                            ; preds = %bb.do, %.noexc134.i, %bb.dk
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.do:                                            ; preds = %bb.dm, %bb.dl
  %.sink.i.i = phi ptr [ %i.hg, %bb.dl ], [ null, %bb.dm ]
  store ptr %.sink.i.i, ptr %i.o, align 8, !alias.scope !13668, !noalias !13673
  invoke void @"_ZN87_$LT$core..option..Option$LT$T$GT$$u20$as$u20$anki..error..invalid_input..OrInvalid$GT$10or_invalid17h24c5e5b80cb1788bE"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @509, i64 noundef 23)
          to label %bb.dp unwind label %bb.dn, !noalias !13547

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !13550
  call void @llvm.experimental.noalias.scope.decl(metadata !13674)
  %i.hp = load i64, ptr %i.p, align 8, !range !1923, !alias.scope !13677, !noalias !13679, !noundef !3 ; 2 uses
  %.not.i136.i = icmp eq i64 %i.hp, -9223372036854775773
  br i1 %.not.i136.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.sroa.2303.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2303.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !noalias !13550
  %.sroa.9280.0.copyload282.i = load ptr, ptr %.sroa.9280.8..sroa_idx.i, align 8, !alias.scope !13680, !noalias !13550
  %.sroa.10283.0.copyload285.i = load i64, ptr %.sroa.10283.8..sroa_idx.i, align 8, !alias.scope !13680, !noalias !13550
  %.sroa.11286.0..sroa_idx287.i = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.5306.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5306.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.11286.0..sroa_idx287.i, i64 72, i1 false), !noalias !13550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13550
  store i64 %i.hp, ptr %i.f, align 8, !alias.scope !13681, !noalias !13550
  %.sroa.3304.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.9280.0.copyload282.i, ptr %.sroa.3304.0..sroa_idx.i, align 8, !alias.scope !13681, !noalias !13550
  %.sroa.4305.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 %.sroa.10283.0.copyload285.i, ptr %.sroa.4305.0..sroa_idx.i, align 8, !alias.scope !13681, !noalias !13550
  br label %bb.fk

bb.dr:                                            ; preds = %bb.dp
  %.sroa.9280.8.copyload.i = load ptr, ptr %.sroa.9280.8..sroa_idx.i, align 8, !alias.scope !13680, !noalias !13550, !nonnull !3, !noundef !3
  %.sroa.10283.8.copyload.i = load i64, ptr %.sroa.10283.8..sroa_idx.i, align 8, !alias.scope !13680, !noalias !13550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !13550
  %i.hq = load ptr, ptr %i.fu, align 8, !noalias !13550, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.hr = load ptr, ptr %i.hq, align 8, !noalias !13547, !nonnull !3, !align !5, !noundef !3 ; 9 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.ht = load i64, ptr %i.hs, align 8, !noalias !13547, !noundef !3 ; 18 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13685)
  call void @llvm.experimental.noalias.scope.decl(metadata !13688)
  call void @llvm.experimental.noalias.scope.decl(metadata !13690)
  call void @llvm.experimental.noalias.scope.decl(metadata !13693)
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.thread359.i, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.hv = icmp ult i64 %i.ht, %i.gl
  br i1 %i.hv, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.hw = icmp eq i64 %i.ht, 1
  br i1 %i.hw, label %bb.dw, label %bb.dv

bb.du:                                            ; preds = %bb.ds
  %.not.i.i.i = icmp eq i64 %i.ht, %i.gl
  br i1 %.not.i.i.i, label %bb.ep, label %.loopexit.i

bb.dv:                                            ; preds = %bb.dt
  %i.hx = icmp ult i64 %i.ht, 33
  br i1 %i.hx, label %bb.dz, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i

bb.dw:                                            ; preds = %bb.dt
  %i.hy = load i8, ptr %i.hr, align 1, !alias.scope !13695, !noalias !13696, !noundef !3 ; 2 uses
  %i.hz = icmp ult i64 %i.gl, 16
  br i1 %i.hz, label %.lr.ph.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.ia = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef %i.hy, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gk, i64 noundef %i.gl)
          to label %.noexc137.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !13547

.noexc137.i:                                      ; preds = %bb.dx
  %i.ib = extractvalue { i64, i64 } %i.ia, 0
  %i.ic = icmp eq i64 %i.ib, 1
  %i.id = zext i1 %i.ic to i8
  br label %.loopexit.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.dw, %bb.dy
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ih, %bb.dy ], [ 0, %bb.dw ] ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.01.05.i.i.i.i
  %i.if = load i8, ptr %i.ie, align 1, !alias.scope !13697, !noalias !13700, !noundef !3
  %i.ig = icmp eq i8 %i.if, %i.hy
  br i1 %i.ig, label %.thread359.i, label %bb.dy

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ih = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ih, %i.gl
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i, label %.lr.ph.i.i.i.i

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i: ; preds = %bb.eb, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13701
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13701
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gk, i64 noundef %i.gl, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hr, i64 noundef %i.ht)
          to label %.noexc138.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !13547

.noexc138.i:                                      ; preds = %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i
  invoke fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
          to label %.noexc139.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !13547

.noexc139.i:                                      ; preds = %.noexc138.i
  %i.ii = load i64, ptr %i.c, align 8, !range !47, !noalias !13701, !noundef !3
  %i.ij = trunc nuw nsw i64 %i.ii to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13701
  br label %.loopexit.i

bb.dz:                                            ; preds = %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !13702)
  call void @llvm.experimental.noalias.scope.decl(metadata !13705)
  %i.ik = load i8, ptr %i.hr, align 1, !alias.scope !13707, !noalias !13708, !noundef !3 ; 3 uses
  %i.il = add nsw i64 %i.ht, -1                   ; 2 uses
  %i.im = icmp eq i64 %i.ht, 2
  br i1 %i.im, label %.thread.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.in = call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.ht, i64 4)
  br label %.lr.ph

bb.eb:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i"
  %i.io = icmp ult i64 %i.in, %i.iq
  br i1 %i.io, label %.lr.ph, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i.i.i

.lr.ph:                                           ; preds = %bb.ea, %bb.eb
  %i.ip = phi i64 [ %i.ht, %bb.ea ], [ %i.iq, %bb.eb ]
  %i.iq = add nsw i64 %i.ip, -1                   ; 6 uses
  %i.ir = icmp ult i64 %i.iq, %i.ht
  br i1 %i.ir, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i", label %bb.ec

bb.ec:                                            ; preds = %.lr.ph
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.iq, i64 noundef range(i64 2, 33) %i.ht, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @555) #35
          to label %.noexc140.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !13547

.noexc140.i:                                      ; preds = %bb.ec
  unreachable

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i": ; preds = %.lr.ph
  %i.is = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.iq
  %i.it = load i8, ptr %i.is, align 1, !alias.scope !13707, !noalias !13709, !noundef !3 ; 2 uses
  %.not.i.not.i.i.i.i.i = icmp eq i8 %i.it, %i.ik
  br i1 %.not.i.not.i.i.i.i.i, label %bb.eb, label %bb.ed

bb.ed:                                            ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.i.i"
  %i.iu = add nuw nsw i64 %i.ht, 15
  %i.iv = icmp ult i64 %i.gl, %i.iu
  br i1 %i.iv, label %.lr.ph.split.us.i.i.i.i.i, label %bb.ee

.thread.i.i.i.i:                                  ; preds = %bb.dz
  %i.iw = icmp ult i64 %i.gl, 17
  br i1 %i.iw, label %.lr.ph.split.us.i.i.i.i.i, label %.thread106.i.i.i.i

.thread106.i.i.i.i:                               ; preds = %.thread.i.i.i.i
  %i.ix = insertelement <1 x i8> poison, i8 %i.ik, i64 0
  %i.iy = shufflevector <1 x i8> %i.ix, <1 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %.pre.i.i.i.i = load <1 x i8>, ptr %.phi.trans.insert.i.i.i.i, align 1, !alias.scope !13707, !noalias !13708
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.iz = insertelement <1 x i8> poison, i8 %i.it, i64 0
  %i.ja = insertelement <1 x i8> poison, i8 %i.ik, i64 0
  %i.jb = shufflevector <1 x i8> %i.ja, <1 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ef

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.thread.i.i.i.i, %bb.ed
  %bcmp.i.i.us23.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.gk, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.hr, i64 range(i64 2, 33) %i.ht), !alias.scope !13717, !noalias !13718
  %i.jc = icmp eq i32 %bcmp.i.i.us23.i.i.i.i.i, 0
  br i1 %i.jc, label %.thread359.i, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i"

.split.us.i.i.i.i.i:                              ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i"
  %i.jd = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.jd, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.hr, i64 range(i64 2, 33) %i.ht), !alias.scope !13717, !noalias !13718
  %i.je = icmp eq i32 %bcmp.i.i.us.i.i.i.i.i, 0
  br i1 %i.je, label %.thread359.i, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.i.i": ; preds = %.lr.ph.split.us.i.i.i.i.i, %.split.us.i.i.i.i.i
  %.pn.i.i.i.i = phi ptr [ %i.jd, %.split.us.i.i.i.i.i ], [ %i.gk, %.lr.ph.split.us.i.i.i.i.i ]
  %.in.i.i.i.i = phi i64 [ %i.jf, %.split.us.i.i.i.i.i ], [ %i.gl, %.lr.ph.split.us.i.i.i.i.i ]
  %i.jf = add i64 %.in.i.i.i.i, -1                ; 2 uses
  %.not28.i.i.i.i.i = icmp ugt i64 %i.ht, %i.jf
  br i1 %.not28.i.i.i.i.i, label %.loopexit.i, label %.split.us.i.i.i.i.i

bb.ef:                                            ; preds = %bb.ee, %.thread106.i.i.i.i
  %i.jg = phi <1 x i8> [ %.pre.i.i.i.i, %.thread106.i.i.i.i ], [ %i.iz, %bb.ee ]
  %i.jh = phi <16 x i8> [ %i.iy, %.thread106.i.i.i.i ], [ %i.jb, %bb.ee ] ; 6 uses
  %storemerge105108.i.i.i.i = phi i64 [ 1, %.thread106.i.i.i.i ], [ %i.iq, %bb.ee ] ; 6 uses
  %i.ji = shufflevector <1 x i8> %i.jg, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13722
  store ptr %i.gk, ptr %i.a, align 8, !noalias !13722
  store i64 %i.gl, ptr %i.fv, align 8, !noalias !13722
  store ptr %i.jj, ptr %i.fw, align 8, !noalias !13722
  store i64 %i.il, ptr %i.fx, align 8, !noalias !13722
  %i.jk = add nuw nsw i64 %i.ht, 63               ; 2 uses
  %.not.i6.i.i.i = icmp ult i64 %i.jk, %i.gl
  br i1 %.not.i6.i.i.i, label %.lr.ph.i9.i.i.i, label %.preheader.i7.i.i.i

.preheader.i7.i.i.i:                              ; preds = %bb.ej, %bb.ef
  %.sroa.015.0.lcssa.i.i.i.i = phi i8 [ 0, %bb.ef ], [ %.sroa.015.2.3.i.i.i.i, %bb.ej ] ; 2 uses
  %.sroa.07.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.ef ], [ %i.lc, %bb.ej ] ; 2 uses
  %i.jl = add nuw nsw i64 %i.ht, 15               ; 2 uses
  %i.jm = add i64 %.sroa.07.0.lcssa.i.i.i.i, %i.jl
  %i.jn = icmp uge i64 %i.jm, %i.gl
  %i.jo = trunc nuw i8 %.sroa.015.0.lcssa.i.i.i.i to i1 ; 2 uses
  %or.cond3118.i.i.i.i = select i1 %i.jn, i1 true, i1 %i.jo
  br i1 %or.cond3118.i.i.i.i, label %._crit_edge.i8.i.i.i, label %.lr.ph120.i.i.i.i

.lr.ph.i9.i.i.i:                                  ; preds = %bb.ef, %bb.ej
  %.sroa.07.0116.i.i.i.i = phi i64 [ %i.lc, %bb.ej ], [ 0, %bb.ef ] ; 6 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.07.0116.i.i.i.i ; 5 uses
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.jp, align 1, !alias.scope !13723, !noalias !13724
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %storemerge105108.i.i.i.i
  %.val.i.i.i.i.i = load <16 x i8>, ptr %i.jq, align 1, !alias.scope !13723, !noalias !13724
  %i.jr = icmp eq <16 x i8> %.val3.i.i.i.i.i, %i.jh
  %i.js = icmp eq <16 x i8> %.val.i.i.i.i.i, %i.ji
  %narrow.i.i.i.i.i = select <16 x i1> %i.jr, <16 x i1> %i.js, <16 x i1> zeroinitializer
  %i.jt = bitcast <16 x i1> %narrow.i.i.i.i.i to i16 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %.val3.i.1.i.i.i.i = load <16 x i8>, ptr %i.ju, align 1, !alias.scope !13723, !noalias !13724
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %storemerge105108.i.i.i.i
  %.val.i.1.i.i.i.i = load <16 x i8>, ptr %i.jv, align 1, !alias.scope !13723, !noalias !13724
  %i.jw = icmp eq <16 x i8> %.val3.i.1.i.i.i.i, %i.jh
  %i.jx = icmp eq <16 x i8> %.val.i.1.i.i.i.i, %i.ji
  %narrow.i.1.i.i.i.i = select <16 x i1> %i.jw, <16 x i1> %i.jx, <16 x i1> zeroinitializer
  %i.jy = bitcast <16 x i1> %narrow.i.1.i.i.i.i to i16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jp, i64 32 ; 2 uses
  %.val3.i.2.i.i.i.i = load <16 x i8>, ptr %i.jz, align 1, !alias.scope !13723, !noalias !13724
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %storemerge105108.i.i.i.i
  %.val.i.2.i.i.i.i = load <16 x i8>, ptr %i.ka, align 1, !alias.scope !13723, !noalias !13724
  %i.kb = icmp eq <16 x i8> %.val3.i.2.i.i.i.i, %i.jh
  %i.kc = icmp eq <16 x i8> %.val.i.2.i.i.i.i, %i.ji
  %narrow.i.2.i.i.i.i = select <16 x i1> %i.kb, <16 x i1> %i.kc, <16 x i1> zeroinitializer
  %i.kd = bitcast <16 x i1> %narrow.i.2.i.i.i.i to i16 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jp, i64 48 ; 2 uses
  %.val3.i.3.i.i.i.i = load <16 x i8>, ptr %i.ke, align 1, !alias.scope !13723, !noalias !13724
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 %storemerge105108.i.i.i.i
  %.val.i.3.i.i.i.i = load <16 x i8>, ptr %i.kf, align 1, !alias.scope !13723, !noalias !13724
  %i.kg = icmp eq <16 x i8> %.val3.i.3.i.i.i.i, %i.jh
  %i.kh = icmp eq <16 x i8> %.val.i.3.i.i.i.i, %i.ji
  %narrow.i.3.i.i.i.i = select <16 x i1> %i.kg, <16 x i1> %i.kh, <16 x i1> zeroinitializer
  %i.ki = bitcast <16 x i1> %narrow.i.3.i.i.i.i to i16 ; 2 uses
  %i.kj = icmp eq i16 %i.jt, 0
  br i1 %i.kj, label %.preheader109.1.i.i.i.i, label %bb.ek

.preheader109.1.i.i.i.i:                          ; preds = %.noexc144.i, %.lr.ph.i9.i.i.i
  %.sroa.015.2.i.i.i.i = phi i8 [ 0, %.lr.ph.i9.i.i.i ], [ %i.lh, %.noexc144.i ] ; 3 uses
  %i.kk = icmp eq i16 %i.jy, 0
  br i1 %i.kk, label %.preheader109.2.i.i.i.i, label %bb.eg

bb.eg:                                            ; preds = %.preheader109.1.i.i.i.i
  %i.kl = or disjoint i64 %.sroa.07.0116.i.i.i.i, 16
  %i.km = trunc nuw i8 %.sroa.015.2.i.i.i.i to i1
  %i.kn = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.kl, i16 noundef %i.jy, i1 noundef zeroext %i.km)
          to label %.noexc141.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !13547

.noexc141.i:                                      ; preds = %bb.eg
  %i.ko = zext i1 %i.kn to i8
  %i.kp = or i8 %.sroa.015.2.i.i.i.i, %i.ko
  br label %.preheader109.2.i.i.i.i

.preheader109.2.i.i.i.i:                          ; preds = %.noexc141.i, %.preheader109.1.i.i.i.i
  %.sroa.015.2.1.i.i.i.i = phi i8 [ %.sroa.015.2.i.i.i.i, %.preheader109.1.i.i.i.i ], [ %i.kp, %.noexc141.i ] ; 3 uses
  %i.kq = icmp eq i16 %i.kd, 0
  br i1 %i.kq, label %.preheader109.3.i.i.i.i, label %bb.eh

bb.eh:                                            ; preds = %.preheader109.2.i.i.i.i
  %i.kr = or disjoint i64 %.sroa.07.0116.i.i.i.i, 32
  %i.ks = trunc nuw i8 %.sroa.015.2.1.i.i.i.i to i1
  %i.kt = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.kr, i16 noundef %i.kd, i1 noundef zeroext %i.ks)
          to label %.noexc142.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !13547

.noexc142.i:                                      ; preds = %bb.eh
  %i.ku = zext i1 %i.kt to i8
  %i.kv = or i8 %.sroa.015.2.1.i.i.i.i, %i.ku
  br label %.preheader109.3.i.i.i.i

.preheader109.3.i.i.i.i:                          ; preds = %.noexc142.i, %.preheader109.2.i.i.i.i
  %.sroa.015.2.2.i.i.i.i = phi i8 [ %.sroa.015.2.1.i.i.i.i, %.preheader109.2.i.i.i.i ], [ %i.kv, %.noexc142.i ] ; 3 uses
  %i.kw = icmp eq i16 %i.ki, 0
  br i1 %i.kw, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.preheader109.3.i.i.i.i
  %i.kx = or disjoint i64 %.sroa.07.0116.i.i.i.i, 48
  %i.ky = trunc nuw i8 %.sroa.015.2.2.i.i.i.i to i1
  %i.kz = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.kx, i16 noundef %i.ki, i1 noundef zeroext %i.ky)
          to label %.noexc143.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !13547

.noexc143.i:                                      ; preds = %bb.ei
  %i.la = zext i1 %i.kz to i8
  %i.lb = or i8 %.sroa.015.2.2.i.i.i.i, %i.la
  br label %bb.ej

bb.ej:                                            ; preds = %.noexc143.i, %.preheader109.3.i.i.i.i
  %.sroa.015.2.3.i.i.i.i = phi i8 [ %.sroa.015.2.2.i.i.i.i, %.preheader109.3.i.i.i.i ], [ %i.lb, %.noexc143.i ] ; 2 uses
  %i.lc = add i64 %.sroa.07.0116.i.i.i.i, 64      ; 3 uses
  %i.ld = add i64 %i.lc, %i.jk
  %i.le = icmp uge i64 %i.ld, %i.gl
  %i.lf = trunc nuw i8 %.sroa.015.2.3.i.i.i.i to i1
  %or.cond.i.i.i.i = select i1 %i.le, i1 true, i1 %i.lf
  br i1 %or.cond.i.i.i.i, label %.preheader.i7.i.i.i, label %.lr.ph.i9.i.i.i

bb.ek:                                            ; preds = %.lr.ph.i9.i.i.i
  %i.lg = invoke fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0116.i.i.i.i, i16 noundef %i.jt, i1 noundef zeroext false)
          to label %.noexc144.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !13547

.noexc144.i:                                      ; preds = %bb.ek
  %i.lh = zext i1 %i.lg to i8
  br label %.preheader109.1.i.i.i.i

._crit_edge.i8.i.i.i:                             ; preds = %bb.el, %.preheader.i7.i.i.i
  %.sroa.015.3.lcssa.i.i.i.i = phi i8 [ %.sroa.015.0.lcssa.i.i.i.i, %.preheader.i7.i.i.i ], [ %.sroa.015.4.i.i.i.i, %bb.el ] ; 2 uses
  %.lcssa.i.i.i.i = phi i1 [ %i.jo, %.preheader.i7.i.i.i ], [ %i.lz, %bb.el ]
  %i.li = sub nuw i64 %i.gl, %i.il
  %i.lj = add i64 %i.li, -16                      ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.lj ; 2 uses
  %.val3.i65.i.i.i.i = load <16 x i8>, ptr %i.lk, align 1, !alias.scope !13723, !noalias !13727
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %storemerge105108.i.i.i.i
  %.val.i66.i.i.i.i = load <16 x i8>, ptr %i.ll, align 1, !alias.scope !13723, !noalias !13727
  %i.lm = icmp eq <16 x i8> %.val3.i65.i.i.i.i, %i.jh
  %i.ln = icmp eq <16 x i8> %.val.i66.i.i.i.i, %i.ji
  %narrow.i67.i.i.i.i = select <16 x i1> %i.lm, <16 x i1> %i.ln, <16 x i1> zeroinitializer
  %i.lo = bitcast <16 x i1> %narrow.i67.i.i.i.i to i16 ; 2 uses
  %i.lp = icmp eq i16 %i.lo, 0
  br i1 %i.lp, label %bb.en, label %bb.eo

end_hunk_0
