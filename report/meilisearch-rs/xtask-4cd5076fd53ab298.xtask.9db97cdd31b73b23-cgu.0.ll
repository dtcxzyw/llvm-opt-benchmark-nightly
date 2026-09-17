Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/xtask-4cd5076fd53ab298.xtask.9db97cdd31b73b23-cgu.0?download=true
inline.NumInlined: 15192
inline.NumDeleted: 6593
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 95
begin_hunk_0_@"_ZN4http6header3map18HeaderMap$LT$T$GT$15insert_occupied17h90cdeca53126b138E":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !20920)
  call void @llvm.experimental.noalias.scope.decl(metadata !20921)
  call void @llvm.experimental.noalias.scope.decl(metadata !20922)
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !20923, !noalias !20913, !nonnull !24, !align !31, !noundef !24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !20924, !nonnull !24, !noundef !24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !20923, !noalias !20913, !noundef !24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !20923, !noalias !20913, !noundef !24
  invoke void %i.co(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cr, i64 noundef %i.ct)
          to label %.body unwind label %bb.ak, !noalias !20913, !inline_history !5

bb.z:                                             ; preds = %bb.x
  %i.cu = icmp ult i64 %i.ci, %i.ay
  br i1 %i.cu, label %bb.ae, label %.invoke.i.i

bb.aa:                                            ; preds = %bb.x
  %i.cv = icmp ult i64 %i.ci, %i.d
  br i1 %i.cv, label %bb.ab, label %.invoke.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.cw = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.ci ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8, !range !36, !noalias !20913, !noundef !24
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.ac, label %.invoke106.i.i, !prof !29

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store i64 %.sroa.0.062.i, ptr %i.cz, align 8, !noalias !20913
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.da = trunc nuw i64 %i.cf to i1
  br i1 %i.da, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.z
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.ci ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 1, ptr %i.dc, align 8, !noalias !20913
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i64 %.sroa.0.062.i, ptr %i.dd, align 8, !noalias !20913
  br label %bb.ad

bb.af:                                            ; preds = %bb.ad
  %i.de = icmp ult i64 %i.cg, %i.ay
  br i1 %i.de, label %bb.aj, label %.invoke.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.df = icmp ult i64 %i.cg, %i.d
  br i1 %i.df, label %bb.ah, label %.invoke.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.dg = getelementptr inbounds nuw [104 x i8], ptr %i.g, i64 %i.cg ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !range !36, !noalias !20913, !noundef !24
  %i.di = trunc nuw i64 %i.dh to i1
  br i1 %i.di, label %bb.ai, label %.invoke106.i.i, !prof !29

bb.ai:                                            ; preds = %bb.ah
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i64 %.sroa.0.062.i, ptr %i.dj, align 8, !noalias !20913
  br label %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i

.invoke106.i.i:                                   ; preds = %bb.ah, %bb.ab
  %i.dk = phi ptr [ @589, %bb.ab ], [ @592, %bb.ah ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dk) #54
          to label %.cont107.i.i unwind label %bb.y, !noalias !20913

.cont107.i.i:                                     ; preds = %.invoke106.i.i
  unreachable

bb.aj:                                            ; preds = %bb.af
  %i.dl = getelementptr inbounds nuw [72 x i8], ptr %i.y, i64 %i.cg ; 2 uses
  store i64 1, ptr %i.dl, align 8, !noalias !20913
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.sroa.0.062.i, ptr %i.dm, align 8, !noalias !20913
  br label %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af, %bb.aa, %bb.z
  %i.dn = phi i64 [ %i.cg, %bb.ag ], [ %i.ci, %bb.z ], [ %i.ci, %bb.aa ], [ %i.cg, %bb.af ]
  %i.do = phi i64 [ %i.d, %bb.ag ], [ %i.ay, %bb.z ], [ %i.d, %bb.aa ], [ %i.ay, %bb.af ]
  %i.dp = phi ptr [ @591, %bb.ag ], [ @590, %bb.z ], [ @588, %bb.aa ], [ @593, %bb.af ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dn, i64 noundef %i.do, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dp) #54
          to label %.cont.i.i unwind label %bb.y, !noalias !20913

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ak:                                            ; preds = %bb.y
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !20913
  unreachable

_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i: ; preds = %bb.aj, %bb.ai, %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !20910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20913
  %i.dr = load i64, ptr %i.ae, align 8, !range !36, !noalias !20909, !noundef !24
  %i.ds = trunc nuw i64 %i.dr to i1
  br i1 %i.ds, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i
  %i.dt = load i64, ptr %i.af, align 8, !noalias !20909, !noundef !24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20925)
  call void @llvm.experimental.noalias.scope.decl(metadata !20926)
  call void @llvm.experimental.noalias.scope.decl(metadata !20927)
  call void @llvm.experimental.noalias.scope.decl(metadata !20928)
  %i.du = load ptr, ptr %i.ag, align 8, !alias.scope !20929, !noalias !20909, !nonnull !24, !align !31, !noundef !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !20930, !nonnull !24, !noundef !24
  %i.dx = load ptr, ptr %i.ai, align 8, !alias.scope !20929, !noalias !20909, !noundef !24
  %i.dy = load i64, ptr %i.aj, align 8, !alias.scope !20929, !noalias !20909, !noundef !24
  invoke void %i.dw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.dx, i64 noundef %i.dy)
          to label %.noexc12 unwind label %.loopexit, !inline_history !20896

.noexc12:                                         ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20909
  %i.dz = icmp ult i64 %i.dt, %i.ay
  br i1 %i.dz, label %bb.d, label %.invoke

bb.am:                                            ; preds = %_ZN4http6header3map18remove_extra_value17h007f757026106c68E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !20931)
  call void @llvm.experimental.noalias.scope.decl(metadata !20932)
  call void @llvm.experimental.noalias.scope.decl(metadata !20933)
  call void @llvm.experimental.noalias.scope.decl(metadata !20934)
  %i.ea = load ptr, ptr %i.ag, align 8, !alias.scope !20935, !noalias !20909, !nonnull !24, !align !31, !noundef !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ec = load ptr, ptr %i.eb, align 8, !noalias !20936, !nonnull !24, !noundef !24
  %i.ed = load ptr, ptr %i.ai, align 8, !alias.scope !20935, !noalias !20909, !noundef !24
  %i.ee = load i64, ptr %i.aj, align 8, !alias.scope !20935, !noalias !20909, !noundef !24
  invoke void %i.ec(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef %i.ed, i64 noundef %i.ee)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h6e3e06ac7d422988E.exit" unwind label %.loopexit.split-lp, !inline_history !20896

"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h6e3e06ac7d422988E.exit": ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20909
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h6e3e06ac7d422988E.exit"
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ef, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ef, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  ret void

bb.ao:                                            ; preds = %.body
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit": ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !24 ; 4 uses
  %i.d = icmp ult i64 %i.c, 88686269585142076
  tail call void @llvm.assume(i1 %i.d)
  %i.e = load i64, ptr %0, align 8, !range !34, !noundef !24
  %i.f = icmp eq i64 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !24 ; 7 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = mul nuw nsw i64 %i.c, 5
  %.not = icmp ult i64 %i.i, %i.h
  br i1 %.not, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = lshr i64 %i.h, 2
  %i.l = sub nuw i64 %i.h, %i.k
  %i.m = icmp eq i64 %i.c, %i.l
  br i1 %i.m, label %bb.m, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit"

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN4http6header3map6Danger7set_red17h996d9a7f1a8ce58cE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !24, !align !105, !noundef !24 ; 5 uses
  %i.p = load i64, ptr %i.g, align 8, !noundef !24 ; 2 uses
  %.idx = shl i64 %i.p, 2                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %.idx
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.s = add i64 %.idx, -4                        ; 2 uses
  %i.t = lshr exact i64 %i.s, 2
  %i.u = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 28
  br i1 %min.iters.check, label %.lr.ph.preheader41, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.u, 9223372036854775800      ; 3 uses
  %1 = shl i64 %n.vec, 2
  %2 = getelementptr i8, ptr %i.o, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.v = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.v
  %i.w = getelementptr i8, ptr %i.o, i64 %i.v
  %next.gep36 = getelementptr i8, ptr %i.w, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep36, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !20937

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader41

.lr.ph.preheader41:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.09.018.ph = phi ptr [ %i.o, %.lr.ph.preheader ], [ %2, %middle.block ]
  br label %.lr.ph

bb.e:                                             ; preds = %bb.b
  store i64 0, ptr %0, align 8
  %i.y = shl nuw nsw i64 %i.h, 1
  %i.z = tail call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %i.y)
  br i1 %i.z, label %bb.u, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit"

.lr.ph:                                           ; preds = %.lr.ph.preheader41, %.lr.ph
  %.sroa.09.018 = phi ptr [ %i.aa, %.lr.ph ], [ %.sroa.09.018.ph, %.lr.ph.preheader41 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 4 ; 2 uses
  store i16 -1, ptr %.sroa.09.018, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.018, i64 2
  store i16 0, ptr %i.ab, align 2
  %i.ac = icmp eq ptr %i.aa, %i.q
  br i1 %i.ac, label %._crit_edge, label %.lr.ph, !llvm.loop !20938

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20956)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !20956, !nonnull !24, !noundef !24 ; 2 uses
  %i.af = load i64, ptr %i.b, align 8, !alias.scope !20956, !noundef !24 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.af, 104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i16, ptr %i.ai, align 8, !alias.scope !20956 ; 3 uses
  %i.ak = load ptr, ptr %i.n, align 8, !alias.scope !20956, !nonnull !24, !align !105 ; 3 uses
  %i.al = load i64, ptr %i.g, align 8, !alias.scope !20956 ; 4 uses
  %i.am = zext i16 %i.aj to i64
  %.not47 = icmp eq i64 %i.al, 0
  %.not48 = icmp eq i64 %i.al, 0
  br label %bb.f

bb.f:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.sroa.0.035.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.an, %.backedge.i ] ; 3 uses
  %.sroa.7.034.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ao, %.backedge.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 104 ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.7.034.i, 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 64
  %i.aq = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noundef nonnull align 8 %i.ap) ; 4 uses
  %i.ar = and i16 %i.aq, %i.aj
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.035.i, i64 96
  store i16 %i.aq, ptr %i.at, align 8, !noalias !20956
  br label %.outer37

.outer37:                                         ; preds = %bb.i, %bb.f
  %.sroa.010.0.i.ph = phi i64 [ %i.bj, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %.sroa.04.0.i.ph = phi i64 [ %i.bk, %bb.i ], [ %i.as, %bb.f ] ; 2 uses
  %i.au = icmp ult i64 %.sroa.04.0.i.ph, %i.al    ; 2 uses
  %.not47.not = xor i1 %.not47, true
  %brmerge = or i1 %i.au, %.not47.not
  %.sroa.04.0.i.ph.mux = select i1 %i.au, i64 %.sroa.04.0.i.ph, i64 0 ; 5 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer37
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.sroa.04.0.i.ph.mux ; 3 uses
  %i.aw = load i16, ptr %i.av, align 2, !noalias !20956, !noundef !24
  %.not22.i = icmp eq i16 %i.aw, -1
  br i1 %.not22.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  %i.ay = load i16, ptr %i.ax, align 2, !noalias !20956, !noundef !24
  %i.az = and i16 %i.ay, %i.aj
  %i.ba = zext i16 %i.az to i64
  %i.bb = sub i64 %.sroa.04.0.i.ph.mux, %i.ba
  %i.bc = and i64 %i.bb, %i.am
  %i.bd = icmp samesign ult i64 %i.bc, %.sroa.010.0.i.ph
  br i1 %i.bd, label %bb.j, label %bb.i

bb.h:                                             ; preds = %.loopexit
  %i.be = trunc i64 %.sroa.7.034.i to i16
  store i16 %i.be, ptr %i.av, align 2, !noalias !20956
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.k, %bb.h
  %i.bf = phi i64 [ %.sroa.04.0.i.ph.mux, %bb.h ], [ %.sroa.013.0.i.ph.mux, %bb.k ]
  %.sink.i = phi i16 [ %i.aq, %bb.h ], [ %.sroa.618.0.i.ph, %bb.k ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  store i16 %.sink.i, ptr %i.bh, align 2, !noalias !20956
  %i.bi = icmp eq ptr %i.an, %i.ag
  br i1 %i.bi, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit", label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.bj = add nuw nsw i64 %.sroa.010.0.i.ph, 1
  %i.bk = add nuw i64 %.sroa.04.0.i.ph.mux, 1
  br label %.outer37

bb.j:                                             ; preds = %bb.g
  %i.bl = trunc i64 %.sroa.7.034.i to i16
  br label %.outer

.outer:                                           ; preds = %bb.l, %bb.j
  %.sroa.013.0.i.ph = phi i64 [ %i.bs, %bb.l ], [ %.sroa.04.0.i.ph.mux, %bb.j ] ; 2 uses
  %.sroa.016.0.i.ph = phi i16 [ %i.bo, %bb.l ], [ %i.bl, %bb.j ] ; 2 uses
  %.sroa.618.0.i.ph = phi i16 [ %i.br, %bb.l ], [ %i.aq, %bb.j ] ; 2 uses
  %i.bm = icmp ult i64 %.sroa.013.0.i.ph, %i.al   ; 2 uses
  %.not48.not = xor i1 %.not48, true
  %brmerge53 = or i1 %i.bm, %.not48.not
  %.sroa.013.0.i.ph.mux = select i1 %i.bm, i64 %.sroa.013.0.i.ph, i64 0 ; 3 uses
  br i1 %brmerge53, label %.loopexit46, label %infloop52

.loopexit46:                                      ; preds = %.outer
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.sroa.013.0.i.ph.mux ; 4 uses
  %i.bo = load i16, ptr %i.bn, align 2, !noalias !20956, !noundef !24 ; 2 uses
  %i.bp = icmp eq i16 %i.bo, -1
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.loopexit46
  store i16 %.sroa.016.0.i.ph, ptr %i.bn, align 2, !noalias !20956
  br label %.backedge.i

bb.l:                                             ; preds = %.loopexit46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 2 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 2, !noalias !20956, !noundef !24
  store i16 %.sroa.016.0.i.ph, ptr %i.bn, align 2, !noalias !20956
  store i16 %.sroa.618.0.i.ph, ptr %i.bq, align 2, !noalias !20956
  %i.bs = add nuw i64 %.sroa.013.0.i.ph.mux, 1
  br label %.outer

"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit": ; preds = %.backedge.i, %._crit_edge, %bb.p, %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit", %bb.c, %bb.e
  br label %bb.u

bb.m:                                             ; preds = %bb.c
  %i.bt = icmp eq i64 %i.c, 0
  br i1 %i.bt, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.bu, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !20957
  %i.bv = tail call noundef align 2 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, 9) 2) #47, !noalias !20957 ; 4 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.o, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.n
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.bv, align 2, !noalias !20958
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.bx, align 2, !noalias !20958
  %i.by = icmp eq i64 %i.h, 0
  br i1 %i.by, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i"

bb.o:                                             ; preds = %bb.n
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @571) #54, !noalias !20959
  unreachable

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i": ; preds = %.lr.ph.i.i.preheader
  %.val = load ptr, ptr %i.j, align 8, !nonnull !24, !noundef !24
  %i.bz = shl nuw nsw i64 %i.h, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bz, i64 noundef 2) #47
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit"

bb.p:                                             ; preds = %bb.m
  %i.ca = shl i64 %i.h, 1
  %i.cb = tail call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias noundef align 8 dereferenceable(96) %0, i64 noundef %i.ca)
  br i1 %i.cb, label %bb.u, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit"

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i", %.lr.ph.i.i.preheader
  store ptr %i.bv, ptr %i.j, align 8
  store i64 8, ptr %i.g, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !20960
  %i.cc = tail call noundef align 8 dereferenceable_or_null(624) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 624, i64 noundef range(i64 1, 9) 8) #47, !noalias !20960 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.q, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit"

bb.q:                                             ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 624, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #54
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20961)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.val.i = load ptr, ptr %i.ce, align 8, !alias.scope !20961, !nonnull !24, !noundef !24 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$u5b$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$u5d$$GT$17hf1eb4dfc17aacc06E"(ptr noalias noundef nonnull align 8 %.val.i, i64 noundef 0)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i" unwind label %bb.r, !noalias !20961

bb.r:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit"
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %.val4.i = load i64, ptr %i.a, align 8, !range !30, !alias.scope !20961, !noundef !24 ; 2 uses
  %i.cg = icmp eq i64 %.val4.i, 0
  br i1 %i.cg, label %.body, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = mul nuw i64 %.val4.i, 104
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !20961
  br label %.body

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit"
end_hunk_0
begin_hunk_1_@"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE":bb.a
  store ptr %i.cc, ptr %i.ce, align 8
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit"

bb.u:                                             ; preds = %bb.p, %bb.e, %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit"
  %.sroa.0.0 = phi i1 [ true, %bb.e ], [ false, %"_ZN4http6header3map18HeaderMap$LT$T$GT$7rebuild17hd64514e5cf81fc51E.exit" ], [ true, %bb.p ]
  ret i1 %.sroa.0.0

infloop:                                          ; preds = %.outer37, %infloop
  br label %infloop

infloop52:                                        ; preds = %.outer, %infloop52
  br label %infloop52
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdaa4f007e59bac81E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i16 noundef %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !24 ; 5 uses
  %i.d = icmp ult i64 %i.c, 88686269585142076
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %i.c, 32767        ; 2 uses
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i16 %1, ptr %i.i, align 8
  store i64 0, ptr %i.a, align 8
  %i.j = load i64, ptr %i.f, align 8, !range !30, !alias.scope !20995, !noalias !20996, !noundef !24
  %i.k = icmp eq i64 %i.c, %i.j
  br i1 %i.k, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17heba5dfe7f7dfa392E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @573)
          to label %bb.g unwind label %bb.d, !noalias !20996

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$17h55ade9fd2322f53bE"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #55
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20999)
  %i.n = load ptr, ptr %3, align 8, !alias.scope !21000, !nonnull !24, !align !31, !noundef !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noalias !21000, !nonnull !24, !noundef !24
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !21000, !noundef !24
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !21000, !noundef !24
  invoke void %i.p(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef %i.s, i64 noundef %i.u)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit" unwind label %bb.i, !inline_history !17

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !20995, !noalias !20996, !nonnull !24, !noundef !24
  %i.x = getelementptr inbounds nuw [104 x i8], ptr %i.w, i64 %i.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.x, ptr noundef nonnull align 8 dereferenceable(104) %i.a, i64 104, i1 false)
  %i.y = add nuw nsw i64 %i.c, 1
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !20995, !noalias !20996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit": ; preds = %bb.h, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit", %bb.g
  ret i1 %i.e

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit": ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21002)
  %i.z = load ptr, ptr %2, align 8, !alias.scope !21003, !noundef !24 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h682a465a928c1da9E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21007)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !21008, !nonnull !24, !noundef !24
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !21008, !noundef !24
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !21008, !noundef !24
  tail call void %i.ac(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef %i.af, i64 noundef %i.ah), !inline_history !18
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h33a1640e4870b675E.exit"

.body:                                            ; preds = %bb.i, %bb.j, %bb.d
  %eh.lpad-body7 = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.ai, %bb.j ], [ %i.ai, %bb.i ]
  resume { ptr, i32 } %eh.lpad-body7

bb.i:                                             ; preds = %bb.f
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21010)
  %i.aj = load ptr, ptr %2, align 8, !alias.scope !21011, !noundef !24 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21013)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21015)
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !21016, !nonnull !24, !noundef !24
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !21016, !noundef !24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !21016, !noundef !24
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %.body unwind label %bb.k, !inline_history !16

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = icmp ugt i64 %1, 32768                   ; 2 uses
  br i1 %i.c, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit34", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !24, !align !105, !noundef !24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !24 ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.idx
  %i.i = icmp eq i64 %i.g, 0
  br i1 %i.i, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread", label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load i16, ptr %i.j, align 8              ; 2 uses
  %i.l = zext i16 %i.k to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.0.055 = phi ptr [ %i.e, %.lr.ph ], [ %i.m, %.critedge ] ; 3 uses
  %.sroa.7.054 = phi i64 [ 0, %.lr.ph ], [ %i.n, %.critedge ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 4 ; 2 uses
  %i.n = add nuw nsw i64 %.sroa.7.054, 1
  %i.o = load i16, ptr %.sroa.0.055, align 2, !noundef !24
  %.not19.not = icmp eq i16 %i.o, -1
  br i1 %.not19.not, label %.critedge, label %bb.e

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread": ; preds = %bb.e, %.critedge, %bb.b
  %.sroa.01.0 = phi i64 [ 0, %bb.b ], [ 0, %.critedge ], [ %.sroa.7.054, %bb.e ] ; 5 uses
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread"
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !21041
  %i.r = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef range(i64 1, 9) 2) #47, !noalias !21041 ; 7 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i"

bb.d:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 2, i64 %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @575) #54, !noalias !21042
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  %.not = icmp eq i64 %1, 1
  br i1 %.not, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i"
  %i.t = add nsw i64 %1, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %1, 9
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader88, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.t, -8                       ; 4 uses
  %2 = shl i64 %n.vec, 2
  %3 = getelementptr i8, ptr %i.r, i64 %2         ; 2 uses
  %4 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.u = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.u
  %i.v = getelementptr i8, ptr %i.r, i64 %i.u
  %next.gep85 = getelementptr i8, ptr %i.v, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !21043
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep85, align 2, !noalias !21043
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !21026

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %.lr.ph.i.i.preheader88

.lr.ph.i.i.preheader88:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.sroa.0.09.i.i.ph = phi ptr [ %i.r, %.lr.ph.i.i.preheader ], [ %3, %middle.block ]
  %.sroa.03.08.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %4, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.thread.i.i:                           ; preds = %.lr.ph.i.i, %middle.block, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i"
  %.sroa.0.0.lcssa16.i.i = phi ptr [ %i.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i" ], [ %3, %middle.block ], [ %i.aa, %.lr.ph.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i, align 2, !noalias !21043
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i, i64 2
  store i16 0, ptr %i.x, align 2, !noalias !21043
  %.pre = load ptr, ptr %i.d, align 8
  %.pre69 = load i64, ptr %i.f, align 8
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit"

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader88, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %i.aa, %.lr.ph.i.i ], [ %.sroa.0.09.i.i.ph, %.lr.ph.i.i.preheader88 ] ; 3 uses
  %.sroa.03.08.i.i = phi i64 [ %i.y, %.lr.ph.i.i ], [ %.sroa.03.08.i.i.ph, %.lr.ph.i.i.preheader88 ]
  %i.y = add nuw nsw i64 %.sroa.03.08.i.i, 1      ; 2 uses
  store i16 -1, ptr %.sroa.0.09.i.i, align 2, !noalias !21043
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 2
  store i16 0, ptr %i.z, align 2, !noalias !21043
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %1
  br i1 %exitcond.not.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.i.i, !llvm.loop !21027

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit": ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread", %._crit_edge.thread.i.i
  %.sroa.10.0.i.i81 = phi ptr [ %i.r, %._crit_edge.thread.i.i ], [ inttoptr (i64 2 to ptr), %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread" ] ; 5 uses
  %i.ab = phi i64 [ %.pre69, %._crit_edge.thread.i.i ], [ %i.g, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread" ] ; 9 uses
  %i.ac = phi ptr [ %.pre, %._crit_edge.thread.i.i ], [ %i.e, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread" ] ; 6 uses
  store ptr %.sroa.10.0.i.i81, ptr %i.d, align 8
  store i64 %1, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = trunc nuw i64 %1 to i16
  %i.af = add i16 %i.ae, -1                       ; 3 uses
  store i16 %i.af, ptr %i.ad, align 8
  %i.ag = icmp ugt i64 %.sroa.01.0, %i.ab
  br i1 %i.ag, label %bb.g, label %bb.f, !prof !26

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.055, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !noundef !24
  %i.aj = and i16 %i.k, %i.ai
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub nsw i64 %.sroa.7.054, %i.ak
  %i.am = and i64 %i.al, %i.l
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread", label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e
  %i.ao = icmp eq ptr %i.m, %i.h
  br i1 %i.ao, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0176bec7142074daE.exit.thread", label %bb.c

bb.f:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit"
  %.idx68 = shl nuw nsw i64 %.sroa.01.0, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx68 ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ab
  %i.ar = icmp samesign eq i64 %.sroa.01.0, %i.ab
  br i1 %i.ar, label %.preheader, label %.lr.ph62.preheader

.lr.ph62.preheader:                               ; preds = %bb.f
  %.sroa.013.159 = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  br label %.lr.ph62

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.01.0, i64 noundef %i.ab, i64 noundef %i.ab, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @577) #54
          to label %bb.x unwind label %bb.w

.preheader:                                       ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit", %bb.f
  %i.as = icmp eq i64 %.sroa.01.0, 0
  br i1 %i.as, label %._crit_edge, label %.lr.ph67.preheader

.lr.ph67.preheader:                               ; preds = %.preheader
  %.sroa.014.164 = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  br label %.lr.ph67

.lr.ph62:                                         ; preds = %.lr.ph62.preheader, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit"
  %.sroa.013.161 = phi ptr [ %.sroa.013.1, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit" ], [ %.sroa.013.159, %.lr.ph62.preheader ] ; 3 uses
  %.sroa.013.060 = phi ptr [ %.sroa.013.161, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit" ], [ %i.ap, %.lr.ph62.preheader ] ; 2 uses
  %i.at = load i16, ptr %.sroa.013.060, align 2, !noundef !24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.060, i64 2
  %i.av = load i16, ptr %i.au, align 2, !noundef !24 ; 2 uses
  %.not.i = icmp eq i16 %i.at, -1
  br i1 %.not.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit", label %bb.h

bb.h:                                             ; preds = %.lr.ph62
  %i.aw = and i16 %i.av, %i.af
  %i.ax = zext i16 %i.aw to i64
  br label %bb.i

bb.i:                                             ; preds = %.backedge87, %bb.h
  %.sroa.01.0.i = phi i64 [ %i.ax, %bb.h ], [ %.sroa.01.0.i.be, %.backedge87 ] ; 4 uses
  %i.ay = icmp ult i64 %.sroa.01.0.i, %1
  br i1 %i.ay, label %bb.j, label %.backedge87

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i
  %i.ba = load i16, ptr %i.az, align 2, !noalias !21044, !noundef !24
  %.not5.i = icmp eq i16 %i.ba, -1
  br i1 %.not5.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = add nuw nsw i64 %.sroa.01.0.i, 1
  br label %.backedge87

.backedge87:                                      ; preds = %bb.k, %bb.i
  %.sroa.01.0.i.be = phi i64 [ %i.bb, %bb.k ], [ 0, %bb.i ]
  br label %bb.i

bb.l:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i ; 2 uses
  store i16 %i.at, ptr %i.bc, align 2, !noalias !21044
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.av, ptr %i.bd, align 2, !noalias !21044
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit"

"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit": ; preds = %.lr.ph62, %bb.l
  %i.be = icmp eq ptr %.sroa.013.161, %i.aq       ; 2 uses
  %.sroa.013.1.idx = select i1 %i.be, i64 0, i64 4
  %.sroa.013.1 = getelementptr inbounds nuw i8, ptr %.sroa.013.161, i64 %.sroa.013.1.idx
  br i1 %i.be, label %.preheader, label %.lr.ph62

.lr.ph67:                                         ; preds = %.lr.ph67.preheader, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit30"
  %.sroa.014.166 = phi ptr [ %.sroa.014.1, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit30" ], [ %.sroa.014.164, %.lr.ph67.preheader ] ; 3 uses
  %.sroa.014.065 = phi ptr [ %.sroa.014.166, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit30" ], [ %i.ac, %.lr.ph67.preheader ] ; 2 uses
  %i.bf = load i16, ptr %.sroa.014.065, align 2, !noundef !24 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.014.065, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !noundef !24 ; 2 uses
  %.not.i26 = icmp eq i16 %i.bf, -1
  br i1 %.not.i26, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit30", label %bb.m

bb.m:                                             ; preds = %.lr.ph67
  %i.bi = and i16 %i.bh, %i.af
  %i.bj = zext i16 %i.bi to i64
  br label %bb.n

bb.n:                                             ; preds = %.backedge, %bb.m
  %.sroa.01.0.i27 = phi i64 [ %i.bj, %bb.m ], [ %.sroa.01.0.i27.be, %.backedge ] ; 4 uses
  %i.bk = icmp ult i64 %.sroa.01.0.i27, %1
  br i1 %i.bk, label %bb.o, label %.backedge

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i27
  %i.bm = load i16, ptr %i.bl, align 2, !noalias !21045, !noundef !24
  %.not5.i29 = icmp eq i16 %i.bm, -1
  br i1 %.not5.i29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = add nuw nsw i64 %.sroa.01.0.i27, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.p, %bb.n
  %.sroa.01.0.i27.be = phi i64 [ %i.bn, %bb.p ], [ 0, %bb.n ]
  br label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i81, i64 %.sroa.01.0.i27 ; 2 uses
  store i16 %i.bf, ptr %i.bo, align 2, !noalias !21045
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i16 %i.bh, ptr %i.bp, align 2, !noalias !21045
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit30"

"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit30": ; preds = %.lr.ph67, %bb.q
  %i.bq = icmp eq ptr %.sroa.014.166, %i.ap       ; 2 uses
  %.sroa.014.1.idx = select i1 %i.bq, i64 0, i64 4
  %.sroa.014.1 = getelementptr inbounds nuw i8, ptr %.sroa.014.166, i64 %.sroa.014.1.idx
  br i1 %i.bq, label %._crit_edge, label %.lr.ph67

._crit_edge:                                      ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$23reinsert_entry_in_order17h5482be1a18baac15E.exit30", %.preheader
  %i.br = lshr i64 %1, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = load i64, ptr %i.bt, align 8, !noundef !24 ; 5 uses
  %i.bv = icmp ult i64 %i.bu, 88686269585142076
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = add nuw nsw i64 %i.br, %i.bu
  %i.bx = sub nsw i64 %1, %i.bw                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21046)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21047)
  %i.by = load i64, ptr %i.bs, align 8, !range !30, !alias.scope !21048, !noalias !21049, !noundef !24 ; 3 uses
  %i.bz = sub nsw i64 %i.by, %i.bu
  %i.ca = icmp ugt i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17h7176723a454e2c5dE.exit"

bb.r:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21050)
  %i.cb = add nsw i64 %i.bx, %i.bu                ; 4 uses
  %i.cc = icmp ult i64 %i.cb, %i.bu
  br i1 %i.cc, label %bb.v, label %bb.s, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.cd = mul nuw nsw i64 %i.cb, 104
  %or.cond.i.i.i.i31 = icmp ugt i64 %i.cb, 88686269585142075
  br i1 %or.cond.i.i.i.i31, label %bb.v, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i32, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i32: ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21051
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21051
end_hunk_1
begin_hunk_2_@_ZN4time10formatting13format_number17hf8ea2515d03c9f7dE:bb.a

bb.g:                                             ; preds = %.lr.ph.i4
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ba, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !21995
  %.pre.i.i.i.i18.i9 = load i64, ptr %i.ay, align 8, !alias.scope !22001, !noalias !21995
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.i5"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.i5": ; preds = %bb.g, %.lr.ph.i4
  %i.bk = phi i64 [ %i.ba, %.lr.ph.i4 ], [ %.pre.i.i.i.i18.i9, %bb.g ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load ptr, ptr %i.az, align 8, !alias.scope !22001, !noalias !21995, !nonnull !24, !noundef !24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store i8 48, ptr %i.bn, align 1, !noalias !22001
  %i.bo = add nuw i64 %i.bk, 1                    ; 2 uses
  store i64 %i.bo, ptr %i.ay, align 8, !alias.scope !22001, !noalias !21995
  br label %._crit_edge.i6

_ZN4time10formatting22format_number_pad_zero17h58c19610eded16cfE.exit: ; preds = %._crit_edge.i6, %bb.f
  %i.bp = phi i64 [ %i.bd, %._crit_edge.i6 ], [ %.pre.i.i.i.i.i8, %bb.f ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.be
  %i.br = icmp sgt i64 %i.bp, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !22000, !noalias !21989, !nonnull !24, !noundef !24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.bq, i64 %i.bf, i1 false), !noalias !22000
  %i.bv = add nuw i64 %i.bp, %i.bf
  store i64 %i.bv, ptr %i.bg, align 8, !alias.scope !22000, !noalias !21989
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21987
  %i.bw = add nuw nsw i64 %i.bf, %.sroa.01.0.lcssa.i7
  br label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22002)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22002
  %i.bx = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a), !noalias !22002 ; 2 uses
  %i.by = sub nuw i64 10, %i.bx                   ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22003)
  call void @llvm.experimental.noalias.scope.decl(metadata !22004)
  call void @llvm.experimental.noalias.scope.decl(metadata !22005)
  call void @llvm.experimental.noalias.scope.decl(metadata !22006)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !22007, !noalias !22008, !noundef !24 ; 3 uses
  %i.cb = load i64, ptr %0, align 8, !range !30, !alias.scope !22007, !noalias !22008, !noundef !24
  %i.cc = sub i64 %i.cb, %i.ca
  %i.cd = icmp ugt i64 %i.by, %i.cc
  br i1 %i.cd, label %bb.i, label %_ZN4time10formatting22format_number_pad_none17h7478f3be5aece268E.exit, !prof !26

bb.i:                                             ; preds = %bb.h
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ca, i64 noundef %i.by, i64 noundef 1, i64 noundef 1), !noalias !22008
  %.pre.i.i.i.i.i13 = load i64, ptr %i.bz, align 8, !alias.scope !22009, !noalias !22008
  br label %_ZN4time10formatting22format_number_pad_none17h7478f3be5aece268E.exit

_ZN4time10formatting22format_number_pad_none17h7478f3be5aece268E.exit: ; preds = %bb.h, %bb.i
  %i.ce = phi i64 [ %i.ca, %bb.h ], [ %.pre.i.i.i.i.i13, %bb.i ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bx
  %i.cg = icmp sgt i64 %i.ce, -1
  call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !22009, !noalias !22008, !nonnull !24, !noundef !24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ce
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull readonly align 1 %i.cf, i64 %i.by, i1 false), !noalias !22009
  %i.ck = add nuw i64 %i.ce, %i.by
  store i64 %i.ck, ptr %i.bz, align 8, !alias.scope !22009, !noalias !22008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22002
  br label %bb.j

bb.j:                                             ; preds = %_ZN4time10formatting22format_number_pad_none17h7478f3be5aece268E.exit, %_ZN4time10formatting22format_number_pad_zero17h58c19610eded16cfE.exit, %_ZN4time10formatting23format_number_pad_space17h6e70ace9ac12d0b9E.exit
  %.pn15.in = phi i64 [ %i.am, %_ZN4time10formatting23format_number_pad_space17h6e70ace9ac12d0b9E.exit ], [ %i.bw, %_ZN4time10formatting22format_number_pad_zero17h58c19610eded16cfE.exit ], [ %i.by, %_ZN4time10formatting22format_number_pad_none17h7478f3be5aece268E.exit ]
  %.pn15 = inttoptr i64 %.pn15.in to ptr
  %i.cl = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %.pn15, 1
  ret { i64, ptr } %i.cl
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h399a06f99cbe0a4dE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.a) ; 2 uses
  %i.c = sub nuw i64 3, %i.b                      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22022)
  call void @llvm.experimental.noalias.scope.decl(metadata !22023)
  call void @llvm.experimental.noalias.scope.decl(metadata !22024)
  call void @llvm.experimental.noalias.scope.decl(metadata !22025)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !22026, !noalias !22027, !noundef !24 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !30, !alias.scope !22026, !noalias !22027, !noundef !24
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit", !prof !26

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1), !noalias !22027
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !22028, !noalias !22027
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit": ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.k = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !22028, !noalias !22027, !nonnull !24, !noundef !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.j, i64 %i.c, i1 false), !noalias !22028
  %i.o = add nuw i64 %i.i, %i.c
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !22028, !noalias !22027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = inttoptr i64 %i.c to ptr
  %i.q = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.p, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h5327abe842f3757fE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i16 noundef range(i16 0, 512) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call noundef i64 @"_ZN38_$LT$u16$u20$as$u20$itoa..Unsigned$GT$3fmt17h380bffb8b40082f3E"(i16 noundef range(i16 0, 512) %1, ptr noalias noundef nonnull align 1 dereferenceable(5) %i.a) ; 2 uses
  %i.c = sub nuw i64 5, %i.b                      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22041)
  call void @llvm.experimental.noalias.scope.decl(metadata !22042)
  call void @llvm.experimental.noalias.scope.decl(metadata !22043)
  call void @llvm.experimental.noalias.scope.decl(metadata !22044)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !22045, !noalias !22046, !noundef !24 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !30, !alias.scope !22045, !noalias !22046, !noundef !24
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit", !prof !26

bb.b:                                             ; preds = %bb.a
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.c, i64 noundef 1, i64 noundef 1), !noalias !22046
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !22047, !noalias !22046
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit": ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.b
  %i.k = icmp sgt i64 %i.i, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !22047, !noalias !22046, !nonnull !24, !noundef !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %i.j, i64 %i.c, i1 false), !noalias !22047
  %i.o = add nuw i64 %i.i, %i.c
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !22047, !noalias !22046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = inttoptr i64 %i.c to ptr
  %i.q = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.p, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_ZN4time10formatting22format_number_pad_zero17h4fbb5ed6248a179bE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i.not.i = icmp eq i32 %1, 0
  br i1 %.not.i.not.i, label %.lr.ph, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit": ; preds = %bb.a
  %i.b = icmp ugt i32 %1, 99999                   ; 2 uses
  %i.c = udiv i32 %1, 100000
  %.sroa.06.0.i.i = select i1 %i.b, i32 5, i32 0
  %.sroa.03.0.i.i = select i1 %i.b, i32 %i.c, i32 %1 ; 4 uses
  %i.d = add nuw nsw i32 %.sroa.03.0.i.i, 393206
  %i.e = add nuw nsw i32 %.sroa.03.0.i.i, 524188
  %i.f = and i32 %i.d, %i.e
  %i.g = add nuw nsw i32 %.sroa.03.0.i.i, 916504
  %i.h = add nuw nsw i32 %.sroa.03.0.i.i, 514288
  %i.i = and i32 %i.g, %i.h
  %i.j = xor i32 %i.f, %i.i
  %i.k = lshr i32 %i.j, 17
  %i.l = add nuw nsw i32 %i.k, %.sroa.06.0.i.i    ; 2 uses
  %i.m = trunc nuw nsw i32 %i.l to i8
  %i.n = add nuw nsw i8 %i.m, 1
  %i.o = tail call i8 @llvm.usub.sat.i8(i8 4, i8 %i.n)
  %.not = icmp samesign ugt i32 %i.l, 2
  br i1 %.not, label %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22072, !noalias !22073
  %.pre26 = load i64, ptr %0, align 8, !range !30, !alias.scope !22072, !noalias !22073
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.o, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit" ], [ 3, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.p, align 8, !alias.scope !22074, !noalias !22075
  %.pre24 = load i64, ptr %0, align 8, !range !30, !alias.scope !22074, !noalias !22075
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.r = zext nneg i8 %.sroa.0.0.i33 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge", %._crit_edge.loopexit
  %i.s = phi i64 [ %.pre26, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.al, %._crit_edge.loopexit ]
  %i.t = phi i64 [ %.pre25, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.aq, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.01.0.lcssa = phi i64 [ 0, %"_ZN58_$LT$u32$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hab8317d2141eb43aE.exit.._crit_edge_crit_edge" ], [ %i.r, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = call noundef i64 @"_ZN38_$LT$u32$u20$as$u20$itoa..Unsigned$GT$3fmt17h0b36a92c699d3c58E"(i32 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(10) %i.a) ; 2 uses
  %i.v = sub nuw i64 10, %i.u                     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22076)
  call void @llvm.experimental.noalias.scope.decl(metadata !22077)
  call void @llvm.experimental.noalias.scope.decl(metadata !22078)
  call void @llvm.experimental.noalias.scope.decl(metadata !22079)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = sub i64 %i.s, %i.t
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit", !prof !26

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i64 noundef %i.v, i64 noundef 1, i64 noundef 1), !noalias !22073
  %.pre.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !22080, !noalias !22073
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit": ; preds = %._crit_edge, %bb.b
  %i.z = phi i64 [ %i.t, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u
  %i.ab = icmp sgt i64 %i.z, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !22080, !noalias !22073, !nonnull !24, !noundef !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.z
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %i.aa, i64 %i.v, i1 false), !noalias !22080
  %i.af = add nuw i64 %i.z, %i.v
  store i64 %i.af, ptr %i.w, align 8, !alias.scope !22080, !noalias !22073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = add nuw nsw i64 %i.v, %.sroa.01.0.lcssa
  %i.ah = inttoptr i64 %i.ag to ptr
  ret ptr %i.ah

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.ai = phi i64 [ %.pre24, %.lr.ph ], [ %i.al, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ] ; 3 uses
  %i.aj = phi i64 [ %.pre, %.lr.ph ], [ %i.aq, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.ar, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22082)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22083)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22084)
  %i.ak = icmp eq i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19", !prof !26

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ai, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22075
  %.pre.i.i.i.i18 = load i64, ptr %i.p, align 8, !alias.scope !22085, !noalias !22075
  %.pre23 = load i64, ptr %0, align 8, !range !30, !alias.scope !22074, !noalias !22075
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19": ; preds = %bb.c, %bb.d
  %i.al = phi i64 [ %i.ai, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.am = phi i64 [ %i.aj, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.an = icmp sgt i64 %i.am, -1
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !22085, !noalias !22075, !nonnull !24, !noundef !24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 48, ptr %i.ap, align 1, !noalias !22085
  %i.aq = add nuw i64 %i.am, 1                    ; 3 uses
  store i64 %i.aq, ptr %i.p, align 8, !alias.scope !22085, !noalias !22075
  %i.ar = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h5031eb3610c1e93eE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i16 noundef range(i16 0, 512) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i = icmp eq i16 %1, 0
  br i1 %.not.i, label %.lr.ph, label %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit"

"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit": ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  %i.c = add nuw nsw i32 %i.b, 393206
  %i.d = add nuw nsw i32 %i.b, 524188
  %i.e = and i32 %i.c, %i.d
  %i.f = lshr i32 %i.e, 17
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = xor i8 %i.g, 2                           ; 2 uses
  %i.i = add nuw nsw i8 %i.h, 1
  %i.j = tail call i8 @llvm.usub.sat.i8(i8 3, i8 %i.i)
  %.not = icmp samesign ugt i8 %i.h, 1
  br i1 %.not, label %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22110, !noalias !22111
  %.pre26 = load i64, ptr %0, align 8, !range !30, !alias.scope !22110, !noalias !22111
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.j, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit" ], [ 2, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.k, align 8, !alias.scope !22112, !noalias !22113
  %.pre24 = load i64, ptr %0, align 8, !range !30, !alias.scope !22112, !noalias !22113
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.m = zext nneg i8 %.sroa.0.0.i33 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge", %._crit_edge.loopexit
  %i.n = phi i64 [ %.pre26, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge" ], [ %i.ah, %._crit_edge.loopexit ]
  %i.o = phi i64 [ %.pre25, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge" ], [ %i.am, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.01.0.lcssa = phi i64 [ 0, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge" ], [ %i.m, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = call noundef i64 @"_ZN38_$LT$u16$u20$as$u20$itoa..Unsigned$GT$3fmt17h380bffb8b40082f3E"(i16 noundef range(i16 0, 512) %1, ptr noalias noundef nonnull align 1 dereferenceable(5) %i.a) ; 2 uses
  %i.q = sub nuw i64 5, %i.p                      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22114)
  call void @llvm.experimental.noalias.scope.decl(metadata !22115)
  call void @llvm.experimental.noalias.scope.decl(metadata !22116)
  call void @llvm.experimental.noalias.scope.decl(metadata !22117)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = sub i64 %i.n, %i.o
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit", !prof !26

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.q, i64 noundef 1, i64 noundef 1), !noalias !22111
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !22118, !noalias !22111
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit": ; preds = %._crit_edge, %bb.b
  %i.u = phi i64 [ %i.o, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.w = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !22118, !noalias !22111, !nonnull !24, !noundef !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.v, i64 %i.q, i1 false), !noalias !22118
  %i.aa = add nuw i64 %i.u, %i.q
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !22118, !noalias !22111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = add nuw nsw i64 %i.q, %.sroa.01.0.lcssa
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.ac, 1
  ret { i64, ptr } %i.ad

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.ae = phi i64 [ %.pre24, %.lr.ph ], [ %i.ah, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ] ; 3 uses
  %i.af = phi i64 [ %.pre, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.an, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22122)
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19", !prof !26

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ae, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22113
  %.pre.i.i.i.i18 = load i64, ptr %i.k, align 8, !alias.scope !22123, !noalias !22113
  %.pre23 = load i64, ptr %0, align 8, !range !30, !alias.scope !22112, !noalias !22113
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19": ; preds = %bb.c, %bb.d
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ai = phi i64 [ %i.af, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !22123, !noalias !22113, !nonnull !24, !noundef !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 48, ptr %i.al, align 1, !noalias !22123
  %i.am = add nuw i64 %i.ai, 1                    ; 3 uses
  store i64 %i.am, ptr %i.k, align 8, !alias.scope !22123, !noalias !22113
  %i.an = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17h919aa8e2a49788a1E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %.lr.ph.thread, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"

.lr.ph.thread:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.split

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit": ; preds = %bb.a
  %i.d = zext i8 %1 to i16                        ; 2 uses
  %i.e = add nuw nsw i16 %i.d, 758
  %i.f = add nuw nsw i16 %i.d, 412
  %i.g = and i16 %i.e, %i.f
  %.fr22 = freeze i16 %i.g
  %i.h = lshr i16 %.fr22, 8                       ; 2 uses
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = add i8 %i.i, -1
  %.not = icmp ult i8 %i.j, -2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %.not, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", label %.lr.ph

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge": ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %.pre26 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22148, !noalias !22149
  br label %bb.c

.lr.ph:                                           ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not23 = icmp eq i16 %i.h, 0
  br i1 %.not23, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22150, !noalias !22151
  %.pre25 = load i64, ptr %0, align 8, !range !30, !alias.scope !22150, !noalias !22151
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us"
  %i.l = phi i64 [ %.pre25, %.lr.ph.split.us.preheader ], [ %i.o, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us" ] ; 3 uses
  %i.m = phi i64 [ %.pre, %.lr.ph.split.us.preheader ], [ %i.t, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22155)
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us", !prof !26

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22151
  %.pre.i.i.i.i18.us = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22156, !noalias !22151
  %.pre24 = load i64, ptr %0, align 8, !range !30, !alias.scope !22150, !noalias !22151
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us": ; preds = %bb.b, %.lr.ph.split.us
  %i.o = phi i64 [ %i.l, %.lr.ph.split.us ], [ %.pre24, %bb.b ]
  %i.p = phi i64 [ %i.m, %.lr.ph.split.us ], [ %.pre.i.i.i.i18.us, %bb.b ] ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !22156, !noalias !22151, !nonnull !24, !noundef !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 48, ptr %i.s, align 1, !noalias !22156
  %i.t = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.t, ptr %.phi.trans.insert, align 8, !alias.scope !22156, !noalias !22151
  br label %.lr.ph.split.us

bb.c:                                             ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.u = phi i64 [ %i.au, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ], [ %.pre26, %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge" ] ; 3 uses
  %.sroa.01.0.lcssa = phi i64 [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ], [ 0, %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.a) ; 2 uses
  %i.w = sub nuw i64 3, %i.v                      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22157)
  call void @llvm.experimental.noalias.scope.decl(metadata !22158)
  call void @llvm.experimental.noalias.scope.decl(metadata !22159)
  call void @llvm.experimental.noalias.scope.decl(metadata !22160)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i64, ptr %0, align 8, !range !30, !alias.scope !22148, !noalias !22149, !noundef !24
  %i.z = sub i64 %i.y, %i.u
  %i.aa = icmp ugt i64 %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit", !prof !26

bb.d:                                             ; preds = %bb.c
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef %i.w, i64 noundef 1, i64 noundef 1), !noalias !22149
  %.pre.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !22161, !noalias !22149
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit": ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i.i.i, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.ad = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !22161, !noalias !22149, !nonnull !24, !noundef !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ac, i64 %i.w, i1 false), !noalias !22161
  %i.ah = add nuw i64 %i.ab, %i.w
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !22161, !noalias !22149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = add nuw nsw i64 %i.w, %.sroa.01.0.lcssa
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.aj, 1
  ret { i64, ptr } %i.ak

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %.lr.ph
  %i.al = phi ptr [ %i.c, %.lr.ph.thread ], [ %i.k, %.lr.ph ]
  %i.am = phi ptr [ %i.b, %.lr.ph.thread ], [ %.phi.trans.insert, %.lr.ph ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22155)
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !22150, !noalias !22151, !noundef !24 ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !range !30, !alias.scope !22150, !noalias !22151, !noundef !24
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.e, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19", !prof !26

bb.e:                                             ; preds = %.lr.ph.split
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22151
  %.pre.i.i.i.i18 = load i64, ptr %i.am, align 8, !alias.scope !22156, !noalias !22151
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19": ; preds = %.lr.ph.split, %bb.e
  %i.aq = phi i64 [ %i.an, %.lr.ph.split ], [ %.pre.i.i.i.i18, %bb.e ] ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !22156, !noalias !22151, !nonnull !24, !noundef !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 48, ptr %i.at, align 1, !noalias !22156
  %i.au = add nuw i64 %i.aq, 1                    ; 2 uses
  store i64 %i.au, ptr %i.am, align 8, !alias.scope !22156, !noalias !22151
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h28bafb6f023f837cE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i = icmp eq i8 %1, 0
  br i1 %.not.i, label %.lr.ph.thread, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"

.lr.ph.thread:                                    ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.split

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit": ; preds = %bb.a
  %i.d = zext i8 %1 to i16                        ; 2 uses
  %i.e = add nuw nsw i16 %i.d, 758
  %i.f = add nuw nsw i16 %i.d, 412
  %i.g = and i16 %i.e, %i.f
  %.fr22 = freeze i16 %i.g
  %i.h = lshr i16 %.fr22, 8                       ; 2 uses
  %i.i = trunc nuw i16 %i.h to i8
  %i.j = add i8 %i.i, -1
  %.not = icmp ult i8 %i.j, -2
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  br i1 %.not, label %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", label %.lr.ph

"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge": ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %.pre26 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22186, !noalias !22187
  br label %bb.c

.lr.ph:                                           ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not23 = icmp eq i16 %i.h, 0
  br i1 %.not23, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22188, !noalias !22189
  %.pre25 = load i64, ptr %0, align 8, !range !30, !alias.scope !22188, !noalias !22189
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us"
  %i.l = phi i64 [ %.pre25, %.lr.ph.split.us.preheader ], [ %i.o, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us" ] ; 3 uses
  %i.m = phi i64 [ %.pre, %.lr.ph.split.us.preheader ], [ %i.t, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22193)
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us", !prof !26

bb.b:                                             ; preds = %.lr.ph.split.us
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22189
  %.pre.i.i.i.i18.us = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22194, !noalias !22189
  %.pre24 = load i64, ptr %0, align 8, !range !30, !alias.scope !22188, !noalias !22189
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19.us": ; preds = %bb.b, %.lr.ph.split.us
  %i.o = phi i64 [ %i.l, %.lr.ph.split.us ], [ %.pre24, %bb.b ]
  %i.p = phi i64 [ %i.m, %.lr.ph.split.us ], [ %.pre.i.i.i.i18.us, %bb.b ] ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !22194, !noalias !22189, !nonnull !24, !noundef !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 32, ptr %i.s, align 1, !noalias !22194
  %i.t = add nuw i64 %i.p, 1                      ; 2 uses
  store i64 %i.t, ptr %.phi.trans.insert, align 8, !alias.scope !22194, !noalias !22189
  br label %.lr.ph.split.us

bb.c:                                             ; preds = %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.u = phi i64 [ %i.au, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ], [ %.pre26, %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge" ] ; 3 uses
  %.sroa.01.0.lcssa = phi i64 [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ], [ 0, %"_ZN57_$LT$u8$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hde3edaf46c6018eaE.exit._crit_edge" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.v = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %1, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.a) ; 2 uses
  %i.w = sub nuw i64 3, %i.v                      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22195)
  call void @llvm.experimental.noalias.scope.decl(metadata !22196)
  call void @llvm.experimental.noalias.scope.decl(metadata !22197)
  call void @llvm.experimental.noalias.scope.decl(metadata !22198)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.y = load i64, ptr %0, align 8, !range !30, !alias.scope !22186, !noalias !22187, !noundef !24
  %i.z = sub i64 %i.y, %i.u
  %i.aa = icmp ugt i64 %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit", !prof !26

bb.d:                                             ; preds = %bb.c
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.u, i64 noundef %i.w, i64 noundef 1, i64 noundef 1), !noalias !22187
  %.pre.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !22199, !noalias !22187
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit": ; preds = %bb.c, %bb.d
  %i.ab = phi i64 [ %i.u, %bb.c ], [ %.pre.i.i.i.i, %bb.d ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.v
  %i.ad = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !22199, !noalias !22187, !nonnull !24, !noundef !24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ac, i64 %i.w, i1 false), !noalias !22199
  %i.ah = add nuw i64 %i.ab, %i.w
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !22199, !noalias !22187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = add nuw nsw i64 %i.w, %.sroa.01.0.lcssa
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.aj, 1
  ret { i64, ptr } %i.ak

.lr.ph.split:                                     ; preds = %.lr.ph.thread, %.lr.ph
  %i.al = phi ptr [ %i.c, %.lr.ph.thread ], [ %i.k, %.lr.ph ]
  %i.am = phi ptr [ %i.b, %.lr.ph.thread ], [ %.phi.trans.insert, %.lr.ph ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22193)
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !22188, !noalias !22189, !noundef !24 ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !range !30, !alias.scope !22188, !noalias !22189, !noundef !24
  %i.ap = icmp eq i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.e, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19", !prof !26

bb.e:                                             ; preds = %.lr.ph.split
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.an, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22189
  %.pre.i.i.i.i18 = load i64, ptr %i.am, align 8, !alias.scope !22194, !noalias !22189
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19": ; preds = %.lr.ph.split, %bb.e
  %i.aq = phi i64 [ %i.an, %.lr.ph.split ], [ %.pre.i.i.i.i18, %bb.e ] ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load ptr, ptr %i.al, align 8, !alias.scope !22194, !noalias !22189, !nonnull !24, !noundef !24
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 32, ptr %i.at, align 1, !noalias !22194
  %i.au = add nuw i64 %i.aq, 1                    ; 2 uses
  store i64 %i.au, ptr %i.am, align 8, !alias.scope !22194, !noalias !22189
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h36eadcd33cdec0adE(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i16 noundef range(i16 0, 512) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %.not.i = icmp eq i16 %1, 0
  br i1 %.not.i, label %.lr.ph, label %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit"

"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit": ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i32                  ; 2 uses
  %i.c = add nuw nsw i32 %i.b, 393206
  %i.d = add nuw nsw i32 %i.b, 524188
  %i.e = and i32 %i.c, %i.d
  %i.f = lshr i32 %i.e, 17
  %i.g = trunc nuw nsw i32 %i.f to i8
  %i.h = xor i8 %i.g, 2                           ; 2 uses
  %i.i = add nuw nsw i8 %i.h, 1
  %i.j = tail call i8 @llvm.usub.sat.i8(i8 3, i8 %i.i)
  %.not = icmp samesign ugt i8 %i.h, 1
  br i1 %.not, label %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge", label %.lr.ph

"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge": ; preds = %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit"
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre25 = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22224, !noalias !22225
  %.pre26 = load i64, ptr %0, align 8, !range !30, !alias.scope !22224, !noalias !22225
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit"
  %.sroa.0.0.i33 = phi i8 [ %i.j, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit" ], [ 2, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i8 %.sroa.0.0.i33 to i64
  %.pre = load i64, ptr %i.k, align 8, !alias.scope !22226, !noalias !22227
  %.pre24 = load i64, ptr %0, align 8, !range !30, !alias.scope !22226, !noalias !22227
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.m = zext nneg i8 %.sroa.0.0.i33 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge", %._crit_edge.loopexit
  %i.n = phi i64 [ %.pre26, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge" ], [ %i.ah, %._crit_edge.loopexit ]
  %i.o = phi i64 [ %.pre25, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge" ], [ %i.am, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.01.0.lcssa = phi i64 [ 0, %"_ZN58_$LT$u16$u20$as$u20$time..ext..digit_count..DigitCount$GT$10num_digits17hac549bb81bc84f75E.exit.._crit_edge_crit_edge" ], [ %i.m, %._crit_edge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = call noundef i64 @"_ZN38_$LT$u16$u20$as$u20$itoa..Unsigned$GT$3fmt17h380bffb8b40082f3E"(i16 noundef range(i16 0, 512) %1, ptr noalias noundef nonnull align 1 dereferenceable(5) %i.a) ; 2 uses
  %i.q = sub nuw i64 5, %i.p                      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22228)
  call void @llvm.experimental.noalias.scope.decl(metadata !22229)
  call void @llvm.experimental.noalias.scope.decl(metadata !22230)
  call void @llvm.experimental.noalias.scope.decl(metadata !22231)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = sub i64 %i.n, %i.o
  %i.t = icmp ugt i64 %i.q, %i.s
  br i1 %i.t, label %bb.b, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit", !prof !26

bb.b:                                             ; preds = %._crit_edge
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef %i.q, i64 noundef 1, i64 noundef 1), !noalias !22225
  %.pre.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !22232, !noalias !22225
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit": ; preds = %._crit_edge, %bb.b
  %i.u = phi i64 [ %i.o, %._crit_edge ], [ %.pre.i.i.i.i, %bb.b ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p
  %i.w = icmp sgt i64 %i.u, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !22232, !noalias !22225, !nonnull !24, !noundef !24
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull readonly align 1 %i.v, i64 %i.q, i1 false), !noalias !22232
  %i.aa = add nuw i64 %i.u, %i.q
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !22232, !noalias !22225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = add nuw nsw i64 %i.q, %.sroa.01.0.lcssa
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.ac, 1
  ret { i64, ptr } %i.ad

bb.c:                                             ; preds = %.lr.ph, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"
  %i.ae = phi i64 [ %.pre24, %.lr.ph ], [ %i.ah, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ] ; 3 uses
  %i.af = phi i64 [ %.pre, %.lr.ph ], [ %i.am, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ] ; 2 uses
  %.sroa.01.021 = phi i64 [ 0, %.lr.ph ], [ %i.an, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22236)
  %i.ag = icmp eq i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19", !prof !26

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ae, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22227
  %.pre.i.i.i.i18 = load i64, ptr %i.k, align 8, !alias.scope !22237, !noalias !22227
  %.pre23 = load i64, ptr %0, align 8, !range !30, !alias.scope !22226, !noalias !22227
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit19": ; preds = %bb.c, %bb.d
  %i.ah = phi i64 [ %i.ae, %bb.c ], [ %.pre23, %bb.d ] ; 2 uses
  %i.ai = phi i64 [ %i.af, %bb.c ], [ %.pre.i.i.i.i18, %bb.d ] ; 3 uses
  %i.aj = icmp sgt i64 %i.ai, -1
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load ptr, ptr %i.l, align 8, !alias.scope !22237, !noalias !22227, !nonnull !24, !noundef !24
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 32, ptr %i.al, align 1, !noalias !22237
  %i.am = add nuw i64 %i.ai, 1                    ; 3 uses
  store i64 %i.am, ptr %i.k, align 8, !alias.scope !22237, !noalias !22227
  %i.an = add nuw nsw i64 %.sroa.01.021, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_ZN4time10formatting26fmt_unix_timestamp_seconds17h0f06d6482a0f1164E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef range(i64 -66245516442547, 66121195469364) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %i.b = icmp slt i64 %1, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22278)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %._ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit_crit_edge

._ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22279, !noalias !22280
  br label %_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22284)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !22285, !noalias !22286, !noundef !24 ; 3 uses
  %i.e = load i64, ptr %0, align 8, !range !30, !alias.scope !22285, !noalias !22286, !noundef !24
  %i.f = icmp eq i64 %i.e, %i.d
  br i1 %i.f, label %bb.d, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit.i", !prof !26

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22286
  %.pre.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !22287, !noalias !22286
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit.i": ; preds = %bb.d, %bb.c
  %i.g = phi i64 [ %i.d, %bb.c ], [ %.pre.i.i.i.i.i, %bb.d ] ; 3 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !22287, !noalias !22286, !nonnull !24, !noundef !24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store i8 45, ptr %i.k, align 1, !noalias !22287
  %i.l = add nuw i64 %i.g, 1                      ; 2 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !22287, !noalias !22286
  br label %_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22291)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !22292, !noalias !22293, !noundef !24 ; 3 uses
  %i.o = load i64, ptr %0, align 8, !range !30, !alias.scope !22292, !noalias !22293, !noundef !24
  %i.p = icmp eq i64 %i.o, %i.n
  br i1 %i.p, label %bb.f, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit6.i", !prof !26

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef 1, i64 noundef 1, i64 noundef 1), !noalias !22293
  %.pre.i.i.i.i5.i = load i64, ptr %i.m, align 8, !alias.scope !22294, !noalias !22293
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit6.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit6.i": ; preds = %bb.f, %bb.e
  %i.q = phi i64 [ %i.n, %bb.e ], [ %.pre.i.i.i.i5.i, %bb.f ] ; 3 uses
  %i.r = icmp sgt i64 %i.q, -1
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !22294, !noalias !22293, !nonnull !24, !noundef !24
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.q
  store i8 43, ptr %i.u, align 1, !noalias !22294
  %i.v = add nuw i64 %i.q, 1                      ; 2 uses
  store i64 %i.v, ptr %i.m, align 8, !alias.scope !22294, !noalias !22293
  br label %_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit

_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit: ; preds = %._ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit_crit_edge, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit6.i"
  %i.w = phi i64 [ %i.v, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit6.i" ], [ %i.l, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit.i" ], [ %.pre, %._ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit_crit_edge ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit6.i" ], [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h13db279366275ff9E.exit.i" ], [ 0, %._ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit_crit_edge ]
  %.sroa.013.0 = tail call i64 @llvm.abs.i64(i64 %1, i1 true)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22295)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22295
  %i.x = call noundef i64 @"_ZN38_$LT$u64$u20$as$u20$itoa..Unsigned$GT$3fmt17hfb85cac2bda75e64E"(i64 noundef range(i64 0, 66245516442547001) %.sroa.013.0, ptr noalias noundef nonnull align 1 dereferenceable(20) %i.a), !noalias !22295 ; 2 uses
  %i.y = sub nuw i64 20, %i.x                     ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22296)
  call void @llvm.experimental.noalias.scope.decl(metadata !22297)
  call void @llvm.experimental.noalias.scope.decl(metadata !22298)
  call void @llvm.experimental.noalias.scope.decl(metadata !22299)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load i64, ptr %0, align 8, !range !30, !alias.scope !22279, !noalias !22280, !noundef !24
  %i.ab = sub i64 %i.aa, %i.w
  %i.ac = icmp ugt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZN4time10formatting22format_number_pad_none17h8076bdafd7f521c2E.exit, !prof !26

bb.g:                                             ; preds = %_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h0917ae3167eaa516E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.w, i64 noundef %i.y, i64 noundef 1, i64 noundef 1), !noalias !22280
  %.pre.i.i.i.i.i15 = load i64, ptr %i.z, align 8, !alias.scope !22300, !noalias !22280
  br label %_ZN4time10formatting22format_number_pad_none17h8076bdafd7f521c2E.exit

_ZN4time10formatting22format_number_pad_none17h8076bdafd7f521c2E.exit: ; preds = %_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit, %bb.g
  %i.ad = phi i64 [ %i.w, %_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit ], [ %.pre.i.i.i.i.i15, %bb.g ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.x
  %i.af = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !22300, !noalias !22280, !nonnull !24, !noundef !24
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ai, ptr nonnull readonly align 1 %i.ae, i64 %i.y, i1 false), !noalias !22300
  %i.aj = add nuw i64 %i.ad, %i.y
  store i64 %i.aj, ptr %i.z, align 8, !alias.scope !22300, !noalias !22280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22295
  %i.ak = add nuw nsw i64 %i.y, %.sroa.6.0.i
  %i.al = inttoptr i64 %i.ak to ptr
  ret ptr %i.al
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc ptr @_ZN4time10formatting30fmt_unix_timestamp_nanoseconds17h3fcb49da8d477c86E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i128 noundef range(i128 -66245516442547000000000, 66121195469367294967296) %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
  %i.b = icmp slt i128 %1, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22341)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.e, label %._ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit_crit_edge

._ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !22342, !noalias !22343
  br label %_ZN4time10formatting15fmt_offset_sign17hc4c236cee0e665f9E.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22345)
end_hunk_2
begin_hunk_3_@"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hcdff816087cac22dE":bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1154
  %.val = load ptr, ptr %1, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23109)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 1154 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !noalias !23110, !noundef !24
  %i.i = zext i16 %i.h to i64
  %i.j = xor i64 %.val1, -1
  %i.k = add i64 %i.i, %i.j                       ; 5 uses
  %i.l = trunc i64 %i.k to i16
  store i16 %i.l, ptr %i.e, align 2, !alias.scope !23109, !noalias !23111
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 888 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.val1 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !23110 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !23110 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !23110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23110
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.val1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !noalias !23110
  %i.p = icmp ult i64 %i.k, 12
  br i1 %i.p, label %bb.g, label %bb.c, !prof !29

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h4785ebdba0fb3516E.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.k, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #54
          to label %bb.e unwind label %bb.d, !noalias !23110

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$xtask..common..assets..Asset$GT$17h68197de1087764feE"(ptr noalias noundef align 8 dereferenceable(80) %i.a) #55, !noalias !23110
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.r, label %bb.h, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !23112
  br label %bb.h

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17h4785ebdba0fb3516E.exit"
  %i.s = add i64 %.val1, 1                        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 888
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.s
  %i.v = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull readonly align 8 %i.u, i64 %i.v, i1 false), !alias.scope !23113, !noalias !23111
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.s
  %i.x = mul nuw nsw i64 %i.k, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1160) %i.b, ptr nonnull readonly align 8 %i.w, i64 %i.x, i1 false), !alias.scope !23114, !noalias !23111
  %i.y = trunc i64 %.val1 to i16
  store i16 %i.y, ptr %i.g, align 2, !noalias !23110
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23110
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !24
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.val, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.aa, ptr %i.ac, align 8
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.b, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.ae, align 8
  ret void

bb.h:                                             ; preds = %bb.f, %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 1160, i64 noundef 8) #47
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node212Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17h8725e14167497625E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(136) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = alloca [104 x i8], align 8               ; 8 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !24, !noundef !24 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1154 ; 3 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47
  %i.f = tail call noalias noundef align 8 dereferenceable_or_null(1256) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 1256, i64 noundef range(i64 1, -9223372036854775807) 8) #47 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h91f90877dbd1167aE.exit", !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 1256) #54
  unreachable

"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h91f90877dbd1167aE.exit": ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 880
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1154 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.j, align 8, !noundef !24 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23138)
  %i.k = load i16, ptr %i.d, align 2, !noalias !23139, !noundef !24
  %i.l = zext i16 %i.k to i64
  %i.m = xor i64 %.val3, -1
  %i.n = add i64 %i.l, %i.m                       ; 5 uses
  %i.o = trunc i64 %i.n to i16
  store i16 %i.o, ptr %i.i, align 2, !alias.scope !23138, !noalias !23137
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 888 ; 2 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %.val3 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !23139 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !23139 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !23139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23139
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %.val3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.r, i64 80, i1 false), !noalias !23139
  %i.s = icmp ult i64 %i.n, 12
  br i1 %i.s, label %bb.g, label %bb.c, !prof !29

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h91f90877dbd1167aE.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.n, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @665) #54
          to label %bb.e unwind label %bb.d, !noalias !23139

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$xtask..common..assets..Asset$GT$17h68197de1087764feE"(ptr noalias noundef align 8 dereferenceable(80) %i.a) #55, !noalias !23139
  %i.u = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.u, label %bb.p, label %bb.f

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !23140
  br label %bb.p

bb.g:                                             ; preds = %"_ZN5alloc11collections5btree4node25InternalNode$LT$K$C$V$GT$3new17h91f90877dbd1167aE.exit"
  %i.v = add i64 %.val3, 1                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 888
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.v
  %i.y = mul nuw nsw i64 %i.n, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull readonly align 8 %i.x, i64 %i.y, i1 false), !alias.scope !23141, !noalias !23137
  %i.z = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.v
  %i.aa = mul nuw nsw i64 %i.n, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(1160) %i.f, ptr nonnull readonly align 8 %i.z, i64 %i.aa, i1 false), !alias.scope !23142, !noalias !23137
  %i.ab = trunc i64 %.val3 to i16
  store i16 %i.ab, ptr %i.d, align 2, !noalias !23139
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !23138
  store i64 %.sroa.0.0.copyload.i, ptr %i.b, align 8, !alias.scope !23137, !noalias !23138
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !23137, !noalias !23138
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.57.0..sroa_idx.i, align 8, !alias.scope !23137, !noalias !23138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23139
  %i.ad = load i16, ptr %i.i, align 2, !noundef !24 ; 2 uses
  %i.ae = zext i16 %i.ad to i64                   ; 3 uses
  %i.af = add nuw nsw i64 %i.ae, 1                ; 3 uses
  %i.ag = icmp ult i16 %i.ad, 12
  br i1 %i.ag, label %bb.i, label %bb.h, !prof !57

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.af, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @666) #54
          to label %bb.o unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1160 ; 2 uses
  %i.ai = zext i16 %i.e to i64
  %i.aj = sub i64 %i.ai, %.val3
  %i.ak = icmp eq i64 %i.aj, %i.af
  br i1 %i.ak, label %bb.l, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @663, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @664) #54
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr81drop_in_place$LT$$LP$alloc..string..String$C$xtask..common..assets..Asset$RP$$GT$17h48c9b1ed39c51d59E"(ptr noalias noundef align 8 dereferenceable(104) %i.b) #55
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %i.c, i64 1168
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %.val3
  %i.ao = shl nuw nsw i64 %i.af, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.an, i64 %i.ao, i1 false), !alias.scope !23143
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load i64, ptr %2, align 8, !noundef !24    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23144)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.013.i.i = phi i64 [ 0, %bb.l ], [ %spec.select10.i.i, %bb.m ] ; 5 uses
  %i.ap = icmp samesign uge i64 %.sroa.0.013.i.i, %i.ae ; 2 uses
  %not..i.i = xor i1 %i.ap, true
  %i.aq = zext i1 %not..i.i to i64
  %spec.select10.i.i = add nuw nsw i64 %.sroa.0.013.i.i, %i.aq ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.0.013.i.i, 12
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.sroa.0.013.i.i
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !23144, !noalias !23145, !nonnull !24, !noundef !24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 880
  store ptr %i.f, ptr %i.au, align 8, !noalias !23146
  %i.av = trunc nuw nsw i64 %.sroa.0.013.i.i to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 1152
  store i16 %i.av, ptr %i.aw, align 8, !noalias !23147
  %.not.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i, %i.ae
  %or.cond.i.i = select i1 %i.ap, i1 true, i1 %.not.i.i.i.i
  br i1 %or.cond.i.i, label %bb.n, label %bb.m

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.c, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %3, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.f, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %3, ptr %i.ba, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %bb.h
  unreachable

bb.p:                                             ; preds = %bb.k, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.al, %bb.k ], [ %i.t, %bb.d ], [ %i.t, %bb.f ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 1256, i64 noundef 8) #47
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node29BalancingContext$LT$K$C$V$GT$15bulk_steal_left17h18685464b2ea6215E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [80 x i8], align 8            ; 2 uses
  %i.a = alloca [80 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1154 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !24
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !24, !noundef !24 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1154 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !24
  %i.k = zext i16 %i.j to i64                     ; 5 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @669, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @670) #54
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @671, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @672) #54
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 888 ; 4 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %1
  %i.s = mul nuw nsw i64 %i.k, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false), !alias.scope !23171
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %1
  %i.u = mul nuw nsw i64 %i.k, 80
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.h, i64 %i.u, i1 false), !alias.scope !23172
  %i.v = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.w = sub nuw nsw i64 %i.f, %i.v               ; 5 uses
  %i.x = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23174)
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %_ZN5alloc11collections5btree4node13move_to_slice17h5292741c0fcd435bE.exit, label %bb.f, !prof !29

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @663, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @664) #54, !noalias !23175
  unreachable

_ZN5alloc11collections5btree4node13move_to_slice17h5292741c0fcd435bE.exit: ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 888 ; 2 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.v
  %i.ab = mul nuw nsw i64 %i.w, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull readonly align 8 %i.aa, i64 %i.ab, i1 false), !alias.scope !23175
  %i.ac = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.v
  %i.ad = mul nuw nsw i64 %i.w, 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull readonly align 8 %i.ac, i64 %i.ad, i1 false), !alias.scope !23176
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.n
  %i.af = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.af, i64 80, i1 false)
  %.val186 = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val187 = load i64, ptr %i.ag, align 8, !noundef !24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val186, i64 888
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %.val187 ; 2 uses
  %i.aj = getelementptr inbounds nuw [80 x i8], ptr %.val186, i64 %.val187 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.a, i64 80, i1 false), !noalias !23177
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.al, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.2, i64 80, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load i64, ptr %i.am, align 8, !noundef !24
  %.not183 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !24
  %.not184 = icmp eq i64 %i.ap, 0                 ; 2 uses
  br i1 %.not183, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h5292741c0fcd435bE.exit
  br i1 %.not184, label %bb.i, label %bb.k, !prof !26

bb.h:                                             ; preds = %_ZN5alloc11collections5btree4node13move_to_slice17h5292741c0fcd435bE.exit
  br i1 %.not184, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit", label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @673) #54
  unreachable

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit.loopexit.unr-lcssa": ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit", label %.epil.preheader

.epil.preheader:                                  ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit.loopexit.unr-lcssa", %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit.loopexit.unr-lcssa" ]
  %lcmp.mod191 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !23178, !nonnull !24, !noundef !24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 880
  store ptr %i.h, ptr %i.at, align 8, !noalias !23179
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 1152
  store i16 %i.au, ptr %i.av, align 8, !noalias !23179
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit", label %bb.j, !llvm.loop !23165

"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit": ; preds = %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit.loopexit.unr-lcssa", %bb.j, %bb.h
  ret void

bb.k:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 1160 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !23180
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 1160
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.v
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !23181
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !23178, !nonnull !24, !noundef !24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 880
  store ptr %i.h, ptr %i.bj, align 8, !noalias !23179
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 1152
  store i16 %i.bk, ptr %i.bl, align 8, !noalias !23179
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !23178, !nonnull !24, !noundef !24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 880
  store ptr %i.h, ptr %i.bp, align 8, !noalias !23179
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 1152
  store i16 %i.bq, ptr %i.br, align 8, !noalias !23179
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !noalias !23178, !nonnull !24, !noundef !24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 880
  store ptr %i.h, ptr %i.bv, align 8, !noalias !23179
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1152
  store i16 %i.bw, ptr %i.bx, align 8, !noalias !23179
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !23178, !nonnull !24, !noundef !24 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 880
end_hunk_3
begin_hunk_4_@"_ZN5alloc11collections5btree6remove259_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14remove_leaf_kv17h98f9d5ee1422ff9cE":bb.a
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i172.i.prol
  %i.gc = load ptr, ptr %i.gb, align 8, !noalias !23352, !nonnull !24, !noundef !24 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 880
  store ptr %i.db, ptr %i.gd, align 8, !noalias !23353
  %i.ge = trunc nuw nsw i64 %.sroa.0.06.i172.i.prol to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 1152
  store i16 %i.ge, ptr %i.gf, align 8, !noalias !23353
  %prol.iter154.next = add i64 %prol.iter154, 1   ; 2 uses
  %prol.iter154.cmp.not = icmp eq i64 %prol.iter154.next, %xtraiter152
  br i1 %prol.iter154.cmp.not, label %.lr.ph.i171.i.prol.loopexit, label %.lr.ph.i171.i.prol, !llvm.loop !23316

.lr.ph.i171.i.prol.loopexit:                      ; preds = %.lr.ph.i171.i.prol, %_ZN5alloc11collections5btree4node13move_to_slice17h76b1524b761f2be7E.exit.i
  %.sroa.0.06.i172.i.unr = phi i64 [ %.pre-phi90112, %_ZN5alloc11collections5btree4node13move_to_slice17h76b1524b761f2be7E.exit.i ], [ %i.fz, %.lr.ph.i171.i.prol ]
  %i.gg = icmp ult i64 %i.fy, 3
  br i1 %i.gg, label %.noexc103, label %.lr.ph.i171.i

.lr.ph.i171.i:                                    ; preds = %.lr.ph.i171.i.prol.loopexit, %.lr.ph.i171.i
  %.sroa.0.06.i172.i = phi i64 [ %i.gz, %.lr.ph.i171.i ], [ %.sroa.0.06.i172.i.unr, %.lr.ph.i171.i.prol.loopexit ] ; 7 uses
  %i.gh = add nuw nsw i64 %.sroa.0.06.i172.i, 1   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.sroa.0.06.i172.i
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !23352, !nonnull !24, !noundef !24 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 880
  store ptr %i.db, ptr %i.gk, align 8, !noalias !23353
  %i.gl = trunc nuw nsw i64 %.sroa.0.06.i172.i to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 1152
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !23353
  %i.gn = add nuw nsw i64 %.sroa.0.06.i172.i, 2   ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gh
  %i.gp = load ptr, ptr %i.go, align 8, !noalias !23352, !nonnull !24, !noundef !24 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 880
  store ptr %i.db, ptr %i.gq, align 8, !noalias !23353
  %i.gr = trunc nuw nsw i64 %i.gh to i16
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1152
  store i16 %i.gr, ptr %i.gs, align 8, !noalias !23353
  %i.gt = add nuw nsw i64 %.sroa.0.06.i172.i, 3   ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gn
  %i.gv = load ptr, ptr %i.gu, align 8, !noalias !23352, !nonnull !24, !noundef !24 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 880
  store ptr %i.db, ptr %i.gw, align 8, !noalias !23353
  %i.gx = trunc nuw nsw i64 %i.gn to i16
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 1152
  store i16 %i.gx, ptr %i.gy, align 8, !noalias !23353
  %i.gz = add nuw nsw i64 %.sroa.0.06.i172.i, 4
  %i.ha = icmp ult i64 %.sroa.0.06.i172.i, 9
  tail call void @llvm.assume(i1 %i.ha)
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gt
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !23352, !nonnull !24, !noundef !24 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 880
  store ptr %i.db, ptr %i.hd, align 8, !noalias !23353
  %i.he = trunc nuw nsw i64 %i.gt to i16
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 1152
  store i16 %i.he, ptr %i.hf, align 8, !noalias !23353
  %exitcond.not.i173.i.3 = icmp eq i64 %i.gt, %.pre-phi92111
  br i1 %exitcond.not.i173.i.3, label %.noexc103, label %.lr.ph.i171.i

.noexc103:                                        ; preds = %.lr.ph.i171.i.prol.loopexit, %.lr.ph.i171.i, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit.i"
  %.sink.i108 = phi i64 [ 1160, %"_ZN5alloc11collections5btree4node119NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$30correct_childrens_parent_links17hdfead2c083cc308fE.exit.i" ], [ 1256, %.lr.ph.i171.i ], [ 1256, %.lr.ph.i171.i.prol.loopexit ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dc, i64 noundef %.sink.i108, i64 noundef 8) #47, !noalias !23340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.hg = load i16, ptr %i.de, align 2, !noalias !23335, !noundef !24 ; 2 uses
  %i.hh = icmp ugt i16 %i.hg, 4
  br i1 %i.hh, label %.loopexit, label %.lr.ph

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23354)
  %i.hi = load ptr, ptr %2, align 8, !alias.scope !23354, !noundef !24 ; 5 uses
  store ptr null, ptr %2, align 8, !alias.scope !23354
  %.not.i104 = icmp eq ptr %i.hi, null
  br i1 %.not.i104, label %bb.ae, label %bb.ad, !prof !26

bb.ad:                                            ; preds = %bb.ac
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23355)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !23355, !noalias !23354, !noundef !24 ; 2 uses
  %.not.i.i105 = icmp eq i64 %i.hk, 0
  br i1 %.not.i.i105, label %.invoke, label %bb.af, !prof !26

bb.ae:                                            ; preds = %bb.ac
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @650) #54
          to label %.noexc107 unwind label %bb.f

.noexc107:                                        ; preds = %bb.ae
  unreachable

.loopexit:                                        ; preds = %.noexc103, %bb.t, %bb.x, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.hl = load ptr, ptr %i.hi, align 8, !alias.scope !23355, !noalias !23354, !nonnull !24, !noundef !24 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 1160
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !23356, !nonnull !24, !noundef !24 ; 2 uses
  store ptr %i.hn, ptr %i.hi, align 8, !alias.scope !23355, !noalias !23354
  %i.ho = add i64 %i.hk, -1
  store i64 %i.ho, ptr %i.hj, align 8, !alias.scope !23355, !noalias !23354
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 880
  store ptr null, ptr %i.hp, align 8, !noalias !23356
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hl, i64 noundef 1256, i64 noundef 8) #47, !noalias !23356
  store ptr %i.hi, ptr %2, align 8, !alias.scope !23354
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.n, %bb.a, %.loopexit
  %.sroa.06.0.sink = phi ptr [ %i.l, %bb.a ], [ %.sroa.06.0, %.loopexit ], [ %.sroa.06.0, %bb.n ], [ %.sroa.06.0, %bb.af ]
  %.sroa.97.0.sink = phi i64 [ %i.ac, %bb.a ], [ %.sroa.97.0, %.loopexit ], [ %.sroa.97.0, %bb.n ], [ %.sroa.97.0, %bb.af ]
  %.sroa.15.0.sink = phi i64 [ %i.r, %bb.a ], [ %.sroa.15.0, %.loopexit ], [ %.sroa.15.0, %bb.n ], [ %.sroa.15.0, %bb.af ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.k, i64 104, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.06.0.sink, ptr %i.hq, align 8
  %.sroa.1274.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.97.0.sink, ptr %.sroa.1274.0..sroa_idx77, align 8
  %.sroa.1579.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.15.0.sink, ptr %.sroa.1579.0..sroa_idx82, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h99338650aa43862fE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #23 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !30, !noundef !24 ; 4 uses
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17hbd70b100072f5f6bE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23359)
  %i.b = load i64, ptr %0, align 8, !range !30, !alias.scope !23359, !noundef !24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !23359, !noundef !24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !23359, !noundef !24 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %.not.i = icmp ugt i64 %i.d, %i.g
  br i1 %.not.i, label %bb.b, label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17he6b7e9eb3374c44bE.exit"

bb.b:                                             ; preds = %bb.a
  %i.h = sub i64 %i.a, %i.d                       ; 4 uses
  %i.i = sub i64 %i.f, %i.h                       ; 3 uses
  %i.j = icmp ule i64 %i.h, %i.i
  %i.k = sub nsw i64 %i.b, %i.a
  %.not3.i = icmp ult i64 %i.k, %i.i
  %or.cond.i = select i1 %i.j, i1 true, i1 %.not3.i
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.b, %i.h                       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !23359, !nonnull !24, !noundef !24 ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.d
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.l
  %i.q = shl i64 %i.h, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr nonnull align 8 %i.o, i64 %i.q, i1 false), !noalias !23359
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !23359
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17he6b7e9eb3374c44bE.exit"

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !23359, !nonnull !24, !noundef !24 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.a
  %i.u = shl i64 %i.i, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.u, i1 false), !noalias !23359
  br label %"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17he6b7e9eb3374c44bE.exit"

"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$24handle_capacity_increase17he6b7e9eb3374c44bE.exit": ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN4core3str21_$LT$impl$u20$str$GT$20make_ascii_lowercase17h04ba14e0c4033e0dE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !23372
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #47, !noalias !23372 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %iter.check

bb.b:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i", %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i" ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54, !noalias !23373
  unreachable

iter.check:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i"
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %1, i64 %2, i1 false), !noalias !23374
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %2, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %3 = and i64 %2, 24
  %n.vec = and i64 %2, 9223372036854775776        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.e, align 1, !alias.scope !23375 ; 2 uses
  %wide.load11 = load <16 x i8>, ptr %i.f, align 1, !alias.scope !23375 ; 2 uses
  %i.g = add <16 x i8> %wide.load, splat (i8 -65)
  %i.h = add <16 x i8> %wide.load11, splat (i8 -65)
  %i.i = icmp ult <16 x i8> %i.g, splat (i8 26)
  %i.j = icmp ult <16 x i8> %i.h, splat (i8 26)
  %i.k = select <16 x i1> %i.i, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.l = select <16 x i1> %i.j, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.m = or <16 x i8> %i.k, %wide.load
  %i.n = or <16 x i8> %i.l, %wide.load11
  store <16 x i8> %i.m, ptr %i.e, align 1, !alias.scope !23375
  store <16 x i8> %i.n, ptr %i.f, align 1, !alias.scope !23375
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !23369

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %"_ZN4core3str21_$LT$impl$u20$str$GT$20make_ascii_lowercase17h04ba14e0c4033e0dE.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %3, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %2, 9223372036854775800      ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next15, %vec.epilog.vector.body ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 %index13 ; 2 uses
  %wide.load14 = load <8 x i8>, ptr %i.p, align 1, !alias.scope !23375 ; 2 uses
  %i.q = add <8 x i8> %wide.load14, splat (i8 -65)
  %i.r = icmp ult <8 x i8> %i.q, splat (i8 26)
  %i.s = select <8 x i1> %i.r, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.t = or <8 x i8> %i.s, %wide.load14
  store <8 x i8> %i.t, ptr %i.p, align 1, !alias.scope !23375
  %index.next15 = add nuw i64 %index13, 8         ; 2 uses
  %i.u = icmp eq i64 %index.next15, %n.vec12
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23370

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n16 = icmp eq i64 %2, %n.vec12
  br i1 %cmp.n16, label %"_ZN4core3str21_$LT$impl$u20$str$GT$20make_ascii_lowercase17h04ba14e0c4033e0dE.exit", label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.05.i = phi i64 [ %i.aa, %.lr.ph.i ], [ %.sroa.0.05.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.0.05.i ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !23375, !noundef !24 ; 2 uses
  %i.x = add i8 %i.w, -65
  %i.y = icmp ult i8 %i.x, 26
  %i.z = select i1 %i.y, i8 32, i8 0
  %.sroa.03.0.i = or i8 %i.z, %i.w
  store i8 %.sroa.03.0.i, ptr %i.v, align 1, !alias.scope !23375
  %i.aa = add nuw nsw i64 %.sroa.0.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %2
  br i1 %exitcond.not.i, label %"_ZN4core3str21_$LT$impl$u20$str$GT$20make_ascii_lowercase17h04ba14e0c4033e0dE.exit", label %.lr.ph.i, !llvm.loop !23371

"_ZN4core3str21_$LT$impl$u20$str$GT$20make_ascii_lowercase17h04ba14e0c4033e0dE.exit": ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i8 = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.c, %middle.block ], [ %i.c, %vec.epilog.middle.block ], [ %i.c, %.lr.ph.i ]
  store i64 %2, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i8, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx4, align 8
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h3ca35b6958daa52aE"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.c = icmp eq i64 %.val, 0
  br i1 %i.c, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit": ; preds = %bb.b, %bb.a
  %i.e = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17hd0d6b0e9c24847a3E.exit4", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17hd0d6b0e9c24847a3E.exit4"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #47
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17hd0d6b0e9c24847a3E.exit4"

"_ZN4core3ptr91drop_in_place$LT$alloc..sync..Weak$LT$std..path..PathBuf$C$$RF$alloc..alloc..Global$GT$$GT$17hd0d6b0e9c24847a3E.exit4": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h19bef0b4b1df514bE.exit", %bb.c, %bb.d
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h51bcab294bb756b1E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23381)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !23382, !nonnull !24, !noundef !24
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !23382
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$GT$17hc2a7f9e83367164eE.exit"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc7a52ad3031dc19bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr168drop_in_place$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$GT$17hc2a7f9e83367164eE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit"

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #47
  br label %"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit"

"_ZN4core3ptr168drop_in_place$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$GT$17hc2a7f9e83367164eE.exit": ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit2", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$GT$17hc2a7f9e83367164eE.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.g, label %"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit2"

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #47
  br label %"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit2"

"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit2": ; preds = %"_ZN4core3ptr168drop_in_place$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$GT$17hc2a7f9e83367164eE.exit", %bb.f, %bb.g
  ret void

"_ZN4core3ptr220drop_in_place$LT$alloc..sync..Weak$LT$tokio..util..idle_notified_set..ListEntry$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$$LP$$RP$$C$anyhow..Error$GT$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$17hf4db5f45f73b2cb4E.exit": ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.f
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h56d1eb59f44eeb35E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #25 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23385)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !23385 ; 2 uses
  %i.c = icmp eq i64 %.val.i, 0
  br i1 %i.c, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !23385, !nonnull !24, !noundef !24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !23385
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit": ; preds = %bb.b, %bb.a
  %i.e = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.e, label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Weak$LT$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h5d36495247218467E.exit2", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Weak$LT$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h5d36495247218467E.exit2"

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #47
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Weak$LT$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h5d36495247218467E.exit2"

"_ZN4core3ptr94drop_in_place$LT$alloc..sync..Weak$LT$alloc..string..String$C$$RF$alloc..alloc..Global$GT$$GT$17h5d36495247218467E.exit2": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit", %bb.c, %bb.d
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h778489a7b76db078E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23398)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23399)
  %i.c = load i64, ptr %i.b, align 8, !range !47, !alias.scope !23400, !noundef !24 ; 3 uses
  %i.d = icmp eq i64 %i.c, -9223372036854775808
  br i1 %i.d, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23401)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6d85db459e8f6c20E.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !23402, !nonnull !24, !noundef !24
end_hunk_4
begin_hunk_5_@"_ZN5xtask5bench3run28_$u7b$$u7b$closure$u7d$$u7d$17he741c51a1e9e91c4E":bb.a
  br label %"_ZN4core3ptr155drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$C$anyhow..Error$GT$$GT$$GT$17h40095ea6e216d3ddE.exit"

bb.lk:                                            ; preds = %bb.li
  %i.zx = load ptr, ptr @"_ZN5xtask5bench3run28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h9e5cf940a865fc94E", align 8, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  %i.zy = getelementptr i8, ptr %i.zx, i64 32
  %.val248 = load ptr, ptr %i.zy, align 8, !nonnull !24, !align !42, !noundef !24
  %i.zz = getelementptr i8, ptr %i.zx, i64 40
  %.val249 = load i64, ptr %i.zz, align 8, !noundef !24
  store i64 3, ptr %i.fq, align 8, !alias.scope !28553
  %.sroa.6602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store ptr %.val248, ptr %.sroa.6602.0..sroa_idx, align 8, !alias.scope !28553
  %.sroa.8603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %.val249, ptr %.sroa.8603.0..sroa_idx, align 8, !alias.scope !28553
  %i.aaa = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.ll unwind label %bb.lj     ; 2 uses

bb.ll:                                            ; preds = %bb.lk
  %i.aab = extractvalue { ptr, ptr } %i.aaa, 0    ; 2 uses
  %i.aac = extractvalue { ptr, ptr } %i.aaa, 1    ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.aae = load ptr, ptr %i.aad, align 8, !invariant.load !24, !nonnull !24
  %i.aaf = invoke noundef zeroext i1 %i.aae(ptr noundef align 1 %i.aab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fq)
          to label %bb.ln unwind label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr155drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$C$anyhow..Error$GT$$GT$$GT$17h40095ea6e216d3ddE.exit"

bb.ln:                                            ; preds = %bb.ll
  br i1 %i.aaf, label %bb.lo, label %bb.lr

bb.lo:                                            ; preds = %bb.ln
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  %i.aah = load ptr, ptr @"_ZN5xtask5bench3run28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h9e5cf940a865fc94E", align 8, !nonnull !24, !align !31, !noundef !24
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  store ptr @870, ptr %i.fn, align 8, !alias.scope !28554, !noalias !28555
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store i64 1, ptr %i.aaj, align 8, !alias.scope !28554, !noalias !28555
  %i.aak = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store ptr null, ptr %i.aak, align 8, !alias.scope !28554, !noalias !28555
  %i.aal = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aal, align 8, !alias.scope !28554, !noalias !28555
  %i.aam = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 0, ptr %i.aam, align 8, !alias.scope !28554, !noalias !28555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fm)
  %i.aan = getelementptr i8, ptr %0, i64 280
  %.val259 = load i64, ptr %i.aan, align 8, !noundef !24 ; 2 uses
  %i.aao = icmp ult i64 %.val259, 384307168202282326
  call void @llvm.assume(i1 %i.aao)
  store i64 %.val259, ptr %i.fm, align 8
  store ptr %i.fn, ptr %i.fo, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store ptr @802, ptr %i.aap, align 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store ptr %i.fm, ptr %i.aaq, align 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store ptr @871, ptr %i.aar, align 8
  store i64 1, ptr %i.fp, align 8, !alias.scope !28556, !noalias !28557
  %.sroa.4.0..sroa_idx.i332 = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store ptr %i.fo, ptr %.sroa.4.0..sroa_idx.i332, align 8, !alias.scope !28556, !noalias !28557
  %.sroa.5.0..sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i64 2, ptr %.sroa.5.0..sroa_idx.i333, align 8, !alias.scope !28556, !noalias !28557
  %i.aas = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  store ptr %i.aai, ptr %i.aas, align 8, !alias.scope !28556, !noalias !28557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 8 dereferenceable(24) %i.fq, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.zx, ptr noundef nonnull align 1 %i.aab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.fp)
          to label %bb.lq unwind label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.aat = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %"_ZN4core3ptr155drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$C$anyhow..Error$GT$$GT$$GT$17h40095ea6e216d3ddE.exit"

bb.lq:                                            ; preds = %bb.lo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fp)
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.ln, %bb.li, %bb.lh, %bb.ly
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0604.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0604.sroa.11.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6811)
  %i.aau = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28558)
  %i.aaw = load i64, ptr %i.aav, align 8, !range !39, !alias.scope !28558, !noalias !28559, !noundef !24 ; 2 uses
  %i.aax = icmp eq i64 %i.aaw, -9223372036854775807
  br i1 %i.aax, label %bb.ma, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  call void @llvm.experimental.noalias.scope.decl(metadata !28560)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !28561
  %.not.i.i = icmp eq i64 %i.aaw, -9223372036854775808
  br i1 %.not.i.i, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aav, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476)
          to label %.noexc336 unwind label %bb.lz

.noexc336:                                        ; preds = %bb.lt
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.af, align 8, !noalias !28562
  br label %bb.lu

bb.lu:                                            ; preds = %.noexc336, %bb.ls
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i, %.noexc336 ], [ -9223372036854775808, %bb.ls ]
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aav, i64 24
  %i.aaz = load ptr, ptr %i.aay, align 8, !alias.scope !28563, !noalias !28564, !nonnull !24, !noundef !24 ; 2 uses
  %i.aba = atomicrmw add ptr %i.aaz, i64 1 monotonic, align 8, !noalias !28564
  %i.abb = icmp slt i64 %i.aba, 0
  br i1 %i.abb, label %bb.lv, label %"_ZN68_$LT$xtask..common..client..Client$u20$as$u20$core..clone..Clone$GT$5clone17ha1e0008f0e39be46E.exit.i"

bb.lv:                                            ; preds = %bb.lu
  call void @llvm.trap()
  unreachable

"_ZN68_$LT$xtask..common..client..Client$u20$as$u20$core..clone..Clone$GT$5clone17ha1e0008f0e39be46E.exit.i": ; preds = %bb.lu
  %i.abc = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6811, ptr noundef nonnull align 8 dereferenceable(16) %i.abc, i64 16, i1 false), !noalias !28558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !28561
  br label %bb.ma

bb.lw:                                            ; preds = %bb.lg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu)
  %i.abd = load ptr, ptr @"_ZN5xtask5bench3run28_$u7b$$u7b$closure$u7d$$u7d$10__CALLSITE17h9e5cf940a865fc94E", align 8, !nonnull !24, !align !31, !noundef !24
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs)
  store ptr @870, ptr %i.fs, align 8, !alias.scope !28565, !noalias !28566
  %i.abf = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 1, ptr %i.abf, align 8, !alias.scope !28565, !noalias !28566
  %i.abg = getelementptr inbounds nuw i8, ptr %i.fs, i64 32
  store ptr null, ptr %i.abg, align 8, !alias.scope !28565, !noalias !28566
  %i.abh = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.abh, align 8, !alias.scope !28565, !noalias !28566
  %i.abi = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 0, ptr %i.abi, align 8, !alias.scope !28565, !noalias !28566
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr)
  %i.abj = getelementptr i8, ptr %0, i64 280
  %.val258 = load i64, ptr %i.abj, align 8, !noundef !24 ; 2 uses
  %i.abk = icmp ult i64 %.val258, 384307168202282326
  call void @llvm.assume(i1 %i.abk)
  store i64 %.val258, ptr %i.fr, align 8
  store ptr %i.fs, ptr %i.ft, align 8
  %i.abl = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  store ptr @802, ptr %i.abl, align 8
  %i.abm = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store ptr %i.fr, ptr %i.abm, align 8
  %i.abn = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  store ptr @871, ptr %i.abn, align 8
  store i64 1, ptr %i.fu, align 8
  %.sroa.7595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr %i.ft, ptr %.sroa.7595.0..sroa_idx, align 8
  %.sroa.8596.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  store i64 2, ptr %.sroa.8596.0..sroa_idx, align 8
  %.sroa.9597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  store ptr %i.abe, ptr %.sroa.9597.0..sroa_idx, align 8
  invoke fastcc void @"_ZN5xtask5bench3run28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hfd032fd4a6ea1701E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(32) %i.fu)
          to label %bb.ly unwind label %bb.lx

bb.lx:                                            ; preds = %bb.lw
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  br label %"_ZN4core3ptr155drop_in_place$LT$tokio..runtime..task..join..JoinHandle$LT$core..result..Result$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$C$anyhow..Error$GT$$GT$$GT$17h40095ea6e216d3ddE.exit"

bb.ly:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft)
  br label %bb.lr

bb.lz:                                            ; preds = %bb.lt
  %i.abp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6811)
  br label %.body345

bb.ma:                                            ; preds = %bb.lr, %"_ZN68_$LT$xtask..common..client..Client$u20$as$u20$core..clone..Clone$GT$5clone17ha1e0008f0e39be46E.exit.i"
  %.sroa.7812.0 = phi ptr [ %i.aaz, %"_ZN68_$LT$xtask..common..client..Client$u20$as$u20$core..clone..Clone$GT$5clone17ha1e0008f0e39be46E.exit.i" ], [ undef, %bb.lr ]
  %.sroa.0810.0 = phi i64 [ %.sroa.0.0.i.i, %"_ZN68_$LT$xtask..common..client..Client$u20$as$u20$core..clone..Clone$GT$5clone17ha1e0008f0e39be46E.exit.i" ], [ -9223372036854775807, %bb.lr ]
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 659
  %i.abr = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.0604.sroa.0.120..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0604.sroa.0, i64 120
  store i32 0, ptr %i.abq, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0604.sroa.0.120..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.abr, i64 256, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0604.sroa.11.sroa.5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6811, i64 16, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.abs = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.abt = load ptr, ptr %i.abs, align 8, !nonnull !24, !noundef !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.0604.sroa.0, ptr noundef nonnull align 8 dereferenceable(120) %0, i64 120, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6811)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !28567
  br label %bb.mb

bb.mb:                                            ; preds = %bb.mb, %bb.ma
  %i.abu = atomicrmw add ptr @_ZN5tokio7runtime4task2id2Id4next7NEXT_ID17h767d8531f09ca4cbE, i64 1 monotonic, align 8, !noalias !28567 ; 2 uses
  %.not.i.i339 = icmp eq i64 %i.abu, 0
  br i1 %.not.i.i339, label %bb.mb, label %bb.mc

bb.mc:                                            ; preds = %bb.mb
  %i.abv = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  store i64 %i.abu, ptr %i.ae, align 8, !noalias !28567
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !28567
  store ptr %i.ae, ptr %i.ac, align 8, !noalias !28567
  %.sroa.6.0..sroa_idx.i.i340 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx.i.i340, align 8, !noalias !28567
  %.sroa.7.0..sroa_idx.i.i341 = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(376) %.sroa.7.0..sroa_idx.i.i341, ptr noundef nonnull align 8 dereferenceable(376) %.sroa.0604.sroa.0, i64 376, i1 false)
  %.sroa.0604.sroa.6.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 392
  store i64 0, ptr %.sroa.0604.sroa.6.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, align 8
  %.sroa.0604.sroa.7.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0604.sroa.7.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, align 8
  %.sroa.0604.sroa.8.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 408
  store i64 0, ptr %.sroa.0604.sroa.8.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, align 8
  %.sroa.0604.sroa.9.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0604.sroa.9.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.0604.sroa.10.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0604.sroa.10.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %.sroa.0604.sroa.11.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 480
  store i64 %.sroa.0810.0, ptr %.sroa.0604.sroa.11.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, align 8
  %.sroa.0604.sroa.11.sroa.5.0..sroa.0604.sroa.11.0..sroa.7.0..sroa_idx.i.i341.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0604.sroa.11.sroa.5.0..sroa.0604.sroa.11.0..sroa.7.0..sroa_idx.i.i341.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0604.sroa.11.sroa.5, i64 16, i1 false)
  %.sroa.0604.sroa.11.sroa.6.0..sroa.0604.sroa.11.0..sroa.7.0..sroa_idx.i.i341.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 504
  store ptr %.sroa.7812.0, ptr %.sroa.0604.sroa.11.sroa.6.0..sroa.0604.sroa.11.0..sroa.7.0..sroa_idx.i.i341.sroa_idx.sroa_idx, align 8
  %.sroa.10605.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 512
  store ptr %i.abt, ptr %.sroa.10605.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, align 8
  %.sroa.11606.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 520
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11606.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.zh, i64 16, i1 false)
  %.sroa.12608.0..sroa.7.0..sroa_idx.i.i341.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 4392
  store i8 0, ptr %.sroa.12608.0..sroa.7.0..sroa_idx.i.i341.sroa_idx, align 8
  %i.abw = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN5tokio7runtime7context7CONTEXT29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17hd4467768b74c4adaE") ; 22 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 72 ; 4 uses
  %i.aby = load i8, ptr %i.abx, align 8, !range !35, !noalias !28568, !noundef !24
  switch i8 %i.aby, label %default.unreachable890 [
    i8 0, label %bb.md
    i8 1, label %bb.me
    i8 2, label %bb.oc
  ], !prof !91

bb.md:                                            ; preds = %bb.mc
  invoke void @_ZN3std3sys12thread_local11destructors10linux_like8register17h1010b5e789139aefE(ptr noundef nonnull align 8 %i.abw, ptr noundef nonnull @_ZN3std3sys12thread_local6native5eager7destroy17h6b03244abd963f7fE)
          to label %.noexc.i.i.i344 unwind label %bb.oa, !noalias !28568

.noexc.i.i.i344:                                  ; preds = %bb.md
  store i8 1, ptr %i.abx, align 8, !noalias !28568
  br label %bb.me

bb.me:                                            ; preds = %.noexc.i.i.i344, %bb.mc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !28568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4400) %i.z, ptr noundef nonnull align 8 dereferenceable(4400) %i.ac, i64 4400, i1 false), !noalias !28567
  %i.abz = load i64, ptr %i.abw, align 8, !noalias !28569, !noundef !24 ; 2 uses
  %i.aca = icmp ugt i64 %i.abz, 9223372036854775806
  br i1 %i.aca, label %bb.mf, label %bb.mg, !prof !26

bb.mf:                                            ; preds = %bb.me
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @759) #54
          to label %bb.mh unwind label %bb.nz, !noalias !28569

bb.mg:                                            ; preds = %bb.me
  %i.acb = add nuw nsw i64 %i.abz, 1
  store i64 %i.acb, ptr %i.abw, align 8, !noalias !28569
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abw, i64 8 ; 2 uses
  %i.acd = load i64, ptr %i.acc, align 8, !range !34, !noalias !28569, !noundef !24 ; 2 uses
  %.not.i.i.i.i342 = icmp eq i64 %i.acd, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !28569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(4400) %i.y, ptr noundef nonnull align 8 dereferenceable(4400) %i.ac, i64 4400, i1 false), !noalias !28567
  br i1 %.not.i.i.i.i342, label %bb.nw, label %bb.mi

common.resume.i.i.i.i.i.i:                        ; preds = %bb.nx, %bb.ns, %.noexc.i17.i.i.i.i.i.i, %bb.nm, %.noexc.i.i14.i.i.i.i.i.i, %bb.nj, %bb.mz, %.noexc.i.i.i.i.i.i.i343, %bb.mt, %.noexc.i.i.i.i.i.i.i.i, %bb.mq
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.aen, %bb.nx ], [ %i.adg, %bb.mz ], [ %i.ada, %bb.mt ], [ %i.acx, %bb.mq ], [ %i.ada, %.noexc.i.i.i.i.i.i.i.i ], [ %i.adg, %.noexc.i.i.i.i.i.i.i343 ], [ %i.aec, %bb.nm ], [ %i.adz, %bb.nj ], [ %i.aec, %.noexc.i.i14.i.i.i.i.i.i ], [ %i.aei, %.noexc.i17.i.i.i.i.i.i ], [ %i.aei, %bb.ns ]
  %i.ace = load i64, ptr %i.abw, align 8, !noalias !28569, !noundef !24
  %i.acf = add i64 %i.ace, -1
  store i64 %i.acf, ptr %i.abw, align 8, !noalias !28569
  br label %.body345

bb.mh:                                            ; preds = %bb.mf
  unreachable

bb.mi:                                            ; preds = %bb.mg
  %.sroa.08.0.copyload.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !28569, !nonnull !24, !noundef !24
  call void @llvm.experimental.noalias.scope.decl(metadata !28570)
  %i.acg = load i64, ptr %.sroa.08.0.copyload.i.i.i.i, align 8, !range !70, !noalias !28571, !noundef !24 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !28572)
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abw, i64 16 ; 6 uses
  %i.aci = trunc nuw i64 %i.acd to i1
  br i1 %i.aci, label %bb.mj, label %bb.nc

bb.mj:                                            ; preds = %bb.mi
  %.val.i.i.i.i.i.i = load ptr, ptr %i.ach, align 8, !alias.scope !28573, !noalias !28574, !nonnull !24, !noundef !24 ; 6 uses
  %i.acj = atomicrmw add ptr %.val.i.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !28575
  %i.ack = icmp slt i64 %i.acj, 0
  br i1 %i.ack, label %bb.mv, label %bb.mk

bb.mk:                                            ; preds = %bb.mj
  %i.acl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 152
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !28576
  %i.acm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 528 ; 2 uses
  %i.acn = load ptr, ptr %i.acm, align 8, !noalias !28576, !noundef !24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.acn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.mo, label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.aco = atomicrmw add ptr %i.acn, i64 1 monotonic, align 8, !noalias !28576
  %i.acp = icmp slt i64 %i.aco, 0
  br i1 %i.acp, label %bb.mn, label %bb.mm

bb.mm:                                            ; preds = %bb.ml
  %i.acq = load <2 x ptr>, ptr %i.acm, align 8, !noalias !28576
  br label %bb.mo

bb.mn:                                            ; preds = %bb.ml
  call void @llvm.trap()
  unreachable

bb.mo:                                            ; preds = %bb.mm, %bb.mk
  %i.acr = phi <2 x ptr> [ %i.acq, %bb.mm ], [ <ptr null, ptr undef>, %bb.mk ]
  %.sroa.412.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.412.i.i.i.i.i.i.i.i.i.i, i64 4
  %i.acs = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4384) %.sroa.412.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(4384) %i.acs, i64 4384, i1 false), !noalias !28568
  store i64 204, ptr %i.w, align 128, !noalias !28576
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr null, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28576
  %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr @736, ptr %.sroa.56.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !28576
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28576
  %i.act = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %.val.i.i.i.i.i.i, ptr %i.act, align 32, !noalias !28576
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %i.acg, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28576
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 0, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !28576
  %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(4388) %.sroa.510.sroa.4.0..sroa.510.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(4388) %.sroa.412.i.i.i.i.i.i.i.i.i.i, i64 4388, i1 false), !noalias !28576
  %i.acu = getelementptr inbounds nuw i8, ptr %i.w, i64 4440
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.acu, i8 0, i64 24, i1 false), !noalias !28576
  store <2 x ptr> %i.acr, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !28576
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !28577
  %i.acv = call noundef align 128 dereferenceable_or_null(4608) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4608, i64 noundef range(i64 1, -9223372036854775807) 128) #47, !noalias !28577 ; 9 uses
  %i.acw = icmp eq ptr %i.acv, null
  br i1 %i.acw, label %bb.mp, label %_ZN5tokio7runtime4task8new_task17he0fc7e115d94814fE.exit.i.i.i.i.i.i.i.i, !prof !37

bb.mp:                                            ; preds = %bb.mo
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 128, i64 noundef 4608) #54
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.mq, !noalias !28576

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.mp
  unreachable

bb.mq:                                            ; preds = %bb.mp
  %i.acx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr218drop_in_place$LT$tokio..runtime..task..core..Cell$LT$xtask..bench..run..$u7b$$u7b$closure$u7d$$u7d$..$u7b$$u7b$closure$u7d$$u7d$$C$alloc..sync..Arc$LT$tokio..runtime..scheduler..multi_thread..handle..Handle$GT$$GT$$GT$17h3da6b7a3eb02e218E"(ptr noundef nonnull align 128 dereferenceable(4608) %i.w) #55
          to label %common.resume.i.i.i.i.i.i unwind label %bb.mr, !noalias !28576

bb.mr:                                            ; preds = %bb.mq
  %i.acy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !28576
  unreachable

_ZN5tokio7runtime4task8new_task17he0fc7e115d94814fE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.mo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(4608) %i.acv, ptr noundef nonnull align 128 dereferenceable(4608) %i.w, i64 4608, i1 false), !noalias !28576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !28576
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.412.i.i.i.i.i.i.i.i.i.i)
  %i.acz = invoke fastcc noundef ptr @"_ZN5tokio7runtime4task4list19OwnedTasks$LT$S$GT$10bind_inner17hdbabdec56884114fE"(ptr noundef nonnull align 8 %i.acl, ptr noundef nonnull %i.acv, ptr noundef nonnull %i.acv)
          to label %"_ZN5tokio7runtime4task4list19OwnedTasks$LT$S$GT$4bind17hd994e9340726ac3cE.exit.i.i.i.i.i.i.i" unwind label %bb.ms, !noalias !28578 ; 2 uses

bb.ms:                                            ; preds = %_ZN5tokio7runtime4task8new_task17he0fc7e115d94814fE.exit.i.i.i.i.i.i.i.i
  %i.ada = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.adb = invoke noundef zeroext i1 @_ZN5tokio7runtime4task5state5State21drop_join_handle_fast17hb9ab0c5145feba20E(ptr noundef nonnull align 8 %i.acv)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.mu, !noalias !28578

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.ms
  br i1 %i.adb, label %bb.mt, label %common.resume.i.i.i.i.i.i

bb.mt:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i
  invoke void @_ZN5tokio7runtime4task3raw7RawTask21drop_join_handle_slow17h4d222bbab74c4274E(ptr noundef nonnull %i.acv)
          to label %common.resume.i.i.i.i.i.i unwind label %bb.mu, !noalias !28578

bb.mu:                                            ; preds = %bb.mt, %bb.ms
  %i.adc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !28578
  unreachable

"_ZN5tokio7runtime4task4list19OwnedTasks$LT$S$GT$4bind17hd994e9340726ac3cE.exit.i.i.i.i.i.i.i": ; preds = %_ZN5tokio7runtime4task8new_task17he0fc7e115d94814fE.exit.i.i.i.i.i.i.i.i
  %i.add = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !28575
  store i64 %i.acg, ptr %i.x, align 8, !noalias !28575
  invoke void @_ZN5tokio7runtime10task_hooks9TaskHooks5spawn17ha0e35eabddcc960eE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.add, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x)
          to label %bb.mx unwind label %bb.na, !noalias !28575

bb.mv:                                            ; preds = %bb.mj
  call void @llvm.trap()
  unreachable

end_hunk_5
begin_hunk_6_@_ZN5xtask6common6assets12check_sha25617h611758076ef03dedE:bb.a
  %i.as = alloca [48 x i8], align 8               ; 8 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [32 x i8], align 8               ; 8 uses
  %i.av = alloca [8 x i8], align 8                ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 8 uses
  %i.ax = alloca [32 x i8], align 8               ; 7 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [24 x i8], align 8               ; 5 uses
  %i.ba = alloca [48 x i8], align 8               ; 8 uses
  %i.bb = alloca [32 x i8], align 8               ; 7 uses
  %i.bc = alloca [32 x i8], align 8               ; 8 uses
  %i.bd = alloca [16 x i8], align 8               ; 5 uses
  %i.be = alloca [24 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 15 uses
  %i.bg = alloca [32 x i8], align 16              ; 5 uses
  %i.bh = alloca [112 x i8], align 8              ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 9 uses
  %i.bj = alloca [4 x i8], align 4                ; 4 uses
  %i.bk = alloca [16 x i8], align 8               ; 6 uses
  store ptr %1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i64 %2, ptr %i.bl, align 8
  store i32 %4, ptr %i.bj, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  store i64 0, ptr %i.bi, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 2 uses
  store i64 0, ptr %i.bn, align 8
  %i.bo = invoke { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$11read_to_end17h86d320751dc14a00E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.bj, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %bb.d unwind label %bb.c       ; 2 uses

.body:                                            ; preds = %bb.u, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit193", %bb.k, %bb.l, %bb.c
  %.pn135 = phi { ptr, i32 } [ %i.ca, %bb.l ], [ %i.bq, %bb.c ], [ %i.bw, %bb.k ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit193" ], [ %.pn, %bb.u ]
  %.val144 = load i64, ptr %i.bi, align 8         ; 2 uses
  %i.bp = icmp eq i64 %.val144, 0
  br i1 %i.bp, label %bb.cw, label %bb.b

bb.b:                                             ; preds = %.body
  %.val145 = load ptr, ptr %i.bm, align 8, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val145, i64 noundef %.val144, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %bb.cw

bb.c:                                             ; preds = %bb.t, %bb.s, %.noexc156, %._crit_edge.thread.i.i.i.i, %bb.p, %bb.g, %bb.a
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.br = extractvalue { i64, ptr } %i.bo, 0
  %i.bs = extractvalue { i64, ptr } %i.bo, 1      ; 3 uses
  %i.bt = trunc nuw i64 %i.br to i1
  br i1 %i.bt, label %bb.e, label %bb.o

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !32736
  store ptr %i.bs, ptr %i.q, align 8, !noalias !32736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !32736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !32737
  store ptr %i.bk, ptr %i.o, align 8, !noalias !32737
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h69a85a5385173118E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !32737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !32738
  store ptr @1141, ptr %i.n, align 8, !noalias !32739
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !32739
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !32739
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !32739
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !32739
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.n)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !32738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !32737
  call void @llvm.experimental.noalias.scope.decl(metadata !32740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !32736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !32736
  store ptr %i.bs, ptr %i.m, align 8, !noalias !32741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !32741
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.g unwind label %bb.h, !noalias !32740

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !32741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !32741
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !32741
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !32742
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !32743
  %i.bv = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17h72222cf2ad51769eE"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.n unwind label %bb.c

bb.h:                                             ; preds = %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !32744)
  %.val.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !32745, !noalias !32736 ; 2 uses
  %i.bx = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.bx, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val1.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !32745, !noalias !32736, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32745
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !32740
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.m) #55
          to label %.body unwind label %bb.j, !noalias !32740

bb.l:                                             ; preds = %bb.e
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17ha15fe409393fbeaeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q) #55
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !32741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !32736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !32736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !32736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !32736
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bv, ptr %i.cc, align 8
  store i8 1, ptr %0, align 8
  %.val142 = load i64, ptr %i.bi, align 8         ; 2 uses
  %i.cd = icmp eq i64 %.val142, 0
  br i1 %i.cd, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha313ea19d9623b25E.exit153", label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17ha313ea19d9623b25E.exit153.sink.split"

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ce, i8 0, i64 65, i1 false), !alias.scope !32746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @1762, i64 32, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !32746
  call void @llvm.experimental.noalias.scope.decl(metadata !32747)
  call void @llvm.experimental.noalias.scope.decl(metadata !32748)
  %.val.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !32748, !noalias !32747, !nonnull !24, !noundef !24 ; 3 uses
  %.val1.i.i = load i64, ptr %i.bn, align 8, !alias.scope !32748, !noalias !32747, !noundef !24 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32749)
  call void @llvm.experimental.noalias.scope.decl(metadata !32750)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bh, i64 104
  %i.cg = icmp ult i64 %.val1.i.i, 64
  br i1 %i.cg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = lshr i64 %.val1.i.i, 6                  ; 2 uses
  store i64 %i.ch, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !32751, !noalias !32752
  invoke void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.bh, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef range(i64 1, 0) %i.ch)
          to label %.noexc155 unwind label %bb.c

.noexc155:                                        ; preds = %bb.p
  %i.ci = and i64 %.val1.i.i, -64
  %i.cj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ci
  %i.ck = and i64 %.val1.i.i, 63                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.ce, ptr nonnull readonly align 1 %i.cj, i64 %i.ck, i1 false), !alias.scope !32753, !noalias !32754
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ce, ptr nonnull readonly align 1 %.val.i.i, i64 %.val1.i.i, i1 false), !alias.scope !32755, !noalias !32756
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.noexc155
  %storemerge.in.i.i.i = phi i64 [ %i.ck, %.noexc155 ], [ %.val1.i.i, %bb.q ]
  %storemerge.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i to i8
  store i8 %storemerge.i.i.i, ptr %i.cf, align 8, !alias.scope !32757, !noalias !32758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !32759
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.bh, i64 112, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !32760)
  call void @llvm.experimental.noalias.scope.decl(metadata !32761)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32762)
  call void @llvm.experimental.noalias.scope.decl(metadata !32763)
  call void @llvm.experimental.noalias.scope.decl(metadata !32764)
  call void @llvm.experimental.noalias.scope.decl(metadata !32765)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.cn = load i8, ptr %i.cm, align 8, !alias.scope !32766, !noalias !32767, !noundef !24 ; 3 uses
  %i.co = zext nneg i8 %i.cn to i64               ; 4 uses
  %i.cp = icmp ult i8 %i.cn, 64
  call void @llvm.assume(i1 %i.cp)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.cr = load i64, ptr %i.cq, align 16, !alias.scope !32768, !noalias !32769, !noundef !24
  %5 = shl i64 %i.cr, 9
  %6 = shl nuw nsw i64 %i.co, 3
  %7 = or disjoint i64 %5, %6
  %8 = call i64 @llvm.bswap.i64(i64 %7)           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32770)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.co ; 2 uses
  store i8 -128, ptr %i.cs, align 1, !alias.scope !32771, !noalias !32772
  %i.ct = icmp eq i8 %i.cn, 63
  br i1 %i.ct, label %._crit_edge.thread.i.i.i.i, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.r
  %9 = getelementptr i8, ptr %i.cs, i64 1
  %10 = xor i64 %i.co, 63
  call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %10, i1 false), !alias.scope !32771, !noalias !32772
  %i.cu = xor i64 %i.co, 56
  %i.cv = icmp samesign ult i64 %i.cu, 8
  br i1 %i.cv, label %._crit_edge.thread.i.i.i.i, label %bb.s

._crit_edge.thread.i.i.i.i:                       ; preds = %._crit_edge.i.i.i.i, %bb.r
  invoke void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.cl, i64 noundef 1)
          to label %.noexc156 unwind label %bb.c

.noexc156:                                        ; preds = %._crit_edge.thread.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !32773
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.h, i8 0, i64 56, i1 false), !alias.scope !32774, !noalias !32775
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %8, ptr %i.cw, align 1, !alias.scope !32776, !noalias !32777
  invoke void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(64) %i.h, i64 noundef 1)
          to label %.noexc157 unwind label %bb.c

.noexc157:                                        ; preds = %.noexc156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !32773
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  store i64 %8, ptr %i.cx, align 16, !alias.scope !32778, !noalias !32779
  invoke void @_ZN4sha26sha25611compress25617h3ea59f8ad1326a07E(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.cl, i64 noundef 1)
          to label %bb.t unwind label %bb.c

bb.t:                                             ; preds = %.noexc157, %bb.s
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cz = load <4 x i32>, ptr %i.i, align 16, !alias.scope !32768, !noalias !32769
  %i.da = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.cz)
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.db = load <4 x i32>, ptr %i.cy, align 16, !alias.scope !32768, !noalias !32769
  %i.dc = call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %i.db)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !32759
  store <4 x i32> %i.da, ptr %i.bg, align 16, !alias.scope !32760, !noalias !32780
  store <4 x i32> %i.dc, ptr %.sroa.8.0..sroa_idx.i, align 16, !alias.scope !32760, !noalias !32780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  store ptr %i.bg, ptr %i.bd, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr @"_ZN13generic_array3hex91_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$generic_array..GenericArray$LT$u8$C$T$GT$$GT$3fmt17heffbcfe50c51ed45E", ptr %.sroa.452.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !32781
  store ptr @0, ptr %i.g, align 8, !noalias !32782
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !32782
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.bd, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !32782
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !32782
  %.sroa.7.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx204, align 8, !noalias !32782
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g)
          to label %bb.w unwind label %bb.c

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit193": ; preds = %bb.ct, %bb.cs, %bb.co, %bb.cn, %bb.v
  %.pn = phi { ptr, i32 } [ %i.df, %bb.v ], [ %i.nz, %bb.ct ], [ %i.no, %bb.co ], [ %i.no, %bb.cn ], [ %i.nz, %bb.cs ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32783)
  %.val.i = load i64, ptr %i.bf, align 8, !alias.scope !32783 ; 2 uses
  %i.dd = icmp eq i64 %.val.i, 0
  br i1 %i.dd, label %.body, label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit193"
  %i.de = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val1.i = load ptr, ptr %i.de, align 8, !alias.scope !32783, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32783
  br label %.body

bb.v:                                             ; preds = %bb.bw, %bb.bo, %.noexc177, %bb.bn, %bb.bl, %bb.av, %.noexc168, %bb.au, %bb.as, %bb.ae, %.noexc162, %bb.ad, %bb.ab, %bb.cl, %bb.cj, %bb.ci, %bb.cg, %.thread232, %bb.cd, %bb.bt, %bb.br, %bb.bq, %.thread225, %bb.bi, %bb.ba, %bb.ay, %bb.ax, %.thread219, %bb.ap, %bb.aj, %bb.ah, %bb.ag, %.thread212, %bb.y
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit193"

bb.w:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !32781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  %i.dg = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.dh = icmp ult i64 %i.dg, 2
  br i1 %i.dh, label %bb.x, label %.thread215

bb.x:                                             ; preds = %bb.w
  %i.di = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17h454021e3ad60e6b8E, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.di, label %bb.y [
    i8 0, label %.thread215
    i8 1, label %.thread212
    i8 2, label %.thread212
  ], !prof !88

bb.y:                                             ; preds = %bb.x
  %i.dj = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN5xtask6common6assets12check_sha25610__CALLSITE17h454021e3ad60e6b8E)
          to label %bb.z unwind label %bb.v       ; 2 uses

bb.z:                                             ; preds = %bb.y
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %.thread215, label %.thread212

.thread212:                                       ; preds = %bb.x, %bb.x, %bb.z
  %.sroa.011.0214 = phi i8 [ %i.dj, %bb.z ], [ %i.di, %bb.x ], [ %i.di, %bb.x ]
  %i.dl = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17h454021e3ad60e6b8E, align 8, !nonnull !24, !align !31, !noundef !24
  %i.dm = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dl, i8 noundef %.sroa.011.0214)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %.thread212
  br i1 %i.dm, label %bb.ab, label %.thread215

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  %i.dn = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17h454021e3ad60e6b8E, align 8, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  store ptr @1129, ptr %i.ba, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 1, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr null, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dr, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store i64 0, ptr %i.ds, align 8
  store ptr %i.ba, ptr %i.bb, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr @802, ptr %i.dt, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.bf, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr @960, ptr %i.dv, align 8
  store i64 1, ptr %i.bc, align 8
  %.sroa.013.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bb, ptr %.sroa.013.sroa.4.0..sroa_idx, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 2, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  store ptr %i.do, ptr %.sroa.414.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.dn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc)
          to label %.noexc161 unwind label %bb.v

.noexc161:                                        ; preds = %bb.ab
  %i.dw = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !32784
  %i.dx = icmp eq i8 %i.dw, 0
  br i1 %i.dx, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %.noexc161
  %i.dy = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !32784 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 6
  call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp samesign ugt i64 %i.dy, 3
  br i1 %i.ea, label %bb.ad, label %bb.am

bb.ad:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17h454021e3ad60e6b8E, align 8, !noalias !32784, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !24, !align !42, !noundef !24
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !24
  store i64 4, ptr %i.f, align 8, !noalias !32784
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ed, ptr %.sroa.52.0..sroa_idx.i, align 8, !noalias !32784
  %.sroa.7.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.ef, ptr %.sroa.7.0..sroa_idx.i160, align 8, !noalias !32784
  %i.eg = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc162 unwind label %bb.v  ; 2 uses

.noexc162:                                        ; preds = %bb.ad
  %i.eh = extractvalue { ptr, ptr } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { ptr, ptr } %i.eg, 1      ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !invariant.load !24, !nonnull !24
  %i.el = invoke noundef zeroext i1 %i.ek(ptr noundef align 1 %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc163 unwind label %bb.v, !inline_history !32697

.noexc163:                                        ; preds = %.noexc162
  br i1 %i.el, label %bb.ae, label %bb.am

bb.ae:                                            ; preds = %.noexc163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !32784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !32784
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.eb, ptr noundef nonnull align 1 %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bc)
          to label %.noexc164 unwind label %bb.v

.noexc164:                                        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !32784
  br label %bb.am

.thread215:                                       ; preds = %bb.x, %bb.w, %bb.aa, %bb.z
  %i.em = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %bb.af, label %bb.al

bb.af:                                            ; preds = %.thread215
  %i.eo = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.ep = icmp ult i64 %i.eo, 6
  call void @llvm.assume(i1 %i.ep)
  %i.eq = icmp samesign ugt i64 %i.eo, 3
  br i1 %i.eq, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.er = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17h454021e3ad60e6b8E, align 8, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !24, !align !42, !noundef !24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %i.ev = load i64, ptr %i.eu, align 8, !noundef !24
  store i64 4, ptr %i.az, align 8
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.et, ptr %.sroa.5113.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.ev, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ew = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.ah unwind label %bb.v      ; 2 uses

bb.ah:                                            ; preds = %bb.ag
  %i.ex = extractvalue { ptr, ptr } %i.ew, 0      ; 2 uses
  %i.ey = extractvalue { ptr, ptr } %i.ew, 1      ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8, !invariant.load !24, !nonnull !24
  %i.fb = invoke noundef zeroext i1 %i.fa(ptr noundef align 1 %i.ex, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.az)
          to label %bb.ai unwind label %bb.v

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.fb, label %bb.aj, label %bb.al
end_hunk_6
begin_hunk_7_@_ZN5xtask6common6assets12check_sha25617h611758076ef03dedE:bb.a
  %i.is = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ir, i8 noundef %.sroa.023.0227)
          to label %bb.bk unwind label %bb.v

bb.bk:                                            ; preds = %.thread225
  br i1 %i.is, label %bb.bl, label %.thread228

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.it = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hb0b8ed3f69970e4eE, align 8, !nonnull !24, !align !31, !noundef !24 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  store ptr @1136, ptr %i.as, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 1, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  store ptr null, ptr %i.iw, align 8
  %i.ix = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ix, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 0, ptr %i.iy, align 8
  store ptr %i.as, ptr %i.at, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr @802, ptr %i.iz, align 8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.av, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store ptr @1137, ptr %i.jb, align 8
  store i64 1, ptr %i.au, align 8
  %.sroa.025.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store ptr %i.at, ptr %.sroa.025.sroa.4.0..sroa_idx, align 8
  %.sroa.025.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 2, ptr %.sroa.025.sroa.5.0..sroa_idx, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store ptr %i.iu, ptr %.sroa.426.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN12tracing_core5event5Event8dispatch17hf7c16d63cd6ca6adE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.it, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %.noexc176 unwind label %bb.v

.noexc176:                                        ; preds = %bb.bl
  %i.jc = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1, !noalias !32787
  %i.jd = icmp eq i8 %i.jc, 0
  br i1 %i.jd, label %bb.bm, label %bb.bx

bb.bm:                                            ; preds = %.noexc176
  %i.je = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !32787 ; 2 uses
  %i.jf = icmp ult i64 %i.je, 6
  call void @llvm.assume(i1 %i.jf)
  %i.jg = icmp samesign ugt i64 %i.je, 3
  br i1 %i.jg, label %bb.bn, label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  %i.jh = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hb0b8ed3f69970e4eE, align 8, !noalias !32787, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load ptr, ptr %i.ji, align 8, !nonnull !24, !align !42, !noundef !24
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 40
  %i.jl = load i64, ptr %i.jk, align 8, !noundef !24
  store i64 4, ptr %i.b, align 8, !noalias !32787
  %.sroa.52.0..sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.jj, ptr %.sroa.52.0..sroa_idx.i174, align 8, !noalias !32787
  %.sroa.7.0..sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.jl, ptr %.sroa.7.0..sroa_idx.i175, align 8, !noalias !32787
  %i.jm = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %.noexc177 unwind label %bb.v  ; 2 uses

.noexc177:                                        ; preds = %bb.bn
  %i.jn = extractvalue { ptr, ptr } %i.jm, 0      ; 2 uses
  %i.jo = extractvalue { ptr, ptr } %i.jm, 1      ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !invariant.load !24, !nonnull !24
  %i.jr = invoke noundef zeroext i1 %i.jq(ptr noundef align 1 %i.jn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %.noexc178 unwind label %bb.v, !inline_history !32705

.noexc178:                                        ; preds = %.noexc177
  br i1 %i.jr, label %bb.bo, label %bb.bx

bb.bo:                                            ; preds = %.noexc178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !32787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !32787
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jh, ptr noundef nonnull align 1 %i.jn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jo, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.au)
          to label %.noexc179 unwind label %bb.v

.noexc179:                                        ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !32787
  br label %bb.bx

.thread228:                                       ; preds = %bb.bh, %bb.bg, %bb.bk, %bb.bj
  %i.js = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.jt = icmp eq i8 %i.js, 0
  br i1 %i.jt, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %.thread228
  %i.ju = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.jv = icmp ult i64 %i.ju, 6
  call void @llvm.assume(i1 %i.jv)
  %i.jw = icmp samesign ugt i64 %i.ju, 3
  br i1 %i.jw, label %bb.bq, label %bb.bv

bb.bq:                                            ; preds = %bb.bp
  %i.jx = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hb0b8ed3f69970e4eE, align 8, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32
  %i.jz = load ptr, ptr %i.jy, align 8, !nonnull !24, !align !42, !noundef !24
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.kb = load i64, ptr %i.ka, align 8, !noundef !24
  store i64 4, ptr %i.ar, align 8
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.jz, ptr %.sroa.5117.0..sroa_idx, align 8
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store i64 %i.kb, ptr %.sroa.7118.0..sroa_idx, align 8
  %i.kc = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.br unwind label %bb.v      ; 2 uses

bb.br:                                            ; preds = %bb.bq
  %i.kd = extractvalue { ptr, ptr } %i.kc, 0      ; 2 uses
  %i.ke = extractvalue { ptr, ptr } %i.kc, 1      ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8, !invariant.load !24, !nonnull !24
  %i.kh = invoke noundef zeroext i1 %i.kg(ptr noundef align 1 %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.bs unwind label %bb.v

bb.bs:                                            ; preds = %bb.br
  br i1 %i.kh, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ki = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hb0b8ed3f69970e4eE, align 8, !nonnull !24, !align !31, !noundef !24
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr @1136, ptr %i.ao, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %i.kk, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr null, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.km, align 8
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.kn, align 8
  store ptr %i.ao, ptr %i.ap, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr @802, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.av, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr @1137, ptr %i.kq, align 8
  store i64 1, ptr %i.aq, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ap, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 2, ptr %.sroa.573.0..sroa_idx, align 8
  %i.kr = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.kj, ptr %i.kr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false)
  invoke void @_ZN7tracing15__macro_support13__tracing_log17he6e71def31f38619E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.jx, ptr noundef nonnull align 1 %i.kd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ke, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aq)
          to label %bb.bu unwind label %bb.v

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bs, %bb.bu, %bb.bp, %.thread228, %bb.bx
  %i.ks = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.kt = load ptr, ptr %i.ks, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.kv = load i64, ptr %i.ku, align 8, !noundef !24 ; 19 uses
  %i.kw = icmp slt i64 %i.kv, 0
  br i1 %i.kw, label %bb.bw, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !43

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.bv
  %i.kx = icmp eq i64 %i.kv, 0                    ; 3 uses
  br i1 %i.kx, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !32788
  %i.ky = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.kv, i64 noundef range(i64 1, 9) 1) #47, !noalias !32788 ; 8 uses
  %i.kz = icmp eq ptr %i.ky, null
  br i1 %i.kz, label %bb.bw, label %iter.check

bb.bw:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %bb.bv
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ 0, %bb.bv ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.kv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1765) #54
          to label %.noexc180 unwind label %bb.v

.noexc180:                                        ; preds = %bb.bw
  unreachable

iter.check:                                       ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ky, ptr nonnull readonly align 1 %i.kt, i64 %i.kv, i1 false), !noalias !32789
  %min.iters.check = icmp ult i64 %i.kv, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check246 = icmp ult i64 %i.kv, 32
  br i1 %min.iters.check246, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %11 = and i64 %i.kv, 24
  %n.vec = and i64 %i.kv, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.la, align 1, !alias.scope !32790, !noalias !32791 ; 2 uses
  %wide.load247 = load <16 x i8>, ptr %i.lb, align 1, !alias.scope !32790, !noalias !32791 ; 2 uses
  %i.lc = add <16 x i8> %wide.load, splat (i8 -65)
  %i.ld = add <16 x i8> %wide.load247, splat (i8 -65)
  %i.le = icmp ult <16 x i8> %i.lc, splat (i8 26)
  %i.lf = icmp ult <16 x i8> %i.ld, splat (i8 26)
  %i.lg = select <16 x i1> %i.le, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.lh = select <16 x i1> %i.lf, <16 x i8> splat (i8 32), <16 x i8> zeroinitializer
  %i.li = or <16 x i8> %i.lg, %wide.load
  %i.lj = or <16 x i8> %i.lh, %wide.load247
  store <16 x i8> %i.li, ptr %i.la, align 1, !alias.scope !32790, !noalias !32791
  store <16 x i8> %i.lj, ptr %i.lb, align 1, !alias.scope !32790, !noalias !32791
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.lk = icmp eq i64 %index.next, %n.vec
  br i1 %i.lk, label %middle.block, label %vector.body, !llvm.loop !32718

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kv, %n.vec
  br i1 %cmp.n, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %11, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec248 = and i64 %i.kv, 9223372036854775800  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index249 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next251, %vec.epilog.vector.body ] ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.ky, i64 %index249 ; 2 uses
  %wide.load250 = load <8 x i8>, ptr %i.ll, align 1, !alias.scope !32790, !noalias !32791 ; 2 uses
  %i.lm = add <8 x i8> %wide.load250, splat (i8 -65)
  %i.ln = icmp ult <8 x i8> %i.lm, splat (i8 26)
  %i.lo = select <8 x i1> %i.ln, <8 x i8> splat (i8 32), <8 x i8> zeroinitializer
  %i.lp = or <8 x i8> %i.lo, %wide.load250
  store <8 x i8> %i.lp, ptr %i.ll, align 1, !alias.scope !32790, !noalias !32791
  %index.next251 = add nuw i64 %index249, 8       ; 2 uses
  %i.lq = icmp eq i64 %index.next251, %n.vec248
  br i1 %i.lq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !32719

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n252 = icmp eq i64 %i.kv, %n.vec248
  br i1 %cmp.n252, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.05.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec248, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi i64 [ %i.lw, %.lr.ph.i.i ], [ %.sroa.0.05.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ky, i64 %.sroa.0.05.i.i ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !32790, !noalias !32791, !noundef !24 ; 2 uses
  %i.lt = add i8 %i.ls, -65
  %i.lu = icmp ult i8 %i.lt, 26
  %i.lv = select i1 %i.lu, i8 32, i8 0
  %.sroa.03.0.i.i = or i8 %i.lv, %i.ls
  store i8 %.sroa.03.0.i.i, ptr %i.lr, align 1, !alias.scope !32790, !noalias !32791
  %i.lw = add nuw nsw i64 %.sroa.0.05.i.i, 1      ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.lw, %i.kv
  br i1 %exitcond.not.i.i, label %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", label %.lr.ph.i.i, !llvm.loop !32720

bb.bx:                                            ; preds = %.noexc179, %.noexc178, %bb.bm, %.noexc176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.bv

"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit": ; preds = %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i8.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.ky, %middle.block ], [ %i.ky, %vec.epilog.middle.block ], [ %i.ky, %.lr.ph.i.i ] ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.val152 = load i64, ptr %i.lx, align 8, !noundef !24
  %.not.i.i = icmp eq i64 %i.kv, %.val152
  br i1 %.not.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit", label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit": ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit"
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.val151 = load ptr, ptr %i.ly, align 8, !nonnull !24, !noundef !24
  %bcmp.i.i181 = call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.10.0.i.i8.i, ptr nonnull readonly align 1 %.val151, i64 %i.kv), !alias.scope !32792
  %i.lz = icmp eq i32 %bcmp.i.i181, 0
  br i1 %i.lz, label %bb.bz, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit.thread"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit.thread": ; preds = %"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E.exit", %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit"
  br i1 %i.kx, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit.thread"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i8.i, i64 noundef %i.kv, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32793
  br label %bb.cb

bb.bz:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit"
  br i1 %i.kx, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit190", label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i8.i, i64 noundef %i.kv, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !32794
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit190"

bb.cb:                                            ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h0ad88180a996b9c3E.exit.thread", %bb.by
  %i.ma = load atomic i64, ptr @_ZN12tracing_core8metadata9MAX_LEVEL17h3c62bc6fa7dc27b1E monotonic, align 8
  %i.mb = icmp ult i64 %i.ma, 4
  br i1 %i.mb, label %bb.cc, label %.thread235

bb.cc:                                            ; preds = %bb.cb
  %i.mc = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hef008dea42b2b6fcE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.mc, label %bb.cd [
    i8 0, label %.thread235
    i8 1, label %.thread232
    i8 2, label %.thread232
  ], !prof !88

bb.cd:                                            ; preds = %bb.cc
  %i.md = invoke noundef i8 @_ZN12tracing_core8callsite15DefaultCallsite8register17hfea5cd845fb2ec3aE(ptr noundef nonnull align 8 @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hef008dea42b2b6fcE)
          to label %bb.ce unwind label %bb.v      ; 2 uses

bb.ce:                                            ; preds = %bb.cd
  %i.me = icmp eq i8 %i.md, 0
  br i1 %i.me, label %.thread235, label %.thread232

.thread232:                                       ; preds = %bb.cc, %bb.cc, %bb.ce
  %.sroa.034.0234 = phi i8 [ %i.md, %bb.ce ], [ %i.mc, %bb.cc ], [ %i.mc, %bb.cc ]
  %i.mf = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hef008dea42b2b6fcE, align 8, !nonnull !24, !align !31, !noundef !24
  %i.mg = invoke noundef zeroext i1 @_ZN7tracing15__macro_support12__is_enabled17ha8d49a956677b3d5E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.mf, i8 noundef %.sroa.034.0234)
          to label %bb.cf unwind label %bb.v

bb.cf:                                            ; preds = %.thread232
  br i1 %i.mg, label %bb.cg, label %.thread235

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  %i.mh = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hef008dea42b2b6fcE, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @1139, ptr %i.al, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.mi, align 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr null, ptr %i.mj, align 8
  %i.mk = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.mk, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %i.ml, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kt, i64 noundef %i.kv)
          to label %bb.cr unwind label %bb.v

.thread235:                                       ; preds = %bb.cc, %bb.cb, %bb.cf, %bb.ce
  %i.mm = load atomic i8, ptr @_ZN12tracing_core10dispatcher6EXISTS17h9063ca422f1e9098E monotonic, align 1
  %i.mn = icmp eq i8 %i.mm, 0
  br i1 %i.mn, label %bb.ch, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit190"

bb.ch:                                            ; preds = %.thread235
  %i.mo = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8 ; 2 uses
  %i.mp = icmp ult i64 %i.mo, 6
  call void @llvm.assume(i1 %i.mp)
  %i.mq = icmp samesign ugt i64 %i.mo, 1
  br i1 %i.mq, label %bb.ci, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit190"

bb.ci:                                            ; preds = %bb.ch
  %i.mr = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hef008dea42b2b6fcE, align 8, !nonnull !24, !align !31, !noundef !24 ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 32
  %i.mt = load ptr, ptr %i.ms, align 8, !nonnull !24, !align !42, !noundef !24
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  %i.mv = load i64, ptr %i.mu, align 8, !noundef !24
  store i64 2, ptr %i.aj, align 8
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.mt, ptr %.sroa.5122.0..sroa_idx, align 8
  %.sroa.7123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.mv, ptr %.sroa.7123.0..sroa_idx, align 8
  %i.mw = invoke { ptr, ptr } @_ZN3log6logger17hcebe01820b13d6ccE()
          to label %bb.cj unwind label %bb.v      ; 2 uses

bb.cj:                                            ; preds = %bb.ci
  %i.mx = extractvalue { ptr, ptr } %i.mw, 0      ; 2 uses
  %i.my = extractvalue { ptr, ptr } %i.mw, 1      ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8, !invariant.load !24, !nonnull !24
  %i.nb = invoke noundef zeroext i1 %i.na(ptr noundef align 1 %i.mx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj)
          to label %bb.ck unwind label %bb.v

bb.ck:                                            ; preds = %bb.cj
  br i1 %i.nb, label %bb.cl, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h43d28d9852fe4649E.exit190"

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  %i.nc = load ptr, ptr @_ZN5xtask6common6assets12check_sha25610__CALLSITE17hef008dea42b2b6fcE, align 8, !nonnull !24, !align !31, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr @1139, ptr %i.ag, align 8
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 1, ptr %i.nd, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr null, ptr %i.ne, align 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.nf, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 0, ptr %i.ng, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  invoke fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$18to_ascii_lowercase17h82b70dbb70b62d08E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.kt, i64 noundef %i.kv)
          to label %bb.cm unwind label %bb.v

bb.cm:                                            ; preds = %bb.cl
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 48
  store ptr %i.ag, ptr %i.ah, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @802, ptr %i.ni, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store ptr %i.bf, ptr %i.nj, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store ptr @960, ptr %i.nk, align 8
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.af, ptr %i.nl, align 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr @960, ptr %i.nm, align 8
  store i64 1, ptr %i.ai, align 8
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.ah, ptr %.sroa.482.0..sroa_idx, align 8
end_hunk_7
begin_hunk_8_@"_ZN5xtask6common7command12run_commands28_$u7b$$u7b$closure$u7d$$u7d$17h489cc10dbe2d418eE":bb.a
  %i.pq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr80drop_in_place$LT$$LP$serde_json..value..Value$C$http..status..StatusCode$RP$$GT$17hea17f039477a24c5E.exit146.i"

bb.fa:                                            ; preds = %.loopexit.i
  %i.pr = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %bb.et
  %.sroa.8239.1.i = phi ptr [ %.sroa.8239.0447.i, %bb.et ], [ %i.pb, %.lr.ph.i.i.i.i ]
  %.sroa.0238.1.i = phi ptr [ %.sroa.0238.0448.i, %bb.et ], [ %i.pa, %.lr.ph.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %.sroa.12241.0446.i, %bb.et ], [ %.cast.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ps = add i16 %.lcssa.i.i.i.i, -1
  %i.pt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.pu = zext nneg i16 %i.pt to i64
  %i.pv = and i16 %i.ps, %.lcssa.i.i.i.i
  %i.pw = sub nsw i64 0, %i.pu
  %i.px = getelementptr inbounds [48 x i8], ptr %.sroa.0238.1.i, i64 %i.pw ; 4 uses
  %i.py = add i64 %.sroa.16243.0445.i, -1         ; 2 uses
  %i.pz = getelementptr inbounds i8, ptr %i.px, i64 -48 ; 2 uses
  %i.qa = getelementptr inbounds i8, ptr %i.px, i64 -24
  store ptr %i.pz, ptr %i.ba, align 8, !noalias !34443
  store ptr %i.qa, ptr %i.az, align 8, !noalias !34443
  %i.qb = getelementptr i8, ptr %i.px, i64 -16
  %.val73.i = load ptr, ptr %i.qb, align 8, !noalias !34445, !nonnull !24, !noundef !24
  %i.qc = getelementptr i8, ptr %i.px, i64 -8
  %.val74.i = load i64, ptr %i.qc, align 8, !noalias !34445, !noundef !24
  %i.qd = invoke noundef align 8 dereferenceable_or_null(72) ptr @_ZN10serde_json5value5Value7pointer17h28ef6c574eda098bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bb, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val73.i, i64 noundef %.val74.i)
          to label %bb.fb unwind label %bb.fa, !noalias !34445 ; 9 uses

bb.fb:                                            ; preds = %.loopexit.i
  %.not.i119.i = icmp eq ptr %i.qd, null
  br i1 %.not.i119.i, label %bb.fc, label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !34557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !34558
  store ptr %i.az, ptr %i.z, align 8, !noalias !34558
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5396e264cc38a2beE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !34558
  %i.qe = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ba, ptr %i.qe, align 8, !noalias !34558
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5396e264cc38a2beE", ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !34558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !34559
  store ptr @1303, ptr %i.y, align 8, !noalias !34560
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 3, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !34560
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !34560
  %.sroa.6.0..sroa_idx.i.i120.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx.i.i120.i, align 8, !noalias !34560
  %.sroa.7.0..sroa_idx.i.i121.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i.i121.i, align 8, !noalias !34560
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.y)
          to label %.noexc124.i unwind label %bb.ff, !noalias !34445

.noexc124.i:                                      ; preds = %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !34559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !34558
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !34557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !34557
  invoke void @_ZN3std9backtrace9Backtrace7capture17hfe657b1debc7ecd5E(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aa)
          to label %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_display17hd0aec229f97b744bE.exit.i.i" unwind label %bb.fd, !noalias !34561

"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_display17hd0aec229f97b744bE.exit.i.i": ; preds = %.noexc124.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef nonnull align 8 dereferenceable(48) %i.aa, i64 48, i1 false), !noalias !34557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !34557
  %i.qf = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$9construct17hc61a68ca4107ca5cE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ab)
          to label %bb.gl unwind label %bb.ff, !noalias !34445

bb.fd:                                            ; preds = %.noexc124.i
  %i.qg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34562)
  %.val.i.i122.i = load i64, ptr %i.ac, align 8, !alias.scope !34562, !noalias !34557 ; 2 uses
  %i.qh = icmp eq i64 %.val.i.i122.i, 0
  br i1 %i.qh, label %.body126.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val1.i.i123.i = load ptr, ptr %i.qi, align 8, !alias.scope !34562, !noalias !34557, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i123.i, i64 noundef %.val.i.i122.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !34563
  br label %.body126.i

bb.ff:                                            ; preds = %"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$22construct_from_display17hd0aec229f97b744bE.exit.i.i", %bb.fc
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

bb.fg:                                            ; preds = %bb.fb
  call void @llvm.experimental.noalias.scope.decl(metadata !34564)
  %i.qk = load i64, ptr %i.qd, align 8, !range !72, !alias.scope !34564, !noalias !34565, !noundef !24 ; 2 uses
  %i.ql = xor i64 %i.qk, -9223372036854775808
  %i.qm = icmp slt i64 %i.qk, 0
  %i.qn = select i1 %i.qm, i64 %i.ql, i64 5
  switch i64 %i.qn, label %bb.fh [
    i64 0, label %bb.fi
    i64 1, label %bb.fj
    i64 2, label %bb.fk
    i64 3, label %bb.fl
    i64 4, label %bb.fm
    i64 5, label %bb.fn
  ]

bb.fh:                                            ; preds = %bb.fg
  unreachable

bb.fi:                                            ; preds = %bb.fg
  store i64 -9223372036854775808, ptr %i.aw, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fj:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.qd, i64 72, i1 false), !noalias !34445
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fk:                                            ; preds = %bb.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.qd, i64 72, i1 false), !noalias !34445
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fl:                                            ; preds = %bb.fg
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.os, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.qo, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1422)
          to label %.noexc131.i unwind label %bb.fq, !noalias !34445, !inline_history !114

.noexc131.i:                                      ; preds = %bb.fl
  store i64 -9223372036854775805, ptr %i.aw, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fm:                                            ; preds = %bb.fg
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !alias.scope !34566, !noalias !34567, !nonnull !24, !noundef !24
  %i.qs = load i64, ptr %i.qp, align 8, !alias.scope !34566, !noalias !34567, !noundef !24
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hf981a842b1245085E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.os, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.qr, i64 noundef %i.qs)
          to label %.noexc132.i unwind label %bb.fq, !noalias !34445, !inline_history !114

.noexc132.i:                                      ; preds = %bb.fm
  store i64 -9223372036854775804, ptr %i.aw, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fn:                                            ; preds = %bb.fg
  call void @llvm.experimental.noalias.scope.decl(metadata !34568)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !34569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.or, ptr noundef nonnull align 8 dereferenceable(32) @257, i64 32, i1 false), !noalias !34569
  store i64 0, ptr %i.x, align 8, !noalias !34569
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i128.i, align 8, !noalias !34569
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !34569
  invoke fastcc void @"_ZN73_$LT$indexmap..inner..Core$LT$K$C$V$GT$$u20$as$u20$core..clone..Clone$GT$10clone_from17hb55a1842e83d4870E"(ptr noalias noundef align 8 dereferenceable(56) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.qd)
          to label %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i.i" unwind label %bb.fo, !noalias !34570, !inline_history !19

bb.fo:                                            ; preds = %bb.fn
  %i.qt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$indexmap..inner..Core$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h1669c1b72e97a552E"(ptr noalias noundef align 8 dereferenceable(56) %i.x) #55
          to label %.body126.i unwind label %bb.fp, !noalias !34571, !inline_history !19

bb.fp:                                            ; preds = %bb.fo
  %i.qu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !34571, !inline_history !19
  unreachable

"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i.i": ; preds = %bb.fn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aw, ptr noundef nonnull align 8 dereferenceable(56) %i.x, i64 56, i1 false), !noalias !34443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !34569
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qd, i64 56
  %i.qw = load <2 x i64>, ptr %i.qv, align 8, !alias.scope !34572, !noalias !34573
  store <2 x i64> %i.qw, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !34443
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"

bb.fq:                                            ; preds = %bb.fm, %bb.fl
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %.body126.i

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i": ; preds = %"_ZN79_$LT$indexmap..map..IndexMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h13c25366bc088b2aE.exit.i.i", %.noexc132.i, %.noexc131.i, %bb.fk, %bb.fj, %bb.fi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !34443
  %i.qy = load ptr, ptr %i.ot, align 8, !noalias !34443, !nonnull !24, !align !31, !noundef !24 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !34443
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.pz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1298)
          to label %bb.fr unwind label %bb.gk, !noalias !34445

bb.fr:                                            ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h065ff73d52a9cb78E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !34574)
  call void @llvm.experimental.noalias.scope.decl(metadata !34575)
  call void @llvm.experimental.noalias.scope.decl(metadata !34576)
  call void @llvm.experimental.noalias.scope.decl(metadata !34577)
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 32 ; 2 uses
  %.val.i.i135.i = load i64, ptr %i.qz, align 8, !alias.scope !34578, !noalias !34579, !noundef !24 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 40
  %.val8.i.i.i = load i64, ptr %i.ra, align 8, !alias.scope !34578, !noalias !34579, !noundef !24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34580)
  %i.rb = xor i64 %.val.i.i135.i, 8317987319222330741 ; 2 uses
  %i.rc = xor i64 %.val8.i.i.i, 7237128888997146477 ; 2 uses
  %i.rd = xor i64 %.val.i.i135.i, 7816392313619706465 ; 2 uses
  %i.re = xor i64 %.val8.i.i.i, 8387220255154660723 ; 2 uses
  %.val.i.i36 = load ptr, ptr %i.ov, align 8, !alias.scope !34580, !noalias !34581, !nonnull !24, !noundef !24 ; 7 uses
  %.val1.i.i = load i64, ptr %i.ou, align 8, !alias.scope !34580, !noalias !34581, !noundef !24 ; 7 uses
  %3 = and i64 %.val1.i.i, 7                      ; 7 uses
  %i.rf = and i64 %.val1.i.i, -8                  ; 2 uses
  %.not = icmp eq i64 %i.rf, 0
  br i1 %.not, label %._crit_edge.i62, label %.lr.ph.i55

._crit_edge.i62.loopexit:                         ; preds = %.lr.ph.i55
  %i.rg = and i64 %.val1.i.i, -8
  br label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %._crit_edge.i62.loopexit, %bb.fr
  %.sroa.0110.4 = phi i64 [ %i.rb, %bb.fr ], [ %i.so, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.12115.4 = phi i64 [ %i.rd, %bb.fr ], [ %i.sn, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.22.4 = phi i64 [ %i.rc, %bb.fr ], [ %i.sk, %._crit_edge.i62.loopexit ] ; 6 uses
  %.sroa.32.4 = phi i64 [ %i.re, %bb.fr ], [ %i.sm, %._crit_edge.i62.loopexit ] ; 4 uses
  %.sroa.04.0.lcssa.i45 = phi i64 [ 0, %bb.fr ], [ %i.rg, %._crit_edge.i62.loopexit ] ; 3 uses
  %i.rh = icmp samesign ugt i64 %3, 3
  br i1 %i.rh, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %._crit_edge.i62
  %i.ri = getelementptr inbounds nuw i8, ptr %.val.i.i36, i64 %.sroa.04.0.lcssa.i45
  %.sroa.014.0.copyload.i18.i54 = load i32, ptr %i.ri, align 1, !alias.scope !34582, !noalias !34583
  %i.rj = zext i32 %.sroa.014.0.copyload.i18.i54 to i64
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %._crit_edge.i62
  %.sroa.011.0.i12.i46 = phi i64 [ %i.rj, %bb.fs ], [ 0, %._crit_edge.i62 ] ; 2 uses
  %.sroa.0.0.i13.i47 = phi i64 [ 4, %bb.fs ], [ 0, %._crit_edge.i62 ] ; 5 uses
  %i.rk = or disjoint i64 %.sroa.0.0.i13.i47, 1
  %i.rl = icmp samesign ult i64 %i.rk, %3
  br i1 %i.rl, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.rm = getelementptr i8, ptr %.val.i.i36, i64 %.sroa.04.0.lcssa.i45
  %i.rn = getelementptr i8, ptr %i.rm, i64 %.sroa.0.0.i13.i47
  %.sroa.015.0.copyload.i17.i53 = load i16, ptr %i.rn, align 1, !alias.scope !34582, !noalias !34583
  %i.ro = zext i16 %.sroa.015.0.copyload.i17.i53 to i64
  %i.rp = shl nuw nsw i64 %.sroa.0.0.i13.i47, 3
  %i.rq = shl nuw nsw i64 %i.ro, %i.rp
  %i.rr = or i64 %i.rq, %.sroa.011.0.i12.i46
  %i.rs = or disjoint i64 %.sroa.0.0.i13.i47, 2
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.sroa.011.1.i14.i48 = phi i64 [ %i.rr, %bb.fu ], [ %.sroa.011.0.i12.i46, %bb.ft ] ; 2 uses
  %.sroa.0.1.i15.i49 = phi i64 [ %i.rs, %bb.fu ], [ %.sroa.0.0.i13.i47, %bb.ft ] ; 3 uses
  %i.rt = icmp samesign ult i64 %.sroa.0.1.i15.i49, %3
  br i1 %i.rt, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64"

.lr.ph.i55:                                       ; preds = %bb.fr, %.lr.ph.i55
  %i.ru = phi i64 [ %i.sn, %.lr.ph.i55 ], [ %i.rd, %bb.fr ]
  %i.rv = phi i64 [ %i.sk, %.lr.ph.i55 ], [ %i.rc, %bb.fr ] ; 3 uses
  %i.rw = phi i64 [ %i.sm, %.lr.ph.i55 ], [ %i.re, %bb.fr ]
  %.sroa.04.020.i60 = phi i64 [ %i.sp, %.lr.ph.i55 ], [ 0, %bb.fr ] ; 2 uses
  %i.rx = phi i64 [ %i.so, %.lr.ph.i55 ], [ %i.rb, %bb.fr ]
  %i.ry = getelementptr inbounds nuw i8, ptr %.val.i.i36, i64 %.sroa.04.020.i60
  %.sroa.08.0.copyload.i61 = load i64, ptr %i.ry, align 1, !alias.scope !34584, !noalias !34583 ; 2 uses
  %i.rz = xor i64 %.sroa.08.0.copyload.i61, %i.rw ; 3 uses
  %i.sa = add i64 %i.rx, %i.rv                    ; 3 uses
  %i.sb = add i64 %i.rz, %i.ru                    ; 2 uses
  %i.sc = call i64 @llvm.fshl.i64(i64 %i.rv, i64 %i.rv, i64 13)
  %i.sd = xor i64 %i.sa, %i.sc                    ; 3 uses
  %i.se = call i64 @llvm.fshl.i64(i64 %i.rz, i64 %i.rz, i64 16)
  %i.sf = xor i64 %i.sb, %i.se                    ; 3 uses
  %i.sg = call i64 @llvm.fshl.i64(i64 %i.sa, i64 %i.sa, i64 32)
  %i.sh = add i64 %i.sb, %i.sd                    ; 3 uses
  %i.si = add i64 %i.sf, %i.sg                    ; 2 uses
  %i.sj = call i64 @llvm.fshl.i64(i64 %i.sd, i64 %i.sd, i64 17)
  %i.sk = xor i64 %i.sh, %i.sj                    ; 2 uses
  %i.sl = call i64 @llvm.fshl.i64(i64 %i.sf, i64 %i.sf, i64 21)
  %i.sm = xor i64 %i.sl, %i.si                    ; 2 uses
  %i.sn = call i64 @llvm.fshl.i64(i64 %i.sh, i64 %i.sh, i64 32) ; 2 uses
  %i.so = xor i64 %i.si, %.sroa.08.0.copyload.i61 ; 2 uses
  %i.sp = add nuw i64 %.sroa.04.020.i60, 8        ; 2 uses
  %i.sq = icmp ult i64 %i.sp, %i.rf
  br i1 %i.sq, label %.lr.ph.i55, label %._crit_edge.i62.loopexit

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64": ; preds = %bb.fv
  %i.sr = icmp eq i64 %3, 0
  br i1 %i.sr, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit", label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread: ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64"
  %i.ss = shl nuw nsw i64 %3, 3
  %i.st = shl nuw nsw i64 255, %i.ss
  %i.su = or i64 %i.st, %.sroa.011.1.i14.i48
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i: ; preds = %bb.fv
  %i.sv = add i64 %.sroa.0.1.i15.i49, %.sroa.04.0.lcssa.i45 ; 2 uses
  %i.sw = icmp ult i64 %i.sv, %.val1.i.i
  call void @llvm.assume(i1 %i.sw), !noalias !34585
  %i.sx = getelementptr inbounds nuw i8, ptr %.val.i.i36, i64 %i.sv
  %i.sy = load i8, ptr %i.sx, align 1, !alias.scope !34582, !noalias !34583, !noundef !24
  %i.sz = zext i8 %i.sy to i64
  %i.ta = shl nuw nsw i64 %.sroa.0.1.i15.i49, 3
  %i.tb = shl nuw nsw i64 %i.sz, %i.ta
  %i.tc = shl nuw nsw i64 %3, 3
  %i.td = shl nuw i64 255, %i.tc
  %i.te = or i64 %i.tb, %i.td
  %i.tf = or i64 %i.te, %.sroa.011.1.i14.i48      ; 3 uses
  %.not165 = icmp eq i64 %3, 7
  br i1 %.not165, label %.thread393, label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"

.thread393:                                       ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i
  %i.tg = xor i64 %i.tf, %.sroa.32.4              ; 3 uses
  %i.th = add i64 %.sroa.22.4, %.sroa.0110.4      ; 3 uses
  %i.ti = add i64 %i.tg, %.sroa.12115.4           ; 2 uses
  %i.tj = call i64 @llvm.fshl.i64(i64 %.sroa.22.4, i64 %.sroa.22.4, i64 13)
  %i.tk = xor i64 %i.tj, %i.th                    ; 3 uses
  %i.tl = call i64 @llvm.fshl.i64(i64 %i.tg, i64 %i.tg, i64 16)
  %i.tm = xor i64 %i.ti, %i.tl                    ; 3 uses
  %i.tn = call i64 @llvm.fshl.i64(i64 %i.th, i64 %i.th, i64 32)
  %i.to = add i64 %i.ti, %i.tk                    ; 3 uses
  %i.tp = add i64 %i.tm, %i.tn                    ; 2 uses
  %i.tq = call i64 @llvm.fshl.i64(i64 %i.tk, i64 %i.tk, i64 17)
  %i.tr = xor i64 %i.to, %i.tq
  %i.ts = call i64 @llvm.fshl.i64(i64 %i.tm, i64 %i.tm, i64 21)
  %i.tt = xor i64 %i.ts, %i.tp
  %i.tu = call i64 @llvm.fshl.i64(i64 %i.to, i64 %i.to, i64 32)
  %i.tv = xor i64 %i.tp, %i.tf
  br label %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"

"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit": ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64", %.thread393, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i
  %.sroa.0110.2 = phi i64 [ %.sroa.0110.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.0110.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread ], [ %i.tv, %.thread393 ], [ %.sroa.0110.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %.sroa.12115.2 = phi i64 [ %.sroa.12115.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.12115.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread ], [ %i.tu, %.thread393 ], [ %.sroa.12115.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %.sroa.22.2 = phi i64 [ %.sroa.22.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.22.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread ], [ %i.tr, %.thread393 ], [ %.sroa.22.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ] ; 3 uses
  %.sroa.32.2 = phi i64 [ %.sroa.32.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %.sroa.32.4, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread ], [ %i.tt, %.thread393 ], [ %.sroa.32.4, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %.sroa.50.0 = phi i64 [ %i.tf, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i ], [ %i.su, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit.i.thread ], [ 0, %.thread393 ], [ 255, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit64" ]
  %i.tw = shl i64 %.val1.i.i, 56
  %i.tx = add i64 %i.tw, 72057594037927936
  %i.ty = or i64 %.sroa.50.0, %i.tx               ; 2 uses
  %i.tz = xor i64 %i.ty, %.sroa.32.2              ; 3 uses
  %i.ua = add i64 %.sroa.22.2, %.sroa.0110.2      ; 3 uses
  %i.ub = add i64 %i.tz, %.sroa.12115.2           ; 2 uses
  %i.uc = call i64 @llvm.fshl.i64(i64 %.sroa.22.2, i64 %.sroa.22.2, i64 13)
  %i.ud = xor i64 %i.uc, %i.ua                    ; 3 uses
  %i.ue = call i64 @llvm.fshl.i64(i64 %i.tz, i64 %i.tz, i64 16)
  %i.uf = xor i64 %i.ue, %i.ub                    ; 3 uses
  %i.ug = call i64 @llvm.fshl.i64(i64 %i.ua, i64 %i.ua, i64 32)
  %i.uh = add i64 %i.ub, %i.ud                    ; 3 uses
  %i.ui = add i64 %i.uf, %i.ug                    ; 2 uses
  %i.uj = call i64 @llvm.fshl.i64(i64 %i.ud, i64 %i.ud, i64 17)
  %i.uk = xor i64 %i.uh, %i.uj                    ; 3 uses
  %i.ul = call i64 @llvm.fshl.i64(i64 %i.uf, i64 %i.uf, i64 21)
  %i.um = xor i64 %i.ul, %i.ui                    ; 3 uses
  %i.un = call i64 @llvm.fshl.i64(i64 %i.uh, i64 %i.uh, i64 32)
  %i.uo = xor i64 %i.ui, %i.ty
  %i.up = xor i64 %i.un, 255
  %i.uq = add i64 %i.uo, %i.uk                    ; 3 uses
  %i.ur = add i64 %i.um, %i.up                    ; 2 uses
  %i.us = call i64 @llvm.fshl.i64(i64 %i.uk, i64 %i.uk, i64 13)
  %i.ut = xor i64 %i.uq, %i.us                    ; 3 uses
  %i.uu = call i64 @llvm.fshl.i64(i64 %i.um, i64 %i.um, i64 16)
  %i.uv = xor i64 %i.uu, %i.ur                    ; 3 uses
  %i.uw = call i64 @llvm.fshl.i64(i64 %i.uq, i64 %i.uq, i64 32)
  %i.ux = add i64 %i.ut, %i.ur                    ; 3 uses
  %i.uy = add i64 %i.uv, %i.uw                    ; 2 uses
  %i.uz = call i64 @llvm.fshl.i64(i64 %i.ut, i64 %i.ut, i64 17)
  %i.va = xor i64 %i.ux, %i.uz                    ; 3 uses
  %i.vb = call i64 @llvm.fshl.i64(i64 %i.uv, i64 %i.uv, i64 21)
  %i.vc = xor i64 %i.vb, %i.uy                    ; 3 uses
  %i.vd = call i64 @llvm.fshl.i64(i64 %i.ux, i64 %i.ux, i64 32)
  %i.ve = add i64 %i.va, %i.uy                    ; 3 uses
  %i.vf = add i64 %i.vc, %i.vd                    ; 2 uses
  %i.vg = call i64 @llvm.fshl.i64(i64 %i.va, i64 %i.va, i64 13)
  %i.vh = xor i64 %i.vg, %i.ve                    ; 3 uses
  %i.vi = call i64 @llvm.fshl.i64(i64 %i.vc, i64 %i.vc, i64 16)
  %i.vj = xor i64 %i.vi, %i.vf                    ; 3 uses
  %i.vk = call i64 @llvm.fshl.i64(i64 %i.ve, i64 %i.ve, i64 32)
  %i.vl = add i64 %i.vh, %i.vf                    ; 3 uses
  %i.vm = add i64 %i.vj, %i.vk                    ; 2 uses
  %i.vn = call i64 @llvm.fshl.i64(i64 %i.vh, i64 %i.vh, i64 17)
  %i.vo = xor i64 %i.vn, %i.vl                    ; 3 uses
  %i.vp = call i64 @llvm.fshl.i64(i64 %i.vj, i64 %i.vj, i64 21)
  %i.vq = xor i64 %i.vp, %i.vm                    ; 3 uses
  %i.vr = call i64 @llvm.fshl.i64(i64 %i.vl, i64 %i.vl, i64 32)
  %i.vs = add i64 %i.vo, %i.vm
  %i.vt = add i64 %i.vq, %i.vr                    ; 2 uses
  %i.vu = call i64 @llvm.fshl.i64(i64 %i.vo, i64 %i.vo, i64 13)
  %i.vv = xor i64 %i.vu, %i.vs                    ; 3 uses
  %i.vw = call i64 @llvm.fshl.i64(i64 %i.vq, i64 %i.vq, i64 16)
  %i.vx = xor i64 %i.vw, %i.vt                    ; 2 uses
  %i.vy = add i64 %i.vv, %i.vt                    ; 3 uses
  %i.vz = call i64 @llvm.fshl.i64(i64 %i.vv, i64 %i.vv, i64 17)
  %i.wa = call i64 @llvm.fshl.i64(i64 %i.vx, i64 %i.vx, i64 21)
  %i.wb = call i64 @llvm.fshl.i64(i64 %i.vy, i64 %i.vy, i64 32)
  %i.wc = xor i64 %i.wa, %i.vz
  %i.wd = xor i64 %i.wc, %i.wb
  %i.we = xor i64 %i.wd, %i.vy                    ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.qy, i64 16 ; 3 uses
  %i.wg = load i64, ptr %i.wf, align 8, !alias.scope !34586, !noalias !34587, !noundef !24
  %i.wh = icmp eq i64 %i.wg, 0
  br i1 %i.wh, label %bb.fw, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i", !prof !26

bb.fw:                                            ; preds = %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"
  %i.wi = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17hadcd087daf59bba6E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.qy, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.qz, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" unwind label %bb.ge, !noalias !34579 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i": ; preds = %bb.fw, %"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E.exit"
  %.val.i.i.i.i = load ptr, ptr %i.qy, align 8, !alias.scope !34588, !noalias !34589, !nonnull !24, !noundef !24 ; 8 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %.val7.i.i.i.i = load i64, ptr %i.wj, align 8, !alias.scope !34588, !noalias !34589, !noundef !24 ; 4 uses
  %i.wk = lshr i64 %i.we, 57
  %i.wl = trunc nuw nsw i64 %i.wk to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.wl, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fz, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i"
  %.pn.i.i.i.i136.i = phi i64 [ %i.we, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %i.xl, %bb.fz ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i, %bb.fz ]
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i, %bb.fz ]
  %i.wm = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h9a0698f382caa90dE.exit.i.i.i.i" ], [ %i.xk, %bb.fz ]
  %.sroa.0.017.i.i.i.i.i = and i64 %.pn.i.i.i.i136.i, %.val7.i.i.i.i ; 4 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.wn, align 1, !noalias !34590 ; 3 uses
end_hunk_8
begin_hunk_9_@"_ZN70_$LT$xtask..common..command..Command$u20$as$u20$core..fmt..Display$GT$3fmt17h72d89b3eb5141154E":_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit23: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.l, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5396e264cc38a2beE", ptr %.sroa.415.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40430
  store ptr @1667, ptr %i.a, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.726.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.726.0..sroa_idx, align 8
  %.sroa.827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.827.0..sroa_idx, align 8
  %.sroa.1028.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1028.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val17, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val18, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !40430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40430
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit23, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.n, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit23 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN70_$LT$xtask..common..instance..Binary$u20$as$u20$core..fmt..Display$GT$3fmt17h85424ec451533f01E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !range !47, !noundef !24
  %.not = icmp eq i64 %i.i, -9223372036854775808
  %.val13.pre = load ptr, ptr %1, align 8         ; 3 uses
  br i1 %.not, label %._ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21_crit_edge, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

._ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5396e264cc38a2beE", ptr %.sroa.43.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.j, align 8, !nonnull !24, !noundef !24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !40437
  store ptr @1669, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val16, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !40437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !40437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.k, label %bb.b, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %._ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21_crit_edge
  %.val14 = phi ptr [ %.val14.pre, %._ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21_crit_edge ], [ %.val16, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.l, ptr %i.e, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @"_ZN76_$LT$xtask..common..instance..BinarySource$u20$as$u20$core..fmt..Display$GT$3fmt17h64ab8d80dbeb5bd8E", ptr %.sroa.47.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !40438
  store ptr @0, ptr %i.b, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.729.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.729.0..sroa_idx, align 8
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.830.0..sroa_idx, align 8
  %.sroa.1031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.1031.0..sroa_idx, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !40438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !40438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit26, %bb.c
  %.sroa.0.0 = phi i1 [ false, %bb.c ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.r, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit26 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21 ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !24 ; 2 uses
  %i.p = icmp ult i64 %i.o, 384307168202282326
  call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.b, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit26

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit26: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN65_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h7ef646383138b30eE", ptr %.sroa.411.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !40439
  store ptr @1671, ptr %i.a, align 8
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.735.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.735.0..sroa_idx, align 8
  %.sroa.836.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.836.0..sroa_idx, align 8
  %.sroa.1037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1037.0..sroa_idx, align 8
  %i.r = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val13.pre, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !40439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !40439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h3937b020d1255dd4E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #31 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !24
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !24 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.g, i64 %2) ; 3 uses
  %i.h = icmp ugt i64 %.sroa.0.0.i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !40448
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.011.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i11 = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.j = or disjoint i64 %.sroa.0.0.i11, 1
  %i.k = icmp ult i64 %i.j, %.sroa.0.0.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.0.0.i11
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !40448
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.0.0.i11, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.011.0.i
  %i.q = or disjoint i64 %.sroa.0.0.i11, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.011.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.011.0.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.0.0.i11, %bb.d ] ; 3 uses
  %i.r = icmp ult i64 %.sroa.0.1.i, %.sroa.0.0.i
  br i1 %i.r, label %bb.g, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !40448, !noundef !24
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.0.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.011.1.i
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit: ; preds = %bb.f, %bb.g
  %.sroa.011.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.011.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.011.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !24
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub i64 %2, %.sroa.0.0                  ; 2 uses
  %3 = and i64 %i.af, 7                           ; 4 uses
  %i.ag = and i64 %i.af, -8                       ; 2 uses
  %i.ah = icmp ult i64 %.sroa.0.0, %i.ag
  br i1 %i.ah, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted21 = load i64, ptr %i.ai, align 8
  %.promoted22 = load i64, ptr %i.aj, align 8, !alias.scope !40449
  %.promoted24 = load i64, ptr %i.ak, align 8, !alias.scope !40449
  br label %bb.q

bb.i:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !noundef !24
  %i.an = xor i64 %i.am, %i.ad                    ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !alias.scope !40450, !noundef !24
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !40450, !noundef !24 ; 3 uses
  %i.ar = add i64 %i.aq, %i.ao                    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !40450, !noundef !24
  %i.au = add i64 %i.at, %i.an                    ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 13)
  %i.aw = xor i64 %i.av, %i.ar                    ; 3 uses
  %i.ax = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 16)
  %i.ay = xor i64 %i.au, %i.ax                    ; 3 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ba = add i64 %i.au, %i.aw                    ; 3 uses
  %i.bb = add i64 %i.ay, %i.az                    ; 2 uses
  %i.bc = tail call i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 17)
  %i.bd = xor i64 %i.ba, %i.bc
  store i64 %i.bd, ptr %i.ap, align 8, !alias.scope !40450
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 21)
  %i.bf = xor i64 %i.be, %i.bb
  store i64 %i.bf, ptr %i.al, align 8, !alias.scope !40450
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 32)
  store i64 %i.bg, ptr %i.as, align 8, !alias.scope !40450
  %i.bh = xor i64 %i.bb, %i.ad
  store i64 %i.bh, ptr %0, align 8
  br label %bb.h

bb.j:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit
  %i.bi = add i64 %i.e, %2
  br label %bb.r

._crit_edge:                                      ; preds = %bb.q
  store i64 %i.cx, ptr %i.ai, align 8
  store i64 %i.cv, ptr %i.aj, align 8, !alias.scope !40449
  store i64 %i.cy, ptr %i.ak, align 8, !alias.scope !40449
  store i64 %i.cz, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.h
  %.sroa.04.0.lcssa = phi i64 [ %i.da, %._crit_edge ], [ %.sroa.0.0, %bb.h ] ; 3 uses
  %i.bj = icmp samesign ugt i64 %3, 3
  br i1 %i.bj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.0.lcssa
  %.sroa.014.0.copyload.i18 = load i32, ptr %i.bk, align 1, !alias.scope !40451
  %i.bl = zext i32 %.sroa.014.0.copyload.i18 to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i12 = phi i64 [ %i.bl, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %.sroa.0.0.i13 = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %i.bm = or disjoint i64 %.sroa.0.0.i13, 1
  %i.bn = icmp samesign ult i64 %i.bm, %3
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr i8, ptr %1, i64 %.sroa.04.0.lcssa
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.sroa.0.0.i13
  %.sroa.015.0.copyload.i17 = load i16, ptr %i.bp, align 1, !alias.scope !40451
  %i.bq = zext i16 %.sroa.015.0.copyload.i17 to i64
  %i.br = shl nuw nsw i64 %.sroa.0.0.i13, 3
  %i.bs = shl nuw nsw i64 %i.bq, %i.br
  %i.bt = or i64 %i.bs, %.sroa.011.0.i12
  %i.bu = or disjoint i64 %.sroa.0.0.i13, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.1.i14 = phi i64 [ %i.bt, %bb.n ], [ %.sroa.011.0.i12, %bb.m ] ; 2 uses
  %.sroa.0.1.i15 = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i13, %bb.m ] ; 3 uses
  %i.bv = icmp samesign ult i64 %.sroa.0.1.i15, %3
  br i1 %i.bv, label %bb.p, label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

bb.p:                                             ; preds = %bb.o
  %i.bw = add i64 %.sroa.0.1.i15, %.sroa.04.0.lcssa ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %2
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bw
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !40451, !noundef !24
  %i.ca = zext i8 %i.bz to i64
  %i.cb = shl nuw nsw i64 %.sroa.0.1.i15, 3
  %i.cc = shl nuw nsw i64 %i.ca, %i.cb
  %i.cd = or i64 %i.cc, %.sroa.011.1.i14
  br label %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19

_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19: ; preds = %bb.o, %bb.p
  %.sroa.011.2.i16 = phi i64 [ %i.cd, %bb.p ], [ %.sroa.011.1.i14, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.011.2.i16, ptr %i.ce, align 8
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.cf = phi i64 [ %.promoted24, %.lr.ph ], [ %i.cy, %bb.q ]
  %i.cg = phi i64 [ %.promoted22, %.lr.ph ], [ %i.cv, %bb.q ] ; 3 uses
  %i.ch = phi i64 [ %.promoted21, %.lr.ph ], [ %i.cx, %bb.q ]
  %.sroa.04.020 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %i.da, %bb.q ] ; 2 uses
  %i.ci = phi i64 [ %.promoted, %.lr.ph ], [ %i.cz, %bb.q ]
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.020
  %.sroa.08.0.copyload = load i64, ptr %i.cj, align 1 ; 2 uses
  %i.ck = xor i64 %i.ch, %.sroa.08.0.copyload     ; 3 uses
  %i.cl = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cm = add i64 %i.cf, %i.ck                    ; 2 uses
  %i.cn = tail call i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 13)
  %i.co = xor i64 %i.cn, %i.cl                    ; 3 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 16)
  %i.cq = xor i64 %i.cm, %i.cp                    ; 3 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 32)
  %i.cs = add i64 %i.cm, %i.co                    ; 3 uses
  %i.ct = add i64 %i.cq, %i.cr                    ; 2 uses
  %i.cu = tail call i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 17)
  %i.cv = xor i64 %i.cs, %i.cu                    ; 2 uses
  %i.cw = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 21)
  %i.cx = xor i64 %i.cw, %i.ct                    ; 2 uses
  %i.cy = tail call i64 @llvm.fshl.i64(i64 %i.cs, i64 %i.cs, i64 32) ; 2 uses
  %i.cz = xor i64 %i.ct, %.sroa.08.0.copyload     ; 2 uses
  %i.da = add nuw i64 %.sroa.04.020, 8            ; 3 uses
  %i.db = icmp ult i64 %i.da, %i.ag
  br i1 %i.db, label %bb.q, label %._crit_edge

bb.r:                                             ; preds = %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19, %bb.j
  %storemerge = phi i64 [ %i.bi, %bb.j ], [ %3, %_ZN4core4hash3sip9u8to64_le17ha3e2b77f3cbdfbd9E.exit19 ]
  store i64 %storemerge, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcb97dc91901d130fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !alias.scope !40461, !noalias !40462, !noundef !24 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %.split5

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"

.split5:                                          ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.g, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

.split:                                           ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit": ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.i, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %.split6

.split6:                                          ; preds = %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !24, !noalias !40463, !nonnull !24
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @183, i64 noundef 2), !noalias !40463, !inline_history !40457
  br i1 %i.m, label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4", label %bb.c

bb.c:                                             ; preds = %.split6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.a, align 8, !alias.scope !40464, !noalias !40465, !noundef !24 ; 2 uses
  %i.p = and i32 %i.o, 33554432
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = and i32 %i.o, 67108864
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.t = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

bb.f:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

bb.g:                                             ; preds = %bb.d
  %i.v = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4"

"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit4": ; preds = %bb.g, %bb.f, %bb.e, %.split6, %.split5, %.split, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit"
  %.sroa.0.0 = phi i1 [ %i.t, %bb.e ], [ true, %"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE.exit" ], [ true, %.split6 ], [ true, %.split ], [ true, %.split5 ], [ %i.u, %bb.f ], [ %i.v, %bb.g ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h08688230d9fd59dfE"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h0ade8fb6ef6374c1E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h18bb038ef29db7a1E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h2fa32f2eec7eab76E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_ZN6anyhow5error9ErrorImpl5error17hf8fbddd5521f6544E(ptr noundef nonnull %0) ; 2 uses
  %i.b = extractvalue { ptr, ptr } %i.a, 0
  %i.c = extractvalue { ptr, ptr } %i.a, 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !24, !nonnull !24
  %i.f = tail call { ptr, ptr } %i.e(ptr noundef align 1 %i.b)
  ret { ptr, ptr } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal { ptr, ptr } @"_ZN72_$LT$anyhow..error..ErrorImpl$LT$E$GT$$u20$as$u20$core..error..Error$GT$6source17h2fd2ac7d4219bcc3E"(ptr noundef nonnull align 8 %0) unnamed_addr #1 {
bb.a:
end_hunk_9
begin_hunk_10_@"_ZN7reqwest10async_impl8response8Response5bytes28_$u7b$$u7b$closure$u7d$$u7d$17hba0b216e3d972376E":bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !43215)
  %.not.i.i = icmp eq i64 %i.cb, 3
  br i1 %.not.i.i, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !43216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !43213
  %.val.i.i11 = load i64, ptr %i.bu, align 8, !noalias !43216, !noundef !24
  %.not56.i.i = icmp eq i64 %.val.i.i11, 0
  br i1 %.not56.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !43217)
  call void @llvm.experimental.noalias.scope.decl(metadata !43218)
  %i.cd = load ptr, ptr %i.r, align 8, !alias.scope !43219, !noalias !43216, !nonnull !24, !align !31, !noundef !24
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !43220, !nonnull !24, !noundef !24
  %i.cg = load ptr, ptr %i.ca, align 8, !alias.scope !43219, !noalias !43216, !noundef !24
  invoke void %i.cf(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef %i.cg, i64 noundef 0)
          to label %.noexc.i unwind label %.loopexit59.i, !noalias !43212, !inline_history !43002

bb.q:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !43221)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !43222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !43213
  call void @llvm.experimental.noalias.scope.decl(metadata !43223)
  call void @llvm.experimental.noalias.scope.decl(metadata !43224)
  %i.ch = load i64, ptr %i.bw, align 8, !alias.scope !43225, !noalias !43226, !noundef !24 ; 2 uses
  %i.ci = load i64, ptr %i.bv, align 8, !range !30, !alias.scope !43225, !noalias !43226, !noundef !24 ; 2 uses
  %i.cj = icmp eq i64 %i.ch, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  invoke void @"_ZN5alloc11collections9vec_deque21VecDeque$LT$T$C$A$GT$4grow17h99338650aa43862fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283)
          to label %._crit_edge.i.i.i.i unwind label %bb.s, !noalias !43227

._crit_edge.i.i.i.i:                              ; preds = %bb.r
  %.pre.i.i.i.i = load i64, ptr %i.bw, align 8, !alias.scope !43225, !noalias !43226
  %.pre1.i.i.i.i = load i64, ptr %i.bv, align 8, !range !30, !alias.scope !43225, !noalias !43226
  br label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !43228)
  call void @llvm.experimental.noalias.scope.decl(metadata !43229)
  %i.cl = load ptr, ptr %i.p, align 8, !alias.scope !43230, !noalias !43231, !nonnull !24, !align !31, !noundef !24
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !43232, !nonnull !24, !noundef !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !alias.scope !43230, !noalias !43231, !noundef !24
  %i.cr = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !43230, !noalias !43231, !noundef !24
  invoke void %i.cn(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef %i.cq, i64 noundef %i.cs)
          to label %.body14 unwind label %bb.t, !noalias !43233, !inline_history !8

bb.t:                                             ; preds = %bb.s
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43233
  unreachable

.noexc.i:                                         ; preds = %bb.u, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !43216
  br label %"_ZN14http_body_util9collected18Collected$LT$B$GT$10push_frame17h551e31d0b864a74dE.exit.i"

bb.u:                                             ; preds = %._crit_edge.i.i.i.i, %bb.q
  %i.cu = phi i64 [ %.pre1.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ci, %bb.q ] ; 2 uses
  %i.cv = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ch, %bb.q ] ; 2 uses
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %i.bw, align 8, !alias.scope !43225, !noalias !43226
  %i.cx = load i64, ptr %i.bx, align 8, !alias.scope !43225, !noalias !43226, !noundef !24
  %i.cy = add i64 %i.cx, %i.cv                    ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.cy, %i.cu
  %i.cz = select i1 %.not.i.i.i.i, i64 0, i64 %i.cu
  %.sroa.0.0.i.i.i.i = sub nuw i64 %i.cy, %i.cz
  %i.da = load ptr, ptr %i.by, align 8, !alias.scope !43225, !noalias !43226, !nonnull !24, !noundef !24
  %i.db = getelementptr inbounds nuw [32 x i8], ptr %i.da, i64 %.sroa.0.0.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.db, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !43212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !43222
  br label %.noexc.i

bb.v:                                             ; preds = %bb.ck, %bb.cj
  %i.dc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43234
  unreachable

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !43216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5196.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.655.40..sroa_idx, i64 56, i1 false), !noalias !43213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4195.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.416.0..sroa_idx.i, i64 32, i1 false), !noalias !43213
  store i64 %i.cb, ptr %i.aq, align 8, !noalias !43216
  store i64 0, ptr %i.q, align 8, !noalias !43216
  %.sroa.219.0.copyload.i.i = load i64, ptr %.sroa.219.0..sroa_idx.i.i, align 8, !noalias !43216 ; 2 uses
  %.sroa.322.0.copyload.i.i = load ptr, ptr %.sroa.322.0..sroa_idx.i.i, align 8, !noalias !43216 ; 10 uses
  %.sroa.425.0.copyload.i.i = load i64, ptr %.sroa.5196.0..sroa_idx.i.i, align 8, !noalias !43216 ; 6 uses
  %.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !43216 ; 3 uses
  %.sroa.732.0.copyload.i.i = load i64, ptr %.sroa.732.0..sroa_idx.i.i, align 8, !noalias !43216 ; 3 uses
  %.not11.i.i = icmp eq i64 %i.cc, 3
  br i1 %.not11.i.i, label %.thread.i.i, label %bb.y

bb.x:                                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !43235
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !43216
  %.pre.i.i = load i64, ptr %i.q, align 8, !range !36, !noalias !43216
  %i.dd = trunc nuw i64 %.pre.i.i to i1
  br i1 %i.dd, label %bb.cl, label %"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$http..header..map..HeaderMap$C$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$GT$$GT$17h896843fcd7c7c0a1E.exit.i.i"

bb.y:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !43236)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !43216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !43235
  call void @llvm.experimental.noalias.scope.decl(metadata !43237)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.322.0.copyload.i.i) ]
  %i.de = icmp ult i64 %.sroa.425.0.copyload.i.i, 88686269585142076
  call void @llvm.assume(i1 %i.de)
  %.idx.i.i.i = mul nuw nsw i64 %.sroa.425.0.copyload.i.i, 104
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 %.idx.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.655.48..sroa_idx, i64 24, i1 false), !noalias !43213
  store i64 0, ptr %i.o, align 8, !alias.scope !43237, !noalias !43238
  store ptr %.sroa.322.0.copyload.i.i, ptr %i.as, align 8, !alias.scope !43237, !noalias !43238
  store ptr %.sroa.322.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43237, !noalias !43238
  store i64 %.sroa.219.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43237, !noalias !43238
  store ptr %i.df, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43237, !noalias !43238
  %i.dg = icmp eq i64 %.sroa.732.0.copyload.i.i, 0
  br i1 %i.dg, label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i": ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i.i) ]
  %i.dh = shl nuw nsw i64 %.sroa.732.0.copyload.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i.i, i64 noundef %i.dh, i64 noundef 2) #47, !noalias !43239
  br label %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"

"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i4.i.i.i.i", %bb.y
  %i.di = load i64, ptr %i.at, align 8, !alias.scope !43240, !noalias !43241, !noundef !24 ; 4 uses
  %i.dj = icmp ult i64 %i.di, 88686269585142076
  call void @llvm.assume(i1 %i.dj)
  %i.dk = icmp eq i64 %i.di, 0                    ; 2 uses
  %i.dl = add nuw nsw i64 %.sroa.425.0.copyload.i.i, 1
  %i.dm = lshr i64 %i.dl, 1
  %.sroa.0.0.i.i.i = select i1 %i.dk, i64 %.sroa.425.0.copyload.i.i, i64 %i.dm
  call void @llvm.experimental.noalias.scope.decl(metadata !43242)
  %i.dn = call i64 @llvm.usub.sat.i64(i64 24576, i64 %i.di)
  %.sroa.0.0.i.i15.i.i = call noundef i64 @llvm.umin.i64(i64 %i.dn, i64 %.sroa.0.0.i.i.i)
  %i.do = add nuw nsw i64 %.sroa.0.0.i.i15.i.i, %i.di ; 2 uses
  %i.dp = udiv i64 %i.do, 3
  %i.dq = add nuw nsw i64 %i.dp, %i.do            ; 3 uses
  %i.dr = load i64, ptr %i.aw, align 8, !alias.scope !43243, !noalias !43241, !noundef !24 ; 3 uses
  %i.ds = icmp ugt i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.z, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

.body.i.i.i:                                      ; preds = %.body32.thread.i.i.i, %bb.cf, %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.i, %.body32.thread106.loopexit.split-lp.loopexit.i.i.i, %.body32.thread106.loopexit.i.i.body.i, %.body.i.i.i.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ky, %bb.cf ], [ %eh.lpad-body33101.i.i.i, %.body32.thread.i.i.i ], [ %lpad.loopexit.split-lp138.i.i.i, %.body32.thread106.loopexit.split-lp.loopexit.split-lp.i.i.i ], [ %i.ev, %.body.i.i.i.i ], [ %eh.lpad-body51.i, %.body32.thread106.loopexit.i.i.body.i ], [ %lpad.loopexit137.i.i.i, %.body32.thread106.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17hdc187f1d2a1ecae9E"(ptr noalias noundef align 8 dereferenceable(72) %i.o) #55
          to label %.body17.i.i unwind label %bb.ah, !noalias !43244

.loopexit.i:                                      ; preds = %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.loopexit.split-lp.i:                             ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i", %.invoke.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.z:                                             ; preds = %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"
  %i.dt = icmp samesign ult i64 %i.dq, 2          ; 2 uses
  %i.du = add nsw i64 %i.dq, -1
  %i.dv = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.du, i1 true)
  %i.dw = lshr i64 -1, %i.dv                      ; 4 uses
  %.sroa.022.0.i.i.i.i = select i1 %i.dt, i64 0, i64 %i.dw ; 2 uses
  %i.dx = add nuw nsw i64 %.sroa.022.0.i.i.i.i, 1 ; 6 uses
  %or.cond.i.i.i.i = icmp samesign ugt i64 %.sroa.022.0.i.i.i.i, 32767
  br i1 %or.cond.i.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i", label %bb.aa, !prof !43

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dk, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i", label %bb.ab

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i": ; preds = %bb.aa
  %i.dy = trunc nuw i64 %i.dx to i16
  %i.dz = add i16 %i.dy, -1
  store i16 %i.dz, ptr %i.ax, align 8, !alias.scope !43243, !noalias !43241
  %i.ea = shl nuw nsw i64 %i.dx, 2                ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !43245
  %i.eb = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ea, i64 noundef range(i64 1, 9) 2) #47, !noalias !43245 ; 7 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.invoke.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  br i1 %i.dt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"
  %min.iters.check = icmp ult i64 %i.dw, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.preheader755, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.dw, -8                      ; 3 uses
  %3 = shl i64 %n.vec, 2
  %4 = getelementptr i8, ptr %i.eb, i64 %3
  %5 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ed = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.eb, i64 %i.ed
  %i.ee = getelementptr i8, ptr %i.eb, i64 %i.ed
  %next.gep751 = getelementptr i8, ptr %i.ee, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !43246
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep751, align 2, !noalias !43246
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.preheader755, label %vector.body, !llvm.loop !43030

.lr.ph.i.i.i.i.i.i.preheader755:                  ; preds = %vector.body, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.i.ph = phi ptr [ %i.eb, %.lr.ph.i.i.i.i.i.i.preheader ], [ %4, %vector.body ]
  %.sroa.03.08.i.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %5, %vector.body ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader755, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i.i = phi ptr [ %i.ei, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i.i = phi i64 [ %i.eg, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader755 ] ; 2 uses
  %i.eg = add nuw nsw i64 %.sroa.03.08.i.i.i.i.i.i, 1
  store i16 -1, ptr %.sroa.0.09.i.i.i.i.i.i, align 2, !noalias !43246
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.eh, align 2, !noalias !43246
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %.sroa.03.08.i.i.i.i.i.i, %i.dw
  br i1 %exitcond.not.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !43031

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i.i = phi ptr [ %i.eb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha9a886d75417c9a7E.exit.i.i.i.i.i.i" ], [ %i.ei, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, align 2, !noalias !43246
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i.i.i.i.i, i64 2
  store i16 0, ptr %i.ej, align 2, !noalias !43246
  %i.ek = icmp eq i64 %i.dr, 0
  br i1 %i.ek, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  %.val.i21.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !43243, !noalias !43241, !nonnull !24, !noundef !24
  %i.el = shl nuw nsw i64 %i.dr, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i21.i.i.i, i64 noundef %i.el, i64 noundef 2) #47, !noalias !43247
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"

bb.ab:                                            ; preds = %bb.aa
  %i.em = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$8try_grow17haea69580bd90cf09E"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj, i64 noundef %i.dx)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i" unwind label %.loopexit.i, !noalias !43244

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16into_boxed_slice17hacb7358607277acfE.exit.i.i.i.i"
  store ptr %i.eb, ptr %i.av, align 8, !alias.scope !43243, !noalias !43241
  store i64 %i.dx, ptr %i.aw, align 8, !alias.scope !43243, !noalias !43241
  %i.en = lshr i64 %i.dx, 2
  %i.eo = sub nuw nsw i64 %i.dx, %i.en            ; 3 uses
  %i.ep = mul nuw nsw i64 %i.eo, 104              ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !43248
  %i.eq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ep, i64 noundef range(i64 1, 9) 8) #47, !noalias !43248 ; 3 uses
  %i.er = icmp eq ptr %i.eq, null
  br i1 %i.er, label %.invoke.i.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"

.invoke.i.i.i:                                    ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i"
  %i.es = phi i64 [ 2, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.et = phi i64 [ %i.ea, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ %i.ep, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  %i.eu = phi ptr [ @568, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i.i.i.i" ], [ @569, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.es, i64 %i.et, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.eu) #54
          to label %.cont.i.i.i unwind label %.loopexit.split-lp.i, !noalias !43244

.cont.i.i.i:                                      ; preds = %.invoke.i.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h7acf44491c982670E.exit.i.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !43249)
  %.val.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !alias.scope !43250, !noalias !43241, !nonnull !24, !noundef !24 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$$u5b$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$u5d$$GT$17hf1eb4dfc17aacc06E"(ptr noalias noundef nonnull align 8 %.val.i.i.i.i.i, i64 noundef 0)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i" unwind label %bb.ac, !noalias !43251

bb.ac:                                            ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %i.ev = landingpad { ptr, i32 }
          cleanup
  %.val4.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !30, !alias.scope !43250, !noalias !43241, !noundef !24 ; 2 uses
  %i.ew = icmp eq i64 %.val4.i.i.i.i.i, 0
  br i1 %i.ew, label %.body.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = mul nuw i64 %.val4.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !43251
  br label %.body.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hdbad330c31c32612E.exit.i.i.i.i"
  %.val2.i.i.i.i.i = load i64, ptr %i.au, align 8, !range !30, !alias.scope !43250, !noalias !43241, !noundef !24 ; 2 uses
  %i.ey = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.ey, label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i", label %bb.ae

bb.ae:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  %i.ez = mul nuw i64 %.val2.i.i.i.i.i, 104
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !43251
  br label %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i"

.body.i.i.i.i:                                    ; preds = %bb.ad, %bb.ac
  store i64 %i.eo, ptr %i.au, align 8, !alias.scope !43243, !noalias !43241
  store ptr %i.eq, ptr %i.ay, align 8, !alias.scope !43243, !noalias !43241
  br label %.body.i.i.i

"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i": ; preds = %bb.ae, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h62614eb66c936b58E.exit.i.i.i.i.i"
  store i64 %i.eo, ptr %i.au, align 8, !alias.scope !43243, !noalias !43241
  store ptr %i.eq, ptr %i.ay, align 8, !alias.scope !43243, !noalias !43241
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i": ; preds = %bb.ab
  br i1 %i.em, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i", label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i", !prof !73

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i", %bb.z
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @554, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #54
          to label %.noexc24.i.i.i unwind label %.loopexit.split-lp.i, !noalias !43244

.noexc24.i.i.i:                                   ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread.i.i.i"
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.i.i.i", %"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17hb65dc6e3ed25b711E.exit.i.i.i.i", %"_ZN99_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h0268a0236837d17eE.exit.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !43252)
  call void @llvm.experimental.noalias.scope.decl(metadata !43253)
  %i.fa = icmp eq i64 %.sroa.425.0.copyload.i.i, 0
  br i1 %i.fa, label %bb.af, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i": ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 104 ; 2 uses
  store ptr %i.fb, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !43254, !noalias !43255
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.322.0.copyload.i.i, align 8, !noalias !43256 ; 3 uses
  %.not.i.i16.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i16.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.bp, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i", %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hbd1b96306d7f198bE.exit.thread96.i.i.i"
  invoke fastcc void @"_ZN4core3ptr88drop_in_place$LT$http..header..map..IntoIter$LT$http..header..value..HeaderValue$GT$$GT$17hdc187f1d2a1ecae9E"(ptr noalias noundef align 8 dereferenceable(72) %i.o)
          to label %bb.x unwind label %bb.ch, !noalias !43234

bb.ag:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h63511c4f00868403E.exit.i.i.i.i"
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 64
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 8
  %.sroa.7.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !43256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i.i.i, i64 32, i1 false), !noalias !43244
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.322.0.copyload.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !43235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.fc, i64 40, i1 false), !noalias !43244
  %i.fd = trunc nuw i64 %.sroa.0.0.copyload.i.i.i.i to i1
  %.sroa.56.0.i.i.i.i = select i1 %i.fd, i64 %.sroa.7.0.copyload.i.i.i.i, i64 undef
  %i.fe = load i64, ptr %i.bg, align 8, !noalias !43235 ; 2 uses
  %i.ff = load ptr, ptr %i.bh, align 8, !noalias !43235, !nonnull !24
  br label %bb.ai

bb.ah:                                            ; preds = %.body32.thread.i.i.i, %.body.i.i.i
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56, !noalias !43244
  unreachable

bb.ai:                                            ; preds = %bb.bq, %bb.ag
  %i.fh = phi ptr [ %i.iu, %bb.bq ], [ %i.fb, %bb.ag ] ; 15 uses
  %.lcssa175190.i.i.i = phi i64 [ %.sroa.56.0.i47.i.i.i, %bb.bq ], [ %.sroa.56.0.i.i.i.i, %bb.ag ] ; 8 uses
  %.sroa.0.0.i50171.lcssa181.i.i.i = phi i64 [ %.sroa.0.0.copyload.i40.i.i.i, %bb.bq ], [ %.sroa.0.0.copyload.i.i.i.i, %bb.ag ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !43235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !noalias !43235
  call void @llvm.experimental.noalias.scope.decl(metadata !43257)
  call void @llvm.experimental.noalias.scope.decl(metadata !43258)
  %i.fi = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17h8e510c9b8652aa7fE"(ptr noalias noundef nonnull align 8 dereferenceable(144) %i.aj)
          to label %bb.aj unwind label %.loopexit.i.i.i, !noalias !43259

bb.aj:                                            ; preds = %bb.ai
  br i1 %i.fi, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  store i64 %.sroa.0.0.i50171.lcssa181.i.i.i, ptr %i.o, align 8, !noalias !43235
  store i64 %.lcssa175190.i.i.i, ptr %i.az, align 8, !noalias !43235
  store ptr %i.fh, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !43235
  call void @llvm.experimental.noalias.scope.decl(metadata !43260)
  call void @llvm.experimental.noalias.scope.decl(metadata !43261)
  %i.fj = load ptr, ptr %i.l, align 8, !alias.scope !43262, !noalias !43263, !noundef !24 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !43264)
  call void @llvm.experimental.noalias.scope.decl(metadata !43265)
  call void @llvm.experimental.noalias.scope.decl(metadata !43266)
  call void @llvm.experimental.noalias.scope.decl(metadata !43267)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !43268, !nonnull !24, !noundef !24
  %i.fn = load ptr, ptr %i.ba, align 8, !alias.scope !43269, !noalias !43263, !noundef !24
  %i.fo = load i64, ptr %i.bb, align 8, !alias.scope !43269, !noalias !43263, !noundef !24
  invoke void %i.fm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.fn, i64 noundef %i.fo)
          to label %bb.bb unwind label %.body32.loopexit.split-lp.i.i.i, !noalias !43244, !inline_history !43060

bb.am:                                            ; preds = %bb.aj
  %i.fp = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17hfa00c2547dd9d71bE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %i.l), !noalias !43270 ; 4 uses
  %i.fq = load i16, ptr %i.ax, align 8, !alias.scope !43271, !noalias !43272, !noundef !24 ; 3 uses
  %i.fr = and i16 %i.fq, %i.fp
  %i.fs = zext nneg i16 %i.fr to i64
  %i.ft = load i64, ptr %i.aw, align 8, !alias.scope !43271, !noalias !43272, !noundef !24 ; 2 uses
  %i.fu = zext i16 %i.fq to i64
  %i.fv = load ptr, ptr %i.l, align 8, !noalias !43235 ; 5 uses
  %i.fw = icmp eq ptr %i.fv, null                 ; 2 uses
  %i.fx = load i8, ptr %i.ba, align 8, !range !104, !noalias !43235
  %i.fy = load i64, ptr %i.bb, align 8, !noalias !43235 ; 3 uses
  %i.fz = load ptr, ptr %i.ba, align 8, !noalias !43235 ; 3 uses
  %i.ga = ptrtoint ptr %i.fv to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %.not = icmp eq i64 %i.ft, 0
  %i.gc = load ptr, ptr %i.av, align 8, !alias.scope !43271, !noalias !43272, !nonnull !24, !align !105, !noundef !24
  br label %.outer754

.outer754:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i", %bb.am
  %.sroa.07.0.i.i.i.i.ph = phi i64 [ %i.gr, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ 0, %bb.am ] ; 4 uses
  %.sroa.0.0.i28.i.i.i.ph = phi i64 [ %i.gs, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17hd9fe00166c2a3e98E.exit.thread.i.i.i.i" ], [ %i.fs, %bb.am ] ; 2 uses
  %i.gd = icmp ult i64 %.sroa.0.0.i28.i.i.i.ph, %i.ft ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.gd, %.not.not
  %.sroa.0.0.i28.i.i.i.ph.mux = select i1 %i.gd, i64 %.sroa.0.0.i28.i.i.i.ph, i64 0 ; 4 uses
  br i1 %brmerge, label %.loopexit930, label %infloop
end_hunk_10
