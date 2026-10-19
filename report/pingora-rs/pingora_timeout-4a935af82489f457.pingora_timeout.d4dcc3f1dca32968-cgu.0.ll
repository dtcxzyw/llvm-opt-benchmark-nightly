Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_timeout-4a935af82489f457.pingora_timeout.d4dcc3f1dca32968-cgu.0?download=true
inline.NumInlined: 144
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1F_5TimerNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3H_11VacantEntryB1D_B2n_E12insert_entry0EB1H_:bb.a
bb.q:                                             ; preds = %bb.m, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.au, %.thread.i.i ], [ %i.aw, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #19
          to label %.body unwind label %bb.p, !noalias !141

bb.r:                                             ; preds = %bb.o, %bb.n
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %spec.select30.i, i64 %.sroa.510.0.i
  store i128 %2, ptr %i.bp, align 16, !alias.scope !155, !noalias !154
  %i.bq = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 176
  %i.br = add i16 %i.be, 1
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bq, i64 %.sroa.510.0.i ; 2 uses
  store ptr %3, ptr %i.bs, align 8, !alias.scope !156, !noalias !154
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %4, ptr %i.bt, align 8, !alias.scope !156, !noalias !154
  store i16 %i.br, ptr %i.bd, align 2, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 352
  %i.bv = load ptr, ptr %i.bu, align 16, !noalias !157, !noundef !4 ; 2 uses
  %.not.i175 = icmp eq ptr %i.bv, null
  br i1 %.not.i175, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ca = icmp eq i64 %i.ac, 0
  br label %bb.ag

bb.s:                                             ; preds = %bb.c, %bb.d
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.r
  store i128 %2, ptr %i.cb, align 16, !alias.scope !144, !noalias !145
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.cd = add nuw nsw i16 %i.k, 1
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.r ; 2 uses
  store ptr %3, ptr %i.ce, align 8, !alias.scope !146, !noalias !145
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %4, ptr %i.cf, align 8, !alias.scope !146, !noalias !145
  store i16 %i.cd, ptr %i.j, align 2, !noalias !145
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !143, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.bn

._crit_edge:                                      ; preds = %.loopexit72, %bb.r
  %i.ci = phi ptr [ %i.ar, %bb.r ], [ %i.hb, %.loopexit72 ] ; 3 uses
  %i.cj = phi ptr [ %i.ap, %bb.r ], [ %i.gz, %.loopexit72 ] ; 3 uses
  %i.ck = phi i128 [ %i.am, %bb.r ], [ %i.gw, %.loopexit72 ] ; 2 uses
  %.lcssa168 = phi i64 [ 0, %bb.r ], [ %i.do, %.loopexit72 ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ad, %bb.r ], [ %i.gn, %.loopexit72 ] ; 4 uses
  %.lcssa154 = phi i64 [ %i.ac, %bb.r ], [ %i.do, %.loopexit72 ]
  %.lcssa = phi ptr [ %i.i, %bb.r ], [ %i.dj, %.loopexit72 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.lcssa, ptr %i.g, align 16
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.lcssa154, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.lcssa161, ptr %.sroa.54.0..sroa_idx, align 16
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %.lcssa168, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i128 %i.ck, ptr %.sroa.76.0..sroa_idx, align 16
  %.sroa.76.sroa.4.0..sroa.76.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.cj, ptr %.sroa.76.sroa.4.0..sroa.76.0..sroa_idx.sroa_idx, align 16
  %.sroa.76.sroa.5.0..sroa.76.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.ci, ptr %.sroa.76.sroa.5.0..sroa.76.0..sroa_idx.sroa_idx, align 8
  %.val = load ptr, ptr %5, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.cl = load ptr, ptr %.val, align 8, !noalias !158, !noundef !4 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cl, null
  br i1 %.not.i19, label %bb.t, label %bb.v, !prof !6

bb.t:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #18
          to label %bb.u unwind label %bb.ae, !noalias !158

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !159, !noalias !158, !noundef !4 ; 2 uses
  %i.co = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1w_5TimerEE13new_uninit_inB1y_()
          to label %.noexc.i.i unwind label %bb.z, !noalias !160 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 352
  store ptr null, ptr %i.cp, align 16, !noalias !160
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 362 ; 3 uses
  store i16 0, ptr %i.cq, align 2, !noalias !160
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 368 ; 2 uses
  store ptr %i.cl, ptr %i.cr, align 16, !noalias !160
  %i.cs = add i64 %i.cn, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.aa, !prof !6

bb.w:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #18
          to label %bb.x unwind label %bb.y, !noalias !160

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.co, i64 noundef 464, i64 noundef 16) #17, !noalias !160
  br label %.body.i.i

bb.z:                                             ; preds = %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.z, %bb.y
  tail call void @llvm.trap()
  unreachable

bb.aa:                                            ; preds = %.noexc.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 352
  store ptr %i.co, ptr %i.cv, align 16, !noalias !161
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cl, i64 360
  store i16 0, ptr %i.cw, align 8, !noalias !162
  store ptr %i.co, ptr %.val, align 8, !alias.scope !159, !noalias !158
  store i64 %i.cs, ptr %i.cm, align 8, !alias.scope !159, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !158
  store ptr %i.cj, ptr %i.d, align 8, !noalias !158
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ci, ptr %i.cx, align 8, !noalias !158
  %i.cy = icmp eq i64 %.lcssa168, %i.cn
  br i1 %i.cy, label %bb.ab, label %.invoke.i.i, !prof !7

.invoke.i.i:                                      ; preds = %bb.ab, %bb.aa
  %i.cz = phi ptr [ @31, %bb.aa ], [ @29, %bb.ab ]
  %i.da = phi i64 [ 48, %bb.aa ], [ 32, %bb.ab ]
  %i.db = phi ptr [ @32, %bb.aa ], [ @33, %bb.ab ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cz, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.db) #18
          to label %.cont.i.i unwind label %bb.ac, !noalias !158

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load i16, ptr %i.cq, align 2, !noalias !158, !noundef !4 ; 3 uses
  %i.dd = icmp ult i16 %i.dc, 11
  br i1 %i.dd, label %bb.bo, label %.invoke.i.i, !prof !7

bb.ac:                                            ; preds = %.invoke.i.i
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.d) #19
          to label %.body unwind label %bb.ad, !noalias !158

bb.ad:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !158
  unreachable

bb.ae:                                            ; preds = %bb.t
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.dh) #19
          to label %.body unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.ag:                                            ; preds = %.lr.ph, %.loopexit72
  %.sroa.45.1 = phi ptr [ %i.ar, %.lr.ph ], [ %i.hb, %.loopexit72 ] ; 5 uses
  %.sroa.43.1 = phi ptr [ %i.ap, %.lr.ph ], [ %i.gz, %.loopexit72 ] ; 5 uses
  %.sroa.39.1 = phi i128 [ %i.am, %.lr.ph ], [ %i.gw, %.loopexit72 ] ; 4 uses
  %i.dj = phi ptr [ %i.bv, %.lr.ph ], [ %i.lp, %.loopexit72 ] ; 27 uses
  %i.dk = phi ptr [ %i.i, %.lr.ph ], [ %i.dj, %.loopexit72 ]
  %i.dl = phi i64 [ %i.ac, %.lr.ph ], [ %i.do, %.loopexit72 ]
  %i.dm = phi ptr [ %i.ad, %.lr.ph ], [ %i.gn, %.loopexit72 ] ; 2 uses
  %i.dn = phi i1 [ %i.ca, %.lr.ph ], [ true, %.loopexit72 ]
  %i.do = add i64 %i.dl, 1                        ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 360
  %i.dq = load i16, ptr %i.dp, align 8, !noalias !157 ; 4 uses
  %i.dr = zext i16 %i.dq to i64                   ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.43.1, ptr %i.c, align 8, !noalias !163
  store ptr %.sroa.45.1, ptr %i.bw, align 8, !noalias !163
  br i1 %i.dn, label %bb.ai, label %bb.ah, !prof !7

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #18
          to label %bb.aj unwind label %.loopexit.split-lp, !noalias !163

bb.ai:                                            ; preds = %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 362 ; 4 uses
  %i.dt = load i16, ptr %i.ds, align 2, !noalias !163, !noundef !4 ; 5 uses
  %i.du = icmp ult i16 %i.dt, 11
  br i1 %i.du, label %bb.al, label %bb.ak

.loopexit73:                                      ; preds = %bb.as
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.dv = icmp ult i16 %i.dq, 5
  br i1 %i.dv, label %bb.as, label %bb.ap

bb.al:                                            ; preds = %bb.ai
  %i.dw = zext nneg i16 %i.dt to i64              ; 5 uses
  %i.dx = add nuw nsw i16 %i.dt, 1
  %i.dy = add nuw nsw i64 %i.dr, 1                ; 7 uses
  %.not.i.i28.not = icmp ult i16 %i.dq, %i.dt
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dr ; 2 uses
  br i1 %.not.i.i28.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i128 %.sroa.39.1, ptr %i.dz, align 16, !alias.scope !164, !noalias !165
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dj, i64 176
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dr ; 2 uses
  store ptr %.sroa.43.1, ptr %i.eb, align 8, !alias.scope !166, !noalias !165
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %.sroa.45.1, ptr %i.ec, align 8, !alias.scope !166, !noalias !165
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dy
  %i.ee = sub nuw nsw i64 %i.dw, %i.dr
  %i.ef = shl nuw nsw i64 %i.ee, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ed, ptr nonnull align 16 %i.dz, i64 %i.ef, i1 false), !alias.scope !164, !noalias !165
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dj, i64 176 ; 2 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.dr
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.eg, i64 %i.dy
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr nonnull align 8 %i.eh, i64 %i.ef, i1 false), !alias.scope !166, !noalias !165
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dr
  store i128 %.sroa.39.1, ptr %i.ej, align 16, !alias.scope !164, !noalias !165
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dj, i64 176
  %i.el = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.dr ; 2 uses
  store ptr %.sroa.43.1, ptr %i.el, align 8, !alias.scope !166, !noalias !165
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  store ptr %.sroa.45.1, ptr %i.em, align 8, !alias.scope !166, !noalias !165
  %i.en = getelementptr inbounds nuw i8, ptr %i.dj, i64 368 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.dy
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.dr
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = sub nuw nsw i64 %i.dw, %i.dr
  %i.es = shl nuw nsw i64 %i.er, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr nonnull align 8 %i.eo, i64 %i.es, i1 false), !alias.scope !167, !noalias !165
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.et = getelementptr inbounds nuw i8, ptr %i.dj, i64 368
  %i.eu = add nuw nsw i64 %i.dw, 2                ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.dy
  store ptr %i.dm, ptr %i.ev, align 8, !alias.scope !167, !noalias !165
  store i16 %i.dx, ptr %i.ds, align 2, !noalias !165
  %i.ew = icmp samesign ult i64 %i.dy, %i.eu
  br i1 %i.ew, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.ao
  %i.ex = add nuw nsw i64 %i.dw, 1
  %i.ey = sub nsw i64 %i.ex, %i.dr
  %i.ez = sub nsw i64 %i.dw, %i.dr
  %xtraiter574 = and i64 %i.ey, 3                 ; 2 uses
  %lcmp.mod575.not = icmp eq i64 %xtraiter574, 0
  br i1 %lcmp.mod575.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dj, i64 368
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.fb, %.lr.ph.i.i.i.prol ], [ %i.dy, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter576 = phi i64 [ %prol.iter576.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.fc = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fc)
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.sroa.0.06.i.i.i.prol
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !165, !nonnull !4, !noundef !4 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 352
  store ptr %i.dj, ptr %i.ff, align 16, !noalias !165
  %i.fg = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 360
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !165
  %prol.iter576.next = add i64 %prol.iter576, 1   ; 2 uses
  %prol.iter576.cmp.not = icmp eq i64 %prol.iter576.next, %xtraiter574
  br i1 %prol.iter576.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !110

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dy, %.lr.ph.i.i.i.preheader ], [ %i.fb, %.lr.ph.i.i.i.prol ]
  %i.fi = icmp ult i64 %i.ez, 3
  br i1 %i.fi, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dj, i64 368
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dj, i64 368
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dj, i64 368
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 368
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.gf, %.lr.ph.i.i.i ] ; 7 uses
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fj, i64 %.sroa.0.06.i.i.i
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !165, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.dj, ptr %i.fq, align 16, !noalias !165
  %i.fr = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 360
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !165
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.fn
  %i.fv = load ptr, ptr %i.fu, align 8, !noalias !165, !nonnull !4, !noundef !4 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 352
  store ptr %i.dj, ptr %i.fw, align 16, !noalias !165
  %i.fx = trunc nuw nsw i64 %i.fn to i16
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 360
  store i16 %i.fx, ptr %i.fy, align 8, !noalias !165
  %i.fz = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.ft
  %i.gb = load ptr, ptr %i.ga, align 8, !noalias !165, !nonnull !4, !noundef !4 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr %i.dj, ptr %i.gc, align 16, !noalias !165
  %i.gd = trunc nuw nsw i64 %i.ft to i16
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  store i16 %i.gd, ptr %i.ge, align 8, !noalias !165
  %i.gf = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.gg = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.gg)
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fz
  %i.gi = load ptr, ptr %i.gh, align 8, !noalias !165, !nonnull !4, !noundef !4 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 352
  store ptr %i.dj, ptr %i.gj, align 16, !noalias !165
  %i.gk = trunc nuw nsw i64 %i.fz to i16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 360
  store i16 %i.gk, ptr %i.gl, align 8, !noalias !165
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.gf, %i.eu
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.ap:                                            ; preds = %bb.ak
  switch i16 %i.dq, label %bb.aq [
    i16 5, label %bb.as
    i16 6, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.gm = add nsw i64 %i.dr, -7
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ak
  %.sroa.06.0.i = phi i64 [ 5, %bb.ar ], [ 6, %bb.aq ], [ 4, %bb.ak ], [ 5, %bb.ap ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ar ], [ %i.gm, %bb.aq ], [ %i.dr, %bb.ak ], [ 5, %bb.ap ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ar ], [ true, %bb.aq ], [ false, %bb.ak ], [ false, %bb.ap ]
  %i.gn = invoke noundef nonnull align 16 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1w_5TimerEE13new_uninit_inB1y_()
          to label %.noexc.i25 unwind label %.loopexit73, !noalias !163 ; 14 uses

.noexc.i25:                                       ; preds = %bb.as
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 352
  store ptr null, ptr %i.go, align 16, !noalias !168
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 362 ; 3 uses
  store i16 0, ptr %i.gp, align 2, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.gq = load i16, ptr %i.ds, align 2, !noalias !171, !noundef !4
  %i.gr = zext i16 %i.gq to i64
  %i.gs = xor i64 %.sroa.06.0.i, -1
  %i.gt = add nsw i64 %i.gr, %i.gs                ; 4 uses
  %i.gu = trunc i64 %i.gt to i16
  store i16 %i.gu, ptr %i.gp, align 2, !alias.scope !170, !noalias !168
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %.sroa.06.0.i
  %i.gw = load i128, ptr %i.gv, align 16, !noalias !171, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171
  %i.gx = getelementptr inbounds nuw i8, ptr %i.dj, i64 176 ; 2 uses
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %.sroa.06.0.i ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !noalias !171, !nonnull !4, !noundef !4 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !171, !nonnull !4, !noundef !4 ; 4 uses
  store ptr %i.gz, ptr %i.a, align 8, !noalias !171
  store ptr %i.hb, ptr %i.bx, align 8, !noalias !171
  %i.hc = icmp ult i64 %i.gt, 12
  br i1 %i.hc, label %bb.ax, label %bb.at, !prof !150

bb.at:                                            ; preds = %.noexc.i25
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gt, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #18
          to label %bb.av unwind label %bb.au, !noalias !171

bb.au:                                            ; preds = %bb.at
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #19
          to label %bb.bg unwind label %bb.aw, !noalias !171

bb.av:                                            ; preds = %bb.at
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !171
  unreachable

bb.ax:                                            ; preds = %.noexc.i25
  %i.hf = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.hg = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.hf
  %i.hh = shl nuw nsw i64 %i.gt, 4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(368) %i.gn, ptr nonnull readonly align 16 %i.hg, i64 %i.hh, i1 false), !alias.scope !172, !noalias !173
  %i.hi = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %i.hf
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.hj, ptr nonnull readonly align 8 %i.hi, i64 %i.hh, i1 false), !alias.scope !174, !noalias !173
  %i.hk = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.hk, ptr %i.ds, align 2, !noalias !171
  store i128 %i.gw, ptr %i.b, align 16, !alias.scope !169, !noalias !168
  store ptr %i.gz, ptr %i.by, align 16, !alias.scope !169, !noalias !168
  store ptr %i.hb, ptr %i.bz, align 8, !alias.scope !169, !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171
  %i.hl = load i16, ptr %i.gp, align 2, !noalias !168, !noundef !4 ; 3 uses
  %i.hm = zext i16 %i.hl to i64
  %i.hn = add nuw nsw i64 %i.hm, 1                ; 5 uses
  %i.ho = icmp ult i16 %i.hl, 12
  br i1 %i.ho, label %bb.ay, label %bb.ba, !prof !150

bb.ay:                                            ; preds = %bb.ax
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gn, i64 368 ; 6 uses
  %i.hq = zext i16 %i.dt to i64
  %i.hr = sub nuw nsw i64 %i.hq, %.sroa.06.0.i
  %i.hs = icmp eq i64 %i.hr, %i.hn
  br i1 %i.hs, label %bb.bc, label %bb.az, !prof !7

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #16
          to label %.noexc.i.i26 unwind label %bb.bb, !noalias !168

.noexc.i.i26:                                     ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.ax
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hn, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #18
          to label %bb.be unwind label %bb.bb, !noalias !168

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtBE_5TimerEEBG_(ptr noalias nofree noundef align 16 dereferenceable(32) %i.b) #19
          to label %bb.bg unwind label %bb.bf, !noalias !168

bb.bc:                                            ; preds = %bb.ay
  %i.hu = getelementptr i8, ptr %i.dj, i64 376
  %i.hv = getelementptr [8 x i8], ptr %i.hu, i64 %.sroa.06.0.i
  %i.hw = shl nuw nsw i64 %i.hn, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.hp, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.hv, i64 %i.hw, i1 false), !alias.scope !175, !noalias !168
  %i.hx = icmp ne i64 %i.do, 0
  tail call void @llvm.assume(i1 %i.hx)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %xtraiter = and i64 %i.hn, 3                    ; 3 uses
  %i.hy = icmp ult i16 %i.hl, 3
  br i1 %i.hy, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.bc
  %unroll_iter = and i64 %i.hn, 28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.new
  %.sroa.0.09.i.i.i.i = phi i64 [ 0, %.new ], [ %i.ir, %bb.bd ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.bd ]
  %i.hz = or disjoint i64 %.sroa.0.09.i.i.i.i, 1  ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.sroa.0.09.i.i.i.i
  %i.ib = load ptr, ptr %i.ia, align 16, !alias.scope !176, !noalias !177, !nonnull !4, !noundef !4 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 352
  store ptr %i.gn, ptr %i.ic, align 16, !noalias !178
  %i.id = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i to i16
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 360
  store i16 %i.id, ptr %i.ie, align 8, !noalias !177
  %i.if = or disjoint i64 %.sroa.0.09.i.i.i.i, 2  ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hz
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !176, !noalias !177, !nonnull !4, !noundef !4 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 352
  store ptr %i.gn, ptr %i.ii, align 16, !noalias !178
  %i.ij = trunc nuw nsw i64 %i.hz to i16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 360
  store i16 %i.ij, ptr %i.ik, align 8, !noalias !177
  %i.il = or disjoint i64 %.sroa.0.09.i.i.i.i, 3  ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.if
  %i.in = load ptr, ptr %i.im, align 16, !alias.scope !176, !noalias !177, !nonnull !4, !noundef !4 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 352
  store ptr %i.gn, ptr %i.io, align 16, !noalias !178
  %i.ip = trunc nuw nsw i64 %i.if to i16
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 360
  store i16 %i.ip, ptr %i.iq, align 8, !noalias !177
  %i.ir = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 4  ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.il
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !176, !noalias !177, !nonnull !4, !noundef !4 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 352
  store ptr %i.gn, ptr %i.iu, align 16, !noalias !178
  %i.iv = trunc nuw nsw i64 %i.il to i16
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 360
  store i16 %i.iv, ptr %i.iw, align 8, !noalias !177
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.bd

bb.be:                                            ; preds = %bb.ba
  unreachable

bb.bf:                                            ; preds = %bb.bb
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !168
  unreachable

bb.bg:                                            ; preds = %bb.bb, %bb.au
  %.pn.i.i = phi { ptr, i32 } [ %i.ht, %bb.bb ], [ %i.hd, %bb.au ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gn, i64 noundef 464, i64 noundef 16) #17, !noalias !168
  br label %bb.bm

.unr-lcssa:                                       ; preds = %bb.bd
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.bc
  %.sroa.0.09.i.i.i.i.epil.init = phi i64 [ 0, %bb.bc ], [ %i.ir, %.unr-lcssa ]
  %lcmp.mod571 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod571)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %.epil.preheader
  %.sroa.0.09.i.i.i.i.epil = phi i64 [ %.sroa.0.09.i.i.i.i.epil.init, %.epil.preheader ], [ %i.iy, %bb.bh ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bh ]
  %i.iy = add nuw nsw i64 %.sroa.0.09.i.i.i.i.epil, 1
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.sroa.0.09.i.i.i.i.epil
  %i.ja = load ptr, ptr %i.iz, align 8, !alias.scope !176, !noalias !177, !nonnull !4, !noundef !4 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 352
  store ptr %i.gn, ptr %i.jb, align 16, !noalias !178
  %i.jc = trunc nuw nsw i64 %.sroa.0.09.i.i.i.i.epil to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 360
  store i16 %i.jc, ptr %i.jd, align 8, !noalias !177
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.bh, !llvm.loop !130

.epilog-lcssa:                                    ; preds = %bb.bh, %.unr-lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !168
  %spec.select.i27 = select i1 %.sroa.03.0.i, ptr %i.gn, ptr %i.dj ; 12 uses
  %i.je = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 362 ; 2 uses
  %i.jf = load i16, ptr %i.je, align 2, !noalias !179, !noundef !4 ; 2 uses
  %i.jg = zext i16 %i.jf to i64                   ; 5 uses
  %i.jh = add i16 %i.jf, 1
  %i.ji = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.jg
  %i.jj = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i27, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.epilog-lcssa
  store i128 %.sroa.39.1, ptr %i.jj, align 16, !alias.scope !180, !noalias !179
  %i.jk = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 176
  %i.jl = getelementptr inbounds nuw [16 x i8], ptr %i.jk, i64 %.sroa.5.0.i ; 2 uses
  store ptr %.sroa.43.1, ptr %i.jl, align 8, !alias.scope !181, !noalias !179
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store ptr %.sroa.45.1, ptr %i.jm, align 8, !alias.scope !181, !noalias !179
  br label %bb.bk

bb.bj:                                            ; preds = %.epilog-lcssa
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %spec.select.i27, i64 %i.ji
  %i.jo = sub nuw nsw i64 %i.jg, %.sroa.5.0.i     ; 2 uses
  %i.jp = shl nuw nsw i64 %i.jo, 4                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.jn, ptr nonnull align 16 %i.jj, i64 %i.jp, i1 false), !alias.scope !180, !noalias !179
  %i.jq = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 176 ; 2 uses
  %i.jr = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %.sroa.5.0.i ; 3 uses
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jq, i64 %i.ji
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.js, ptr nonnull align 8 %i.jr, i64 %i.jp, i1 false), !alias.scope !181, !noalias !179
  store i128 %.sroa.39.1, ptr %i.jj, align 16, !alias.scope !180, !noalias !179
  store ptr %.sroa.43.1, ptr %i.jr, align 8, !alias.scope !181, !noalias !179
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  store ptr %.sroa.45.1, ptr %i.jt, align 8, !alias.scope !181, !noalias !179
  %i.ju = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 368 ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.ji
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.sroa.5.0.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jy = shl nuw nsw i64 %i.jo, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jx, ptr nonnull align 8 %i.jv, i64 %i.jy, i1 false), !alias.scope !182, !noalias !179
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jz = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 368 ; 6 uses
  %i.ka = add nuw nsw i64 %i.jg, 2                ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.ji
  store ptr %i.dm, ptr %i.kb, align 8, !alias.scope !182, !noalias !179
  store i16 %i.jh, ptr %i.je, align 2, !noalias !179
  %i.kc = icmp samesign ult i64 %i.ji, %i.ka
  br i1 %i.kc, label %.lr.ph.i.i11.i.preheader, label %.loopexit72

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bk
  %i.kd = add nuw nsw i64 %i.jg, 1
  %i.ke = sub nsw i64 %i.kd, %.sroa.5.0.i
  %i.kf = sub nsw i64 %i.jg, %.sroa.5.0.i
  %xtraiter572 = and i64 %i.ke, 3                 ; 2 uses
  %lcmp.mod573.not = icmp eq i64 %xtraiter572, 0
  br i1 %lcmp.mod573.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.kg, %.lr.ph.i.i11.i.prol ], [ %i.ji, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.kh = icmp ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.kh)
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.sroa.0.06.i.i12.i.prol
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !179, !nonnull !4, !noundef !4 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 352
  store ptr %spec.select.i27, ptr %i.kk, align 16, !noalias !179
  %i.kl = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 360
  store i16 %i.kl, ptr %i.km, align 8, !noalias !179
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter572
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !139

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.ji, %.lr.ph.i.i11.i.preheader ], [ %i.kg, %.lr.ph.i.i11.i.prol ]
  %i.kn = icmp ult i64 %i.kf, 3
  br i1 %i.kn, label %.loopexit72, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.lg, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.ko = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %.sroa.0.06.i.i12.i
  %i.kq = load ptr, ptr %i.kp, align 8, !noalias !179, !nonnull !4, !noundef !4 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 352
  store ptr %spec.select.i27, ptr %i.kr, align 16, !noalias !179
  %i.ks = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kq, i64 360
  store i16 %i.ks, ptr %i.kt, align 8, !noalias !179
  %i.ku = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.ko
  %i.kw = load ptr, ptr %i.kv, align 8, !noalias !179, !nonnull !4, !noundef !4 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 352
  store ptr %spec.select.i27, ptr %i.kx, align 16, !noalias !179
  %i.ky = trunc nuw nsw i64 %i.ko to i16
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kw, i64 360
  store i16 %i.ky, ptr %i.kz, align 8, !noalias !179
  %i.la = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.ku
  %i.lc = load ptr, ptr %i.lb, align 8, !noalias !179, !nonnull !4, !noundef !4 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 352
  store ptr %spec.select.i27, ptr %i.ld, align 16, !noalias !179
  %i.le = trunc nuw nsw i64 %i.ku to i16
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lc, i64 360
  store i16 %i.le, ptr %i.lf, align 8, !noalias !179
  %i.lg = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.lh = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.lh)
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.la
  %i.lj = load ptr, ptr %i.li, align 8, !noalias !179, !nonnull !4, !noundef !4 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 352
  store ptr %spec.select.i27, ptr %i.lk, align 16, !noalias !179
  %i.ll = trunc nuw nsw i64 %i.la to i16
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lj, i64 360
  store i16 %i.ll, ptr %i.lm, align 8, !noalias !179
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.lg, %i.ka
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit72, label %.lr.ph.i.i11.i

bb.bl:                                            ; preds = %bb.bm
  %i.ln = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !163
  unreachable

bb.bm:                                            ; preds = %.loopexit73, %.loopexit.split-lp, %bb.bg
  %.pn.ph.i23 = phi { ptr, i32 } [ %.pn.i.i, %bb.bg ], [ %lpad.loopexit, %.loopexit73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsih3NV0yzdTo_15pingora_timeout5timer5TimerEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #19
          to label %.body unwind label %bb.bl, !noalias !163

.loopexit72:                                      ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dj, i64 352
  %i.lp = load ptr, ptr %i.lo, align 16, !noalias !157, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.lp, null
  br i1 %.not.i, label %._crit_edge, label %bb.ag

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.bn

bb.bn:                                            ; preds = %.loopexit, %bb.s, %bb.bo
  %spec.select30.i.sink = phi ptr [ %spec.select30.i, %.loopexit ], [ %i.i, %bb.s ], [ %spec.select30.i, %bb.bo ]
  %spec.select.i.sink = phi i64 [ %spec.select.i, %.loopexit ], [ %i.ch, %bb.s ], [ %spec.select.i, %bb.bo ]
  %.sroa.510.0.i.sink = phi i64 [ %.sroa.510.0.i, %.loopexit ], [ %i.r, %bb.s ], [ %.sroa.510.0.i, %bb.bo ]
  store ptr %spec.select30.i.sink, ptr %0, align 8
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i.sink, ptr %i.lq, align 8
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i.sink, ptr %i.lr, align 8
  ret void

bb.bo:                                            ; preds = %bb.ab
  %i.ls = zext nneg i16 %i.dc to i64              ; 3 uses
  %i.lt = add nuw nsw i16 %i.dc, 1
  store i16 %i.lt, ptr %i.cq, align 2, !noalias !158
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.ls
  store i128 %i.ck, ptr %i.lu, align 16, !noalias !158
  %i.lv = getelementptr inbounds nuw i8, ptr %i.co, i64 176
  %i.lw = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %i.ls ; 2 uses
  store ptr %i.cj, ptr %i.lw, align 16, !noalias !158
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  store ptr %i.ci, ptr %i.lx, align 8, !noalias !158
  %i.ly = add nuw nsw i64 %i.ls, 1                ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.ly
  store ptr %.lcssa161, ptr %i.lz, align 8, !noalias !158
  %i.ma = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 352
  store ptr %i.co, ptr %i.ma, align 16, !noalias !158
  %i.mb = trunc nuw nsw i64 %i.ly to i16
  %i.mc = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 360
  store i16 %i.mb, ptr %i.mc, align 8, !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.bn

.body:                                            ; preds = %bb.ae, %bb.ac, %bb.bm, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.q ], [ %.pn.ph.i23, %bb.bm ], [ %i.dg, %bb.ae ], [ %i.de, %bb.ac ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6removeINtNtB7_4node6HandleINtBY_7NodeRefNtNtBY_6marker3MutNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1N_5TimerNtB1v_4LeafENtB1v_2KVE14remove_leaf_kvNCNvMs5_NtNtB7_3map5entryINtB3r_13OccupiedEntryB1L_B2v_E9remove_kv0NtNtBb_5alloc6GlobalEB1P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 13 uses
  %i.b = alloca [56 x i8], align 8                ; 13 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [56 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 16 uses
  %i.f = alloca [32 x i8], align 16               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !223, !nonnull !4, !noundef !4 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 362 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2, !noalias !224, !noundef !4 ; 3 uses
  %i.j = zext i16 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !223, !noundef !4 ; 9 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.l ; 3 uses
  %i.n = load i128, ptr %i.m, align 16, !alias.scope !225, !noalias !224, !noundef !4
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %i.p = xor i64 %i.l, -1
  %i.q = add i64 %i.j, %i.p
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.m, ptr align 16 %i.o, i64 %i.r, i1 false), !alias.scope !225, !noalias !224
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 176
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %i.l ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %i.v = add i16 %i.i, -1                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !alias.scope !226, !noalias !224
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.u, i64 %i.r, i1 false), !alias.scope !226, !noalias !224
  store i16 %i.v, ptr %i.h, align 2, !noalias !224
  %i.y = load i64, ptr %i.w, align 8, !alias.scope !223, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i128 %i.n, ptr %i.f, align 16
  store <2 x ptr> %i.x, ptr %.sroa.4.0..sroa_idx, align 16
  %i.z = icmp ult i16 %i.v, 5
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.i.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i.sroa.gep52 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sink.i.sroa.gep54 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sink.i.sroa.gep55 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sink.i.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.i.sroa.gep58 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br i1 %i.z, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.ab = load ptr, ptr %i.aa, align 16, !noalias !227, !noundef !4 ; 6 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = add i64 %i.y, 1                         ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  %i.ae = load i16, ptr %i.ad, align 8, !noalias !227 ; 3 uses
  %.not.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 362
  %i.ag = load i16, ptr %i.af, align 2, !noalias !228, !noundef !4
  %.not62.i = icmp eq i16 %i.ag, 0
  br i1 %.not62.i, label %.invoke, label %bb.g, !prof !6

bb.e:                                             ; preds = %.invoke, %bb.z, %bb.y, %bb.x, %bb.q, %bb.n, %bb.l, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtBE_5TimerEEBG_(ptr noalias nofree noundef align 16 dereferenceable(32) %i.f) #19
          to label %bb.ad unwind label %bb.ac

bb.f:                                             ; preds = %bb.b
  store ptr %i.g, ptr %i.e, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.y, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.l, ptr %i.aj, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 376
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !228, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %.sroa.1234.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ac, ptr %.sroa.1234.8..sroa_idx, align 8
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.16.8..sroa_idx, align 8
  %.sroa.18.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.g, ptr %.sroa.18.8..sroa_idx, align 8
  %.sroa.20.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %i.y, ptr %.sroa.20.8..sroa_idx, align 8
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.al, ptr %.sroa.22.8..sroa_idx, align 8
  %.sroa.24.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 %i.y, ptr %.sroa.24.8..sroa_idx, align 8
  %i.am = zext nneg i16 %i.i to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 362
  %i.ao = load i16, ptr %i.an, align 2, !noundef !4
  %i.ap = zext i16 %i.ao to i64
  %i.aq = add nuw nsw i64 %i.am, %i.ap
  %i.ar = icmp samesign ult i64 %i.aq, 12
  br i1 %i.ar, label %bb.q, label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.as = zext nneg i16 %i.ae to i64
  %i.at = add nsw i64 %i.as, -1                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 368
  %i.av = icmp ult i16 %i.ae, 13
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.at
  %i.ax = load ptr, ptr %i.aw, align 8, !noalias !228, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.ab, ptr %i.d, align 8
  %.sroa.1234.8..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.ac, ptr %.sroa.1234.8..sroa_idx35, align 8
  %.sroa.16.8..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.at, ptr %.sroa.16.8..sroa_idx37, align 8
  %.sroa.18.8..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ax, ptr %.sroa.18.8..sroa_idx39, align 8
  %.sroa.20.8..sroa_idx41 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.y, ptr %.sroa.20.8..sroa_idx41, align 8
  %.sroa.22.8..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.g, ptr %.sroa.22.8..sroa_idx43, align 8
  %.sroa.24.8..sroa_idx45 = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.y, ptr %.sroa.24.8..sroa_idx45, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 362
  %i.az = load i16, ptr %i.ay, align 2, !noundef !4
  %i.ba = zext i16 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, 1
  %i.bc = zext nneg i16 %i.v to i64
  %i.bd = add nuw nsw i64 %i.bb, %i.bc
  %i.be = icmp samesign ult i64 %i.bd, 12
  br i1 %i.be, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RNvMs10_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCsih3NV0yzdTo_15pingora_timeout5timer4TimeNtB1k_5TimerE15bulk_steal_leftB1m_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.d, i64 noundef 1)
          to label %bb.j unwind label %bb.e

bb.j:                                             ; preds = %bb.i
  %i.bf = add i64 %i.l, 1
  store ptr %i.g, ptr %i.e, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.y, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_0
