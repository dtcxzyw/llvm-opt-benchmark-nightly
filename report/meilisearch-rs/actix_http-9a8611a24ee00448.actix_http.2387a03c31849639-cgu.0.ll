inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$16FindLongestMatch17h6aba72419c60e38eE":bb.a

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3180
  store ptr @230, ptr %i.a, align 8, !noalias !3180
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !3180
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !3180
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !3180
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !3180
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @867) #46, !noalias !3180
  unreachable

_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit: ; preds = %bb.n
  %.sroa.020.0.copyload = load i32, ptr %i.n, align 1, !alias.scope !3183, !noalias !3187
  %i.cf = zext i32 %.sroa.020.0.copyload to i64
  %i.cg = mul nuw nsw i64 %i.cf, 506832829
  %i.ch = lshr i64 %i.cg, 17
  %i.ci = and i64 %i.ch, 32767                    ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val112 = load i64, ptr %i.cj, align 8, !noundef !4 ; 2 uses
  %i.ck = shl nuw nsw i64 %i.ci, 8                ; 3 uses
  %.not103 = icmp ugt i64 %i.ck, %.val112
  br i1 %.not103, label %bb.p, label %bb.q, !prof !282

bb.p:                                             ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @230, ptr %i.e, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.co, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @252) #46
  unreachable

bb.q:                                             ; preds = %_ZN6brotli3enc11static_dict23BROTLI_UNALIGNED_LOAD3217hd04eb045649540dbE.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.cp, align 8, !nonnull !4, !align !131, !noundef !4
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.ck ; 3 uses
  %i.cr = sub nuw i64 %.val112, %i.ck
  %i.cs = icmp ugt i64 %i.cr, 255
  br i1 %i.cs, label %bb.s, label %bb.r, !prof !337

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @230, ptr %i.d, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.cw, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @253) #46
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val114 = load i64, ptr %i.cx, align 8, !noundef !4 ; 2 uses
  %i.cy = icmp ugt i64 %.val114, %i.ci
  br i1 %i.cy, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.val113 = load ptr, ptr %0, align 8, !nonnull !4, !align !130, !noundef !4
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.val113, i64 %i.ci ; 7 uses
  %i.da = load i16, ptr %i.cz, align 2, !noundef !4 ; 2 uses
  %i.db = icmp ugt i16 %i.da, 256
  %i.dc = zext i16 %i.da to i64                   ; 3 uses
  %i.dd = add nsw i64 %i.dc, -256
  %.sroa.050.0 = select i1 %i.db, i64 %i.dd, i64 0 ; 3 uses
  %i.de = icmp ult i64 %i.bv, %3
  br i1 %i.de, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.s
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ci, i64 noundef %.val114, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @254) #46
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.df = icmp ult i64 %.sroa.050.0, %i.dc
  br i1 %i.df, label %.lr.ph188.lr.ph, label %.loopexit

.lr.ph188.lr.ph:                                  ; preds = %bb.v
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 %i.bv
  %i.dh = load i8, ptr %i.dg, align 1, !noundef !4
  %i.di = zext i32 %i.p to i64
  br label %.lr.ph188

bb.w:                                             ; preds = %bb.t
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bv, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @255) #46
  unreachable

bb.x:                                             ; preds = %.lr.ph188, %bb.am
  %.sroa.051.0187 = phi i64 [ %.sroa.051.0.ph193, %.lr.ph188 ], [ %i.dj, %bb.am ]
  %i.dj = add nsw i64 %.sroa.051.0187, -1         ; 5 uses
  %i.dk = and i64 %i.dj, 255
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !noundef !4
  %i.dn = zext i32 %i.dm to i64                   ; 2 uses
  %i.do = sub i64 %7, %i.dn                       ; 3 uses
  %i.dp = icmp ugt i64 %i.do, %9
  br i1 %i.dp, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = and i64 %4, %i.dn                       ; 7 uses
  %i.dr = add i64 %i.dq, %.sroa.015.1.ph196       ; 4 uses
  %i.ds = icmp ugt i64 %i.dr, %4
  br i1 %i.ds, label %bb.am, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dt = icmp ult i64 %i.dr, %3
  br i1 %i.dt, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %i.dr
  %i.dv = load i8, ptr %i.du, align 1, !noundef !4
  %.not104 = icmp eq i8 %.sroa.054.0.ph194, %i.dv
  br i1 %.not104, label %bb.ac, label %bb.am

bb.ab:                                            ; preds = %bb.z
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dr, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @256) #46
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %.not105 = icmp ugt i64 %i.dq, %3
  br i1 %.not105, label %bb.ad, label %bb.ae, !prof !282

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @230, ptr %i.c, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.dw, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.dz, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @257) #46
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 %i.dq
  %i.eb = sub nuw i64 %3, %i.dq
  %i.ec = tail call noundef i64 @_ZN6brotli3enc11static_dict24FindMatchLengthWithLimit17h50d1a297b15ad288E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ea, i64 noundef %i.eb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8) ; 4 uses
  %i.ed = icmp ugt i64 %i.ec, 3
  br i1 %i.ed, label %bb.af, label %.outer

.outer:                                           ; preds = %bb.ak, %bb.ah, %bb.ae
  %.sroa.054.1 = phi i8 [ %.sroa.054.0.ph194, %bb.ae ], [ %i.eu, %bb.ak ], [ %.sroa.054.0.ph194, %bb.ah ]
  %.sroa.027.4 = phi i1 [ %.sroa.027.2.ph195, %bb.ae ], [ true, %bb.ak ], [ %.sroa.027.2.ph195, %bb.ah ] ; 2 uses
  %.sroa.015.2 = phi i64 [ %.sroa.015.1.ph196, %bb.ae ], [ %.sroa.061.0, %bb.ak ], [ %.sroa.015.1.ph196, %bb.ah ]
  %.sroa.011.2 = phi i64 [ %.sroa.011.1.ph197, %bb.ae ], [ %i.eo, %bb.ak ], [ %.sroa.011.1.ph197, %bb.ah ]
  %i.ee = icmp ugt i64 %i.dj, %.sroa.050.0
  br i1 %i.ee, label %.lr.ph188, label %.loopexit

.lr.ph188:                                        ; preds = %.lr.ph188.lr.ph, %.outer
  %.sroa.011.1.ph197 = phi i64 [ %.sroa.011.0.ph.lcssa62, %.lr.ph188.lr.ph ], [ %.sroa.011.2, %.outer ] ; 3 uses
  %.sroa.015.1.ph196 = phi i64 [ %.sroa.015.0.ph.lcssa66, %.lr.ph188.lr.ph ], [ %.sroa.015.2, %.outer ] ; 3 uses
  %.sroa.027.2.ph195 = phi i1 [ %.sroa.027.0.ph.lcssa70, %.lr.ph188.lr.ph ], [ %.sroa.027.4, %.outer ] ; 4 uses
  %.sroa.054.0.ph194 = phi i8 [ %i.dh, %.lr.ph188.lr.ph ], [ %.sroa.054.1, %.outer ] ; 3 uses
  %.sroa.051.0.ph193 = phi i64 [ %i.dc, %.lr.ph188.lr.ph ], [ %i.dj, %.outer ]
  br label %bb.x

bb.af:                                            ; preds = %bb.ae
  br i1 %.not110, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ef = icmp ult i64 %i.dq, %5
  %i.eg = add i64 %i.ec, %i.dq
  %i.eh = icmp ugt i64 %i.eg, %5
  %or.cond2 = and i1 %i.ef, %i.eh
  %i.ei = sub nuw i64 %5, %i.dq
  %spec.select = select i1 %or.cond2, i64 %i.ei, i64 %i.ec
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sroa.061.0 = phi i64 [ %i.ec, %bb.af ], [ %spec.select, %bb.ag ] ; 4 uses
  %i.ej = mul i64 %.sroa.061.0, %i.di
  %i.ek = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.do, i1 false)
  %i.el = xor i64 %i.ek, 63
  %.neg = mul nsw i64 %i.el, -120
  %i.em = add nsw i64 %.neg, 7680
  %i.en = add i64 %i.em, %i.ej
  %i.eo = lshr i64 %i.en, 2                       ; 3 uses
  %i.ep = icmp ult i64 %.sroa.011.1.ph197, %i.eo
  br i1 %i.ep, label %bb.ai, label %.outer

bb.ai:                                            ; preds = %bb.ah
  store i64 %.sroa.061.0, ptr %11, align 8
  store i64 %i.do, ptr %i.q, align 8
  store i64 %i.eo, ptr %i.i, align 8
  %i.eq = add i64 %.sroa.061.0, %i.h              ; 4 uses
  %i.er = icmp ugt i64 %i.eq, %4
  br i1 %i.er, label %.loopexit.thread, label %bb.aj

.loopexit.thread:                                 ; preds = %bb.ai
  %12 = load i16, ptr %i.cz, align 2, !noundef !4
  %13 = and i16 %12, 255
  %14 = zext nneg i16 %13 to i64
  %15 = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %14
  %16 = trunc i64 %7 to i32
  store i32 %16, ptr %15, align 4
  %17 = load i16, ptr %i.cz, align 2, !noundef !4
  %18 = add i16 %17, 1
  store i16 %18, ptr %i.cz, align 2
  br label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit

bb.aj:                                            ; preds = %bb.ai
  %i.es = icmp ult i64 %i.eq, %3
  br i1 %i.es, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  %i.eu = load i8, ptr %i.et, align 1, !noundef !4
  br label %.outer

bb.al:                                            ; preds = %bb.aj
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.eq, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @258) #46
  unreachable

bb.am:                                            ; preds = %bb.aa, %bb.y
  %i.ev = icmp ugt i64 %i.dj, %.sroa.050.0
  br i1 %i.ev, label %bb.x, label %.loopexit

.loopexit:                                        ; preds = %.outer, %bb.am, %bb.x, %bb.v
  %.sroa.027.3 = phi i1 [ %.sroa.027.0.ph.lcssa70, %bb.v ], [ %.sroa.027.2.ph195, %bb.am ], [ %.sroa.027.2.ph195, %bb.x ], [ %.sroa.027.4, %.outer ]
  %i.ew = load i16, ptr %i.cz, align 2, !noundef !4
  %i.ex = and i16 %i.ew, 255
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ey
  %i.fa = trunc i64 %7 to i32
  store i32 %i.fa, ptr %i.ez, align 4
  %i.fb = load i16, ptr %i.cz, align 2, !noundef !4
  %i.fc = add i16 %i.fb, 1
  store i16 %i.fc, ptr %i.cz, align 2
  br i1 %.sroa.027.3, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.j
  %.not107 = icmp eq ptr %1, null
  br i1 %.not107, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.ao

_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit: ; preds = %.loopexit.thread, %.loopexit, %bb.aw, %bb.av, %bb.au, %bb.aq, %bb.an, %bb.j
  %.sroa.027.7 = phi i1 [ true, %bb.j ], [ false, %bb.an ], [ false, %bb.aq ], [ %.sroa.05.1.i, %bb.au ], [ %.sroa.05.1.i, %bb.av ], [ true, %bb.aw ], [ true, %.loopexit ], [ true, %.loopexit.thread ]
  ret i1 %.sroa.027.7

bb.ao:                                            ; preds = %bb.an
  br i1 %i.l, label %bb.ap, label %bb.aq, !prof !282

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @230, ptr %i.b, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.fd, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.fg, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #46
  unreachable

bb.aq:                                            ; preds = %bb.ao
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3189)
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fi = load i64, ptr %i.fh, align 8, !alias.scope !3189, !noalias !3192, !noundef !4 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8, !alias.scope !3189, !noalias !3192, !noundef !4 ; 3 uses
  %i.fl = lshr i64 %i.fk, 7
  %i.fm = icmp ult i64 %i.fi, %i.fl
  br i1 %i.fm, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fn = tail call noundef i32 @_ZN6brotli3enc19backward_references6Hash1417h7d738d9067f11999E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m), !noalias !3196
  %i.fo = shl i32 %i.fn, 1                        ; 2 uses
  %i.fp = zext i32 %i.fo to i64                   ; 2 uses
  %exitcond.not.i = icmp ugt i32 %i.fo, 32767
  br i1 %exitcond.not.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr @_ZN6brotli3enc15dictionary_hash21kStaticDictionaryHash17hedb611fb812677b0E, i64 %i.fp ; 2 uses
  %i.fr = load i16, ptr %i.fq, align 2, !noalias !3197, !noundef !4 ; 2 uses
  %i.fs = add i64 %i.fk, 1
  store i64 %i.fs, ptr %i.fj, align 8, !alias.scope !3189, !noalias !3192
  %i.ft = icmp eq i16 %i.fr, 0
  br i1 %i.ft, label %bb.au, label %bb.ax

bb.at:                                            ; preds = %bb.ar
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.fp, i64 noundef 32768, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1080) #46, !noalias !3196
  unreachable

bb.au:                                            ; preds = %bb.ay, %bb.ax, %bb.as
  %i.fu = phi i64 [ %i.fi, %bb.as ], [ %i.fi, %bb.ax ], [ %i.gg, %bb.ay ]
  %.sroa.05.1.i = phi i1 [ false, %bb.as ], [ false, %bb.ax ], [ true, %bb.ay ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 2
  %i.fw = load i16, ptr %i.fv, align 2, !noalias !3197, !noundef !4 ; 2 uses
  %i.fx = add i64 %i.fk, 2
  store i64 %i.fx, ptr %i.fj, align 8, !alias.scope !3189, !noalias !3192
  %i.fy = icmp eq i16 %i.fw, 0
  br i1 %i.fy, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fz = zext i16 %i.fw to i64
  %i.ga = tail call noundef i32 @_ZN6brotli3enc19backward_references24TestStaticDictionaryItem17hd6c51495e38b9278E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.fz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !noalias !3189
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gc = add i64 %i.fu, 1
  store i64 %i.gc, ptr %i.fh, align 8, !alias.scope !3189, !noalias !3192
  br label %_ZN6brotli3enc19backward_references24SearchInStaticDictionary17h11261bc7b4a313e6E.exit

bb.ax:                                            ; preds = %bb.as
  %i.gd = zext i16 %i.fr to i64
  %i.ge = tail call noundef i32 @_ZN6brotli3enc19backward_references24TestStaticDictionaryItem17hd6c51495e38b9278E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef %i.gd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %11), !noalias !3189
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.au, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gg = add i64 %i.fi, 1                        ; 2 uses
  store i64 %i.gg, ptr %i.fh, align 8, !alias.scope !3189, !noalias !3192
  br label %bb.au

bb.az:                                            ; preds = %.lr.ph.split.split, %bb.bi
  %i.gh = phi i64 [ %.us-phi179, %.lr.ph.split.split ], [ %i.hm, %bb.bi ] ; 3 uses
  %.sroa.063.071 = phi i64 [ %.us-phi178, %.lr.ph.split.split ], [ %i.gh, %bb.bi ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr @260, i64 %.sroa.063.071
  %i.gj = load i8, ptr %i.gi, align 1, !noundef !4
  %i.gk = zext i8 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !noundef !4
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @261, i64 %.sroa.063.071
  %i.gp = load i8, ptr %i.go, align 1, !noundef !4
  %i.gq = sext i8 %i.gp to i64
  %i.gr = add nsw i64 %i.gq, %i.gn                ; 2 uses
  %i.gs = sub i64 %7, %i.gr                       ; 2 uses
  %i.gt = icmp uge i64 %i.gs, %7
  %i.gu = icmp ugt i64 %i.gr, %9
  %or.cond3 = or i1 %i.gu, %i.gt
  br i1 %or.cond3, label %bb.bi, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gv = and i64 %i.gs, %4
  %i.gw = add i64 %i.gv, %.us-phi176
  %i.gx = icmp ugt i64 %i.gw, %4
  br i1 %i.gx, label %bb.bi, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi174, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #46
  unreachable

.split.us:                                        ; preds = %bb.g, %bb.c
  %.us-phi180 = phi i64 [ %i.ak, %bb.c ], [ %i.bm, %bb.g ]
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.us-phi180, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #46
  unreachable

bb.bc:                                            ; preds = %.split113.us
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 %i.bl
  %i.gz = sub nuw i64 %3, %i.bl
  %i.ha = tail call noundef i64 @_ZN6brotli3enc11static_dict24FindMatchLengthWithLimit17h50d1a297b15ad288E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gy, i64 noundef %i.gz, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, i64 noundef %i.m, i64 noundef %8) ; 5 uses
  %i.hb = icmp ugt i64 %i.ha, 2
  br i1 %i.hb, label %bb.be, label %bb.bd

.split185.us:                                     ; preds = %.split113.us, %.split113.us.us
  %.us-phi186 = phi i64 [ %i.aj, %.split113.us.us ], [ %i.bl, %.split113.us ]
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.us-phi186, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #46
  unreachable

.split173.us:                                     ; preds = %.split113.us.us
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.h, i64 noundef %3, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @264) #46
  unreachable

bb.bd:                                            ; preds = %bb.bc
  %i.hc = icmp eq i64 %i.ha, 2
  %i.hd = icmp samesign ult i64 %.sroa.063.071.us109, 2
  %or.cond = and i1 %i.hd, %i.hc
  br i1 %or.cond, label %bb.be, label %.outer27

bb.be:                                            ; preds = %bb.bd, %bb.bc
  br i1 %.not110, label %bb.bg, label %bb.bf

.outer27:                                         ; preds = %bb.bh, %bb.bg, %bb.bd
  %.sroa.027.8 = phi i1 [ %.sroa.027.0.ph161, %bb.bd ], [ true, %bb.bh ], [ %.sroa.027.0.ph161, %bb.bg ] ; 2 uses
  %.sroa.015.4 = phi i64 [ %.sroa.015.0.ph162, %bb.bd ], [ %.sroa.037.0, %bb.bh ], [ %.sroa.015.0.ph162, %bb.bg ] ; 2 uses
  %.sroa.011.4 = phi i64 [ %.sroa.011.0.ph163, %bb.bd ], [ %i.hk, %bb.bh ], [ %.sroa.011.0.ph163, %bb.bg ] ; 2 uses
  %i.he = icmp ult i64 %i.ax, 16
  %i.hf = add nuw nsw i64 %i.ax, 1
  br i1 %i.he, label %.lr.ph, label %.outer27._crit_edge

bb.bf:                                            ; preds = %bb.be
  %i.hg = icmp ult i64 %i.bl, %5
  %i.hh = add i64 %i.ha, %i.bl
  %i.hi = icmp ugt i64 %i.hh, %5
  %or.cond5 = and i1 %i.hg, %i.hi
  %i.hj = sub nuw i64 %5, %i.bl
  %spec.select111 = select i1 %or.cond5, i64 %i.hj, i64 %i.ha
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.sroa.037.0 = phi i64 [ %i.ha, %bb.be ], [ %spec.select111, %bb.bf ] ; 3 uses
  %i.hk = tail call noundef i64 @_ZN6brotli3enc19backward_references41BackwardReferenceScoreUsingLastDistanceH917hb2c0215381d82072E(i64 noundef %.sroa.037.0, i64 noundef %.sroa.063.071.us109, i32 noundef %i.p) ; 3 uses
  %i.hl = icmp ult i64 %.sroa.011.0.ph163, %i.hk
  br i1 %i.hl, label %bb.bh, label %.outer27

bb.bh:                                            ; preds = %bb.bg
  store i64 %.sroa.037.0, ptr %11, align 8
  store i64 %i.bh, ptr %i.q, align 8
  store i64 %i.hk, ptr %i.i, align 8
  br label %.outer27

bb.bi:                                            ; preds = %bb.ba, %bb.az
  %i.hm = add i64 %i.gh, 1
  %exitcond270.not = icmp eq i64 %i.gh, 16
  br i1 %exitcond270.not, label %.outer27._crit_edge, label %bb.az
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN113_$LT$brotli..enc..backward_references..H9$LT$Alloc$GT$$u20$as$u20$brotli..enc..backward_references..AnyHasher$GT$5Store17h5550931a7ee766cdE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = and i64 %4, %3                           ; 3 uses
  %.not = icmp ugt i64 %i.c, %2
  br i1 %.not, label %bb.b, label %bb.c, !prof !282

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @230, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.g, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #46
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %2, %i.c
  %i.i = icmp ugt i64 %i.h, 3
end_hunk_0
