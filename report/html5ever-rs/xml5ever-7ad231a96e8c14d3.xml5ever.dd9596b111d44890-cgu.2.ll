Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.2?download=true
inline.NumInlined: 83
inline.NumDeleted: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1E_IB2g_NtB2Y_18NamespaceStaticSetEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B3F_E12insert_entry0ECsj1ugBVjDER0_8xml5ever:bb.a
bb.r:                                             ; preds = %bb.n, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.n ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.j) #19
          to label %bb.s unwind label %bb.q, !noalias !88

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k) #19
          to label %.critedge22 unwind label %bb.q, !noalias !88

bb.t:                                             ; preds = %bb.p, %bb.o
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %.sroa.510.0.i
  store i64 %2, ptr %i.bt, align 8, !alias.scope !101, !noalias !100
  %i.bu = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 96
  %i.bv = add i16 %i.bh, 1
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.sroa.510.0.i
  store i64 %3, ptr %i.bw, align 8, !alias.scope !102, !noalias !100
  store i16 %i.bv, ptr %i.bg, align 2, !noalias !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bx = load ptr, ptr %i.m, align 8, !noalias !103, !noundef !4 ; 2 uses
  %.not.i182 = icmp eq ptr %i.bx, null
  br i1 %.not.i182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bz = icmp eq i64 %i.ah, 0
  br label %bb.ak

bb.u:                                             ; preds = %bb.c, %bb.d
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  store i64 %2, ptr %i.ca, align 8, !alias.scope !91, !noalias !92
  %i.cb = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.cc = add nuw nsw i16 %i.o, 1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.w
  store i64 %3, ptr %i.cd, align 8, !alias.scope !93, !noalias !92
  store i16 %i.cc, ptr %i.n, align 2, !noalias !92
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !90, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bt

._crit_edge:                                      ; preds = %.loopexit72, %bb.t
  %.lcssa175 = phi i64 [ 0, %bb.t ], [ %i.dg, %.loopexit72 ] ; 2 uses
  %.lcssa168 = phi ptr [ %i.ai, %bb.t ], [ %i.fz, %.loopexit72 ] ; 4 uses
  %.lcssa161 = phi i64 [ %i.ar, %bb.t ], [ %i.gi, %.loopexit72 ] ; 3 uses
  %.lcssa154 = phi i64 [ %i.ah, %bb.t ], [ %i.dg, %.loopexit72 ]
  %.lcssa = phi ptr [ %i.m, %bb.t ], [ %i.da, %.loopexit72 ]
  %storemerge.lcssa = phi i64 [ %i.au, %bb.t ], [ %i.gl, %.loopexit72 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.lcssa, ptr %i.l, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.lcssa154, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %.lcssa168, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 %.lcssa175, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store i64 %.lcssa161, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  store i64 %storemerge.lcssa, ptr %.sroa.88.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cg = load ptr, ptr %.val, align 8, !noalias !104, !noundef !4 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i25 = icmp eq ptr %i.cg, null
  br i1 %.not.i25, label %bb.v, label %bb.x, !prof !5

bb.v:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
          to label %bb.w unwind label %bb.ah, !noalias !104

bb.w:                                             ; preds = %bb.v
  unreachable

bb.x:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.ci = load i64, ptr %i.ch, align 8, !alias.scope !105, !noalias !104, !noundef !4 ; 2 uses
  %i.cj = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1v_IB27_NtB2P_18NamespaceStaticSetEEEE13new_uninit_inCsj1ugBVjDER0_8xml5ever()
          to label %.noexc.i.i unwind label %bb.ab, !noalias !106 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.x
  store ptr null, ptr %i.cj, align 8, !noalias !106
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 186 ; 3 uses
  store i16 0, ptr %i.ck, align 2, !noalias !106
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 192 ; 2 uses
  store ptr %i.cg, ptr %i.cl, align 8, !noalias !106
  %i.cm = add i64 %i.ci, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i.i.i, label %bb.y, label %bb.ac, !prof !5

bb.y:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #18
          to label %bb.z unwind label %bb.aa, !noalias !106

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef 288, i64 noundef 8) #21, !noalias !106
  br label %.body.i.i

bb.ab:                                            ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ab, %bb.aa
  tail call void @llvm.trap()
  unreachable

bb.ac:                                            ; preds = %.noexc.i.i
  store ptr %i.cj, ptr %i.cg, align 8, !noalias !107
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cg, i64 184
  store i16 0, ptr %i.cp, align 8, !noalias !108
  store ptr %i.cj, ptr %.val, align 8, !alias.scope !105, !noalias !104
  store i64 %i.cm, ptr %i.ch, align 8, !alias.scope !105, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !104
  store i64 %.lcssa161, ptr %i.g, align 8, !noalias !104
  store i64 %storemerge.lcssa, ptr %i.f, align 8, !noalias !104
  %i.cq = icmp eq i64 %.lcssa175, %i.ci
  br i1 %i.cq, label %bb.ad, label %.invoke.i.i, !prof !6

.invoke.i.i:                                      ; preds = %bb.ad, %bb.ac
  %i.cr = phi ptr [ @12, %bb.ac ], [ @10, %bb.ad ]
  %i.cs = phi i64 [ 48, %bb.ac ], [ 32, %bb.ad ]
  %i.ct = phi ptr [ @13, %bb.ac ], [ @14, %bb.ad ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #18
          to label %.cont.i.i unwind label %bb.ae, !noalias !104

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.cu = load i16, ptr %i.ck, align 2, !noalias !104, !noundef !4 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.bu, label %.invoke.i.i, !prof !6

bb.ae:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.f) #19
          to label %bb.ag unwind label %bb.af, !noalias !104

bb.af:                                            ; preds = %bb.ag, %bb.ae
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !104
  unreachable

bb.ag:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.g) #19
          to label %.critedge22 unwind label %bb.af, !noalias !104

bb.ah:                                            ; preds = %bb.v
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.77.0..sroa_idx) #19
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.88.0..sroa_idx) #19
          to label %.critedge22 unwind label %bb.ai

bb.ak:                                            ; preds = %.lr.ph, %.loopexit72
  %i.da = phi ptr [ %i.bx, %.lr.ph ], [ %i.kn, %.loopexit72 ] ; 24 uses
  %storemerge183 = phi i64 [ %i.au, %.lr.ph ], [ %i.gl, %.loopexit72 ] ; 5 uses
  %i.db = phi ptr [ %i.m, %.lr.ph ], [ %i.da, %.loopexit72 ]
  %i.dc = phi i64 [ %i.ah, %.lr.ph ], [ %i.dg, %.loopexit72 ]
  %i.dd = phi i64 [ %i.ar, %.lr.ph ], [ %i.gi, %.loopexit72 ] ; 5 uses
  %i.de = phi ptr [ %i.ai, %.lr.ph ], [ %i.fz, %.loopexit72 ] ; 2 uses
  %i.df = phi i1 [ %i.bz, %.lr.ph ], [ true, %.loopexit72 ]
  %i.dg = add i64 %i.dc, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 184
  %i.di = load i16, ptr %i.dh, align 8, !noalias !103 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.dd, ptr %i.e, align 8, !noalias !109
  store i64 %storemerge183, ptr %i.d, align 8, !noalias !109
  br i1 %i.df, label %bb.am, label %bb.al, !prof !6

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #18
          to label %bb.an unwind label %.loopexit.split-lp, !noalias !109

bb.am:                                            ; preds = %bb.ak
  %i.dk = getelementptr inbounds nuw i8, ptr %i.da, i64 186 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !109, !noundef !4 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.ap, label %bb.ao

.loopexit.split-lp:                               ; preds = %bb.aw, %bb.al
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.an:                                            ; preds = %bb.al
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.aw, label %bb.at

bb.ap:                                            ; preds = %bb.am
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %.not.i.i34.not = icmp ult i16 %i.di, %i.dl
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dj ; 2 uses
  br i1 %.not.i.i34.not, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.dd, ptr %i.ds, align 8, !alias.scope !110, !noalias !111
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dj
  store i64 %storemerge183, ptr %i.du, align 8, !alias.scope !112, !noalias !111
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dw = sub nuw nsw i64 %i.do, %i.dj
  %i.dx = shl nuw nsw i64 %i.dw, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.ds, i64 %i.dx, i1 false), !alias.scope !110, !noalias !111
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dj
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dr
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ea, ptr nonnull align 8 %i.dz, i64 %i.dx, i1 false), !alias.scope !112, !noalias !111
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.dj
  store i64 %i.dd, ptr %i.eb, align 8, !alias.scope !110, !noalias !111
  %i.ec = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.dj
  store i64 %storemerge183, ptr %i.ed, align 8, !alias.scope !112, !noalias !111
  %i.ee = getelementptr inbounds nuw i8, ptr %i.da, i64 192 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.dr
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.dj
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = sub nuw nsw i64 %i.do, %i.dj
  %i.ej = shl nuw nsw i64 %i.ei, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eh, ptr nonnull align 8 %i.ef, i64 %i.ej, i1 false), !alias.scope !113, !noalias !111
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ek = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.el = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.dr
  store ptr %i.de, ptr %i.em, align 8, !alias.scope !113, !noalias !111
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !111
  %i.en = icmp samesign ult i64 %i.dr, %i.el
  br i1 %i.en, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.as
  %i.eo = add nuw nsw i64 %i.do, 1
  %i.ep = sub nsw i64 %i.eo, %i.dj
  %i.eq = sub nsw i64 %i.do, %i.dj
  %xtraiter553 = and i64 %i.ep, 3                 ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.es, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter555 = phi i64 [ %prol.iter555.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.es = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.et = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.et)
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.0.06.i.i.i.prol
  %i.ev = load ptr, ptr %i.eu, align 8, !noalias !111, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.ev, align 8, !noalias !111
  %i.ew = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 184
  store i16 %i.ew, ptr %i.ex, align 8, !noalias !111
  %prol.iter555.next = add i64 %prol.iter555, 1   ; 2 uses
  %prol.iter555.cmp.not = icmp eq i64 %prol.iter555.next, %xtraiter553
  br i1 %prol.iter555.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !58

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.es, %.lr.ph.i.i.i.prol ]
  %i.ey = icmp ult i64 %i.eq, 3
  br i1 %i.ey, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.fa = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.fb = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  %i.fc = getelementptr inbounds nuw i8, ptr %i.da, i64 192
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fs, %.lr.ph.i.i.i ] ; 7 uses
  %i.fd = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.sroa.0.06.i.i.i
  %i.ff = load ptr, ptr %i.fe, align 8, !noalias !111, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.ff, align 8, !noalias !111
  %i.fg = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 184
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !111
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fd
  %i.fk = load ptr, ptr %i.fj, align 8, !noalias !111, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.fk, align 8, !noalias !111
  %i.fl = trunc nuw nsw i64 %i.fd to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 184
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !111
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fi
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !111, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.fp, align 8, !noalias !111
  %i.fq = trunc nuw nsw i64 %i.fi to i16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 184
  store i16 %i.fq, ptr %i.fr, align 8, !noalias !111
  %i.fs = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.ft = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fn
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !111, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.da, ptr %i.fv, align 8, !noalias !111
  %i.fw = trunc nuw nsw i64 %i.fn to i16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 184
  store i16 %i.fw, ptr %i.fx, align 8, !noalias !111
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fs, %i.el
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.at:                                            ; preds = %bb.ao
  switch i16 %i.di, label %bb.au [
    i16 5, label %bb.aw
    i16 6, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.fy = add nsw i64 %i.dj, -7
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at, %bb.ao
  %.sroa.06.0.i = phi i64 [ 5, %bb.av ], [ 6, %bb.au ], [ 4, %bb.ao ], [ 5, %bb.at ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.av ], [ %i.fy, %bb.au ], [ %i.dj, %bb.ao ], [ 5, %bb.at ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.av ], [ true, %bb.au ], [ false, %bb.ao ], [ false, %bb.at ]
  %i.fz = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1v_IB27_NtB2P_18NamespaceStaticSetEEEE13new_uninit_inCsj1ugBVjDER0_8xml5ever()
          to label %.noexc.i31 unwind label %.loopexit.split-lp, !noalias !109 ; 14 uses

.noexc.i31:                                       ; preds = %bb.aw
  store ptr null, ptr %i.fz, align 8, !noalias !114
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 186 ; 3 uses
  store i16 0, ptr %i.ga, align 2, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.gb = load i16, ptr %i.dk, align 2, !noalias !116, !noundef !4
  %i.gc = zext i16 %i.gb to i64
  %i.gd = xor i64 %.sroa.06.0.i, -1
  %i.ge = add nsw i64 %i.gc, %i.gd                ; 4 uses
  %i.gf = trunc i64 %i.ge to i16
  store i16 %i.gf, ptr %i.ga, align 2, !alias.scope !115, !noalias !114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !116
  %i.gg = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %.sroa.06.0.i
  %i.gi = load i64, ptr %i.gh, align 8, !noalias !116, !noundef !4 ; 4 uses
  store i64 %i.gi, ptr %i.b, align 8, !noalias !116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !116
  %i.gj = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  %i.gl = load i64, ptr %i.gk, align 8, !noalias !116, !noundef !4 ; 4 uses
  store i64 %i.gl, ptr %i.a, align 8, !noalias !116
  %i.gm = icmp ult i64 %i.ge, 12
  br i1 %i.gm, label %bb.bc, label %bb.ax, !prof !97

bb.ax:                                            ; preds = %.noexc.i31
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ge, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %bb.az unwind label %bb.ay, !noalias !116

bb.ay:                                            ; preds = %bb.ax
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.a) #19
          to label %bb.bb unwind label %bb.ba, !noalias !116

bb.az:                                            ; preds = %bb.ax
  unreachable

bb.ba:                                            ; preds = %bb.bb, %bb.ay
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !116
  unreachable

bb.bb:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #19
          to label %bb.bl unwind label %bb.ba, !noalias !116

bb.bc:                                            ; preds = %.noexc.i31
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gg, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gs = shl nuw nsw i64 %i.ge, 3                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !117, !noalias !114
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %i.gp
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gu, ptr nonnull readonly align 8 %i.gt, i64 %i.gs, i1 false), !alias.scope !118, !noalias !114
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !116
  store i64 %i.gi, ptr %i.c, align 8, !noalias !114
  store i64 %i.gl, ptr %i.by, align 8, !noalias !114
  %i.gw = load i16, ptr %i.ga, align 2, !noalias !114, !noundef !4 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 5 uses
  %i.gz = icmp ult i16 %i.gw, 12
  br i1 %i.gz, label %bb.bd, label %bb.bf, !prof !97

bb.bd:                                            ; preds = %bb.bc
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fz, i64 192 ; 6 uses
  %i.hb = zext i16 %i.dl to i64
  %i.hc = sub nuw nsw i64 %i.hb, %.sroa.06.0.i
  %i.hd = icmp eq i64 %i.hc, %i.gy
  br i1 %i.hd, label %bb.bh, label %bb.be, !prof !6

bb.be:                                            ; preds = %bb.bd
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #22
          to label %.noexc.i.i32 unwind label %bb.bg, !noalias !114

.noexc.i.i32:                                     ; preds = %bb.be
  unreachable

bb.bf:                                            ; preds = %bb.bc
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gy, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #18
          to label %bb.bj unwind label %bb.bg, !noalias !114

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIBD_IBZ_NtB1H_18NamespaceStaticSetEEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #19
          to label %bb.bl unwind label %bb.bk, !noalias !114

bb.bh:                                            ; preds = %bb.bd
  %i.hf = getelementptr i8, ptr %i.da, i64 200
  %i.hg = getelementptr [8 x i8], ptr %i.hf, i64 %.sroa.06.0.i
  %i.hh = shl nuw nsw i64 %i.gy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ha, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.hg, i64 %i.hh, i1 false), !alias.scope !119, !noalias !114
  %i.hi = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %i.hi)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %xtraiter = and i64 %i.gy, 3                    ; 3 uses
  %i.hj = icmp ult i16 %i.gw, 3
  br i1 %i.hj, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bh
  %unroll_iter = and i64 %i.gy, 28
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bi, %.new
  %.sroa.0.09.i.i.i.i = phi i64 [ 0, %.new ], [ %i.hz, %bb.bi ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.bi ]
  %i.hk = or disjoint i64 %.sroa.0.09.i.i.i.i, 1  ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.sroa.0.09.i.i.i.i
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !120, !noalias !121, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.fz, ptr %i.hm, align 8, !noalias !122
  %i.hn = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i to i16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 184
  store i16 %i.hn, ptr %i.ho, align 8, !noalias !121
  %i.hp = or disjoint i64 %.sroa.0.09.i.i.i.i, 2  ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hk
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !120, !noalias !121, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.fz, ptr %i.hr, align 8, !noalias !122
  %i.hs = trunc nuw nsw i64 %i.hk to i16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 184
  store i16 %i.hs, ptr %i.ht, align 8, !noalias !121
  %i.hu = or disjoint i64 %.sroa.0.09.i.i.i.i, 3  ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hp
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !120, !noalias !121, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.fz, ptr %i.hw, align 8, !noalias !122
  %i.hx = trunc nuw nsw i64 %i.hp to i16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 184
  store i16 %i.hx, ptr %i.hy, align 8, !noalias !121
  %i.hz = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 4  ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hu
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !120, !noalias !121, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.fz, ptr %i.ib, align 8, !noalias !122
  %i.ic = trunc nuw nsw i64 %i.hu to i16
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 184
  store i16 %i.ic, ptr %i.id, align 8, !noalias !121
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.bi

bb.bj:                                            ; preds = %bb.bf
  unreachable

bb.bk:                                            ; preds = %bb.bg
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !114
  unreachable

bb.bl:                                            ; preds = %bb.bg, %bb.bb
  %.pn.i.i = phi { ptr, i32 } [ %i.he, %bb.bg ], [ %i.gn, %bb.bb ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fz, i64 noundef 288, i64 noundef 8) #21, !noalias !114
  br label %bb.br

.unr-lcssa:                                       ; preds = %bb.bi
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bh
  %.sroa.0.09.i.i.i.i.epil.init = phi i64 [ 0, %bb.bh ], [ %i.hz, %.unr-lcssa ]
  %lcmp.mod550 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod550)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.epil.preheader
  %.sroa.0.09.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.epil.init, %.epil.preheader ], [ %i.if, %bb.bm ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bm ]
  %i.if = add nuw nsw i64 %.sroa.0.09.i.i.i.i.epil, 1
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.sroa.0.09.i.i.i.i.epil
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !120, !noalias !121, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.fz, ptr %i.ih, align 8, !noalias !122
  %i.ii = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.epil to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 184
  store i16 %i.ii, ptr %i.ij, align 8, !noalias !121
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.bm, !llvm.loop !77

.epilog-lcssa:                                    ; preds = %bb.bm, %.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !114
  %spec.select.i33 = select i1 %.sroa.03.0.i, ptr %i.fz, ptr %i.da ; 11 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 186 ; 2 uses
  %i.il = load i16, ptr %i.ik, align 2, !noalias !123, !noundef !4 ; 2 uses
  %i.im = zext i16 %i.il to i64                   ; 5 uses
  %i.in = add i16 %i.il, 1
  %i.io = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 8 ; 2 uses
  %i.ip = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.im
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.epilog-lcssa
  store i64 %i.dd, ptr %i.iq, align 8, !alias.scope !124, !noalias !123
  %i.ir = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 96
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %.sroa.5.0.i
  store i64 %storemerge183, ptr %i.is, align 8, !alias.scope !125, !noalias !123
  br label %bb.bp

bb.bo:                                            ; preds = %.epilog-lcssa
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.io, i64 %i.ip
  %i.iu = sub nuw nsw i64 %i.im, %.sroa.5.0.i
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.it, ptr nonnull align 8 %i.iq, i64 %i.iv, i1 false), !alias.scope !124, !noalias !123
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 96 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.5.0.i ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ip
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.ix, i64 %i.iv, i1 false), !alias.scope !125, !noalias !123
  store i64 %i.dd, ptr %i.iq, align 8, !alias.scope !124, !noalias !123
  store i64 %storemerge183, ptr %i.ix, align 8, !alias.scope !125, !noalias !123
  %i.iz = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 192 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ip
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.sroa.5.0.i
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jc, ptr nonnull align 8 %i.ja, i64 %i.iv, i1 false), !alias.scope !126, !noalias !123
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jd = getelementptr inbounds nuw i8, ptr %spec.select.i33, i64 192 ; 6 uses
  %i.je = add nuw nsw i64 %i.im, 2                ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.ip
  store ptr %i.de, ptr %i.jf, align 8, !alias.scope !126, !noalias !123
  store i16 %i.in, ptr %i.ik, align 2, !noalias !123
  %i.jg = icmp samesign ult i64 %i.ip, %i.je
  br i1 %i.jg, label %.lr.ph.i.i11.i.preheader, label %.loopexit72

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bp
  %i.jh = add nuw nsw i64 %i.im, 1
  %i.ji = sub nsw i64 %i.jh, %.sroa.5.0.i
  %i.jj = sub nsw i64 %i.im, %.sroa.5.0.i
  %xtraiter551 = and i64 %i.ji, 3                 ; 2 uses
  %lcmp.mod552.not = icmp eq i64 %xtraiter551, 0
  br i1 %lcmp.mod552.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jk, %.lr.ph.i.i11.i.prol ], [ %i.ip, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jk = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jl = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jl)
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.0.06.i.i12.i.prol
  %i.jn = load ptr, ptr %i.jm, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jn, align 8, !noalias !123
  %i.jo = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 184
  store i16 %i.jo, ptr %i.jp, align 8, !noalias !123
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter551
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !86

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.ip, %.lr.ph.i.i11.i.preheader ], [ %i.jk, %.lr.ph.i.i11.i.prol ]
  %i.jq = icmp ult i64 %i.jj, 3
  br i1 %i.jq, label %.loopexit72, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kg, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jr = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.0.06.i.i12.i
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jt, align 8, !noalias !123
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 184
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !123
  %i.jw = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jr
  %i.jy = load ptr, ptr %i.jx, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.jy, align 8, !noalias !123
  %i.jz = trunc nuw nsw i64 %i.jr to i16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 184
  store i16 %i.jz, ptr %i.ka, align 8, !noalias !123
  %i.kb = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.jw
  %i.kd = load ptr, ptr %i.kc, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.kd, align 8, !noalias !123
  %i.ke = trunc nuw nsw i64 %i.jw to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 184
  store i16 %i.ke, ptr %i.kf, align 8, !noalias !123
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kh = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.kb
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !123, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %spec.select.i33, ptr %i.kj, align 8, !noalias !123
  %i.kk = trunc nuw nsw i64 %i.kb to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 184
  store i16 %i.kk, ptr %i.kl, align 8, !noalias !123
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kg, %i.je
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit72, label %.lr.ph.i.i11.i

bb.bq:                                            ; preds = %bb.bs, %bb.br
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !109
  unreachable

bb.br:                                            ; preds = %.loopexit.split-lp, %bb.bl
  %.pn.ph.i29 = phi { ptr, i32 } [ %.pn.i.i, %bb.bl ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #19
          to label %bb.bs unwind label %bb.bq, !noalias !109

bb.bs:                                            ; preds = %bb.br
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #19
          to label %.critedge22 unwind label %bb.bq, !noalias !109

.loopexit72:                                      ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.kn = load ptr, ptr %i.da, align 8, !noalias !103, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.kn, null
  br i1 %.not.i, label %._crit_edge, label %bb.ak

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.bt

bb.bt:                                            ; preds = %.loopexit, %bb.u, %bb.bu
  %spec.select31.i.sink = phi ptr [ %spec.select31.i, %.loopexit ], [ %i.m, %bb.u ], [ %spec.select31.i, %bb.bu ]
  %spec.select.i.sink = phi i64 [ %spec.select.i, %.loopexit ], [ %i.cf, %bb.u ], [ %spec.select.i, %bb.bu ]
  %.sroa.510.0.i.sink = phi i64 [ %.sroa.510.0.i, %.loopexit ], [ %i.w, %bb.u ], [ %.sroa.510.0.i, %bb.bu ]
  store ptr %spec.select31.i.sink, ptr %0, align 8
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.sink, ptr %i.ko, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i.sink, ptr %i.kp, align 8
  ret void

bb.bu:                                            ; preds = %bb.ad
  %i.kq = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.kr = add nuw nsw i16 %i.cu, 1
  store i16 %i.kr, ptr %i.ck, align 2, !noalias !104
  %i.ks = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.ks, i64 %i.kq
  store i64 %.lcssa161, ptr %i.kt, align 8, !noalias !104
  %i.ku = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.kq
  store i64 %storemerge.lcssa, ptr %i.kv, align 8, !noalias !104
  %i.kw = add nuw nsw i64 %i.kq, 1                ; 2 uses
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.kw
  store ptr %.lcssa168, ptr %i.kx, align 8, !noalias !104
  store ptr %i.cj, ptr %.lcssa168, align 8, !noalias !104
  %i.ky = trunc nuw nsw i64 %i.kw to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %.lcssa168, i64 184
  store i16 %i.ky, ptr %i.kz, align 8, !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.bt

.critedge22:                                      ; preds = %bb.bs, %bb.aj, %bb.ag, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.s ], [ %.pn.ph.i29, %bb.bs ], [ %i.cy, %bb.aj ], [ %i.cw, %bb.ag ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1z_IB2b_NtB2T_18NamespaceStaticSetEENtB1i_14LeafOrInternalE11search_treeB1y_ECsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %3, align 8
  %.fr = freeze i64 %i.a                          ; 6 uses
  %.not.i = icmp eq i64 %.fr, 0
  %i.b = trunc i64 %.fr to i8
  %i.c = and i8 %i.b, 3
  %i.d = lshr i64 %.fr, 32                        ; 3 uses
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 24), align 8 ; 4 uses
  %i.f = icmp ult i64 %i.d, %i.e
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs_CsbN1FUDjLgAL_9web_atomsNtB6_15PrefixStaticSetNtNtCsgv7xG79AfeB_12string_cache11static_sets13StaticAtomSet3get3SET, i64 16), align 8, !nonnull !4, !align !8 ; 2 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.d ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = lshr i64 %.fr, 4
  %i.k = and i64 %i.j, 15
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.m = inttoptr i64 %.fr to ptr                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br i1 %.not.i, label %.split.us.us, label %.split

.split.us.us:                                     ; preds = %bb.a, %bb.b
  %.sroa.3.0.us = phi i64 [ %i.w, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.0.0.us = phi ptr [ %i.v, %bb.b ], [ %1, %bb.a ] ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 186
  %i.p = load i16, ptr %i.o, align 2, !noalias !139, !noundef !4
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %.split78.us.us, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us

_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us: ; preds = %.split.us.us
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !140, !noundef !4
  %.not1.i.us.us.not = icmp eq i64 %i.s, 0
  br i1 %.not1.i.us.us.not, label %.split87.us, label %.split78.us.us

.split78.us.us:                                   ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit.us.us, %.split.us.us
  %i.t = icmp eq i64 %.sroa.3.0.us, 0
  br i1 %i.t, label %.split87.us, label %bb.b

bb.b:                                             ; preds = %.split78.us.us
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.us, i64 192
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = add i64 %.sroa.3.0.us, -1
  br label %.split.us.us

.split:                                           ; preds = %bb.a, %bb.q
  %.sroa.3.0 = phi i64 [ %i.bm, %bb.q ], [ %2, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.bl, %bb.q ], [ %1, %bb.a ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 186
  %i.z = load i16, ptr %i.y, align 2, !noalias !139, !noundef !4 ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 3 uses
  %.idx = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx
  %i.ac = icmp eq i16 %i.z, 0
  br i1 %i.ac, label %.split78, label %.lr.ph

bb.c:                                             ; preds = %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit
  %i.ad = icmp eq ptr %i.ae, %i.ab
  br i1 %i.ad, label %.split78, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.c
  %.sroa.0.01.i160 = phi ptr [ %i.ae, %bb.c ], [ %i.x, %.split ] ; 3 uses
  %.sroa.8.0.i159 = phi i64 [ %i.af, %bb.c ], [ 0, %.split ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i160, i64 8 ; 2 uses
  %i.af = add nuw nsw i64 %.sroa.8.0.i159, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.ag = load i64, ptr %.sroa.0.01.i160, align 8, !alias.scope !140, !noundef !4 ; 6 uses
  %.not2.i = icmp eq i64 %i.ag, 0
  br i1 %.not2.i, label %_RNvXsh_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3cmp3Ord3cmpCsj1ugBVjDER0_8xml5ever.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ah = icmp eq i64 %.fr, %i.ag
  br i1 %i.ah, label %.split87.us, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %i.c, label %bb.f [
    i8 0, label %bb.g
    i8 1, label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
    i8 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.m, align 8, !noalias !141, !nonnull !4, !noundef !4
  %i.aj = load i64, ptr %i.n, align 8, !noalias !141, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i

bb.h:                                             ; preds = %bb.e
  br i1 %i.f, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.h, align 8, !noalias !141, !nonnull !4, !noundef !4
  %i.al = load i64, ptr %i.i, align 8, !noalias !141, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.d, i64 noundef %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #22, !noalias !141
  unreachable

_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.e, %bb.i, %bb.g
  %.sroa.4.0.i.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.al, %bb.i ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ai, %bb.g ], [ %i.ak, %bb.i ], [ %i.l, %bb.e ]
  %i.am = trunc i64 %i.ag to i8
  %i.an = and i8 %i.am, 3
  switch i8 %i.an, label %bb.k [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.k:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  unreachable

bb.l:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ao = inttoptr i64 %i.ag to ptr               ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !142, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !142, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.m:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.as = lshr i64 %i.ag, 4
  %i.at = and i64 %i.as, 15
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i160, i64 1
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.n:                                             ; preds = %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.av = lshr i64 %i.ag, 32                      ; 3 uses
  %i.aw = icmp ult i64 %i.av, %i.e
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.av ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !142, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !noalias !142, !noundef !4
  br label %_RNvXs5_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetENtNtNtCskKLDkoKarTP_4core3ops5deref5Deref5derefCsj1ugBVjDER0_8xml5ever.exit8.i.i

bb.p:                                             ; preds = %bb.n
end_hunk_0
