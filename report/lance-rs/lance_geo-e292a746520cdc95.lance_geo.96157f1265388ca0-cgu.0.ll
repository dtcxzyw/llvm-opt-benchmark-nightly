Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_geo-e292a746520cdc95.lance_geo.96157f1265388ca0-cgu.0?download=true
inline.NumInlined: 1265
inline.NumDeleted: 690
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RNvNtCscSToqyP0NyK_9lance_geo4bbox12total_bounds:bb.a
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
  ]

default.unreachable1038:                          ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.dl = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.r unwind label %bb.q       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.dm = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.ab unwind label %bb.q      ; 2 uses

bb.d:                                             ; preds = %bb.a
  %i.dn = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.ak unwind label %bb.q      ; 2 uses

bb.e:                                             ; preds = %bb.a
  %i.do = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.au unwind label %bb.q      ; 2 uses

bb.f:                                             ; preds = %bb.a
  %i.dp = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.be unwind label %bb.q      ; 2 uses

bb.g:                                             ; preds = %bb.a
  %i.dq = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.bo unwind label %bb.q      ; 2 uses

bb.h:                                             ; preds = %bb.a
  %i.dr = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.bx unwind label %bb.q      ; 2 uses

bb.i:                                             ; preds = %bb.a
  %i.ds = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.cg unwind label %bb.q      ; 2 uses

bb.j:                                             ; preds = %bb.a
  %i.dt = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.co unwind label %bb.q      ; 2 uses

bb.k:                                             ; preds = %bb.a
  %i.du = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.dj unwind label %bb.q      ; 2 uses

bb.l:                                             ; preds = %bb.a
  %i.dv = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.du unwind label %bb.q      ; 2 uses

bb.m:                                             ; preds = %bb.a
  %i.dw = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.ef unwind label %bb.q      ; 2 uses

bb.n:                                             ; preds = %bb.a
  %i.dx = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.ep unwind label %bb.q      ; 2 uses

bb.o:                                             ; preds = %bb.a
  %i.dy = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.fc unwind label %bb.q      ; 2 uses

bb.p:                                             ; preds = %bb.a
  %i.dz = invoke { ptr, ptr } %i.dk(ptr noundef nonnull %1)
          to label %bb.fp unwind label %bb.q      ; 2 uses

bb.q:                                             ; preds = %.invoke, %bb.fw, %.noexc16._crit_edge.i444, %bb.fo, %.noexc.thread.i400, %bb.fb, %.noexc.thread.i, %bb.eo, %.noexc16._crit_edge.i, %bb.ee, %.loopexit26.i279, %bb.dt, %.loopexit26.i, %bb.dg, %bb.cw, %bb.fp, %bb.fc, %bb.ep, %bb.ef, %bb.du, %bb.dj, %bb.co, %bb.cg, %bb.bx, %bb.bo, %bb.be, %bb.au, %bb.ak, %bb.ab, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.i439, %bb.fk, %bb.ex, %.loopexit.split-lp.i309, %.loopexit.split-lp.i273, %.loopexit.split-lp.i252, %bb.cr, %bb.cu, %bb.cv, %bb.de, %bb.df, %bb.ck, %bb.cb, %bb.br, %bb.bj, %bb.ay, %bb.ap, %bb.ae, %bb.w, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i393, %bb.fk ], [ %.pn.i, %bb.w ], [ %.pn.i20, %bb.ae ], [ %.pn.i45, %bb.ap ], [ %.pn.i64, %bb.ay ], [ %.pn.i112, %bb.bj ], [ %.pn.i154, %bb.br ], [ %.pn.i183, %bb.cb ], [ %.pn.i220, %bb.ck ], [ %.pn.i235, %bb.cr ], [ %.pn.i253, %.loopexit.split-lp.i252 ], [ %.pn.i274, %.loopexit.split-lp.i273 ], [ %.pn.i310, %.loopexit.split-lp.i309 ], [ %lpad.phi.i, %bb.ex ], [ %i.ea, %bb.q ], [ %i.uj, %bb.de ], [ %i.ua, %bb.cu ], [ %i.ua, %bb.cv ], [ %i.uj, %bb.df ], [ %lpad.phi.i440, %.loopexit.split-lp.i439 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema8datatype12GeoArrowTypeECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(24) %i.df) #26
          to label %bb.fy unwind label %bb.fx

bb.r:                                             ; preds = %bb.b
  %i.eb = extractvalue { ptr, ptr } %i.dl, 0      ; 11 uses
  %i.ec = extractvalue { ptr, ptr } %i.dl, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ee(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cq, ptr noundef %i.eb)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.ef = load i128, ptr %i.cq, align 16, !noundef !5
  %i.eg = icmp eq i128 %i.ef, -124522111766452239083897652047523565577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  br i1 %i.eg, label %bb.t, label %.invoke, !prof !14

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3163)
  call void @llvm.experimental.noalias.scope.decl(metadata !3164)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 144
  %i.ei = load i8, ptr %i.eh, align 8, !range !28, !alias.scope !3165, !noalias !3166, !noundef !5
  %.not.i.i.i.i = icmp eq i8 %i.ei, -1
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !3165, !noalias !3166, !noundef !5
  %i.el = lshr i64 %i.ek, 3                       ; 2 uses
  br i1 %.not.i.i.i.i, label %switch.lookup, label %_RNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayNtNtB8_6trait_21GeoArrowArrayAccessor4iterCscSToqyP0NyK_9lance_geo.exit.i

switch.lookup:                                    ; preds = %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.en = load i8, ptr %i.em, align 8, !range !6, !alias.scope !3165, !noalias !3166, !noundef !5
  %i.eo = zext nneg i8 %i.en to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtCscSToqyP0NyK_9lance_geo4bbox12total_bounds, i64 %i.eo
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ep = udiv i64 %i.el, %switch.ext
  br label %_RNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayNtNtB8_6trait_21GeoArrowArrayAccessor4iterCscSToqyP0NyK_9lance_geo.exit.i

_RNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayNtNtB8_6trait_21GeoArrowArrayAccessor4iterCscSToqyP0NyK_9lance_geo.exit.i: ; preds = %switch.lookup, %bb.t
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ep, %switch.lookup ], [ %i.el, %bb.t ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp), !noalias !3167
  store i64 -3, ptr %i.cp, align 8, !noalias !3167
  %.sroa.242.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  store i64 -3, ptr %.sroa.242.0..sroa_idx.i, align 8, !noalias !3167
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  store ptr %i.eb, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !3167
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 72 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 80
  store i64 %.sroa.0.0.i.i.i.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !3167
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 48 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.i.i.i.i, 0
  br i1 %.not.i, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayEB4_.exit, label %.lr.ph13.i.lr.ph.i

.lr.ph13.i.lr.ph.i:                               ; preds = %_RNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayNtNtB8_6trait_21GeoArrowArrayAccessor4iterCscSToqyP0NyK_9lance_geo.exit.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.es = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.eu = load ptr, ptr %i.eb, align 8, !alias.scope !3168, !noalias !3169, !noundef !5
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.eu, null
  %i.ev = load i64, ptr %i.et, align 8, !alias.scope !3164, !noalias !3163
  %i.ew = load ptr, ptr %i.es, align 8, !alias.scope !3164, !noalias !3163
  %i.ex = load i64, ptr %i.er, align 8, !alias.scope !3164, !noalias !3163
  %i.ey = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph13.i.us.i, label %.lr.ph13.i.i

.lr.ph13.i.us.i:                                  ; preds = %.lr.ph13.i.lr.ph.i, %.lr.ph.i.us.i
  %.promoted.i4691.us.i = phi i64 [ %i.fa, %.lr.ph.i.us.i ], [ 0, %.lr.ph13.i.lr.ph.i ] ; 2 uses
  %i.ez = phi <4 x double> [ %i.fl, %.lr.ph.i.us.i ], [ <double +inf, double +inf, double -inf, double -inf>, %.lr.ph13.i.lr.ph.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  %i.fa = add nuw nsw i64 %.promoted.i4691.us.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !3167
  store ptr %i.eq, ptr %i.co, align 8, !noalias !3167
  store i64 %.promoted.i4691.us.i, ptr %i.ey, align 8, !noalias !3167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !3175
  invoke void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5pointNtB4_5PointNtNtCs5zgMTRDcqaU_10geo_traits5point10PointTrait5coord(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.co)
          to label %.noexc33.us.i unwind label %.split.us.i, !noalias !3163

.noexc33.us.i:                                    ; preds = %.lr.ph13.i.us.i
  %i.fb = load i64, ptr %i.cn, align 8, !range !11, !noalias !3175, !noundef !5
  %.not.i.i32.us.i = icmp eq i64 %i.fb, -1
  br i1 %.not.i.i32.us.i, label %.lr.ph.i.us.i, label %bb.u

bb.u:                                             ; preds = %.noexc33.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !3175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false), !noalias !3175
  %i.fc = invoke noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1x(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %.noexc34.us.i unwind label %.split.us.i, !noalias !3163

.noexc34.us.i:                                    ; preds = %bb.u
  %i.fd = invoke noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %.noexc35.us.i unwind label %.split.us.i, !noalias !3163

.noexc35.us.i:                                    ; preds = %.noexc34.us.i
  %i.fe = insertelement <4 x double> poison, double %i.fc, i64 0
  %i.ff = insertelement <4 x double> %i.fe, double %i.fd, i64 1
  %i.fg = shufflevector <4 x double> %i.ff, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.fh = fcmp ogt <4 x double> %i.fg, %i.ez
  %i.fi = fcmp olt <4 x double> %i.fg, %i.ez
  %i.fj = shufflevector <4 x i1> %i.fi, <4 x i1> %i.fh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fk = select <4 x i1> %i.fj, <4 x double> %i.fg, <4 x double> %i.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !3175
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.noexc35.us.i, %.noexc33.us.i
  %i.fl = phi <4 x double> [ %i.ez, %.noexc33.us.i ], [ %i.fk, %.noexc35.us.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !3175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !3167
  %exitcond.not.i = icmp eq i64 %i.fa, %.sroa.0.0.i.i.i.i
  br i1 %exitcond.not.i, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayEB4_.exit, label %.lr.ph13.i.us.i

.split.us.i:                                      ; preds = %.noexc34.us.i, %bb.u, %.lr.ph13.i.us.i
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.lr.ph13.i.i:                                     ; preds = %.lr.ph13.i.lr.ph.i, %.lr.ph.i.i
  %.us-phi.i8386.i = phi i64 [ %i.fp, %.lr.ph.i.i ], [ 0, %.lr.ph13.i.lr.ph.i ] ; 2 uses
  %i.fn = phi <4 x double> [ %i.gm, %.lr.ph.i.i ], [ <double +inf, double +inf, double -inf, double -inf>, %.lr.ph13.i.lr.ph.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3170)
  %umax.i.i = call i64 @llvm.umax.i64(i64 %i.ev, i64 %.us-phi.i8386.i) ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, %.lr.ph13.i.i
  %i.fo = phi i64 [ %.us-phi.i8386.i, %.lr.ph13.i.i ], [ %i.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3171)
  call void @llvm.experimental.noalias.scope.decl(metadata !3172)
  %i.fp = add i64 %i.fo, 1                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3173)
  call void @llvm.experimental.noalias.scope.decl(metadata !3174)
  %exitcond.not.i.i = icmp eq i64 %i.fo, %umax.i.i
  br i1 %exitcond.not.i.i, label %.split.i.i, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array5pointNtB4_10PointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, !prof !7

.split.i.i:                                       ; preds = %bb.v
  %i.fq = add i64 %umax.i.i, 1
  store i64 %i.fq, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3176, !noalias !3177
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i unwind label %bb.x, !noalias !3163

.noexc.i:                                         ; preds = %.split.i.i
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array5pointNtB4_10PointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.fr = add i64 %i.fo, %i.ex                    ; 2 uses
  %i.fs = lshr i64 %i.fr, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !noalias !3178, !noundef !5
  %i.fv = trunc i64 %i.fr to i8
  %i.fw = and i8 %i.fv, 7
  %i.fx = xor i8 %i.fu, -1
  %i.fy = lshr i8 %i.fx, %i.fw
  %i.fz = trunc i8 %i.fy to i1
  br i1 %i.fz, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, label %.loopexit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array5pointNtB4_10PointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  %exitcond29.not.i.i = icmp eq i64 %i.fp, %.sroa.0.0.i.i.i.i
  br i1 %exitcond29.not.i.i, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayEB4_.exit, label %bb.v

bb.w:                                             ; preds = %bb.z, %bb.x
  %.pn.i = phi { ptr, i32 } [ %i.ga, %bb.x ], [ %.us-phi96.i, %bb.z ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(88) %i.cp) #26
          to label %.body unwind label %bb.aa, !noalias !3163

bb.x:                                             ; preds = %.split.i.i
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.i:                                      ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array5pointNtB4_10PointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !3167
  store ptr %i.eq, ptr %i.co, align 8, !noalias !3167
  store i64 %i.fo, ptr %i.ey, align 8, !noalias !3167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !3175
  invoke void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5pointNtB4_5PointNtNtCs5zgMTRDcqaU_10geo_traits5point10PointTrait5coord(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.cn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.co)
          to label %.noexc33.i unwind label %.split.i, !noalias !3163

.noexc33.i:                                       ; preds = %.loopexit.i
  %i.gb = load i64, ptr %i.cn, align 8, !range !11, !noalias !3175, !noundef !5
  %.not.i.i32.i = icmp eq i64 %i.gb, -1
  br i1 %.not.i.i32.i, label %.lr.ph.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc33.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm), !noalias !3175
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, i64 32, i1 false), !noalias !3175
  %i.gc = invoke noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1x(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %.noexc34.i unwind label %.split.i, !noalias !3163

.noexc34.i:                                       ; preds = %bb.y
  %i.gd = invoke noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cm)
          to label %.noexc35.i unwind label %.split.i, !noalias !3163

.noexc35.i:                                       ; preds = %.noexc34.i
  %i.ge = insertelement <4 x double> poison, double %i.gc, i64 0
  %i.gf = insertelement <4 x double> %i.ge, double %i.gd, i64 1
  %i.gg = shufflevector <4 x double> %i.gf, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.gh = fcmp olt <4 x double> %i.gg, %i.fn
  %i.gi = fcmp ogt <4 x double> %i.gg, %i.fn
  %i.gj = shufflevector <4 x i1> %i.gh, <4 x i1> %i.gi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gk = select <4 x i1> %i.gj, <4 x double> %i.gg, <4 x double> %i.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm), !noalias !3175
  br label %.lr.ph.i.i

.split.i:                                         ; preds = %.noexc34.i, %bb.y, %.loopexit.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.split.i, %.split.us.i
  %.us-phi.i = phi i64 [ %i.fp, %.split.i ], [ %i.fa, %.split.us.i ]
  %.us-phi96.i = phi { ptr, i32 } [ %i.gl, %.split.i ], [ %i.fm, %.split.us.i ]
  store i64 %.us-phi.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !3167
  br label %bb.w

.lr.ph.i.i:                                       ; preds = %.noexc35.i, %.noexc33.i
  %i.gm = phi <4 x double> [ %i.fn, %.noexc33.i ], [ %i.gk, %.noexc35.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !3175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co), !noalias !3167
  %i.gn = icmp ult i64 %i.fp, %.sroa.0.0.i.i.i.i
  br i1 %i.gn, label %.lr.ph13.i.i, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayEB4_.exit

bb.aa:                                            ; preds = %bb.w
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3163
  unreachable

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayEB4_.exit: ; preds = %.lr.ph.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, %.lr.ph.i.us.i, %_RNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayNtNtB8_6trait_21GeoArrowArrayAccessor4iterCscSToqyP0NyK_9lance_geo.exit.i
  %i.gp = phi <4 x double> [ %i.fn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i ], [ <double +inf, double +inf, double -inf, double -inf>, %_RNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayNtNtB8_6trait_21GeoArrowArrayAccessor4iterCscSToqyP0NyK_9lance_geo.exit.i ], [ %i.fl, %.lr.ph.i.us.i ], [ %i.gm, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp), !noalias !3167
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x double> %i.gp, ptr %i.gq, align 8, !alias.scope !3163, !noalias !3164
  store i64 0, ptr %0, align 8, !alias.scope !3163, !noalias !3164
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit12.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit16.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArrayxEEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylEEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkb15GenericWkbArrayxEEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkb15GenericWkbArraylEEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array4rect9RectArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array12multipolygon17MultiPolygonArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestring20MultiLineStringArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array7polygon12PolygonArrayEB4_.exit, %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array5point10PointArrayEB4_.exit
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema8datatype12GeoArrowTypeECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(24) %i.df)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df)
  ret void

bb.ab:                                            ; preds = %bb.c
  %i.gr = extractvalue { ptr, ptr } %i.dm, 0      ; 6 uses
  %i.gs = extractvalue { ptr, ptr } %i.dm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 24
  %i.gu = load ptr, ptr %i.gt, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.gu(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cr, ptr noundef %i.gr)
          to label %bb.ac unwind label %bb.q

bb.ac:                                            ; preds = %bb.ab
  %i.gv = load i128, ptr %i.cr, align 16, !noundef !5
  %i.gw = icmp eq i128 %i.gv, 153295497251683344825912224573481468776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  br i1 %i.gw, label %bb.ad, label %.invoke, !prof !14

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gr) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3179)
  call void @llvm.experimental.noalias.scope.decl(metadata !3180)
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gr, i64 64
  %.val.i.i = load i64, ptr %i.gx, align 8, !alias.scope !3181, !noalias !3182, !noundef !5
  %i.gy = lshr i64 %.val.i.i, 2
  %i.gz = add nsw i64 %i.gy, -1                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !3183
  store i64 -2, ptr %i.cl, align 8, !noalias !3183
  %.sroa.219.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 -2, ptr %.sroa.219.0..sroa_idx.i, align 8, !noalias !3183
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  store ptr %i.gr, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i16, align 8, !noalias !3183
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i17 = getelementptr inbounds nuw i8, ptr %i.cl, i64 88 ; 4 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.cl, i64 96
  store i64 %i.gz, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i18, align 8, !noalias !3183
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !3183
  %.not.i19 = icmp eq i64 %i.gz, 0
  br i1 %.not.i19, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph16.i.preheader.i

.lr.ph16.i.preheader.i:                           ; preds = %bb.ad, %.lr.ph.i.i33
  %.lcssa707378.i = phi i64 [ %i.he, %.lr.ph.i.i33 ], [ 0, %bb.ad ]
  %i.hb = phi <2 x double> [ %i.ic, %.lr.ph.i.i33 ], [ splat (double +inf), %bb.ad ] ; 5 uses
  %i.hc = phi <2 x double> [ %i.id, %.lr.ph.i.i33 ], [ splat (double -inf), %bb.ad ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  br label %.lr.ph16.i.i

.lr.ph16.i.i:                                     ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i, %.lr.ph16.i.preheader.i
  %i.hd = phi i64 [ %i.he, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i ], [ %.lcssa707378.i, %.lr.ph16.i.preheader.i ] ; 3 uses
  %i.he = add i64 %i.hd, 1                        ; 8 uses
  %i.hf = invoke noundef zeroext i1 @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestringNtB4_15LineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.gr, i64 noundef %i.hd)
          to label %.noexc.i21 unwind label %.loopexit37.i, !noalias !3179

.noexc.i21:                                       ; preds = %.lr.ph16.i.i
  br i1 %i.hf, label %.thread.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i

.thread.i:                                        ; preds = %.noexc.i21
  store i64 -1, ptr %i.ch, align 8, !noalias !3185
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %.noexc.i21
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestringNtB5_15LineStringArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.gr, i64 noundef %i.hd)
          to label %.noexc5.i unwind label %.loopexit37.i, !noalias !3179

.noexc5.i:                                        ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %.sroa.0.0.copyload5.pr.i.i = load i64, ptr %i.ch, align 8, !noalias !3185 ; 2 uses
  switch i64 %.sroa.0.0.copyload5.pr.i.i, label %bb.af [
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10linestring10LineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i: ; preds = %.noexc5.i, %.thread.i
  %exitcond.not.i.i22 = icmp eq i64 %i.he, %i.gz
  br i1 %exitcond.not.i.i22, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph16.i.i

bb.ae:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i28, %.loopexit.split-lp38.i, %.loopexit37.i
  %.pn.i20 = phi { ptr, i32 } [ %lpad.loopexit.split-lp40.i, %.loopexit.split-lp38.i ], [ %lpad.loopexit39.i, %.loopexit37.i ], [ %lpad.loopexit.i, %.loopexit.i28 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(104) %i.cl) #26
          to label %.body unwind label %bb.aj, !noalias !3179

.loopexit37.i:                                    ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i, %.lr.ph16.i.i
  %lpad.loopexit39.i = landingpad { ptr, i32 }
          cleanup
  store i64 %i.he, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i17, align 8, !alias.scope !3186, !noalias !3187
  br label %bb.ae
end_hunk_0
begin_hunk_1_@_RNvNtCscSToqyP0NyK_9lance_geo4bbox12total_bounds:bb.a

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i: ; preds = %.noexc5.us.i
  %exitcond.not.i.us.i = icmp eq i64 %i.la, %umax.i122.i
  br i1 %exitcond.not.i.us.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i

.noexc5.us.i:                                     ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %.sroa.0.0.copyload5.pr.i.us.i = load i64, ptr %i.bu, align 8, !noalias !3217 ; 2 uses
  switch i64 %.sroa.0.0.copyload5.pr.i.us.i, label %.split.us.i69 [
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i
  ]

.loopexit37.split.us.i:                           ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %lpad.loopexit39.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit37.i63

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i: ; preds = %.noexc5.i65, %.thread.i89
  %exitcond.not.i.i67 = icmp eq i64 %i.lc, %umax.i122.i
  br i1 %exitcond.not.i.i67, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i, %.lr.ph.split.preheader.i
  %i.lb = phi i64 [ %i.lc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i ], [ %.us-phi101105116.i, %.lr.ph.split.preheader.i ] ; 4 uses
  %i.lc = add i64 %i.lb, 1                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3215)
  call void @llvm.experimental.noalias.scope.decl(metadata !3216)
  %exitcond.not.i61 = icmp eq i64 %i.lb, %umax.i60
  br i1 %exitcond.not.i61, label %bb.ax, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipointNtB4_15MultiPointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, !prof !7

bb.ax:                                            ; preds = %.lr.ph.split.i
  store i64 %i.lc, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i57, align 8, !noalias !3212
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i90 unwind label %.loopexit.split-lp38.i87, !noalias !3208

.noexc.i90:                                       ; preds = %bb.ax
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipointNtB4_15MultiPointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i: ; preds = %.lr.ph.split.i
  %i.ld = add i64 %i.lb, %i.ku                    ; 2 uses
  %i.le = lshr i64 %i.ld, 3
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.le
  %i.lg = load i8, ptr %i.lf, align 1, !noalias !3218, !noundef !5
  %i.lh = trunc i64 %i.ld to i8
  %i.li = and i8 %i.lh, 7
  %i.lj = xor i8 %i.lg, -1
  %i.lk = lshr i8 %i.lj, %i.li
  %i.ll = trunc i8 %i.lk to i1
  br i1 %i.ll, label %.thread.i89, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i

.thread.i89:                                      ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipointNtB4_15MultiPointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  store i64 -1, ptr %i.bu, align 8, !noalias !3217
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipointNtB4_15MultiPointArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipointNtB5_15MultiPointArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %i.ke, i64 noundef %i.lb)
          to label %.noexc5.i65 unwind label %.loopexit37.split.i, !noalias !3208

.noexc5.i65:                                      ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %.sroa.0.0.copyload5.pr.i.i66 = load i64, ptr %i.bu, align 8, !noalias !3217 ; 2 uses
  switch i64 %.sroa.0.0.copyload5.pr.i.i66, label %.split.us.i69 [
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i
  ]

bb.ay:                                            ; preds = %.loopexit.split-lp.i70, %.loopexit.i76, %.loopexit.split-lp38.i87, %.loopexit37.i63
  %.pn.i64 = phi { ptr, i32 } [ %lpad.loopexit.split-lp40.i88, %.loopexit.split-lp38.i87 ], [ %.us-phi94.i, %.loopexit37.i63 ], [ %lpad.loopexit.i77, %.loopexit.i76 ], [ %lpad.loopexit.split-lp.i71, %.loopexit.split-lp.i70 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(104) %i.by) #26
          to label %.body unwind label %bb.bd, !noalias !3208

.loopexit37.split.i:                              ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %lpad.loopexit39.i62 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit37.i63

.loopexit37.i63:                                  ; preds = %.loopexit37.split.i, %.loopexit37.split.us.i
  %.us-phi93.i = phi i64 [ %i.lc, %.loopexit37.split.i ], [ %i.la, %.loopexit37.split.us.i ]
  %.us-phi94.i = phi { ptr, i32 } [ %lpad.loopexit39.i62, %.loopexit37.split.i ], [ %lpad.loopexit39.us.i, %.loopexit37.split.us.i ]
  store i64 %.us-phi93.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i57, align 8, !noalias !3212
  br label %bb.ay

.loopexit.split-lp38.i87:                         ; preds = %bb.az, %bb.ax
  %lpad.loopexit.split-lp40.i88 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

.split.us.i69:                                    ; preds = %.noexc5.i65, %.noexc5.us.i
  %.us-phi101.i = phi i64 [ %i.la, %.noexc5.us.i ], [ %i.lc, %.noexc5.i65 ] ; 6 uses
  %.us-phi102.i = phi i64 [ %.sroa.0.0.copyload5.pr.i.us.i, %.noexc5.us.i ], [ %.sroa.0.0.copyload5.pr.i.i66, %.noexc5.i65 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i54)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i54, ptr noundef nonnull align 8 dereferenceable(32) %i.kn, i64 32, i1 false), !noalias !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx), !noalias !3212
  %i.lm = trunc nuw i64 %.us-phi102.i to i1
  br i1 %i.lm, label %bb.az, label %bb.ba

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointEB5_.exit.i, %.noexc5.i65, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i, %.noexc5.us.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i, %bb.aw
  %i.ln = phi <2 x double> [ splat (double +inf), %bb.aw ], [ %i.kx, %.noexc5.us.i ], [ %i.kx, %.noexc5.i65 ], [ %i.kx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i ], [ %i.kx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i ], [ %i.mo, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointEB5_.exit.i ]
  %i.lo = phi <2 x double> [ splat (double -inf), %bb.aw ], [ %i.ky, %.noexc5.us.i ], [ %i.ky, %.noexc5.i65 ], [ %i.ky, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i ], [ %i.ky, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i ], [ %i.mp, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointEB5_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !3212
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> %i.ln, ptr %i.lp, align 8, !alias.scope !3208, !noalias !3209
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.lo, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !3208, !noalias !3209
  store i64 0, ptr %0, align 8, !alias.scope !3208, !noalias !3209
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.az:                                            ; preds = %.split.us.i69
  store i64 %.us-phi101.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i57, align 8, !noalias !3212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bw), !noalias !3212
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i54, i64 32, i1 false), !noalias !3212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bv), !noalias !3212
  invoke void @_RNvXNtCs84Wnv3hhsUu_15geoarrow_schema5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB2_13GeoArrowErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit12.i unwind label %.loopexit.split-lp38.i87, !noalias !3208

bb.ba:                                            ; preds = %.split.us.i69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i54, i64 32, i1 false), !noalias !3212
  call void @llvm.experimental.noalias.scope.decl(metadata !3219)
  %i.lq = invoke noundef i64 @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipointNtB4_10MultiPointNtNtCs5zgMTRDcqaU_10geo_traits11multi_point15MultiPointTrait10num_points(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bx)
          to label %.noexc16.i unwind label %.loopexit.split-lp.i70, !noalias !3208 ; 2 uses

.noexc16.i:                                       ; preds = %bb.ba
  %i.lr = icmp eq i64 %i.lq, 0
  br i1 %i.lr, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointEB5_.exit.i, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.noexc16.i
  %.val.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !3219, !noalias !3220, !nonnull !5, !align !13, !noundef !5
  %.val1.i.i.i = load i64, ptr %i.kv, align 8, !alias.scope !3219, !noalias !3220, !noundef !5
  br label %bb.bb

bb.bb:                                            ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i, %.lr.ph.i13.i
  %.sroa.4.011.i.i = phi i64 [ 0, %.lr.ph.i13.i ], [ %i.lw, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i ] ; 2 uses
  %i.ls = phi <2 x double> [ %i.kx, %.lr.ph.i13.i ], [ %i.mk, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i ] ; 3 uses
  %i.lt = phi <2 x double> [ %i.kx, %.lr.ph.i13.i ], [ %i.mj, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i ] ; 2 uses
  %i.lu = phi <2 x double> [ %i.ky, %.lr.ph.i13.i ], [ %i.mm, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i ] ; 3 uses
  %i.lv = phi <2 x double> [ %i.ky, %.lr.ph.i13.i ], [ %i.ml, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i ] ; 2 uses
  %i.lw = add nuw i64 %.sroa.4.011.i.i, 1         ; 2 uses
  %i.lx = add i64 %.sroa.4.011.i.i, %.val1.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bt), !noalias !3221
  store ptr %.val.i.i.i, ptr %i.bt, align 8, !noalias !3221
  store i64 %i.lx, ptr %i.kw, align 8, !noalias !3221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bs), !noalias !3222
  invoke void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5pointNtB4_5PointNtNtCs5zgMTRDcqaU_10geo_traits5point10PointTrait5coord(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bt)
          to label %.noexc17.i unwind label %.loopexit.i76, !noalias !3208

.noexc17.i:                                       ; preds = %bb.bb
  %i.ly = load i64, ptr %i.bs, align 8, !range !11, !noalias !3222, !noundef !5
  %.not.i.i15.i = icmp eq i64 %i.ly, -1
  br i1 %.not.i.i15.i, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc17.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !3222
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false), !noalias !3222
  %i.lz = invoke noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1x(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %.noexc18.i unwind label %.loopexit.i76, !noalias !3208

.noexc18.i:                                       ; preds = %bb.bc
  %i.ma = invoke noundef double @_RNvXs2_NtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5coord8combinedNtB5_5CoordNtNtCs5zgMTRDcqaU_10geo_traits5coord10CoordTrait1y(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.br)
          to label %.noexc19.i unwind label %.loopexit.i76, !noalias !3208

.noexc19.i:                                       ; preds = %.noexc18.i
  %i.mb = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mc = insertelement <2 x double> %i.mb, double %i.ma, i64 1 ; 6 uses
  %i.md = fcmp olt <2 x double> %i.mc, %i.ls      ; 2 uses
  %i.me = select <2 x i1> %i.md, <2 x double> %i.mc, <2 x double> %i.lt
  %i.mf = select <2 x i1> %i.md, <2 x double> %i.mc, <2 x double> %i.ls
  %i.mg = fcmp ogt <2 x double> %i.mc, %i.lu      ; 2 uses
  %i.mh = select <2 x i1> %i.mg, <2 x double> %i.mc, <2 x double> %i.lv
  %i.mi = select <2 x i1> %i.mg, <2 x double> %i.mc, <2 x double> %i.lu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !3222
  br label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i: ; preds = %.noexc19.i, %.noexc17.i
  %i.mj = phi <2 x double> [ %i.lt, %.noexc17.i ], [ %i.me, %.noexc19.i ] ; 2 uses
  %i.mk = phi <2 x double> [ %i.ls, %.noexc17.i ], [ %i.mf, %.noexc19.i ]
  %i.ml = phi <2 x double> [ %i.lv, %.noexc17.i ], [ %i.mh, %.noexc19.i ] ; 2 uses
  %i.mm = phi <2 x double> [ %i.lu, %.noexc17.i ], [ %i.mi, %.noexc19.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs), !noalias !3222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt), !noalias !3221
  %i.mn = icmp eq i64 %i.lw, %i.lq
  br i1 %i.mn, label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointEB5_.exit.i, label %bb.bb

.loopexit.i76:                                    ; preds = %.noexc18.i, %bb.bc, %bb.bb
  %lpad.loopexit.i77 = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi101.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i57, align 8, !noalias !3212
  br label %bb.ay

.loopexit.split-lp.i70:                           ; preds = %bb.ba
  %lpad.loopexit.split-lp.i71 = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi101.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i57, align 8, !noalias !3212
  br label %bb.ay

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar10multipoint10MultiPointEB5_.exit.i: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i, %.noexc16.i
  %i.mo = phi <2 x double> [ %i.kx, %.noexc16.i ], [ %i.mj, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i ] ; 2 uses
  %i.mp = phi <2 x double> [ %i.ky, %.noexc16.i ], [ %i.ml, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox9add_pointNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar5point5PointEB5_.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i54)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bu), !noalias !3212
  %umax.i.i86 = call i64 @llvm.umax.i64(i64 %i.km, i64 %.us-phi101.i)
  %exitcond.not.i69.not.i = icmp ult i64 %.us-phi101.i, %i.km
  br i1 %exitcond.not.i69.not.i, label %.lr.ph.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10multipoint15MultiPointArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit12.i: ; preds = %bb.az
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mq, ptr noundef nonnull align 8 dereferenceable(32) %i.bv, i64 32, i1 false), !noalias !3209
  store i64 1, ptr %0, align 8, !alias.scope !3208, !noalias !3209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv), !noalias !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw), !noalias !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx), !noalias !3212
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i54)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by), !noalias !3212
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.bd:                                            ; preds = %bb.ay
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3208
  unreachable

bb.be:                                            ; preds = %bb.f
  %i.ms = extractvalue { ptr, ptr } %i.dp, 0      ; 10 uses
  %i.mt = extractvalue { ptr, ptr } %i.dp, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.mv(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cu, ptr noundef %i.ms)
          to label %bb.bf unwind label %bb.q

bb.bf:                                            ; preds = %bb.be
  %i.mw = load i128, ptr %i.cu, align 16, !noundef !5
  %i.mx = icmp eq i128 %i.mw, -48875476033595636813025797363259761764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br i1 %i.mx, label %bb.bg, label %.invoke, !prof !14

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ms) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3223)
  call void @llvm.experimental.noalias.scope.decl(metadata !3224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !3225
  store <2 x double> splat (double +inf), ptr %i.bq, align 16, !alias.scope !3226, !noalias !3225
  %i.my = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <2 x double> splat (double -inf), ptr %i.my, align 16, !alias.scope !3226, !noalias !3225
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ms, i64 64
  %.val.i.i95 = load i64, ptr %i.mz, align 8, !alias.scope !3227, !noalias !3228, !noundef !5
  %i.na = lshr i64 %.val.i.i95, 2
  %i.nb = add nsw i64 %i.na, -1                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !3225
  store i64 -1, ptr %i.bp, align 8, !noalias !3225
  %.sroa.225.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  store i64 -1, ptr %.sroa.225.0..sroa_idx.i96, align 8, !noalias !3225
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.bp, i64 96
  store ptr %i.ms, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i97, align 8, !noalias !3225
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.bp, i64 104 ; 4 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.bp, i64 112
  store i64 %i.nb, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i99, align 8, !noalias !3225
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i94)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3225
  %.not.i100 = icmp eq i64 %i.nb, 0
  br i1 %.not.i100, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestring20MultiLineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph14.i.preheader.lr.ph.i101

.lr.ph14.i.preheader.lr.ph.i101:                  ; preds = %bb.bg
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ms, i64 32
  %i.ng = load ptr, ptr %i.ms, align 8, !alias.scope !3229, !noalias !3230, !noundef !5
  %.not.i.i.i.i.i.i.i102 = icmp eq ptr %i.ng, null
  %i.nh = load i64, ptr %i.nf, align 8, !alias.scope !3224, !noalias !3223 ; 2 uses
  %i.ni = load ptr, ptr %i.ne, align 8, !alias.scope !3224, !noalias !3223 ; 2 uses
  %i.nj = load i64, ptr %i.nd, align 8, !alias.scope !3224, !noalias !3223 ; 2 uses
  %.sroa.9.8..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i102, label %.lr.ph14.i.preheader.us.i131, label %.lr.ph14.i.preheader.i105

.lr.ph14.i.preheader.us.i131:                     ; preds = %.lr.ph14.i.preheader.lr.ph.i101, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringEB5_.exit.us.i
  %.promoted.i3059.us.i132 = phi i64 [ %i.nk, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringEB5_.exit.us.i ], [ 0, %.lr.ph14.i.preheader.lr.ph.i101 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  %i.nk = add nuw i64 %.promoted.i3059.us.i132, 1 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB5_20MultiLineStringArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.nc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.ms, i64 noundef %.promoted.i3059.us.i132)
          to label %bb.bh unwind label %.loopexit.split.us.i133, !noalias !3223

bb.bh:                                            ; preds = %.lr.ph14.i.preheader.us.i131
  store i64 1, ptr %i.bl, align 8, !noalias !3236
  %.sroa.7.8.copyload.us.i135 = load ptr, ptr %i.nc, align 8, !noalias !3237 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i94, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.8..sroa_idx.i103, i64 32, i1 false), !noalias !3237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i93, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i94, i64 32, i1 false), !noalias !3225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !3225
  %i.nl = icmp eq ptr %.sroa.7.8.copyload.us.i135, null
  br i1 %i.nl, label %.split.us.i125, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store ptr %.sroa.7.8.copyload.us.i135, ptr %i.bo, align 8, !noalias !3225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i104, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.i94, i64 32, i1 false), !noalias !3225
  invoke fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox21add_multi_line_stringNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringEB5_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bo)
          to label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringEB5_.exit.us.i unwind label %.split64.us.i136, !noalias !3223

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringEB5_.exit.us.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !3225
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i93)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i94)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i94)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !3225
  %exitcond90.not.i137 = icmp eq i64 %i.nk, %i.nb
  br i1 %exitcond90.not.i137, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestring20MultiLineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph14.i.preheader.us.i131

.loopexit.split.us.i133:                          ; preds = %.lr.ph14.i.preheader.us.i131
  %lpad.loopexit.us.i134 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i118

.split64.us.i136:                                 ; preds = %bb.bi
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

.lr.ph14.i.preheader.i105:                        ; preds = %.lr.ph14.i.preheader.lr.ph.i101, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringEB5_.exit.i
  %.us-phi495358.i106 = phi i64 [ %.lcssa74.i115, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringEB5_.exit.i ], [ 0, %.lr.ph14.i.preheader.lr.ph.i101 ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  %umax.i107 = call i64 @llvm.umax.i64(i64 %.us-phi495358.i106, i64 %i.nh) ; 2 uses
  %i.nn = add nuw i64 %.us-phi495358.i106, 1      ; 3 uses
  %exitcond.peel.not.not.i108 = icmp ult i64 %.us-phi495358.i106, %i.nh
  br i1 %exitcond.peel.not.not.i108, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.peel.i, label %.split.i.i109, !prof !14

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.peel.i: ; preds = %.lr.ph14.i.preheader.i105
  %i.no = add i64 %.us-phi495358.i106, %i.nj      ; 2 uses
  %i.np = lshr i64 %i.no, 3
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1, !noalias !3238, !noundef !5
  %i.ns = trunc i64 %i.no to i8
  %i.nt = and i8 %i.ns, 7
  %i.nu = xor i8 %i.nr, -1
  %i.nv = lshr i8 %i.nu, %i.nt
  %i.nw = trunc i8 %i.nv to i1
  br i1 %i.nw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.peel.i, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.thread.i.i.i.i.i.split.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.peel.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.peel.i
  %exitcond.not.i.peel.i127 = icmp eq i64 %i.nn, %i.nb
  br i1 %exitcond.not.i.peel.i127, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestring20MultiLineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph14.i.i128

.lr.ph14.i.i128:                                  ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.peel.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.i
  %i.nx = phi i64 [ %i.ny, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.i ], [ %i.nn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.peel.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  call void @llvm.experimental.noalias.scope.decl(metadata !3233)
  %i.ny = add i64 %i.nx, 1                        ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3234)
  call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  %exitcond.not.i129 = icmp eq i64 %i.nx, %umax.i107
  br i1 %exitcond.not.i129, label %.split.i.i109, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, !prof !7

.split.i.i109:                                    ; preds = %.lr.ph14.i.preheader.i105, %.lr.ph14.i.i128
  %i.nz = add i64 %umax.i107, 1
  store i64 %i.nz, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i98, align 8, !alias.scope !3239, !noalias !3240
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i113 unwind label %.loopexit.split-lp.i110, !noalias !3223

.noexc.i113:                                      ; preds = %.split.i.i109
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i: ; preds = %.lr.ph14.i.i128
  %i.oa = add i64 %i.nx, %i.nj                    ; 2 uses
  %i.ob = lshr i64 %i.oa, 3
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !noalias !3241, !noundef !5
  %i.oe = trunc i64 %i.oa to i8
  %i.of = and i8 %i.oe, 7
  %i.og = xor i8 %i.od, -1
  %i.oh = lshr i8 %i.og, %i.of
  %i.oi = trunc i8 %i.oh to i1
  br i1 %i.oi, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.i, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.thread.i.i.i.i.i.split.i

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.thread.i.i.i.i.i.split.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.peel.i
  %.lcssa80.i114 = phi i64 [ %.us-phi495358.i106, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.peel.i ], [ %i.nx, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i ]
  %.lcssa74.i115 = phi i64 [ %i.nn, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.peel.i ], [ %i.ny, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i ] ; 5 uses
  store i64 0, ptr %i.bl, align 8, !noalias !3225
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB5_20MultiLineStringArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.nc, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %i.ms, i64 noundef %.lcssa80.i114)
          to label %bb.bk unwind label %.loopexit.split.i116, !noalias !3223

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar15multilinestring15MultiLineStringNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit7.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  %exitcond.not.i.i130 = icmp eq i64 %i.ny, %i.nb
  br i1 %exitcond.not.i.i130, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestring20MultiLineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph14.i.i128, !llvm.loop !2866

bb.bj:                                            ; preds = %bb.bm, %.loopexit.split-lp.i110, %.loopexit.i118
  %.pn.i112 = phi { ptr, i32 } [ %.us-phi66.i124, %bb.bm ], [ %.us-phi61.i120, %.loopexit.i118 ], [ %lpad.loopexit.split-lp.i111, %.loopexit.split-lp.i110 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestring20MultiLineStringArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(120) %i.bp) #26
          to label %.body unwind label %bb.bn, !noalias !3223

.loopexit.split.i116:                             ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array15multilinestringNtB4_20MultiLineStringArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.thread.i.i.i.i.i.split.i
  %lpad.loopexit.i117 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i118

.loopexit.i118:                                   ; preds = %.loopexit.split.i116, %.loopexit.split.us.i133
  %.us-phi60.i119 = phi i64 [ %.lcssa74.i115, %.loopexit.split.i116 ], [ %i.nk, %.loopexit.split.us.i133 ]
end_hunk_1
begin_hunk_2_@_RNvNtCscSToqyP0NyK_9lance_geo4bbox12total_bounds:bb.a
  store i64 -2, ptr %.sroa.217.0..sroa_idx.i, align 8, !noalias !3264
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i173 = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store ptr %i.qn, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i173, align 8, !noalias !3264
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i174 = getelementptr inbounds nuw i8, ptr %i.bb, i64 88 ; 5 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i175 = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  store i64 %i.qw, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i175, align 8, !noalias !3264
  %i.qx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3264
  %exitcond.not.i4268.i = icmp eq i64 %i.qw, 0
  br i1 %exitcond.not.i4268.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph.lr.ph.i176

.lr.ph.lr.ph.i176:                                ; preds = %bb.bz
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qn, i64 32
  %i.rb = load ptr, ptr %i.qn, align 8, !alias.scope !3268, !noalias !3269, !noundef !5
  %.not.i.i.i.i.i.i.i177 = icmp eq ptr %i.rb, null
  %i.rc = load i64, ptr %i.ra, align 8, !alias.scope !3263, !noalias !3262
  %i.rd = load ptr, ptr %i.qz, align 8, !alias.scope !3263, !noalias !3262
  %i.re = load i64, ptr %i.qy, align 8, !alias.scope !3263, !noalias !3262
  br label %.lr.ph.i178

.lr.ph.i178:                                      ; preds = %.lr.ph.i.i198, %.lr.ph.lr.ph.i176
  %umax.i71.i = phi i64 [ %i.qw, %.lr.ph.lr.ph.i176 ], [ %umax.i.i199, %.lr.ph.i.i198 ] ; 2 uses
  %.us-phi545869.i = phi i64 [ 0, %.lr.ph.lr.ph.i176 ], [ %.us-phi54.i, %.lr.ph.i.i198 ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i177, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i, label %.lr.ph.split.preheader.i179

.lr.ph.split.preheader.i179:                      ; preds = %.lr.ph.i178
  %umax.i180 = call i64 @llvm.umax.i64(i64 %.us-phi545869.i, i64 %i.rc)
  br label %.lr.ph.split.i181

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i: ; preds = %.lr.ph.i178, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i
  %i.rf = phi i64 [ %i.rg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i ], [ %.us-phi545869.i, %.lr.ph.i178 ] ; 2 uses
  %i.rg = add i64 %i.rf, 1                        ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollectionNtB5_23GeometryCollectionArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1376) %i.qn, i64 noundef %i.rf)
          to label %.noexc5.us.i202 unwind label %.loopexit30.split.us.i, !noalias !3262

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i: ; preds = %.noexc5.us.i202
  %exitcond.not.i.us.i204 = icmp eq i64 %i.rg, %umax.i71.i
  br i1 %exitcond.not.i.us.i204, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i

.noexc5.us.i202:                                  ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %.sroa.0.0.copyload5.pr.i.us.i203 = load i64, ptr %i.ax, align 8, !noalias !3272 ; 2 uses
  switch i64 %.sroa.0.0.copyload5.pr.i.us.i203, label %.split.us.i187 [
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i
  ]

.loopexit30.split.us.i:                           ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %lpad.loopexit32.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit30.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i: ; preds = %.noexc5.i184, %.thread.i200
  %exitcond.not.i.i186 = icmp eq i64 %i.ri, %umax.i71.i
  br i1 %exitcond.not.i.i186, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, label %.lr.ph.split.i181

.lr.ph.split.i181:                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i, %.lr.ph.split.preheader.i179
  %i.rh = phi i64 [ %i.ri, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i ], [ %.us-phi545869.i, %.lr.ph.split.preheader.i179 ] ; 4 uses
  %i.ri = add i64 %i.rh, 1                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3270)
  call void @llvm.experimental.noalias.scope.decl(metadata !3271)
  %exitcond.not.i182 = icmp eq i64 %i.rh, %umax.i180
  br i1 %exitcond.not.i182, label %bb.ca, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollectionNtB4_23GeometryCollectionArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, !prof !7

bb.ca:                                            ; preds = %.lr.ph.split.i181
  store i64 %i.ri, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i174, align 8, !noalias !3264
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i201 unwind label %.loopexit.split-lp31.i, !noalias !3262

.noexc.i201:                                      ; preds = %bb.ca
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollectionNtB4_23GeometryCollectionArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i: ; preds = %.lr.ph.split.i181
  %i.rj = add i64 %i.rh, %i.re                    ; 2 uses
  %i.rk = lshr i64 %i.rj, 3
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rd, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !noalias !3273, !noundef !5
  %i.rn = trunc i64 %i.rj to i8
  %i.ro = and i8 %i.rn, 7
  %i.rp = xor i8 %i.rm, -1
  %i.rq = lshr i8 %i.rp, %i.ro
  %i.rr = trunc i8 %i.rq to i1
  br i1 %i.rr, label %.thread.i200, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i

.thread.i200:                                     ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollectionNtB4_23GeometryCollectionArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  store i64 -1, ptr %i.ax, align 8, !noalias !3272
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollectionNtB4_23GeometryCollectionArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollectionNtB5_23GeometryCollectionArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1376) %i.qn, i64 noundef %i.rh)
          to label %.noexc5.i184 unwind label %.loopexit30.split.i, !noalias !3262

.noexc5.i184:                                     ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %.sroa.0.0.copyload5.pr.i.i185 = load i64, ptr %i.ax, align 8, !noalias !3272 ; 2 uses
  switch i64 %.sroa.0.0.copyload5.pr.i.i185, label %.split.us.i187 [
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i
  ]

bb.cb:                                            ; preds = %.loopexit.split-lp.i188, %.loopexit.i192, %.loopexit.split-lp31.i, %.loopexit30.i
  %.pn.i183 = phi { ptr, i32 } [ %lpad.loopexit.split-lp33.i, %.loopexit.split-lp31.i ], [ %.us-phi51.i, %.loopexit30.i ], [ %lpad.loopexit.i193, %.loopexit.i192 ], [ %lpad.loopexit.split-lp.i189, %.loopexit.split-lp.i188 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(104) %i.bb) #26
          to label %.body unwind label %bb.cf, !noalias !3262

.loopexit30.split.i:                              ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %lpad.loopexit32.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit30.i

.loopexit30.i:                                    ; preds = %.loopexit30.split.i, %.loopexit30.split.us.i
  %.us-phi50.i = phi i64 [ %i.ri, %.loopexit30.split.i ], [ %i.rg, %.loopexit30.split.us.i ]
  %.us-phi51.i = phi { ptr, i32 } [ %lpad.loopexit32.i, %.loopexit30.split.i ], [ %lpad.loopexit32.us.i, %.loopexit30.split.us.i ]
  store i64 %.us-phi50.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i174, align 8, !noalias !3264
  br label %bb.cb

.loopexit.split-lp31.i:                           ; preds = %bb.cc, %bb.ca
  %lpad.loopexit.split-lp33.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.split.us.i187:                                   ; preds = %.noexc5.i184, %.noexc5.us.i202
  %.us-phi54.i = phi i64 [ %i.rg, %.noexc5.us.i202 ], [ %i.ri, %.noexc5.i184 ] ; 6 uses
  %.us-phi55.i = phi i64 [ %.sroa.0.0.copyload5.pr.i.us.i203, %.noexc5.us.i202 ], [ %.sroa.0.0.copyload5.pr.i.i185, %.noexc5.i184 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i171)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i171, ptr noundef nonnull align 8 dereferenceable(32) %i.qx, i64 32, i1 false), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !3264
  %i.rs = trunc nuw i64 %.us-phi55.i to i1
  br i1 %i.rs, label %bb.cc, label %bb.cd

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i: ; preds = %.lr.ph.i.i198, %.noexc5.i184, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.i, %.noexc5.us.i202, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollection18GeometryCollectionNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit4.i.us.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3264
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.rt, ptr noundef nonnull align 16 dereferenceable(32) %i.bc, i64 32, i1 false), !noalias !3263
  store i64 0, ptr %0, align 8, !alias.scope !3262, !noalias !3263
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayEB4_.exit

bb.cc:                                            ; preds = %.split.us.i187
  store i64 %.us-phi54.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i174, align 8, !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !3264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i171, i64 32, i1 false), !noalias !3264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !3264
  invoke void @_RNvXNtCs84Wnv3hhsUu_15geoarrow_schema5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB2_13GeoArrowErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.az)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit15.i unwind label %.loopexit.split-lp31.i, !noalias !3262

bb.cd:                                            ; preds = %.split.us.i187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.i171, i64 32, i1 false), !noalias !3264
  %i.ru = invoke noundef i64 @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollectionNtB4_18GeometryCollectionNtNtCs5zgMTRDcqaU_10geo_traits19geometry_collection23GeometryCollectionTrait14num_geometries(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba)
          to label %.noexc7.i190 unwind label %.loopexit.split-lp.i188, !noalias !3262 ; 2 uses

.noexc7.i190:                                     ; preds = %bb.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !3274
  %i.rv = icmp eq i64 %i.ru, 0
  br i1 %i.rv, label %.lr.ph.i.i198, label %_RNvXsj_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_26GeometryCollectionIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtB1j_18geometrycollection18GeometryCollectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i.i.i

_RNvXsj_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_26GeometryCollectionIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtB1j_18geometrycollection18GeometryCollectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i.i.i: ; preds = %.noexc7.i190, %.noexc9.i197
  %.sroa.4.05.i.i.i191 = phi i64 [ %i.rw, %.noexc9.i197 ], [ 0, %.noexc7.i190 ] ; 2 uses
  invoke void @_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array6scalar18geometrycollectionNtB4_18GeometryCollectionNtNtCs5zgMTRDcqaU_10geo_traits19geometry_collection23GeometryCollectionTrait18geometry_unchecked(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ba, i64 noundef %.sroa.4.05.i.i.i191)
          to label %.noexc8.i194 unwind label %.loopexit.i192, !noalias !3262

.noexc8.i194:                                     ; preds = %_RNvXsj_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_26GeometryCollectionIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtB1j_18geometrycollection18GeometryCollectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i.i.i
  %.pr.i.i.i195 = load i64, ptr %i.aw, align 8, !noalias !3274
  %.not.i.i6.i196 = icmp eq i64 %.pr.i.i.i195, -1
  br i1 %.not.i.i6.i196, label %.lr.ph.i.i198, label %bb.ce

bb.ce:                                            ; preds = %.noexc8.i194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !3274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.av, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 56, i1 false), !noalias !3274
  invoke fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryEB5_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.av)
          to label %.noexc9.i197 unwind label %.loopexit.i192, !noalias !3262

.noexc9.i197:                                     ; preds = %bb.ce
  %i.rw = add nuw i64 %.sroa.4.05.i.i.i191, 1     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !3274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !3274
  %i.rx = icmp eq i64 %i.rw, %i.ru
  br i1 %i.rx, label %.lr.ph.i.i198, label %_RNvXsj_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_26GeometryCollectionIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtB1j_18geometrycollection18GeometryCollectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i.i.i

.loopexit.i192:                                   ; preds = %bb.ce, %_RNvXsj_NtCs5zgMTRDcqaU_10geo_traits8iteratorINtB5_26GeometryCollectionIteratordNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtB1j_18geometrycollection18GeometryCollectionENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo.exit.i.i.i
  %lpad.loopexit.i193 = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi54.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i174, align 8, !noalias !3264
  br label %bb.cb

.loopexit.split-lp.i188:                          ; preds = %bb.cd
  %lpad.loopexit.split-lp.i189 = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi54.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i174, align 8, !noalias !3264
  br label %bb.cb

.lr.ph.i.i198:                                    ; preds = %.noexc9.i197, %.noexc8.i194, %.noexc7.i190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !3274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i171)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !3264
  %umax.i.i199 = call i64 @llvm.umax.i64(i64 %i.qw, i64 %.us-phi54.i)
  %exitcond.not.i42.not.i = icmp ult i64 %.us-phi54.i, %i.qw
  br i1 %exitcond.not.i42.not.i, label %.lr.ph.i178, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit15.i: ; preds = %bb.cc
  %i.ry = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ry, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false), !noalias !3263
  store i64 1, ptr %0, align 8, !alias.scope !3262, !noalias !3263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !3264
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i171)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !3264
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayEB4_.exit

bb.cf:                                            ; preds = %bb.cb
  %i.rz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3262
  unreachable

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayEB4_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array18geometrycollection23GeometryCollectionArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !3264
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.cg:                                            ; preds = %bb.i
  %i.sa = extractvalue { ptr, ptr } %i.ds, 0      ; 10 uses
  %i.sb = extractvalue { ptr, ptr } %i.ds, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy)
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = load ptr, ptr %i.sc, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.sd(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cy, ptr noundef %i.sa)
          to label %bb.ch unwind label %bb.q

bb.ch:                                            ; preds = %bb.cg
  %i.se = load i128, ptr %i.cy, align 16, !noundef !5
  %i.sf = icmp eq i128 %i.se, -150745859135888279855597278145703377945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy)
  br i1 %i.sf, label %bb.ci, label %.invoke, !prof !14

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sa) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3275)
  call void @llvm.experimental.noalias.scope.decl(metadata !3276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !3277
  store <2 x double> splat (double +inf), ptr %i.au, align 16, !alias.scope !3278, !noalias !3277
  %i.sg = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <2 x double> splat (double -inf), ptr %i.sg, align 16, !alias.scope !3278, !noalias !3277
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sa, i64 80
  %.val.i.i207 = load i64, ptr %i.sh, align 8, !alias.scope !3279, !noalias !3280, !noundef !5
  %i.si = lshr i64 %.val.i.i207, 3                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !3277
  store i64 -3, ptr %i.at, align 8, !noalias !3277
  %.sroa.221.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 -3, ptr %.sroa.221.0..sroa_idx.i, align 8, !noalias !3277
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store ptr %i.sa, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i208, align 8, !noalias !3277
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 2 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  store i64 %i.si, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i210, align 8, !noalias !3277
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 64 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sa, i64 168 ; 2 uses
  %.not.i211 = icmp eq i64 %i.si, 0
  br i1 %.not.i211, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array4rect9RectArrayEB4_.exit, label %.lr.ph14.i.lr.ph.i

.lr.ph14.i.lr.ph.i:                               ; preds = %bb.ci
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sa, i64 32
  %i.so = load ptr, ptr %i.sa, align 8, !alias.scope !3281, !noalias !3282, !noundef !5
  %.not.i.i.i.i.i.i.i212 = icmp eq ptr %i.so, null
  %i.sp = load i64, ptr %i.sn, align 8, !alias.scope !3276, !noalias !3275
  %i.sq = load ptr, ptr %i.sm, align 8, !alias.scope !3276, !noalias !3275
  %i.sr = load i64, ptr %i.sl, align 8, !alias.scope !3276, !noalias !3275
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i212, label %.lr.ph14.i.us.i.preheader, label %.lr.ph14.i.i213.preheader

.lr.ph14.i.i213.preheader:                        ; preds = %.lr.ph14.i.lr.ph.i
  %i.ss = insertelement <2 x ptr> poison, ptr %i.sj, i64 0
  %i.st = insertelement <2 x ptr> %i.ss, ptr %i.sk, i64 1
  br label %.lr.ph14.i.i213

.lr.ph14.i.us.i.preheader:                        ; preds = %.lr.ph14.i.lr.ph.i
  %i.su = insertelement <2 x ptr> poison, ptr %i.sj, i64 0
  %i.sv = insertelement <2 x ptr> %i.su, ptr %i.sk, i64 1
  br label %.lr.ph14.i.us.i

.lr.ph14.i.us.i:                                  ; preds = %.lr.ph14.i.us.i.preheader, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.us.i
  %.promoted.i2664.us.i = phi i64 [ %i.sw, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.us.i ], [ 0, %.lr.ph14.i.us.i.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3283)
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %i.sw = add nuw nsw i64 %.promoted.i2664.us.i, 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3277
  store <2 x ptr> %i.sv, ptr %i.as, align 16, !noalias !3277
  store i64 %.promoted.i2664.us.i, ptr %.sroa.543.0..sroa_idx.i, align 16, !noalias !3277
  invoke fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox8add_rectNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.us.i unwind label %.split.us.i223, !noalias !3275

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.us.i: ; preds = %.lr.ph14.i.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3277
  %exitcond.not.i224 = icmp eq i64 %i.sw, %i.si
  br i1 %exitcond.not.i224, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array4rect9RectArrayEB4_.exit, label %.lr.ph14.i.us.i

.split.us.i223:                                   ; preds = %.lr.ph14.i.us.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.lr.ph14.i.i213:                                  ; preds = %.lr.ph14.i.i213.preheader, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.i
  %.us-phi.i6063.i = phi i64 [ %i.sz, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.i ], [ 0, %.lr.ph14.i.i213.preheader ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3283)
  %umax.i.i214 = call i64 @llvm.umax.i64(i64 %i.sp, i64 %.us-phi.i6063.i) ; 2 uses
  br label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, %.lr.ph14.i.i213
  %i.sy = phi i64 [ %.us-phi.i6063.i, %.lr.ph14.i.i213 ], [ %i.sz, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3284)
  call void @llvm.experimental.noalias.scope.decl(metadata !3285)
  %i.sz = add i64 %i.sy, 1                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3286)
  call void @llvm.experimental.noalias.scope.decl(metadata !3287)
  %exitcond.not.i.i215 = icmp eq i64 %i.sy, %umax.i.i214
  br i1 %exitcond.not.i.i215, label %.split.i.i221, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array4rectNtB4_9RectArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, !prof !7

.split.i.i221:                                    ; preds = %bb.cj
  %i.ta = add i64 %umax.i.i214, 1
  store i64 %i.ta, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i209, align 8, !alias.scope !3288, !noalias !3289
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i222 unwind label %bb.cl, !noalias !3275

.noexc.i222:                                      ; preds = %.split.i.i221
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array4rectNtB4_9RectArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i: ; preds = %bb.cj
  %i.tb = add i64 %i.sy, %i.sr                    ; 2 uses
  %i.tc = lshr i64 %i.tb, 3
  %i.td = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.tc
  %i.te = load i8, ptr %i.td, align 1, !noalias !3290, !noundef !5
  %i.tf = trunc i64 %i.tb to i8
  %i.tg = and i8 %i.tf, 7
  %i.th = xor i8 %i.te, -1
  %i.ti = lshr i8 %i.th, %i.tg
  %i.tj = trunc i8 %i.ti to i1
  br i1 %i.tj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, label %.loopexit.i216

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array4rectNtB4_9RectArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  %exitcond30.not.i.i = icmp eq i64 %i.sz, %i.si
  br i1 %exitcond30.not.i.i, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array4rect9RectArrayEB4_.exit, label %bb.cj

bb.ck:                                            ; preds = %bb.cm, %bb.cl
  %.pn.i220 = phi { ptr, i32 } [ %i.tk, %bb.cl ], [ %.us-phi65.i219, %bb.cm ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array4rect9RectArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(88) %i.at) #26
          to label %.body unwind label %bb.cn, !noalias !3275

bb.cl:                                            ; preds = %.split.i.i221
  %i.tk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

.loopexit.i216:                                   ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array4rectNtB4_9RectArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !3277
  store <2 x ptr> %i.st, ptr %i.as, align 16, !noalias !3277
  store i64 %i.sy, ptr %.sroa.543.0..sroa_idx.i, align 16, !noalias !3277
  invoke fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox8add_rectNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.i unwind label %.split.i217, !noalias !3275

.split.i217:                                      ; preds = %.loopexit.i216
  %i.tl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.cm:                                            ; preds = %.split.i217, %.split.us.i223
  %.us-phi.i218 = phi i64 [ %i.sz, %.split.i217 ], [ %i.sw, %.split.us.i223 ]
  %.us-phi65.i219 = phi { ptr, i32 } [ %i.tl, %.split.i217 ], [ %i.sx, %.split.us.i223 ]
  store i64 %.us-phi.i218, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i209, align 8, !noalias !3277
  br label %bb.ck

_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.i: ; preds = %.loopexit.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !3277
  %i.tm = icmp ult i64 %i.sz, %i.si
  br i1 %i.tm, label %.lr.ph14.i.i213, label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array4rect9RectArrayEB4_.exit

bb.cn:                                            ; preds = %bb.ck
  %i.tn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3275
  unreachable

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array4rect9RectArrayEB4_.exit: ; preds = %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, %_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar4rect4RectEB5_.exit.us.i, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !3277
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.to, ptr noundef nonnull align 16 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !3276
  store i64 0, ptr %0, align 8, !alias.scope !3275, !noalias !3276
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !3277
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.co:                                            ; preds = %bb.j
  %i.tp = extractvalue { ptr, ptr } %i.dt, 0      ; 4 uses
  %i.tq = extractvalue { ptr, ptr } %i.dt, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw)
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 24
  %i.ts = load ptr, ptr %i.tr, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.ts(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.cw, ptr noundef %i.tp)
          to label %bb.cp unwind label %bb.q

bb.cp:                                            ; preds = %bb.co
  %i.tt = load i128, ptr %i.cw, align 16, !noundef !5
  %i.tu = icmp eq i128 %i.tt, -45194147645551803758156574058967886197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cw)
  br i1 %i.tu, label %bb.cq, label %.invoke, !prof !14

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tp) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3291)
  call void @llvm.experimental.noalias.scope.decl(metadata !3292)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.829.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !3293
  store <2 x double> splat (double +inf), ptr %i.ar, align 16, !alias.scope !3294, !noalias !3293
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <2 x double> splat (double -inf), ptr %i.tv, align 16, !alias.scope !3294, !noalias !3293
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %.val.i.i227 = load i64, ptr %i.tw, align 8, !alias.scope !3295, !noalias !3296, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3293
  store i64 -3, ptr %i.aq, align 8, !noalias !3293
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.223.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 56 ; 5 uses
  store i64 -3, ptr %.sroa.223.0..sroa_idx.i, align 8, !noalias !3293
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 64 ; 4 uses
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.aq, i64 112 ; 4 uses
  store ptr %i.tp, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i228, align 8, !noalias !3293
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.aq, i64 120
  store i64 0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i229, align 8, !noalias !3293
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.aq, i64 128
  store i64 %.val.i.i227, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i230, align 8, !noalias !3293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3293
  %.sroa.5.0..sroa_idx.le.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.829.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.829.i, i64 32
  %.sroa.4.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.5.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  br label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.preheader.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.preheader.i: ; preds = %bb.db, %bb.cq
  call void @llvm.experimental.noalias.scope.decl(metadata !3297)
  br label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.preheader.i
  invoke fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1z_6trait_21GeoArrowArrayAccessor4iter0ENtNtNtB9_6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i228)
          to label %.noexc.i236 unwind label %.loopexit.i233, !noalias !3291

.noexc.i236:                                      ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %.pr.i.i = load i64, ptr %i.am, align 8, !noalias !3298 ; 3 uses
  switch i64 %.pr.i.i, label %bb.cs [
    i64 -3, label %.loopexit32.i
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i: ; preds = %.noexc.i236
  %i.tx = load ptr, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i228, align 8, !alias.scope !3299, !noalias !3300, !noundef !5
  %.not.i.i.i = icmp eq ptr %i.tx, null
  br i1 %.not.i.i.i, label %.loopexit32.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i

bb.cr:                                            ; preds = %bb.da, %.loopexit.split-lp.i237, %.loopexit.i233
  %.pn.i235 = phi { ptr, i32 } [ %i.uf, %bb.da ], [ %lpad.loopexit.i234, %.loopexit.i233 ], [ %lpad.loopexit.split-lp.i238, %.loopexit.split-lp.i237 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.aq) #26
          to label %.body unwind label %bb.di, !noalias !3291

.loopexit.i233:                                   ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %lpad.loopexit.i234 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp.i237:                          ; preds = %bb.cy
  %lpad.loopexit.split-lp.i238 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cs:                                            ; preds = %.noexc.i236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.829.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx.le.i.i, i64 48, i1 false), !noalias !3293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3293
  %i.ty = icmp eq i64 %.pr.i.i, -1
  br i1 %i.ty, label %bb.cy, label %bb.cz

.loopexit32.i:                                    ; preds = %bb.db, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit6.i.i, %.noexc.i236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3293
  call void @llvm.experimental.noalias.scope.decl(metadata !3301)
  call void @llvm.experimental.noalias.scope.decl(metadata !3302)
  %i.tz = load i64, ptr %i.aq, align 8, !range !22, !alias.scope !3303, !noalias !3293, !noundef !5
  %cond.i.i.i.i = icmp eq i64 %i.tz, -1
  br i1 %cond.i.i.i.i, label %bb.ct, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEEECscSToqyP0NyK_9lance_geo.exit.i.i.i

bb.ct:                                            ; preds = %.loopexit32.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEEECscSToqyP0NyK_9lance_geo.exit.i.i.i unwind label %bb.cu, !noalias !3291

bb.cu:                                            ; preds = %bb.ct
  %i.ua = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ub = load i64, ptr %.sroa.223.0..sroa_idx.i, align 8, !range !22, !alias.scope !3304, !noalias !3293, !noundef !5
  %cond.i1.i.i.i = icmp eq i64 %i.ub, -1
  br i1 %cond.i1.i.i.i, label %bb.cv, label %.body

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.sroa.3.0..sroa_idx.i)
          to label %.body unwind label %bb.cx, !noalias !3291

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEEECscSToqyP0NyK_9lance_geo.exit.i.i.i: ; preds = %bb.ct, %.loopexit32.i
  %i.uc = load i64, ptr %.sroa.223.0..sroa_idx.i, align 8, !range !22, !alias.scope !3305, !noalias !3293, !noundef !5
  %cond.i4.i.i.i = icmp eq i64 %i.uc, -1
  br i1 %cond.i4.i.i.i, label %bb.cw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8geometry13GeometryArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo.exit.i

bb.cw:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtBE_8IntoIterINtNtB4_6result6ResultNtNtNtCsfC1H8tYQGpK_14geoarrow_array6scalar8geometry8GeometryNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEEECscSToqyP0NyK_9lance_geo.exit.i.i.i
end_hunk_2
begin_hunk_3_@_RNvNtCscSToqyP0NyK_9lance_geo4bbox12total_bounds:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3339)
  call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.828.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !3341
  store <2 x double> splat (double +inf), ptr %i.z, align 16, !alias.scope !3342, !noalias !3341
  %i.wc = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> splat (double -inf), ptr %i.wc, align 16, !alias.scope !3342, !noalias !3341
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vw, i64 40
  %.val.i.i289 = load i64, ptr %i.wd, align 8, !alias.scope !3343, !noalias !3344, !noundef !5
  %i.we = lshr i64 %.val.i.i289, 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !3341
  store i64 -3, ptr %i.y, align 8, !noalias !3341
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  store i64 -3, ptr %.sroa.218.0..sroa_idx.i, align 8, !noalias !3341
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i290 = getelementptr inbounds nuw i8, ptr %i.y, i64 112
  store ptr %i.vw, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i290, align 8, !noalias !3341
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i291 = getelementptr inbounds nuw i8, ptr %i.y, i64 120 ; 6 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i292 = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  store i64 %i.we, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i292, align 8, !noalias !3341
  %i.wf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3341
  %exitcond.not.i4268.i293 = icmp eq i64 %i.we, 0
  br i1 %exitcond.not.i4268.i293, label %.noexc16._crit_edge.i, label %.lr.ph.lr.ph.i294

.lr.ph.lr.ph.i294:                                ; preds = %bb.eh
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vw, i64 88
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vw, i64 72
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vw, i64 96
  %i.wj = getelementptr inbounds nuw i8, ptr %i.vw, i64 64
  %i.wk = load ptr, ptr %i.wj, align 8, !alias.scope !3345, !noalias !3346, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.wk, null
  %i.wl = load i64, ptr %i.wi, align 8, !alias.scope !3340, !noalias !3339
  %i.wm = load ptr, ptr %i.wh, align 8, !alias.scope !3340, !noalias !3339
  %i.wn = load i64, ptr %i.wg, align 8, !alias.scope !3340, !noalias !3339
  %.sroa.828.40..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.828.i, i64 32
  %.sroa.4.0..sroa_idx.i295 = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.5.0..sroa_idx.i296 = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  br label %.lr.ph.i297

.lr.ph.i297:                                      ; preds = %.lr.ph.i.i319, %.lr.ph.lr.ph.i294
  %umax.i71.i298 = phi i64 [ %i.we, %.lr.ph.lr.ph.i294 ], [ %umax.i.i320, %.lr.ph.i.i319 ] ; 4 uses
  %.us-phi545869.i299 = phi i64 [ 0, %.lr.ph.lr.ph.i294 ], [ %.us-phi54.i315, %.lr.ph.i.i319 ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i, label %.lr.ph.split.preheader.i300

.lr.ph.split.preheader.i300:                      ; preds = %.lr.ph.i297
  %umax.i301 = call i64 @llvm.umax.i64(i64 %.us-phi545869.i299, i64 %i.wl)
  br label %.lr.ph.split.i302

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i: ; preds = %.lr.ph.i297, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i
  %i.wo = phi i64 [ %i.wp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i ], [ %.us-phi545869.i299, %.lr.ph.i297 ] ; 2 uses
  %i.wp = add i64 %i.wo, 1                        ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3347)
  call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_viewNtB5_12WkbViewArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.vw, i64 noundef %i.wo)
          to label %.noexc16.us.i unwind label %.loopexit.split.us.i326, !noalias !3339

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i: ; preds = %.noexc16.us.i
  %exitcond.not.i.us.i328 = icmp eq i64 %i.wp, %umax.i71.i298
  br i1 %exitcond.not.i.us.i328, label %.noexc16._crit_edge.i, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i

.noexc16.us.i:                                    ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %.sroa.0.0.copyload4.pr.i.us.i = load i64, ptr %i.u, align 8, !noalias !3350 ; 2 uses
  switch i64 %.sroa.0.0.copyload4.pr.i.us.i, label %.split.us.i314 [
    i64 -3, label %.noexc16._crit_edge.i
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i
  ]

.loopexit.split.us.i326:                          ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %lpad.loopexit.us.i327 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i306

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i312: ; preds = %.noexc16.i311, %.thread.i324
  %exitcond.not.i.i313 = icmp eq i64 %i.wr, %umax.i71.i298
  br i1 %exitcond.not.i.i313, label %.noexc16._crit_edge.i, label %.lr.ph.split.i302

.lr.ph.split.i302:                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i312, %.lr.ph.split.preheader.i300
  %i.wq = phi i64 [ %i.wr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i312 ], [ %.us-phi545869.i299, %.lr.ph.split.preheader.i300 ] ; 4 uses
  %i.wr = add i64 %i.wq, 1                        ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3347)
  call void @llvm.experimental.noalias.scope.decl(metadata !3348)
  call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  %exitcond.not.i303 = icmp eq i64 %i.wq, %umax.i301
  br i1 %exitcond.not.i303, label %bb.ei, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_viewNtB4_12WkbViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, !prof !7

bb.ei:                                            ; preds = %.lr.ph.split.i302
  store i64 %i.wr, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i291, align 8, !noalias !3341
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i325 unwind label %.loopexit.split-lp.loopexit.split-lp.i322, !noalias !3339

.noexc.i325:                                      ; preds = %bb.ei
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_viewNtB4_12WkbViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i: ; preds = %.lr.ph.split.i302
  %i.ws = add i64 %i.wq, %i.wn                    ; 2 uses
  %i.wt = lshr i64 %i.ws, 3
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wm, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !noalias !3351, !noundef !5
  %i.ww = trunc i64 %i.ws to i8
  %i.wx = and i8 %i.ww, 7
  %i.wy = xor i8 %i.wv, -1
  %i.wz = lshr i8 %i.wy, %i.wx
  %i.xa = trunc i8 %i.wz to i1
  br i1 %i.xa, label %.thread.i324, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i

.thread.i324:                                     ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_viewNtB4_12WkbViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  store i64 -2, ptr %i.u, align 8, !noalias !3350
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i312

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_viewNtB4_12WkbViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_viewNtB5_12WkbViewArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.vw, i64 noundef %i.wq)
          to label %.noexc16.i311 unwind label %.loopexit.split.i304, !noalias !3339

.noexc16.i311:                                    ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %.sroa.0.0.copyload4.pr.i.i = load i64, ptr %i.u, align 8, !noalias !3350 ; 2 uses
  switch i64 %.sroa.0.0.copyload4.pr.i.i, label %.split.us.i314 [
    i64 -3, label %.noexc16._crit_edge.i
    i64 -2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i312
  ]

.loopexit.split-lp.i309:                          ; preds = %bb.el, %.loopexit.split-lp.loopexit.split-lp.i322, %.loopexit.split-lp.loopexit.i317, %.loopexit.i306
  %.pn.i310 = phi { ptr, i32 } [ %i.xe, %bb.el ], [ %.us-phi51.i308, %.loopexit.i306 ], [ %lpad.loopexit32.i318, %.loopexit.split-lp.loopexit.i317 ], [ %lpad.loopexit.split-lp33.i323, %.loopexit.split-lp.loopexit.split-lp.i322 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.y) #26
          to label %.body unwind label %bb.en, !noalias !3339

.loopexit.split.i304:                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %lpad.loopexit.i305 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i306

.loopexit.i306:                                   ; preds = %.loopexit.split.i304, %.loopexit.split.us.i326
  %.us-phi50.i307 = phi i64 [ %i.wr, %.loopexit.split.i304 ], [ %i.wp, %.loopexit.split.us.i326 ]
  %.us-phi51.i308 = phi { ptr, i32 } [ %lpad.loopexit.i305, %.loopexit.split.i304 ], [ %lpad.loopexit.us.i327, %.loopexit.split.us.i326 ]
  store i64 %.us-phi50.i307, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i291, align 8, !noalias !3341
  br label %.loopexit.split-lp.i309

.loopexit.split-lp.loopexit.i317:                 ; preds = %bb.em
  %lpad.loopexit32.i318 = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi54.i315, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i291, align 8, !noalias !3341
  br label %.loopexit.split-lp.i309

.loopexit.split-lp.loopexit.split-lp.i322:        ; preds = %bb.ej, %bb.ei
  %lpad.loopexit.split-lp33.i323 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i309

.split.us.i314:                                   ; preds = %.noexc16.i311, %.noexc16.us.i
  %.us-phi54.i315 = phi i64 [ %i.wp, %.noexc16.us.i ], [ %i.wr, %.noexc16.i311 ] ; 7 uses
  %.us-phi55.i316 = phi i64 [ %.sroa.0.0.copyload4.pr.i.us.i, %.noexc16.us.i ], [ %.sroa.0.0.copyload4.pr.i.i, %.noexc16.i311 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.828.i, ptr noundef nonnull align 8 dereferenceable(48) %i.wf, i64 48, i1 false), !noalias !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3341
  %i.xb = icmp eq i64 %.us-phi55.i316, -1
  br i1 %i.xb, label %bb.ej, label %bb.ek

.noexc16._crit_edge.i:                            ; preds = %.lr.ph.i.i319, %.noexc16.i311, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i312, %.noexc16.us.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i, %bb.eh
  %i.xc = phi i64 [ 0, %bb.eh ], [ %i.wp, %.noexc16.us.i ], [ %i.wr, %.noexc16.i311 ], [ %umax.i71.i298, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i ], [ %umax.i71.i298, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i312 ], [ %.us-phi54.i315, %.lr.ph.i.i319 ]
  store i64 %i.xc, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i291, align 8, !noalias !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !3341
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.y)
          to label %.noexc329 unwind label %bb.q

.noexc329:                                        ; preds = %.noexc16._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3341
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xd, ptr noundef nonnull align 16 dereferenceable(32) %i.z, i64 32, i1 false), !noalias !3340
  store i64 0, ptr %0, align 8, !alias.scope !3339, !noalias !3340
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayEB4_.exit

bb.ej:                                            ; preds = %.split.us.i314
  store i64 %.us-phi54.i315, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i291, align 8, !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.828.i, i64 32, i1 false), !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3341
  invoke void @_RNvXNtCs84Wnv3hhsUu_15geoarrow_schema5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB2_13GeoArrowErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.w)
          to label %bb.eo unwind label %.loopexit.split-lp.loopexit.split-lp.i322, !noalias !3339

bb.ek:                                            ; preds = %.split.us.i314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i296, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.828.40..sroa_idx.i, i64 16, i1 false), !noalias !3341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i295, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.828.i, i64 32, i1 false), !noalias !3341
  store i64 %.us-phi55.i316, ptr %i.x, align 8, !noalias !3341
  invoke fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbEB5_(ptr noalias noundef align 8 dereferenceable(32) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.x)
          to label %bb.em unwind label %bb.el, !noalias !3339

bb.el:                                            ; preds = %bb.ek
  %i.xe = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi54.i315, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i291, align 8, !noalias !3341
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.x) #26
          to label %.loopexit.split-lp.i309 unwind label %bb.en, !noalias !3339

bb.em:                                            ; preds = %bb.ek
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs4ZmMtVwXPTx_3wkb6reader8geometry3WkbECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.x)
          to label %.lr.ph.i.i319 unwind label %.loopexit.split-lp.loopexit.i317, !noalias !3339

.lr.ph.i.i319:                                    ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3341
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3341
  %umax.i.i320 = call i64 @llvm.umax.i64(i64 %i.we, i64 %.us-phi54.i315)
  %exitcond.not.i42.not.i321 = icmp ult i64 %.us-phi54.i315, %i.we
  br i1 %exitcond.not.i42.not.i321, label %.lr.ph.i297, label %.noexc16._crit_edge.i

bb.en:                                            ; preds = %bb.el, %.loopexit.split-lp.i309
  %i.xf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3339
  unreachable

bb.eo:                                            ; preds = %bb.ej
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.xg, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false), !noalias !3340
  store i64 1, ptr %0, align 8, !alias.scope !3339, !noalias !3340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3341
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.y)
          to label %.noexc330 unwind label %bb.q

.noexc330:                                        ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !3341
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayEB4_.exit

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkb_view12WkbViewArrayEB4_.exit: ; preds = %.noexc329, %.noexc330
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !3341
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828.i)
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.ep:                                            ; preds = %bb.n
  %i.xh = extractvalue { ptr, ptr } %i.dx, 0      ; 10 uses
  %i.xi = extractvalue { ptr, ptr } %i.dx, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dc)
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xk = load ptr, ptr %i.xj, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.xk(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.dc, ptr noundef %i.xh)
          to label %bb.eq unwind label %bb.q

bb.eq:                                            ; preds = %bb.ep
  %i.xl = load i128, ptr %i.dc, align 16, !noundef !5
  %i.xm = icmp eq i128 %i.xl, -161237112518245940800872970906070809239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dc)
  br i1 %i.xm, label %bb.er, label %.invoke, !prof !14

bb.er:                                            ; preds = %bb.eq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xh) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3352)
  call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3354
  store <2 x double> splat (double +inf), ptr %i.t, align 16, !alias.scope !3355, !noalias !3354
  %i.xn = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> splat (double -inf), ptr %i.xn, align 16, !alias.scope !3355, !noalias !3354
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xh, i64 40
  %.val.i.i333 = load i64, ptr %i.xo, align 8, !alias.scope !3356, !noalias !3357, !noundef !5
  %i.xp = lshr i64 %.val.i.i333, 2                ; 2 uses
  %i.xq = add nsw i64 %i.xp, -1                   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !3354
  store i64 -4, ptr %i.s, align 8, !noalias !3354
  %.sroa.223.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  store i64 -4, ptr %.sroa.223.0..sroa_idx.i334, align 8, !noalias !3354
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i335 = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  store ptr %i.xh, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i335, align 8, !noalias !3354
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.s, i64 120 ; 5 uses
  store i64 0, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i336, align 8, !noalias !3354
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i337 = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  store i64 %i.xq, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i337, align 8, !noalias !3354
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %.not.i338 = icmp eq i64 %i.xq, 0
  br i1 %.not.i338, label %.noexc.thread.i, label %.lr.ph.lr.ph.i339

.lr.ph.lr.ph.i339:                                ; preds = %bb.er
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xh, i64 72
  %i.xs = load ptr, ptr %i.xr, align 8, !alias.scope !3358, !noalias !3359, !noundef !5
  %.not.i.i.i.i.i.i.i340 = icmp eq ptr %i.xs, null
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xh, i64 104
  %i.xu = load i64, ptr %i.xt, align 8, !alias.scope !3353, !noalias !3352
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xh, i64 80
  %i.xw = load ptr, ptr %i.xv, align 8, !alias.scope !3353, !noalias !3352
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xh, i64 96
  %i.xy = load i64, ptr %i.xx, align 8, !alias.scope !3353, !noalias !3352
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xh, i64 32
  %i.ya = load ptr, ptr %i.xz, align 8, !alias.scope !3353, !noalias !3352 ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xh, i64 56
  %i.yc = load ptr, ptr %i.yb, align 8, !alias.scope !3353, !noalias !3352
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.yd = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.8.0..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.9.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.4.0..sroa_idx.i341 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.5.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  br label %.lr.ph.i343

.lr.ph.i343:                                      ; preds = %bb.ez, %.lr.ph.lr.ph.i339
  %i.yf = phi i64 [ 0, %.lr.ph.lr.ph.i339 ], [ %.us-phi.i348, %bb.ez ] ; 5 uses
  br i1 %.not.i.i.i.i.i.i.i340, label %.lr.ph.split.us.i, label %.lr.ph.split.preheader.i344

.lr.ph.split.preheader.i344:                      ; preds = %.lr.ph.i343
  %umax.i345 = call i64 @llvm.umax.i64(i64 %i.yf, i64 %i.xu) ; 2 uses
  br label %.lr.ph.split.i346

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i343
  call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  %i.yg = add nuw nsw i64 %i.yf, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3361)
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  call void @llvm.experimental.noalias.scope.decl(metadata !3363)
  br label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i: ; preds = %.noexc.thread65.i
  %i.yh = add nuw nsw i64 %i.yf, 1
  %umax120.le.i = call i64 @llvm.umax.i64(i64 %i.xq, i64 %i.yh)
  br label %.noexc.thread.i.sink.split

.noexc.thread.i.sink.split:                       ; preds = %bb.ez, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i
  %umax120.le.i.sink = phi i64 [ %umax120.le.i, %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i ], [ %.us-phi.i348, %bb.ez ]
  store i64 %umax120.le.i.sink, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i336, align 8, !noalias !3354
  br label %.noexc.thread.i

.noexc.thread.i:                                  ; preds = %.noexc.thread.i.sink.split, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylENtNtB2b_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.s)
          to label %.noexc359 unwind label %bb.q

.noexc359:                                        ; preds = %.noexc.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !3354
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.yi, ptr noundef nonnull align 16 dereferenceable(32) %i.t, i64 32, i1 false), !noalias !3353
  store i64 0, ptr %0, align 8, !alias.scope !3352, !noalias !3353
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylEEB4_.exit

.lr.ph.split.i346:                                ; preds = %.noexc.thread65.i, %.lr.ph.split.preheader.i344
  %i.yj = phi i64 [ %i.yk, %.noexc.thread65.i ], [ %i.yf, %.lr.ph.split.preheader.i344 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3360)
  %i.yk = add nuw i64 %i.yj, 1                    ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3361)
  call void @llvm.experimental.noalias.scope.decl(metadata !3362)
  call void @llvm.experimental.noalias.scope.decl(metadata !3363)
  %exitcond.not.i347 = icmp eq i64 %i.yj, %umax.i345
  br i1 %exitcond.not.i347, label %bb.es, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i, !prof !7

bb.es:                                            ; preds = %.lr.ph.split.i346
  %i.yl = add nuw i64 %umax.i345, 1
  store i64 %i.yl, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i336, align 8, !alias.scope !3364, !noalias !3365
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc19.i358 unwind label %.loopexit.split-lp.i353, !noalias !3352

.noexc19.i358:                                    ; preds = %bb.es
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i: ; preds = %.lr.ph.split.i346
  %i.ym = add i64 %i.yj, %i.xy                    ; 2 uses
  %i.yn = lshr i64 %i.ym, 3
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !noalias !3366, !noundef !5
  %i.yq = trunc i64 %i.ym to i8
  %i.yr = and i8 %i.yq, 7
  %i.ys = xor i8 %i.yp, -1
  %i.yt = lshr i8 %i.ys, %i.yr
  %i.yu = trunc i8 %i.yt to i1
  br i1 %i.yu, label %.noexc.thread65.i, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i

.noexc.thread65.i:                                ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i.i.i.i, i64 16, i1 false), !noalias !3367
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %i.yv = icmp ult i64 %i.yk, %i.xq
  br i1 %i.yv, label %.lr.ph.split.i346, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkt15GenericWktArraylENtNtB1S_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i..noexc.thread_crit_edge.i

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i, %.lr.ph.split.us.i
  %.us-phi.i348 = phi i64 [ %i.yg, %.lr.ph.split.us.i ], [ %i.yk, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i ] ; 7 uses
  %.us-phi106.i = phi i64 [ %i.yf, %.lr.ph.split.us.i ], [ %i.yj, %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i.i.i ]
  %i.yw = icmp ult i64 %.us-phi.i348, %i.xp
  call void @llvm.assume(i1 %i.yw)
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.us-phi.i348
  %i.yy = load i32, ptr %i.yx, align 4, !noalias !3368, !noundef !5
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %i.ya, i64 %.us-phi106.i
  %i.za = load i32, ptr %i.yz, align 4, !noalias !3368, !noundef !5 ; 2 uses
  %i.zb = sext i32 %i.za to i64
  %i.zc = getelementptr inbounds i8, ptr %i.yc, i64 %i.zb ; 2 uses
  %i.zd = sub i32 %i.yy, %i.za                    ; 2 uses
  %i.ze = icmp sgt i32 %i.zd, -1
  %i.zf = zext nneg i32 %i.zd to i64
  call void @llvm.assume(i1 %i.ze)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3369
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.zf
  store ptr %i.zc, ptr %i.n, align 8, !noalias !3369
  store ptr %i.zg, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3369
  store i32 -2, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3369
  invoke fastcc void @_RNvMs3_CsdkROKCKhesT_3wktNtB5_3Wkt11from_tokensCscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.o, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %i.n)
          to label %.noexc20.i351 unwind label %.loopexit.i349, !noalias !3352

.noexc20.i351:                                    ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wktINtB4_15GenericWktArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i.i.i
end_hunk_3
begin_hunk_4_@_RNvNtCscSToqyP0NyK_9lance_geo4bbox12total_bounds:bb.a
.invoke:                                          ; preds = %bb.fq, %bb.fd, %bb.eq, %bb.eg, %bb.dv, %bb.dk, %bb.cp, %bb.ch, %bb.by, %bb.bp, %bb.bf, %bb.av, %bb.al, %bb.ac, %bb.s
  %i.acf = phi ptr [ @48, %bb.fd ], [ @48, %bb.eq ], [ @47, %bb.eg ], [ @46, %bb.dv ], [ @46, %bb.dk ], [ @45, %bb.cp ], [ @44, %bb.ch ], [ @43, %bb.by ], [ @42, %bb.bp ], [ @41, %bb.bf ], [ @40, %bb.av ], [ @39, %bb.al ], [ @38, %bb.ac ], [ @37, %bb.s ], [ @49, %bb.fq ]
  invoke void @_RNvNtCscI6d9CVNmLh_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.acf) #25
          to label %.cont unwind label %bb.q

.cont:                                            ; preds = %.invoke
  unreachable

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.abz) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !3396)
  call void @llvm.experimental.noalias.scope.decl(metadata !3397)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.828.i418)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3398
  store <2 x double> splat (double +inf), ptr %i.f, align 16, !alias.scope !3399, !noalias !3398
  %i.acg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x double> splat (double -inf), ptr %i.acg, align 16, !alias.scope !3399, !noalias !3398
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abz, i64 40
  %.val.i.i419 = load i64, ptr %i.ach, align 8, !alias.scope !3400, !noalias !3401, !noundef !5
  %i.aci = lshr i64 %.val.i.i419, 4               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3398
  store i64 -4, ptr %i.e, align 8, !noalias !3398
  %.sroa.218.0..sroa_idx.i420 = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 -4, ptr %.sroa.218.0..sroa_idx.i420, align 8, !noalias !3398
  %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i421 = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr %i.abz, ptr %.sroa.3.sroa.1.0..sroa.3.0..sroa_idx.sroa_idx.i421, align 8, !noalias !3398
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i422 = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 5 uses
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i423 = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i64 %i.aci, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i423, align 8, !noalias !3398
  %i.acj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3398
  %exitcond.not.i4267.i = icmp eq i64 %i.aci, 0
  br i1 %exitcond.not.i4267.i, label %.noexc16._crit_edge.i444, label %.lr.ph.lr.ph.i424

.lr.ph.lr.ph.i424:                                ; preds = %bb.fr
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abz, i64 88
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abz, i64 72
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abz, i64 96
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abz, i64 64
  %i.aco = load ptr, ptr %i.acn, align 8, !alias.scope !3402, !noalias !3403, !noundef !5
  %.not.i.i.i.i.i.i.i.i.i425 = icmp eq ptr %i.aco, null
  %i.acp = load i64, ptr %i.acm, align 8, !alias.scope !3397, !noalias !3396
  %i.acq = load ptr, ptr %i.acl, align 8, !alias.scope !3397, !noalias !3396
  %i.acr = load i64, ptr %i.ack, align 8, !alias.scope !3397, !noalias !3396
  %.sroa.828.40..sroa_idx.i426 = getelementptr inbounds nuw i8, ptr %.sroa.828.i418, i64 32
  %.sroa.4.0..sroa_idx.i427 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i428 = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  br label %.lr.ph.i429

.lr.ph.i429:                                      ; preds = %.lr.ph.i.i450, %.lr.ph.lr.ph.i424
  %umax.i70.i = phi i64 [ %i.aci, %.lr.ph.lr.ph.i424 ], [ %umax.i.i451, %.lr.ph.i.i450 ] ; 4 uses
  %.us-phi545868.i = phi i64 [ 0, %.lr.ph.lr.ph.i424 ], [ %.us-phi54.i446, %.lr.ph.i.i450 ] ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i425, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i, label %.lr.ph.split.preheader.i430

.lr.ph.split.preheader.i430:                      ; preds = %.lr.ph.i429
  %umax.i431 = call i64 @llvm.umax.i64(i64 %.us-phi545868.i, i64 %i.acp)
  br label %.lr.ph.split.i432

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i: ; preds = %.lr.ph.i429, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i
  %i.acs = phi i64 [ %i.act, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i ], [ %.us-phi545868.i, %.lr.ph.i429 ] ; 2 uses
  %i.act = add i64 %i.acs, 1                      ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3404)
  call void @llvm.experimental.noalias.scope.decl(metadata !3405)
  call void @llvm.experimental.noalias.scope.decl(metadata !3406)
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_viewNtB5_12WktViewArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abz, i64 noundef %i.acs)
          to label %.noexc16.us.i459 unwind label %.loopexit.split.us.i457, !noalias !3396

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i: ; preds = %.noexc16.us.i459
  %exitcond.not.i.us.i461 = icmp eq i64 %i.act, %umax.i70.i
  br i1 %exitcond.not.i.us.i461, label %.noexc16._crit_edge.i444, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i

.noexc16.us.i459:                                 ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %.sroa.0.0.copyload4.pr.i.us.i460 = load i64, ptr %i.a, align 8, !noalias !3407 ; 2 uses
  switch i64 %.sroa.0.0.copyload4.pr.i.us.i460, label %.split.us.i445 [
    i64 -4, label %.noexc16._crit_edge.i444
    i64 -3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i
  ]

.loopexit.split.us.i457:                          ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.us.i
  %lpad.loopexit.us.i458 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i436

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i: ; preds = %.noexc16.i441, %.thread.i455
  %exitcond.not.i.i443 = icmp eq i64 %i.acv, %umax.i70.i
  br i1 %exitcond.not.i.i443, label %.noexc16._crit_edge.i444, label %.lr.ph.split.i432

.lr.ph.split.i432:                                ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i, %.lr.ph.split.preheader.i430
  %i.acu = phi i64 [ %i.acv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i ], [ %.us-phi545868.i, %.lr.ph.split.preheader.i430 ] ; 4 uses
  %i.acv = add i64 %i.acu, 1                      ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3404)
  call void @llvm.experimental.noalias.scope.decl(metadata !3405)
  call void @llvm.experimental.noalias.scope.decl(metadata !3406)
  %exitcond.not.i433 = icmp eq i64 %i.acu, %umax.i431
  br i1 %exitcond.not.i433, label %bb.fs, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_viewNtB4_12WktViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i, !prof !7

bb.fs:                                            ; preds = %.lr.ph.split.i432
  store i64 %i.acv, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i422, align 8, !noalias !3398
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25
          to label %.noexc.i456 unwind label %.loopexit.split-lp.loopexit.split-lp.i453, !noalias !3396

.noexc.i456:                                      ; preds = %bb.fs
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_viewNtB4_12WktViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i: ; preds = %.lr.ph.split.i432
  %i.acw = add i64 %i.acu, %i.acr                 ; 2 uses
  %i.acx = lshr i64 %i.acw, 3
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acq, i64 %i.acx
  %i.acz = load i8, ptr %i.acy, align 1, !noalias !3408, !noundef !5
  %i.ada = trunc i64 %i.acw to i8
  %i.adb = and i8 %i.ada, 7
  %i.adc = xor i8 %i.acz, -1
  %i.add = lshr i8 %i.adc, %i.adb
  %i.ade = trunc i8 %i.add to i1
  br i1 %i.ade, label %.thread.i455, label %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i

.thread.i455:                                     ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_viewNtB4_12WktViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  store i64 -3, ptr %i.a, align 8, !noalias !3407
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i

_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_viewNtB4_12WktViewArrayNtNtB8_6trait_13GeoArrowArray7is_null.exit.i.i.i.i.i.i
  invoke void @_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_viewNtB5_12WktViewArrayNtNtB9_6trait_21GeoArrowArrayAccessor15value_unchecked(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.abz, i64 noundef %i.acu)
          to label %.noexc16.i441 unwind label %.loopexit.split.i434, !noalias !3396

.noexc16.i441:                                    ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %.sroa.0.0.copyload4.pr.i.i442 = load i64, ptr %i.a, align 8, !noalias !3407 ; 2 uses
  switch i64 %.sroa.0.0.copyload4.pr.i.i442, label %.split.us.i445 [
    i64 -4, label %.noexc16._crit_edge.i444
    i64 -3, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i
  ]

.loopexit.split.i434:                             ; preds = %_RNvXs9_NtNtNtCscI6d9CVNmLh_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB1R_6trait_21GeoArrowArrayAccessor4iter0EEINtB5_8FuseImplBY_E4nextCscSToqyP0NyK_9lance_geo.exit.i.i
  %lpad.loopexit.i435 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i436

.loopexit.i436:                                   ; preds = %.loopexit.split.i434, %.loopexit.split.us.i457
  %.us-phi50.i437 = phi i64 [ %i.acv, %.loopexit.split.i434 ], [ %i.act, %.loopexit.split.us.i457 ]
  %.us-phi51.i438 = phi { ptr, i32 } [ %lpad.loopexit.i435, %.loopexit.split.i434 ], [ %lpad.loopexit.us.i458, %.loopexit.split.us.i457 ]
  store i64 %.us-phi50.i437, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i422, align 8, !noalias !3398
  br label %.loopexit.split-lp.i439

.loopexit.split-lp.loopexit.i448:                 ; preds = %bb.fu
  %lpad.loopexit32.i449 = landingpad { ptr, i32 }
          cleanup
  store i64 %.us-phi54.i446, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i422, align 8, !noalias !3398
  br label %.loopexit.split-lp.i439

.loopexit.split-lp.loopexit.split-lp.i453:        ; preds = %bb.ft, %bb.fs
  %lpad.loopexit.split-lp33.i454 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i439

.loopexit.split-lp.i439:                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i453, %.loopexit.split-lp.loopexit.i448, %.loopexit.i436
  %lpad.phi.i440 = phi { ptr, i32 } [ %.us-phi51.i438, %.loopexit.i436 ], [ %lpad.loopexit32.i449, %.loopexit.split-lp.loopexit.i448 ], [ %lpad.loopexit.split-lp33.i454, %.loopexit.split-lp.loopexit.split-lp.i453 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.e) #26
          to label %.body unwind label %bb.fv, !noalias !3396

.split.us.i445:                                   ; preds = %.noexc16.i441, %.noexc16.us.i459
  %.us-phi54.i446 = phi i64 [ %i.act, %.noexc16.us.i459 ], [ %i.acv, %.noexc16.i441 ] ; 6 uses
  %.us-phi55.i447 = phi i64 [ %.sroa.0.0.copyload4.pr.i.us.i460, %.noexc16.us.i459 ], [ %.sroa.0.0.copyload4.pr.i.i442, %.noexc16.i441 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.828.i418, ptr noundef nonnull align 8 dereferenceable(48) %i.acj, i64 48, i1 false), !noalias !3398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3398
  %i.adf = icmp eq i64 %.us-phi55.i447, -2
  br i1 %i.adf, label %bb.ft, label %bb.fu

.noexc16._crit_edge.i444:                         ; preds = %.lr.ph.i.i450, %.noexc16.i441, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i, %.noexc16.us.i459, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i, %bb.fr
  %i.adg = phi i64 [ 0, %bb.fr ], [ %i.act, %.noexc16.us.i459 ], [ %i.acv, %.noexc16.i441 ], [ %umax.i70.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.us.i ], [ %umax.i70.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtCsdkROKCKhesT_3wkt3WktNtNtCs84Wnv3hhsUu_15geoarrow_schema5error13GeoArrowErrorEEECscSToqyP0NyK_9lance_geo.exit3.i.i ], [ %.us-phi54.i446, %.lr.ph.i.i450 ]
  store i64 %i.adg, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i422, align 8, !noalias !3398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3398
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.e)
          to label %.noexc462 unwind label %bb.q

.noexc462:                                        ; preds = %.noexc16._crit_edge.i444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3398
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adh, ptr noundef nonnull align 16 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !3397
  store i64 0, ptr %0, align 8, !alias.scope !3396, !noalias !3397
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayEB4_.exit

bb.ft:                                            ; preds = %.split.us.i445
  store i64 %.us-phi54.i446, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i422, align 8, !noalias !3398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.828.i418, i64 32, i1 false), !noalias !3398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3398
  invoke void @_RNvXNtCs84Wnv3hhsUu_15geoarrow_schema5errorNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorINtNtCscI6d9CVNmLh_4core7convert4FromNtB2_13GeoArrowErrorE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.fw unwind label %.loopexit.split-lp.loopexit.split-lp.i453, !noalias !3396

bb.fu:                                            ; preds = %.split.us.i445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i428, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.828.40..sroa_idx.i426, i64 16, i1 false), !noalias !3398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i427, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.828.i418, i64 32, i1 false), !noalias !3398
  store i64 %.us-phi55.i447, ptr %i.d, align 8, !noalias !3398
  call fastcc void @_RINvMNtCscSToqyP0NyK_9lance_geo4bboxNtB3_11BoundingBox12add_geometryNtCsdkROKCKhesT_3wkt3WktEB5_(ptr noalias noundef align 8 dereferenceable(32) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.d), !noalias !3396
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsdkROKCKhesT_3wkt3WktECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(56) %i.d)
          to label %.lr.ph.i.i450 unwind label %.loopexit.split-lp.loopexit.i448, !noalias !3396

.lr.ph.i.i450:                                    ; preds = %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3398
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3398
  %umax.i.i451 = call i64 @llvm.umax.i64(i64 %i.aci, i64 %.us-phi54.i446)
  %exitcond.not.i42.not.i452 = icmp ult i64 %.us-phi54.i446, %i.aci
  br i1 %exitcond.not.i42.not.i452, label %.lr.ph.i429, label %.noexc16._crit_edge.i444

bb.fv:                                            ; preds = %.loopexit.split-lp.i439
  %i.adi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3396
  unreachable

bb.fw:                                            ; preds = %bb.ft
  %i.adj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.adj, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !3397
  store i64 1, ptr %0, align 8, !alias.scope !3396, !noalias !3397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3398
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtBG_3map3MapINtNtNtB4_3ops5range5RangejENCNvYNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayNtNtB2a_6trait_21GeoArrowArrayAccessor4iter0EEECscSToqyP0NyK_9lance_geo(ptr noalias noundef align 8 dereferenceable(136) %i.e)
          to label %.noexc463 unwind label %bb.q

.noexc463:                                        ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3398
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayEB4_.exit

_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array8wkt_view12WktViewArrayEB4_.exit: ; preds = %.noexc462, %.noexc463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3398
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.828.i418)
  br label %_RINvNtCscSToqyP0NyK_9lance_geo4bbox17impl_total_boundsNtNtNtCsfC1H8tYQGpK_14geoarrow_array5array10linestring15LineStringArrayEB4_.exit

bb.fx:                                            ; preds = %.body
  %i.adk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.fy:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCscSToqyP0NyK_9lance_geo4bboxs_1__NtB7_11BoundingBoxNtNtCskpEw9nXJLNc_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB11_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3ops5range5RangejENCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkb15GenericWkbArraylENtNtB1A_6trait_21GeoArrowArrayAccessor4iter0ENtNtNtB9_6traits8iterator8Iterator4nextCscSToqyP0NyK_9lance_geo(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.8.i.i = alloca [24 x i8], align 8        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3437)
  %i.g = load i64, ptr %i.e, align 8, !alias.scope !3438, !noalias !3437, !noundef !5 ; 7 uses
  %i.h = load i64, ptr %i.f, align 8, !alias.scope !3439, !noalias !3436, !noundef !5
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.j = add nuw i64 %i.g, 1                      ; 3 uses
  store i64 %i.j, ptr %i.e, align 8, !alias.scope !3440
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !13, !noundef !5 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3444, !noalias !3445, !noundef !5
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !3446, !noalias !3445, !noundef !5
  %i.o = icmp ult i64 %i.g, %i.n
  br i1 %i.o, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @123, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @125) #25, !noalias !3447
  unreachable

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !3446, !noalias !3445, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 96
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3446, !noalias !3445, !noundef !5
  %i.t = add i64 %i.s, %i.g                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !noalias !3447, !noundef !5
  %i.x = trunc i64 %i.t to i8
  %i.y = and i8 %i.x, 7
  %i.z = xor i8 %i.w, -1
  %i.aa = lshr i8 %i.z, %i.y
  %i.ab = trunc i8 %i.aa to i1
  br i1 %i.ab, label %_RNCNvYINtNtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkb15GenericWkbArraylENtNtBb_6trait_21GeoArrowArrayAccessor4iter0CscSToqyP0NyK_9lance_geo.exit, label %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i

_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.i.i, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3451
  store i64 %i.g, ptr %i.c, align 8, !noalias !3452
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !3453, !noalias !3454, !noundef !5
  %i.ae = lshr i64 %i.ad, 2                       ; 2 uses
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = icmp ult i64 %i.g, %i.af
  br i1 %i.ag, label %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCscSToqyP0NyK_9lance_geo.exit.i.i.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3452
  store i64 %i.af, ptr %i.b, align 8, !noalias !3452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3452
  store ptr %i.c, ptr %i.a, align 8, !noalias !3452
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !3452
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @29, ptr %i.ah, align 8, !noalias !3452
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCscSToqyP0NyK_9lance_geo, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !3452
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @31, ptr %i.ai, align 8, !noalias !3452
  %.sroa.410.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCscSToqyP0NyK_9lance_geo, ptr %.sroa.410.0..sroa_idx.i.i.i.i, align 8, !noalias !3452
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.aj, align 8, !noalias !3452
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !noalias !3452
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #25, !noalias !3452
  unreachable

_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCscSToqyP0NyK_9lance_geo.exit.i.i.i: ; preds = %_RNvXs_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB4_15GenericWkbArraylENtNtB8_6trait_13GeoArrowArray7is_nullCscSToqyP0NyK_9lance_geo.exit.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  %i.ak = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !3456, !noalias !3454, !noundef !5 ; 2 uses
  %i.am = icmp ult i64 %i.j, %i.ae
  tail call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.j
  %i.ao = load i32, ptr %i.an, align 4, !noalias !3457, !noundef !5
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.g
  %i.aq = load i32, ptr %i.ap, align 4, !noalias !3457, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !3456, !noalias !3454, !noundef !5
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = sub i32 %i.ao, %i.aq                    ; 2 uses
  %i.aw = icmp sgt i32 %i.av, -1
  %i.ax = zext nneg i32 %i.av to i64
  tail call void @llvm.assume(i1 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3451
  call void @_RNvMNtNtCs4ZmMtVwXPTx_3wkb6reader8geometryNtB2_3Wkb7try_new(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.au, i64 noundef %i.ax), !noalias !3451
  %i.ay = load i64, ptr %i.d, align 8, !range !31, !noalias !3451, !noundef !5 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCscSToqyP0NyK_9lance_geo.exit.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3458
  %i.bb = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #24, !noalias !3458 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.g, label %_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs4ZmMtVwXPTx_3wkb5error8WkbErrorE3newCscSToqyP0NyK_9lance_geo.exit.i.i.i, !prof !7

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #25
          to label %.noexc.i.i.i unwind label %bb.h, !noalias !3451

.noexc.i.i.i:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs4ZmMtVwXPTx_3wkb5error8WkbErrorECscSToqyP0NyK_9lance_geo(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ba) #26
          to label %bb.j unwind label %bb.i, !noalias !3451

bb.i:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #27, !noalias !3451
  unreachable

bb.j:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.bd

_RNvMNtCs40k4W9msRzi_5alloc5boxedINtB2_3BoxNtNtCs4ZmMtVwXPTx_3wkb5error8WkbErrorE3newCscSToqyP0NyK_9lance_geo.exit.i.i.i: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false), !noalias !3451
  %i.bf = insertelement <2 x ptr> <ptr poison, ptr @56>, ptr %i.bb, i64 0
  br label %_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB5_15GenericWkbArraylENtNtB9_6trait_21GeoArrowArrayAccessor15value_uncheckedCscSToqyP0NyK_9lance_geo.exit.i.i

bb.k:                                             ; preds = %_RNvMs_NtNtCs4ytUTZt2Gw9_11arrow_array5array10byte_arrayINtB4_16GenericByteArrayINtNtB8_5types17GenericBinaryTypelEE5valueCscSToqyP0NyK_9lance_geo.exit.i.i.i
  %.sroa.5.0.copyload3.i.i = load i64, ptr %i.ba, align 8, !noalias !3459
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bg = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !3459
  %.sroa.8.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx8.i.i, i64 24, i1 false)
  br label %_RNvXs0_NtNtCsfC1H8tYQGpK_14geoarrow_array5array3wkbINtB5_15GenericWkbArraylENtNtB9_6trait_21GeoArrowArrayAccessor15value_uncheckedCscSToqyP0NyK_9lance_geo.exit.i.i
end_hunk_4
