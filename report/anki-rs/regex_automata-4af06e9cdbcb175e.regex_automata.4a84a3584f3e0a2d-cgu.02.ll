Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.02?download=true
inline.NumInlined: 351
inline.NumDeleted: 158
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN77_$LT$regex_automata..dfa..dense..DFA$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h61958c5321ead2afE":.split

bb.j:                                             ; preds = %bb.i
  %i.ct = sub nuw i64 %.sroa.17173.0270, %i.cc
  %i.cu = udiv i64 %i.ct, %i.ca                   ; 3 uses
  %i.cv = icmp ugt i64 %i.cu, 2147483646
  br i1 %i.cv, label %bb.k, label %bb.ae

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !821
  store i64 %i.cu, ptr %i.a, align 8, !noalias !821
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @170, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @172, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #15, !noalias !821
  unreachable

._crit_edge:                                      ; preds = %bb.af, %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cy = load i64, ptr %i.cx, align 16, !noundef !3 ; 2 uses
  %i.cz = icmp ugt i64 %i.cy, 1
  br i1 %i.cz, label %bb.l, label %.loopexit212

bb.l:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr @213, ptr %i.t, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.dd, align 8
  %.val106 = load ptr, ptr %1, align 8
  %.val107 = load ptr, ptr %i.af, align 8
  %i.de = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val106, ptr %.val107, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.de, label %bb.s, label %bb.m

.loopexit212:                                     ; preds = %bb.aa, %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit", %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.df = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
  %i.dg = extractvalue { ptr, i64 } %i.df, 1
  %i.dh = lshr i64 %i.dg, %i.an
  store i64 %i.dh, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.k, ptr %i.j, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.465.0..sroa_idx, align 8
  store ptr @215, ptr %i.l, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.j, ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %i.dl, align 8
  %.val104 = load ptr, ptr %1, align 8
  %.val105 = load ptr, ptr %i.af, align 8
  %i.dm = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val104, ptr %.val105, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.dm, label %bb.s, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dn = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw)
  %i.do = extractvalue { ptr, i64 } %i.dn, 1
  %i.dp = and i64 %i.do, 1                        ; 2 uses
  store i64 %i.dp, ptr %i.c, align 8, !noalias !824
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit", label %bb.n, !prof !46

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !824
  store ptr null, ptr %i.b, align 8, !noalias !824
  call void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @41, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #15
  unreachable

"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit": ; preds = %bb.m
  %i.dr = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw)
  %i.ds = extractvalue { ptr, i64 } %i.dr, 1
  %i.dt = lshr i64 %i.ds, 1                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not278 = icmp eq i64 %i.dt, 0
  br i1 %.not278, label %.loopexit212, label %.lr.ph276

.lr.ph276:                                        ; preds = %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$3len17ha585c9218230233cE.exit"
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.dy = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.eh = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph276, %bb.aa
  %.sroa.052.1275 = phi i64 [ 1, %.lr.ph276 ], [ %.sroa.052.1, %bb.aa ] ; 3 uses
  %.sroa.052.0274 = phi i64 [ 0, %.lr.ph276 ], [ %.sroa.052.1275, %bb.aa ] ; 2 uses
  %i.ej = call fastcc noundef i32 @"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$14match_state_id17h324a25385811ea4cE"(ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(800) %0, i64 noundef %.sroa.052.0274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ek = load i32, ptr %i.du, align 8, !noundef !3
  %i.el = and i32 %i.ek, 8388608
  %i.em = icmp eq i32 %i.el, 0
  %i.en = zext nneg i32 %i.ej to i64
  %i.eo = select i1 %i.em, i64 %i.an, i64 0
  %storemerge = lshr i64 %i.en, %i.eo
  store i64 %storemerge, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store ptr %i.s, ptr %i.q, align 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.457.0..sroa_idx, align 8
  store ptr @224, ptr %i.r, align 8
  store i64 2, ptr %i.dv, align 8
  store ptr @225, ptr %i.dw, align 8
  store i64 1, ptr %i.dx, align 8
  store ptr %i.q, ptr %i.dy, align 8
  store i64 1, ptr %i.dz, align 8
  %.val96 = load ptr, ptr %1, align 8
  %.val97 = load ptr, ptr %i.af, align 8
  %i.ep = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val96, ptr %.val97, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br i1 %i.ep, label %.loopexit213, label %bb.t

bb.p:                                             ; preds = %.loopexit212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.cy, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE", ptr %.sroa.469.0..sroa_idx, align 8
  store ptr @217, ptr %i.i, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 2, ptr %i.eq, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.g, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %i.et, align 8
  %.val102 = load ptr, ptr %1, align 8
  %.val103 = load ptr, ptr %i.af, align 8
  %i.eu = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val102, ptr %.val103, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.eu, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 792
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.ev, ptr %i.e, align 8
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN70_$LT$regex_automata..dfa..dense..Flags$u20$as$u20$core..fmt..Debug$GT$3fmt17h856d3ebecb1eb9c4E", ptr %.sroa.473.0..sroa_idx, align 8
  store ptr @219, ptr %i.f, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.ew, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.ex, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.ez, align 8
  %.val100 = load ptr, ptr %1, align 8
  %.val101 = load ptr, ptr %i.af, align 8
  %i.fa = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val100, ptr %.val101, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.fa, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @221, ptr %i.d, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.fb, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.fe, align 8
  %.val98 = load ptr, ptr %1, align 8
  %.val99 = load ptr, ptr %i.af, align 8
  %i.ff = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val98, ptr %.val99, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %.loopexit212, %.split190, %.split, %bb.r, %bb.l, %.loopexit213, %.loopexit215, %.loopexit214
  %.sroa.0.0 = phi i1 [ %i.ff, %bb.r ], [ true, %.loopexit215 ], [ true, %.split190 ], [ true, %.loopexit214 ], [ true, %.split ], [ true, %.loopexit213 ], [ true, %bb.l ], [ true, %.loopexit212 ], [ true, %bb.p ], [ true, %bb.q ]
  ret i1 %.sroa.0.0

bb.t:                                             ; preds = %bb.o
  %i.fg = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw) ; 2 uses
  %i.fh = extractvalue { ptr, i64 } %i.fg, 1      ; 2 uses
  %i.fi = shl nuw i64 %.sroa.052.0274, 1          ; 4 uses
  %i.fj = icmp ult i64 %i.fi, %i.fh
  br i1 %i.fj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fk = extractvalue { ptr, i64 } %i.fg, 0
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fi
  %i.fm = load i32, ptr %i.fl, align 4, !noundef !3
  %i.fn = zext i32 %i.fm to i64                   ; 3 uses
  %i.fo = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.cw) ; 2 uses
  %i.fp = extractvalue { ptr, i64 } %i.fo, 1      ; 2 uses
  %i.fq = or disjoint i64 %i.fi, 1                ; 3 uses
  %i.fr = icmp ult i64 %i.fq, %i.fp
  br i1 %i.fr, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.t
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fi, i64 noundef %i.fh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #15
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.fs = extractvalue { ptr, i64 } %i.fo, 0
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  %i.fu = load i32, ptr %i.ft, align 4, !noundef !3 ; 3 uses
  %i.fv = zext i32 %i.fu to i64                   ; 2 uses
  %i.fw = call { ptr, i64 } @"_ZN88_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..convert..AsRef$LT$$u5b$T$u5d$$GT$$GT$6as_ref17h3da80e2adcdaf69aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ea) ; 2 uses
  %i.fx = extractvalue { ptr, i64 } %i.fw, 1      ; 2 uses
  %i.fy = add nuw nsw i64 %i.fv, %i.fn            ; 2 uses
  %.not.i = icmp ugt i64 %i.fy, %i.fx
  br i1 %.not.i, label %bb.y, label %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit", !prof !28

bb.x:                                             ; preds = %bb.u
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.fq, i64 noundef %i.fp, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #15
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_ZN4core5slice5index16slice_index_fail17h69cf93148e2c0fa9E(i64 noundef %i.fn, i64 noundef %i.fy, i64 noundef %i.fx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #15
  unreachable

"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit": ; preds = %bb.w
  %i.fz = extractvalue { ptr, i64 } %i.fw, 0      ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fn ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %.idx = shl nuw nsw i64 %i.fv, 2
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %.idx
  %i.gc = icmp eq i32 %i.fu, 0
  br i1 %i.gc, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel: ; preds = %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gd = load i32, ptr %i.ga, align 4, !noundef !3
  store i32 %i.gd, ptr %i.p, align 4
  %.val93.peel.pre = load ptr, ptr %i.af, align 8
  %.val92.peel.pre = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  store ptr @"_ZN80_$LT$regex_automata..util..primitives..PatternID$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3ee165d39ae4c17E", ptr %.sroa.461.0..sroa_idx, align 8
  store ptr @226, ptr %i.o, align 8
  store i64 1, ptr %i.eb, align 8
  store ptr null, ptr %i.ec, align 8
  store ptr %i.n, ptr %i.ed, align 8
  store i64 1, ptr %i.ee, align 8
  %i.ge = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val92.peel.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val93.peel.pre, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.ge, label %.loopexit338, label %bb.z

bb.z:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gf = icmp eq i32 %i.fu, 1
  br i1 %i.gf, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", label %.split205.preheader

.split205.preheader:                              ; preds = %bb.z
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  br label %.split205

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread": ; preds = %bb.ab, %bb.z, %"_ZN14regex_automata3dfa5dense20MatchStates$LT$T$GT$16pattern_id_slice17h4777e4e3c59b9c7fE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @213, ptr %i.m, align 8
  store i64 1, ptr %i.ef, align 8
  store ptr null, ptr %i.eg, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.eh, align 8
  store i64 0, ptr %i.ei, align 8
  %.val94 = load ptr, ptr %1, align 8
  %.val95 = load ptr, ptr %i.af, align 8
  %i.gh = call fastcc noundef zeroext i1 @_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE(ptr %.val94, ptr %.val95, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br i1 %i.gh, label %.loopexit213, label %bb.aa

bb.aa:                                            ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.gi = icmp samesign ult i64 %.sroa.052.1275, %i.dt ; 2 uses
  %i.gj = zext i1 %i.gi to i64
  %.sroa.052.1 = add nuw nsw i64 %.sroa.052.1275, %i.gj
  br i1 %i.gi, label %bb.o, label %.loopexit212

.loopexit213:                                     ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", %bb.o, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.s

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123: ; preds = %.split205
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %i.p, ptr %i.n, align 8
  store ptr @"_ZN80_$LT$regex_automata..util..primitives..PatternID$u20$as$u20$core..fmt..Debug$GT$3fmt17hb3ee165d39ae4c17E", ptr %.sroa.461.0..sroa_idx, align 8
  store ptr @226, ptr %i.o, align 8
  store i64 1, ptr %i.eb, align 8
  store ptr null, ptr %i.ec, align 8
  store ptr %i.n, ptr %i.ed, align 8
  store i64 1, ptr %i.ee, align 8
  %.val92 = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %.val93 = load ptr, ptr %i.af, align 8, !nonnull !3, !noundef !3
  %i.gk = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val92, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val93, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br i1 %i.gk, label %.loopexit338, label %bb.ab

.split205:                                        ; preds = %.split205.preheader, %bb.ab
  %.sroa.0179.0272 = phi ptr [ %i.gl, %bb.ab ], [ %i.gg, %.split205.preheader ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0179.0272, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.gm = load i32, ptr %.sroa.0179.0272, align 4, !noundef !3
  store i32 %i.gm, ptr %i.p, align 4
  %.val91 = load ptr, ptr %i.af, align 8
  %.val90 = load ptr, ptr %1, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.val91, i64 24
  %i.go = load ptr, ptr %i.gn, align 8, !invariant.load !3, !noalias !827, !nonnull !3
  %i.gp = call noundef zeroext i1 %i.go(ptr noundef nonnull align 1 %.val90, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @182, i64 noundef 2), !noalias !827, !inline_history !793
  br i1 %i.gp, label %.loopexit, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123

.loopexit338:                                     ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123.peel, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.loopexit

bb.ab:                                            ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gq = icmp eq ptr %i.gl, %i.gb
  br i1 %i.gq, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h15d2ca541f349dd5E.exit.thread", label %.split205, !llvm.loop !830

.loopexit:                                        ; preds = %.split205, %.loopexit338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %.loopexit213

bb.ac:                                            ; preds = %bb.i
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.17173.0270
  %i.gs = load i32, ptr %i.gr, align 4, !noalias !814, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %switch.idx.cast.i.i, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.gt = load i32, ptr %i.cd, align 8, !noundef !3
  %i.gu = and i32 %i.gt, 8388608
  %i.gv = icmp eq i32 %i.gu, 0
  %i.gw = zext i32 %i.gs to i64
  %i.gx = select i1 %i.gv, i64 %i.an, i64 0
  %storemerge77.jt1 = lshr i64 %i.gw, %i.gx
  store i64 %storemerge77.jt1, ptr %i.z, align 8
  %i.gy = icmp eq i64 %i.cp, 0
  br i1 %i.gy, label %.split207, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

bb.ad:                                            ; preds = %switch.lookup.i.i
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.17173.0270
  %i.ha = load i32, ptr %i.gz, align 4, !noalias !814, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %switch.idx.cast.i.i, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.hb = load i32, ptr %i.cd, align 8, !noundef !3
  %i.hc = and i32 %i.hb, 8388608
  %i.hd = icmp eq i32 %i.hc, 0
  %i.he = zext i32 %i.ha to i64
  %i.hf = select i1 %i.hd, i64 %i.an, i64 0
  %storemerge77.jt0 = lshr i64 %i.he, %i.hf
  store i64 %storemerge77.jt0, ptr %i.z, align 8
  %i.hg = icmp eq i64 %i.cp, 0
  br i1 %i.hg, label %.split206, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

bb.ae:                                            ; preds = %bb.j
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.17173.0270
  %i.hi = load i32, ptr %i.hh, align 4, !noalias !814, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i8 %switch.idx.cast.i.i, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.hj = load i32, ptr %i.cd, align 8, !noundef !3
  %i.hk = and i32 %i.hj, 8388608
  %i.hl = icmp eq i32 %i.hk, 0
  %i.hm = zext i32 %i.hi to i64
  %i.hn = select i1 %i.hl, i64 %i.an, i64 0
  %storemerge77.jt2 = lshr i64 %i.hm, %i.hn
  store i64 %storemerge77.jt2, ptr %i.z, align 8
  %i.ho = icmp eq i64 %i.cp, 0
  br i1 %i.ho, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit143, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit148

.split206:                                        ; preds = %bb.ad
  %.val89 = load ptr, ptr %i.af, align 8
  %.val88 = load ptr, ptr %1, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.val89, i64 24
end_hunk_0
