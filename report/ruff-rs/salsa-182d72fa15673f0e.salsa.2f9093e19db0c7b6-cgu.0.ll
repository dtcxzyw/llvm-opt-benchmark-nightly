Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/salsa-182d72fa15673f0e.salsa.2f9093e19db0c7b6-cgu.0?download=true
inline.NumInlined: 4220
inline.NumDeleted: 1923
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_:bb.a

bb.t:                                             ; preds = %bb.r
  %i.bf = shl nuw i32 %.sroa.958.4.copyload.i, 20
  %i.bg = or disjoint i32 %i.bf, %.sroa.8.4.copyload.i
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.16.0138.i ; 2 uses
  store i32 %.sroa.6.4.copyload.i, ptr %i.bh, align 8, !noalias !1890
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bg, ptr %i.bi, align 4, !noalias !1890
  %i.bj = add i64 %.sroa.16.0138.i, 1             ; 2 uses
  %i.bk = icmp eq ptr %i.ac, %.val24.i
  br i1 %i.bk, label %._RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit_crit_edge.i, label %.lr.ph.i

bb.u:                                             ; preds = %bb.x
  unreachable

bb.v:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 6 uses
  %i.bm = icmp eq i64 %.sroa.16.0138.i, 0
  br i1 %i.bm, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.v
  %i.bn = add i64 %.sroa.16.0138.i, 2305843009213693951 ; 2 uses
  %i.bo = and i64 %i.bn, 2305843009213693951      ; 2 uses
  %i.bp = add nuw nsw i64 %i.bo, 1                ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 0
  br i1 %i.bq, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.bp, 4611686018427387902
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.i.i.preheader.new
  %i.br = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.ci, %bb.w ] ; 4 uses
  %.sroa.0.014.i.i = phi ptr [ %i.x, %.lr.ph.i.i.preheader.new ], [ %i.cc, %bb.w ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %bb.w ]
  %exitcond.not.i.i = icmp eq i64 %i.br, %i.o
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i.1, !prof !26

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.epil.preheader
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %.noexc28.i unwind label %.body.thread116.i, !noalias !1890

.body.thread116.i:                                ; preds = %.loopexit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.az, i64 noundef 8) #63, !noalias !1907
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit40.i

.noexc28.i:                                       ; preds = %.loopexit
  unreachable

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 4
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.br ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !noalias !1908, !noundef !25
  %i.bw = load <2 x i32>, ptr %.sroa.0.014.i.i, align 4, !noalias !1908
  %i.bx = lshr i32 %i.bv, 20
  %i.by = and <2 x i32> %i.bw, <i32 -1, i32 1048575>
  store <2 x i32> %i.by, ptr %i.bu, align 8, !noalias !1909
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i32 %i.bx, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1909
  %i.bz = or disjoint i64 %i.br, 1                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.bz, %i.o
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %bb.w, !prof !26

bb.w:                                             ; preds = %.lr.ph.i.i.1
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 12
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bz ; 2 uses
  %i.ce = load i32, ptr %i.cb, align 4, !noalias !1908, !noundef !25
  %i.cf = load <2 x i32>, ptr %i.ca, align 4, !noalias !1908
  %i.cg = lshr i32 %i.ce, 20
  %i.ch = and <2 x i32> %i.cf, <i32 -1, i32 1048575>
  store <2 x i32> %i.ch, ptr %i.cd, align 4, !noalias !1909
  %.sroa.54.0..sroa_idx.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cg, ptr %.sroa.54.0..sroa_idx.i.i.1, align 4, !noalias !1909
  %i.ci = add nuw nsw i64 %i.br, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.w
  %i.cj = and i64 %i.bn, 1
  %lcmp.mod.not.not = icmp eq i64 %i.cj, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %.loopexit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.ci, %.loopexit.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.0.014.i.i.epil.init = phi ptr [ %i.x, %.lr.ph.i.i.preheader ], [ %i.cc, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod247 = trunc i64 %i.bp to i1
  tail call void @llvm.assume(i1 %lcmp.mod247)
  %exitcond.not.i.i.epil = icmp eq i64 %.epil.init, %i.o
  br i1 %exitcond.not.i.i.epil, label %.loopexit, label %.loopexit.i.loopexit.epilog-lcssa, !prof !26

.loopexit.i.loopexit.epilog-lcssa:                ; preds = %.lr.ph.i.i.epil.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i.epil.init, i64 4
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %.epil.init ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !noalias !1908, !noundef !25
  %i.cn = load <2 x i32>, ptr %.sroa.0.014.i.i.epil.init, align 4, !noalias !1908
  %i.co = lshr i32 %i.cm, 20
  %i.cp = and <2 x i32> %i.cn, <i32 -1, i32 1048575>
  store <2 x i32> %i.cp, ptr %i.cl, align 4, !noalias !1909
  %.sroa.54.0..sroa_idx.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.co, ptr %.sroa.54.0..sroa_idx.i.i.epil, align 4, !noalias !1909
  %i.cq = add nuw nsw i64 %.epil.init, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.epilog-lcssa, %.loopexit.i.loopexit.unr-lcssa, %bb.v
  %.sroa.17.0.i = phi i64 [ 0, %bb.v ], [ %i.ci, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cq, %.loopexit.i.loopexit.epilog-lcssa ] ; 3 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.u, i64 noundef 8) #63, !noalias !1910
  %i.cr = icmp ult i64 %.sroa.17.0.i, %i.o
  br i1 %i.cr, label %bb.y, label %bb.x, !prof !27

bb.x:                                             ; preds = %.loopexit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %bb.u unwind label %.body.i, !noalias !1890

bb.y:                                             ; preds = %.loopexit.i
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %.sroa.17.0.i ; 3 uses
  store i32 %.sroa.6.4.copyload.i, ptr %i.cs, align 4, !noalias !1890
  %.sroa.64.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %.sroa.8.4.copyload.i, ptr %.sroa.64.0..sroa_idx5.i, align 4, !noalias !1890
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 %.sroa.958.4.copyload.i, ptr %.sroa.7.0..sroa_idx7.i, align 4, !noalias !1890
  %i.ct = add nuw nsw i64 %.sroa.17.0.i, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1911
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !1889
  %i.cu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !alias.scope !1912, !noalias !1913, !nonnull !25, !noundef !25 ; 2 uses
  %.promoted.i29.i = load ptr, ptr %i.e, align 8, !alias.scope !1912, !noalias !1913 ; 3 uses
  %i.cw = icmp eq ptr %.promoted.i29.i, %i.cv
  br i1 %i.cw, label %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i, label %.lr.ph.i30.i.preheader

.lr.ph.i30.i.preheader:                           ; preds = %bb.y
  %i.cx = getelementptr inbounds nuw i8, ptr %.promoted.i29.i, i64 24 ; 2 uses
  %exitcond.not.i32.i210 = icmp eq i64 %i.ct, %i.o
  br i1 %exitcond.not.i32.i210, label %.lr.ph.i30.i._crit_edge, label %.lr.ph, !prof !36

.body.thread112.i:                                ; preds = %.lr.ph.i30.i._crit_edge
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeEEB1o_(ptr noalias noundef align 8 dereferenceable(40) %i.e) #65, !noalias !1911
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.az, i64 noundef 8) #63, !noalias !1914
  br label %.thread118.i

.lr.ph.i30.i:                                     ; preds = %.lr.ph
  %i.cz = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %exitcond.not.i32.i = icmp eq i64 %i.du, %i.o
  br i1 %exitcond.not.i32.i, label %.lr.ph.i30.i._crit_edge, label %.lr.ph, !prof !37

_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i: ; preds = %.lr.ph, %bb.y
  %.sroa.17.1.i = phi i64 [ %i.ct, %bb.y ], [ %i.du, %.lr.ph ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1916)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1917)
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.db = load i64, ptr %i.da, align 8, !alias.scope !1918, !noalias !1911, !noundef !25 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !1918, !noalias !1911, !nonnull !25, !noundef !25 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !noalias !1919, !noundef !25 ; 4 uses
  %i.dg = icmp ult i64 %i.df, 384307168202282326
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !1918, !noalias !1911, !noundef !25 ; 2 uses
  %.not3.i.i.i.i.i.i.i = icmp eq i64 %i.di, %i.df
  br i1 %.not3.i.i.i.i.i.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.ab, %bb.z
  %i.dj = add i64 %i.df, %i.db
  store i64 %i.dj, ptr %i.de, align 8, !noalias !1919
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !1919, !nonnull !25, !noundef !25 ; 2 uses
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.di
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.df
  %i.do = mul i64 %i.db, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.dm, i64 %i.do, i1 false), !noalias !1919
  br label %bb.aa

.lr.ph.i30.i._crit_edge:                          ; preds = %.lr.ph.i30.i, %.lr.ph.i30.i.preheader
  %.lcssa194 = phi ptr [ %i.cx, %.lr.ph.i30.i.preheader ], [ %i.cz, %.lr.ph.i30.i ]
  store ptr %.lcssa194, ptr %i.e, align 8, !noalias !1911
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %bb.ac unwind label %.body.thread112.i, !noalias !1911

.lr.ph:                                           ; preds = %.lr.ph.i30.i.preheader, %.lr.ph.i30.i
  %i.dp = phi ptr [ %i.cz, %.lr.ph.i30.i ], [ %i.cx, %.lr.ph.i30.i.preheader ] ; 3 uses
  %i.dq = phi ptr [ %i.dp, %.lr.ph.i30.i ], [ %.promoted.i29.i, %.lr.ph.i30.i.preheader ]
  %i.dr = phi i64 [ %i.du, %.lr.ph.i30.i ], [ %i.ct, %.lr.ph.i30.i.preheader ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dt = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.dr
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.dt, ptr noundef nonnull align 8 dereferenceable(12) %i.ds, i64 12, i1 false), !noalias !1911
  %i.du = add nuw nsw i64 %i.dr, 1                ; 3 uses
  %i.dv = icmp eq ptr %i.dp, %i.cv
  br i1 %i.dv, label %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i, label %.lr.ph.i30.i

bb.ac:                                            ; preds = %.lr.ph.i30.i._crit_edge
  unreachable

bb.ad:                                            ; preds = %bb.aa, %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1890
  store i64 8, ptr %i.h, align 8, !noalias !1890
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.az, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1890
  %.sroa.760.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ba, ptr %.sroa.760.0..sroa_idx.i, align 8, !noalias !1890
  %.sroa.961.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.bl, ptr %.sroa.961.0..sroa_idx.i, align 8, !noalias !1890
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  store i64 %i.o, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !1890
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  store i64 %.sroa.17.1.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !1890
  %i.dw = icmp eq i64 %.sroa.17.1.i, %i.o
  br i1 %i.dw, label %bb.ai, label %bb.ae, !prof !27

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.17.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.13.0..sroa_idx.i, ptr noundef nonnull @203, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #62
          to label %bb.ag unwind label %bb.af, !noalias !1920

bb.af:                                            ; preds = %bb.ae
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %3) #65
          to label %.thread127.i unwind label %bb.ah, !noalias !1921

bb.ag:                                            ; preds = %bb.ae
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64, !noalias !1920
  unreachable

.thread127.i:                                     ; preds = %bb.af
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef %i.az, i64 noundef 8) #63, !noalias !1922
  br label %common.resume

bb.ai:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !1923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1890
  %i.dz = or disjoint i8 %2, 4
  br label %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit

bb.aj:                                            ; preds = %.thread118.i
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64, !noalias !1890
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit40.i: ; preds = %.body.thread116.i, %.body.thread104.i
  %.pn109.i = phi { ptr, i32 } [ %i.aa, %.body.thread104.i ], [ %i.bs, %.body.thread116.i ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.v, i64 noundef %i.u, i64 noundef 8) #63, !noalias !1924
  br label %.thread118.i

bb.ak:                                            ; preds = %.thread118.i
  br i1 %.sroa.014.084.i, label %bb.al, label %common.resume

.thread118.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit40.i, %.body.thread112.i, %.body.i, %.thread.i
  %.sroa.014.084.i = phi i1 [ true, %.thread.i ], [ false, %.body.thread112.i ], [ true, %.body.i ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit40.i ]
  %.pn.pn82.i = phi { ptr, i32 } [ %i.s, %.thread.i ], [ %i.cy, %.body.thread112.i ], [ %i.z, %.body.i ], [ %.pn109.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit40.i ] ; 2 uses
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %3) #65
          to label %bb.ak unwind label %bb.aj, !noalias !1925

common.resume:                                    ; preds = %.body.thread101.i, %.body.i46, %.body.thread96.i, %.thread127.i, %bb.ak, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %.thread127.i ], [ %.pn.pn81126.i, %bb.al ], [ %.pn.pn82.i, %bb.ak ], [ %.pn.pn100.i, %.body.thread96.i ], [ %i.ih, %.body.i46 ], [ %i.eo, %.body.thread101.i ]
  resume { ptr, i32 } %common.resume.op

bb.al:                                            ; preds = %bb.ak, %.thread122.i
  %.pn.pn81126.i = phi { ptr, i32 } [ %i.ah, %.thread122.i ], [ %.pn.pn82.i, %bb.ak ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeEEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #65, !noalias !1889
  br label %common.resume

_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit: ; preds = %bb.k, %bb.m, %bb.ai
  %.sroa.553.0 = phi i8 [ %2, %bb.k ], [ %2, %bb.m ], [ %i.dz, %bb.ai ]
  %.sroa.052.0 = phi ptr [ %i.v, %bb.k ], [ %i.v, %bb.m ], [ %i.ba, %bb.ai ]
  %i.eb = or disjoint i8 %.sroa.553.0, 8
  br label %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit

bb.am:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1926)
  %.val.i2 = load ptr, ptr %1, align 8, !alias.scope !1926, !noalias !1927, !nonnull !25, !noundef !25 ; 3 uses
  %.val24.i3 = load ptr, ptr %i.k, align 8, !alias.scope !1926, !noalias !1927, !nonnull !25, !noundef !25 ; 3 uses
  %i.ec = ptrtoint ptr %.val24.i3 to i64
  %i.ed = ptrtoint ptr %.val.i2 to i64
  %i.ee = sub nuw i64 %i.ec, %i.ed                ; 2 uses
  %i.ef = udiv i64 %i.ee, 24                      ; 14 uses
  %i.eg = icmp ugt i64 %i.ee, 103079215080
  %i.eh = shl nuw i64 %i.ef, 32
  %.sroa.016.0.insert.insert.i4 = select i1 %i.eg, i64 513, i64 %i.eh ; 4 uses
  %i.ei = trunc i64 %.sroa.016.0.insert.insert.i4 to i1
  br i1 %i.ei, label %bb.ao, label %bb.ap, !prof !26

bb.an:                                            ; preds = %bb.ar, %bb.ao
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread96.i

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1928
  store i8 2, ptr %i.b, align 1, !noalias !1928
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 67, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #62
          to label %.noexc.i50 unwind label %bb.an, !noalias !1928

.noexc.i50:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.am
  %i.ek = shl nuw nsw i64 %i.ef, 3                ; 7 uses
  %i.el = icmp eq ptr %.val24.i3, %.val.i2        ; 2 uses
  br i1 %i.el, label %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i16, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !1929
  %i.em = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ek, i64 noundef 4) #63, !noalias !1929 ; 8 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ar, label %.lr.ph.i7, !prof !26

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef %i.ek) #62
          to label %.noexc25.i49 unwind label %bb.an, !noalias !1928

.noexc25.i49:                                     ; preds = %bb.ar
  unreachable

.body.thread101.i:                                ; preds = %bb.bo
  %i.eo = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.fl, i64 noundef 4) #63, !noalias !1930
  br label %common.resume

.lr.ph.i7:                                        ; preds = %bb.aq, %bb.be
  %.sroa.16.0122.i = phi i64 [ %i.fs, %bb.be ], [ 0, %bb.aq ] ; 5 uses
  %i.ep = phi ptr [ %i.eq, %bb.be ], [ %.val.i2, %bb.aq ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24 ; 5 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %.sroa.6.4.copyload.i8 = load i32, ptr %i.er, align 8, !noalias !1932 ; 2 uses
  %.sroa.8.4..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %.sroa.8.4.copyload.i10 = load i32, ptr %.sroa.8.4..sroa_idx.i9, align 4, !noalias !1932 ; 3 uses
  %.sroa.958.4..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %.sroa.958.4.copyload.i12 = load i32, ptr %.sroa.958.4..sroa_idx.i11, align 8, !noalias !1932 ; 3 uses
  %i.es = icmp ugt i32 %.sroa.958.4.copyload.i12, 4095
  %i.et = icmp ugt i32 %.sroa.8.4.copyload.i10, 1048575
  %or.cond.i13 = or i1 %i.et, %i.es
  br i1 %or.cond.i13, label %bb.ba, label %bb.bc

._RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit_crit_edge.i15: ; preds = %bb.be
  store ptr %i.eq, ptr %1, align 8, !alias.scope !1933, !noalias !1934
  br label %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i16

_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i16: ; preds = %._RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit_crit_edge.i15, %bb.ap
  %.sroa.0.0.i159.i = phi ptr [ %i.em, %._RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit_crit_edge.i15 ], [ inttoptr (i64 4 to ptr), %bb.ap ] ; 5 uses
  %.sroa.16.0.lcssa.i17 = phi i64 [ %i.fs, %._RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit_crit_edge.i15 ], [ 0, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1928
  store i64 4, ptr %i.c, align 8, !noalias !1928
  %.sroa.7.0..sroa_idx42.i18 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ek, ptr %.sroa.7.0..sroa_idx42.i18, align 8, !noalias !1928
  %.sroa.9.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i159.i, ptr %.sroa.9.0..sroa_idx.i19, align 8, !noalias !1928
  %.sroa.11.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.0.0.i159.i, ptr %.sroa.11.0..sroa_idx.i20, align 8, !noalias !1928
  %.sroa.14.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %i.ef, ptr %.sroa.14.0..sroa_idx.i21, align 8, !noalias !1928
  %.sroa.16.0..sroa_idx.i22 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %.sroa.16.0.lcssa.i17, ptr %.sroa.16.0..sroa_idx.i22, align 8, !noalias !1928
  %i.eu = icmp eq i64 %.sroa.16.0.lcssa.i17, %i.ef
  br i1 %i.eu, label %bb.aw, label %bb.as, !prof !27

bb.as:                                            ; preds = %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i16
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.16.0..sroa_idx.i22, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.14.0..sroa_idx.i21, ptr noundef nonnull @203, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #62
          to label %bb.av unwind label %bb.at, !noalias !1935

bb.at:                                            ; preds = %bb.as
  %i.ev = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.el, label %.body.thread96.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i159.i, i64 noundef %i.ek, i64 noundef 4) #63, !noalias !1936
  br label %.body.thread96.i

bb.av:                                            ; preds = %bb.as
  unreachable

bb.aw:                                            ; preds = %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1939)
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ex = load i64, ptr %i.ew, align 8, !alias.scope !1940, !noalias !1927, !noundef !25 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_:bb.a
bb.bc:                                            ; preds = %.lr.ph.i7
  %exitcond.not.i14 = icmp eq i64 %.sroa.16.0122.i, %i.ef
  br i1 %exitcond.not.i14, label %bb.bd, label %bb.be, !prof !26

bb.bd:                                            ; preds = %bb.bc
  store ptr %i.eq, ptr %1, align 8, !alias.scope !1933, !noalias !1934
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %bb.bf unwind label %.split.thread.i, !noalias !1928

bb.be:                                            ; preds = %bb.bc
  %i.fo = shl nuw i32 %.sroa.958.4.copyload.i12, 20
  %i.fp = or disjoint i32 %i.fo, %.sroa.8.4.copyload.i10
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.sroa.16.0122.i ; 2 uses
  store i32 %.sroa.6.4.copyload.i8, ptr %i.fq, align 4, !noalias !1928
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %i.fp, ptr %i.fr, align 4, !noalias !1928
  %i.fs = add i64 %.sroa.16.0122.i, 1             ; 2 uses
  %i.ft = icmp eq ptr %i.eq, %.val24.i3
  br i1 %i.ft, label %._RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit_crit_edge.i15, label %.lr.ph.i7

bb.bf:                                            ; preds = %bb.bh, %bb.bd
  unreachable

_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i: ; preds = %bb.ba
  %i.fu = icmp eq i64 %.sroa.16.0122.i, 0
  br i1 %i.fu, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i
  %i.fv = add i64 %.sroa.16.0122.i, 2305843009213693951 ; 2 uses
  %i.fw = and i64 %i.fv, 2305843009213693951      ; 2 uses
  %i.fx = add nuw nsw i64 %i.fw, 1                ; 2 uses
  %i.fy = icmp eq i64 %i.fw, 0
  br i1 %i.fy, label %.lr.ph.i.i26.epil.preheader, label %.lr.ph.i.i26.preheader.new

.lr.ph.i.i26.preheader.new:                       ; preds = %.lr.ph.i.i26.preheader
  %unroll_iter254 = and i64 %i.fx, 4611686018427387902
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.bg, %.lr.ph.i.i26.preheader.new
  %i.fz = phi i64 [ 0, %.lr.ph.i.i26.preheader.new ], [ %i.gp, %bb.bg ] ; 4 uses
  %.sroa.0.014.i.i27 = phi ptr [ %i.em, %.lr.ph.i.i26.preheader.new ], [ %i.gj, %bb.bg ] ; 5 uses
  %niter255 = phi i64 [ 0, %.lr.ph.i.i26.preheader.new ], [ %niter255.next.1, %bb.bg ]
  %exitcond.not.i.i28 = icmp eq i64 %i.fz, %i.ef
  br i1 %exitcond.not.i.i28, label %.loopexit256, label %.lr.ph.i.i26.1, !prof !26

.loopexit256:                                     ; preds = %.lr.ph.i.i26, %.lr.ph.i.i26.1, %.lr.ph.i.i26.epil.preheader
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %.noexc28.i47 unwind label %.split.i, !noalias !1928

.noexc28.i47:                                     ; preds = %.loopexit256
  unreachable

.lr.ph.i.i26.1:                                   ; preds = %.lr.ph.i.i26
  %i.ga = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i27, i64 4
  %i.gb = getelementptr inbounds nuw [12 x i8], ptr %i.fm, i64 %i.fz ; 2 uses
  %i.gc = load i32, ptr %i.ga, align 4, !noalias !1943, !noundef !25
  %i.gd = load <2 x i32>, ptr %.sroa.0.014.i.i27, align 4, !noalias !1943
  %i.ge = lshr i32 %i.gc, 20
  %i.gf = and <2 x i32> %i.gd, <i32 -1, i32 1048575>
  store <2 x i32> %i.gf, ptr %i.gb, align 4, !noalias !1944
  %.sroa.54.0..sroa_idx.i.i30 = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store i32 %i.ge, ptr %.sroa.54.0..sroa_idx.i.i30, align 4, !noalias !1944
  %i.gg = or disjoint i64 %i.fz, 1                ; 2 uses
  %exitcond.not.i.i28.1 = icmp eq i64 %i.gg, %i.ef
  br i1 %exitcond.not.i.i28.1, label %.loopexit256, label %bb.bg, !prof !26

bb.bg:                                            ; preds = %.lr.ph.i.i26.1
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i27, i64 8
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i27, i64 12
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i27, i64 16 ; 2 uses
  %i.gk = getelementptr inbounds nuw [12 x i8], ptr %i.fm, i64 %i.gg ; 2 uses
  %i.gl = load i32, ptr %i.gi, align 4, !noalias !1943, !noundef !25
  %i.gm = load <2 x i32>, ptr %i.gh, align 4, !noalias !1943
  %i.gn = lshr i32 %i.gl, 20
  %i.go = and <2 x i32> %i.gm, <i32 -1, i32 1048575>
  store <2 x i32> %i.go, ptr %i.gk, align 4, !noalias !1944
  %.sroa.54.0..sroa_idx.i.i30.1 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  store i32 %i.gn, ptr %.sroa.54.0..sroa_idx.i.i30.1, align 4, !noalias !1944
  %i.gp = add nuw nsw i64 %i.fz, 2                ; 3 uses
  %niter255.next.1 = add i64 %niter255, 2         ; 2 uses
  %niter255.ncmp.1 = icmp eq i64 %niter255.next.1, %unroll_iter254
  br i1 %niter255.ncmp.1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i26

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.unr-lcssa: ; preds = %bb.bg
  %i.gq = and i64 %i.fv, 1
  %lcmp.mod251.not.not = icmp eq i64 %i.gq, 0
  br i1 %lcmp.mod251.not.not, label %.lr.ph.i.i26.epil.preheader, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i

.lr.ph.i.i26.epil.preheader:                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i26.preheader
  %.epil.init250 = phi i64 [ 0, %.lr.ph.i.i26.preheader ], [ %i.gp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.0.014.i.i27.epil.init = phi ptr [ %i.em, %.lr.ph.i.i26.preheader ], [ %i.gj, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod253 = trunc i64 %i.fx to i1
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %exitcond.not.i.i28.epil = icmp eq i64 %.epil.init250, %i.ef
  br i1 %exitcond.not.i.i28.epil, label %.loopexit256, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.epilog-lcssa, !prof !26

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.epilog-lcssa: ; preds = %.lr.ph.i.i26.epil.preheader
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i27.epil.init, i64 4
  %i.gs = getelementptr inbounds nuw [12 x i8], ptr %i.fm, i64 %.epil.init250 ; 2 uses
  %i.gt = load i32, ptr %i.gr, align 4, !noalias !1943, !noundef !25
  %i.gu = load <2 x i32>, ptr %.sroa.0.014.i.i27.epil.init, align 4, !noalias !1943
  %i.gv = lshr i32 %i.gt, 20
  %i.gw = and <2 x i32> %i.gu, <i32 -1, i32 1048575>
  store <2 x i32> %i.gw, ptr %i.gs, align 4, !noalias !1944
  %.sroa.54.0..sroa_idx.i.i30.epil = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i32 %i.gv, ptr %.sroa.54.0..sroa_idx.i.i30.epil, align 4, !noalias !1944
  %i.gx = add nuw nsw i64 %.epil.init250, 1
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.epilog-lcssa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.unr-lcssa, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i
  %.sroa.17.0.i31 = phi i64 [ 0, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i ], [ %i.gp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.unr-lcssa ], [ %i.gx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i.loopexit.epilog-lcssa ] ; 3 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.ek, i64 noundef 4) #63, !noalias !1945
  %i.gy = icmp ult i64 %.sroa.17.0.i31, %i.ef
  br i1 %i.gy, label %bb.bi, label %bb.bh, !prof !27

bb.bh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %bb.bf unwind label %.body.thread.i, !noalias !1928

.body.thread.i:                                   ; preds = %bb.bh
  %i.gz = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.fl, i64 noundef 4) #63, !noalias !1946
  br label %.body.thread96.i

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i
  %i.ha = getelementptr inbounds nuw [12 x i8], ptr %i.fm, i64 %.sroa.17.0.i31 ; 3 uses
  store i32 %.sroa.6.4.copyload.i8, ptr %i.ha, align 4, !noalias !1928
  %.sroa.64.0..sroa_idx5.i32 = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sroa.8.4.copyload.i10, ptr %.sroa.64.0..sroa_idx5.i32, align 4, !noalias !1928
  %.sroa.7.0..sroa_idx7.i33 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i32 %.sroa.958.4.copyload.i12, ptr %.sroa.7.0..sroa_idx7.i33, align 4, !noalias !1928
  %i.hb = add nuw nsw i64 %.sroa.17.0.i31, 1      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1947
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !noalias !1927
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !1948, !noalias !1949, !nonnull !25, !noundef !25 ; 2 uses
  %.promoted.i29.i34 = load ptr, ptr %i.a, align 8, !alias.scope !1948, !noalias !1949 ; 3 uses
  %i.he = icmp eq ptr %.promoted.i29.i34, %i.hd
  br i1 %i.he, label %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i37, label %.lr.ph.i30.i35.preheader

.lr.ph.i30.i35.preheader:                         ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %.promoted.i29.i34, i64 24 ; 2 uses
  %exitcond.not.i32.i36211 = icmp eq i64 %i.hb, %i.ef
  br i1 %exitcond.not.i32.i36211, label %.lr.ph.i30.i35._crit_edge, label %.lr.ph212, !prof !36

.lr.ph.i30.i35:                                   ; preds = %.lr.ph212
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hw, i64 24 ; 2 uses
  %exitcond.not.i32.i36 = icmp eq i64 %i.ib, %i.ef
  br i1 %exitcond.not.i32.i36, label %.lr.ph.i30.i35._crit_edge, label %.lr.ph212, !prof !37

_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i37: ; preds = %.lr.ph212, %bb.bi
  %.sroa.17.1.i38 = phi i64 [ %i.hb, %bb.bi ], [ %i.ib, %.lr.ph212 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1951)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !1953, !noalias !1947, !noundef !25 ; 3 uses
  %.not.i.i.i.i.i.i.i39 = icmp eq i64 %i.hi, 0
  br i1 %.not.i.i.i.i.i.i.i39, label %bb.bn, label %bb.bj

bb.bj:                                            ; preds = %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i37
  %i.hj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !1953, !noalias !1947, !nonnull !25, !noundef !25 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !noalias !1954, !noundef !25 ; 4 uses
  %i.hn = icmp ult i64 %i.hm, 384307168202282326
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hp = load i64, ptr %i.ho, align 8, !alias.scope !1953, !noalias !1947, !noundef !25 ; 2 uses
  %.not3.i.i.i.i.i.i.i40 = icmp eq i64 %i.hp, %i.hm
  br i1 %.not3.i.i.i.i.i.i.i40, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %i.hq = add i64 %i.hm, %i.hi
  store i64 %i.hq, ptr %i.hl, align 8, !noalias !1954
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !1954, !nonnull !25, !noundef !25 ; 2 uses
  %i.ht = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.hp
  %i.hu = getelementptr inbounds nuw [24 x i8], ptr %i.hs, i64 %i.hm
  %i.hv = mul i64 %i.hi, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hu, ptr nonnull align 8 %i.ht, i64 %i.hv, i1 false), !noalias !1954
  br label %bb.bk

.lr.ph.i30.i35._crit_edge:                        ; preds = %.lr.ph.i30.i35, %.lr.ph.i30.i35.preheader
  %.lcssa = phi ptr [ %i.hf, %.lr.ph.i30.i35.preheader ], [ %i.hg, %.lr.ph.i30.i35 ]
  store ptr %.lcssa, ptr %i.a, align 8, !noalias !1947
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %bb.bm unwind label %.body.i46, !noalias !1947

.lr.ph212:                                        ; preds = %.lr.ph.i30.i35.preheader, %.lr.ph.i30.i35
  %i.hw = phi ptr [ %i.hg, %.lr.ph.i30.i35 ], [ %i.hf, %.lr.ph.i30.i35.preheader ] ; 3 uses
  %i.hx = phi ptr [ %i.hw, %.lr.ph.i30.i35 ], [ %.promoted.i29.i34, %.lr.ph.i30.i35.preheader ]
  %i.hy = phi i64 [ %i.ib, %.lr.ph.i30.i35 ], [ %i.hb, %.lr.ph.i30.i35.preheader ] ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.ia = getelementptr inbounds nuw [12 x i8], ptr %i.fm, i64 %i.hy
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ia, ptr noundef nonnull align 8 dereferenceable(12) %i.hz, i64 12, i1 false), !noalias !1947
  %i.ib = add nuw nsw i64 %i.hy, 1                ; 3 uses
  %i.ic = icmp eq ptr %i.hw, %i.hd
  br i1 %i.ic, label %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i37, label %.lr.ph.i30.i35

bb.bm:                                            ; preds = %.lr.ph.i30.i35._crit_edge
  unreachable

bb.bn:                                            ; preds = %bb.bk, %_RNvXsg_NtNtCs5e9M2GLoJMY_8indexmap3set4iterINtB5_5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBV_.exit.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1947
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1928
  store i64 4, ptr %i.d, align 8, !noalias !1928
  %.sroa.5.0..sroa_idx.i41 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.fl, ptr %.sroa.5.0..sroa_idx.i41, align 8, !noalias !1928
  %.sroa.760.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.fm, ptr %.sroa.760.0..sroa_idx.i42, align 8, !noalias !1928
  %.sroa.961.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.fm, ptr %.sroa.961.0..sroa_idx.i43, align 8, !noalias !1928
  %.sroa.13.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  store i64 %i.ef, ptr %.sroa.13.0..sroa_idx.i44, align 8, !noalias !1928
  %.sroa.17.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store i64 %.sroa.17.1.i38, ptr %.sroa.17.0..sroa_idx.i45, align 8, !noalias !1928
  %i.id = icmp eq i64 %.sroa.17.1.i38, %i.ef
  br i1 %i.id, label %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i, label %bb.bo, !prof !27

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.17.0..sroa_idx.i45, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.13.0..sroa_idx.i44, ptr noundef nonnull @203, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #62
          to label %bb.bp unwind label %.body.thread101.i, !noalias !1955

bb.bp:                                            ; preds = %bb.bo
  unreachable

_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i: ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1928
  %i.ie = or disjoint i8 %2, 4
  br label %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit

.split.thread.i:                                  ; preds = %bb.bd, %bb.bb
  %i.if = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.ek, i64 noundef 4) #63, !noalias !1956
  br label %.body.thread96.i

.split.i:                                         ; preds = %.loopexit256
  %i.ig = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.fl, i64 noundef 4) #63, !noalias !1946
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.ek, i64 noundef 4) #63, !noalias !1956
  br label %.body.thread96.i

.body.i46:                                        ; preds = %.lr.ph.i30.i35._crit_edge
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeEEB1o_(ptr noalias noundef align 8 dereferenceable(40) %i.a) #65, !noalias !1947
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fm, i64 noundef %i.fl, i64 noundef 4) #63, !noalias !1946
  br label %common.resume

.body.thread96.i:                                 ; preds = %.split.i, %.split.thread.i, %.body.thread.i, %bb.au, %bb.at, %bb.an
  %.pn.pn100.i = phi { ptr, i32 } [ %i.if, %.split.thread.i ], [ %i.gz, %.body.thread.i ], [ %i.ig, %.split.i ], [ %i.ev, %bb.at ], [ %i.ej, %bb.an ], [ %i.ev, %bb.au ]
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeEEB1o_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1) #65, !noalias !1927
  br label %common.resume

_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit: ; preds = %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i, %bb.ay, %bb.aw, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit
  %.sroa.5.0.sink = phi i8 [ %i.eb, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit ], [ %2, %bb.aw ], [ %2, %bb.ay ], [ %i.ie, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i ]
  %.sroa.0.0.sink = phi ptr [ %.sroa.052.0, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit ], [ %.sroa.0.0.i159.i, %bb.aw ], [ %.sroa.0.0.i159.i, %bb.ay ], [ %i.fm, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i ]
  %.sroa.6.0.extract.trunc.i.i6.sink.in.in = phi i64 [ %.sroa.016.0.insert.insert.i, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerINtNtNtCs5e9M2GLoJMY_8indexmap3set4iter5DrainNtB6_9QueryEdgeEEB8_.exit ], [ %.sroa.016.0.insert.insert.i4, %bb.aw ], [ %.sroa.016.0.insert.insert.i4, %bb.ay ], [ %.sroa.016.0.insert.insert.i4, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i ]
  %.sroa.6.0.extract.trunc.i.i6.sink.in = lshr i64 %.sroa.6.0.extract.trunc.i.i6.sink.in.in, 32
  %.sroa.6.0.extract.trunc.i.i6.sink = trunc nuw i64 %.sroa.6.0.extract.trunc.i.i6.sink.in to i32
  store i8 %.sroa.5.0.sink, ptr %0, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %.sroa.0.0.sink, ptr %i.ii, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i32 %.sroa.6.0.extract.trunc.i.i6.sink, ptr %i.ij, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindNtB6_13QueryEdgeIterEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 1 captures(none) dereferenceable(13) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i8 noundef range(i8 2, 4) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.h = load i8, ptr %i.g, align 2, !range !34, !noundef !25
  %.not = icmp eq i8 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  %i.k = load i64, ptr %1, align 8, !range !38, !alias.scope !2073, !noalias !2074, !noundef !25
  %i.l = trunc nuw i64 %i.k to i1                 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !alias.scope !2073, !noalias !2074, !nonnull !25, !noundef !25 ; 6 uses
  %i.n = load ptr, ptr %i.i, align 8, !alias.scope !2073, !noalias !2074, !nonnull !25, !noundef !25 ; 11 uses
  %i.o = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.p = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.q = sub nuw i64 %i.o, %i.p                   ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = udiv exact i64 %i.q, 12
  br label %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.s = lshr exact i64 %i.q, 3
  br label %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i

.thread.i:                                        ; preds = %bb.i, %.invoke.i, %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.thread112.i

_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i: ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i = phi i64 [ %i.r, %bb.c ], [ %i.s, %bb.d ] ; 22 uses
  %i.u = icmp samesign ugt i64 %.sroa.0.0.i.i, 4294967295
  %i.v = shl nuw i64 %.sroa.0.0.i.i, 32
  %.sroa.016.0.insert.insert.i = select i1 %i.u, i64 513, i64 %i.v ; 2 uses
  %i.w = trunc i64 %.sroa.016.0.insert.insert.i to i1
  br i1 %i.w, label %bb.e, label %bb.f, !prof !26

bb.e:                                             ; preds = %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2075
  store i8 2, ptr %i.d, align 1, !noalias !2075
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 67, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #62
          to label %.noexc.i unwind label %.thread.i, !noalias !2075

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i
  %i.x = icmp samesign ugt i64 %.sroa.0.0.i.i, 1152921504606846975
  br i1 %i.x, label %.invoke.i, label %bb.g, !prof !26

.invoke.i:                                        ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ @196, %bb.f ], [ @194, %bb.g ]
  %i.z = phi ptr [ inttoptr (i64 59 to ptr), %bb.f ], [ inttoptr (i64 83 to ptr), %bb.g ]
  %i.aa = phi ptr [ @197, %bb.f ], [ @195, %bb.g ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa) #62
          to label %.cont.i unwind label %.thread.i, !noalias !2075

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i = icmp samesign ugt i64 %.sroa.0.0.i.i, 1152921504606846972
  br i1 %.not.i.i.i.i, label %.invoke.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = shl nuw nsw i64 %.sroa.0.0.i.i, 3
  %i.ac = add nuw nsw i64 %i.ab, 24               ; 6 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2076
  %i.ad = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.ac, i64 noundef 8) #63, !noalias !2076 ; 9 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ac) #62
          to label %.noexc26.i unwind label %.thread.i, !noalias !2075

.noexc26.i:                                       ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.ad, i64 24     ; 8 uses
  %i.ag = icmp eq ptr %i.n, %i.m                  ; 2 uses
  br i1 %i.l, label %.split.us.i, label %.split.split.i

.split.us.i:                                      ; preds = %bb.j
  br i1 %i.ag, label %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph138.i

.lr.ph138.i:                                      ; preds = %.split.us.i, %bb.l
  %.sroa.16.0.us137.i = phi i64 [ %i.ap, %bb.l ], [ 0, %.split.us.i ] ; 5 uses
  %i.ah = phi ptr [ %i.ai, %bb.l ], [ %i.n, %.split.us.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12 ; 4 uses
  %.sroa.1159.4..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %.sroa.1159.4.copyload.us.i = load i32, ptr %.sroa.1159.4..sroa_idx.us.i, align 4, !noalias !2077 ; 3 uses
  %.sroa.13.4..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.13.4.copyload.us.i = load i32, ptr %.sroa.13.4..sroa_idx.us.i, align 4, !noalias !2077 ; 3 uses
  %.sroa.8.1.ph.us.i = load i32, ptr %i.ah, align 4, !noalias !2077 ; 2 uses
  %i.aj = icmp ugt i32 %.sroa.13.4.copyload.us.i, 4095
  %i.ak = icmp ugt i32 %.sroa.1159.4.copyload.us.i, 1048575
  %or.cond.us.i = or i1 %i.ak, %i.aj
  br i1 %or.cond.us.i, label %.split125.us.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph138.i
  %exitcond161.not.i = icmp eq i64 %.sroa.16.0.us137.i, %.sroa.0.0.i.i
  br i1 %exitcond161.not.i, label %.split131.us.invoke.i, label %bb.l, !prof !26

bb.l:                                             ; preds = %bb.k
  %i.al = shl nuw i32 %.sroa.13.4.copyload.us.i, 20
  %i.am = or disjoint i32 %i.al, %.sroa.1159.4.copyload.us.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.sroa.16.0.us137.i ; 2 uses
  store i32 %.sroa.8.1.ph.us.i, ptr %i.an, align 8, !noalias !2075
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.am, ptr %i.ao, align 4, !noalias !2075
  %i.ap = add i64 %.sroa.16.0.us137.i, 1          ; 2 uses
  %i.aq = icmp eq ptr %i.ai, %i.m
  br i1 %i.aq, label %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph138.i
end_hunk_1
begin_hunk_2_@_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra21new_derived_with_kindNtB6_13QueryEdgeIterEB8_:bb.a
  %i.ch = add nuw nsw i64 %.sroa.16.0134.i208, 1  ; 3 uses
  %i.ci = icmp eq ptr %i.ce, %i.m
  br i1 %i.ci, label %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i, label %.lr.ph.i

bb.u:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw i8, ptr %i.by, i64 24 ; 6 uses
  %i.ck = icmp eq i64 %.sroa.16.0.us137.i, 0
  br i1 %i.ck, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.u
  %i.cl = add i64 %.sroa.16.0.us137.i, 2305843009213693951 ; 2 uses
  %i.cm = and i64 %i.cl, 2305843009213693951      ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cm, 0
  br i1 %i.co, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i64 %i.cn, 4611686018427387902
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.v, %.lr.ph.i.i.preheader.new
  %i.cp = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %i.df, %bb.v ] ; 4 uses
  %.sroa.0.014.i.i = phi ptr [ %i.af, %.lr.ph.i.i.preheader.new ], [ %i.cz, %bb.v ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.1, %bb.v ]
  %exitcond.not.i.i = icmp eq i64 %i.cp, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i.1, !prof !26

.loopexit:                                        ; preds = %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.epil.preheader
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %.noexc33.i unwind label %.body.i, !noalias !2075

.noexc33.i:                                       ; preds = %.loopexit
  unreachable

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 4
  %i.cr = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.cp ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 4, !noalias !2092, !noundef !25
  %i.ct = load <2 x i32>, ptr %.sroa.0.014.i.i, align 4, !noalias !2092
  %i.cu = lshr i32 %i.cs, 20
  %i.cv = and <2 x i32> %i.ct, <i32 -1, i32 1048575>
  store <2 x i32> %i.cv, ptr %i.cr, align 8, !noalias !2093
  %.sroa.54.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store i32 %i.cu, ptr %.sroa.54.0..sroa_idx.i32.i, align 8, !noalias !2093
  %i.cw = or disjoint i64 %i.cp, 1                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.cw, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.1, label %.loopexit, label %bb.v, !prof !26

bb.v:                                             ; preds = %.lr.ph.i.i.1
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 12
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i, i64 16 ; 2 uses
  %i.da = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.cw ; 2 uses
  %i.db = load i32, ptr %i.cy, align 4, !noalias !2092, !noundef !25
  %i.dc = load <2 x i32>, ptr %i.cx, align 4, !noalias !2092
  %i.dd = lshr i32 %i.db, 20
  %i.de = and <2 x i32> %i.dc, <i32 -1, i32 1048575>
  store <2 x i32> %i.de, ptr %i.da, align 4, !noalias !2093
  %.sroa.54.0..sroa_idx.i32.i.1 = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i32 %i.dd, ptr %.sroa.54.0..sroa_idx.i32.i.1, align 4, !noalias !2093
  %i.df = add nuw nsw i64 %i.cp, 2                ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %bb.v
  %i.dg = and i64 %i.cl, 1
  %lcmp.mod.not.not = icmp eq i64 %i.dg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %.loopexit.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %.epil.init = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.df, %.loopexit.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.0.014.i.i.epil.init = phi ptr [ %i.af, %.lr.ph.i.i.preheader ], [ %i.cz, %.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i64 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %exitcond.not.i.i.epil = icmp eq i64 %.epil.init, %.sroa.0.0.i.i
  br i1 %exitcond.not.i.i.epil, label %.loopexit, label %.loopexit.i.loopexit.epilog-lcssa, !prof !26

.loopexit.i.loopexit.epilog-lcssa:                ; preds = %.lr.ph.i.i.epil.preheader
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i.epil.init, i64 4
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %.epil.init ; 2 uses
  %i.dj = load i32, ptr %i.dh, align 4, !noalias !2092, !noundef !25
  %i.dk = load <2 x i32>, ptr %.sroa.0.014.i.i.epil.init, align 4, !noalias !2092
  %i.dl = lshr i32 %i.dj, 20
  %i.dm = and <2 x i32> %i.dk, <i32 -1, i32 1048575>
  store <2 x i32> %i.dm, ptr %i.di, align 4, !noalias !2093
  %.sroa.54.0..sroa_idx.i32.i.epil = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 %i.dl, ptr %.sroa.54.0..sroa_idx.i32.i.epil, align 4, !noalias !2093
  %i.dn = add nuw nsw i64 %.epil.init, 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit.epilog-lcssa, %.loopexit.i.loopexit.unr-lcssa, %bb.u
  %.sroa.17.0.i = phi i64 [ 0, %bb.u ], [ %i.df, %.loopexit.i.loopexit.unr-lcssa ], [ %i.dn, %.loopexit.i.loopexit.epilog-lcssa ] ; 3 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef 8) #63, !noalias !2094
  %i.do = icmp ult i64 %.sroa.17.0.i, %.sroa.0.0.i.i
  br i1 %i.do, label %.split.us.i.i, label %.split21.us.i.invoke.i, !prof !27

.split.us.i.i:                                    ; preds = %.loopexit.i
  %i.dp = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %.sroa.17.0.i ; 3 uses
  store i32 %.sroa.8.1.ph.us.i, ptr %i.dp, align 4, !noalias !2075
  %.sroa.64.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %.sroa.1159.4.copyload.us.i, ptr %.sroa.64.0..sroa_idx5.i, align 4, !noalias !2075
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 %.sroa.13.4.copyload.us.i, ptr %.sroa.7.0..sroa_idx7.i, align 4, !noalias !2075
  %i.dq = icmp eq ptr %i.ai, %i.m
  %i.dr = add nuw nsw i64 %.sroa.17.0.i, 1        ; 3 uses
  br i1 %i.dq, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i, label %.lr.ph24.i.i.preheader

.lr.ph24.i.i.preheader:                           ; preds = %.split.us.i.i
  %exitcond28.not.i.i209 = icmp eq i64 %i.dr, %.sroa.0.0.i.i
  br i1 %exitcond28.not.i.i209, label %.split21.us.i.invoke.i, label %.lr.ph211, !prof !36

.lr.ph24.i.i:                                     ; preds = %.lr.ph211
  %exitcond28.not.i.i = icmp eq i64 %i.dw, %.sroa.0.0.i.i
  br i1 %exitcond28.not.i.i, label %.split21.us.i.invoke.i, label %.lr.ph211, !prof !37

.lr.ph211:                                        ; preds = %.lr.ph24.i.i.preheader, %.lr.ph24.i.i
  %i.ds = phi i64 [ %i.dw, %.lr.ph24.i.i ], [ %i.dr, %.lr.ph24.i.i.preheader ] ; 2 uses
  %.sroa.4.0.us23.i.i210 = phi ptr [ %i.dt, %.lr.ph24.i.i ], [ %i.ai, %.lr.ph24.i.i.preheader ] ; 3 uses
  %.sroa.11.4..sroa.4.8..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us23.i.i210, i64 8
  %.sroa.11.4.copyload7.us.i.i = load i32, ptr %.sroa.11.4..sroa.4.8..sroa_idx.us.i.i, align 4, !noalias !2095
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us23.i.i210, i64 12 ; 2 uses
  %i.du = getelementptr inbounds nuw [12 x i8], ptr %i.cj, i64 %i.ds ; 2 uses
  %i.dv = load <2 x i32>, ptr %.sroa.4.0.us23.i.i210, align 4, !noalias !2095
  store <2 x i32> %i.dv, ptr %i.du, align 4, !noalias !2096
  %.sroa.510.0..sroa_idx.us.i.i = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i32 %.sroa.11.4.copyload7.us.i.i, ptr %.sroa.510.0..sroa_idx.us.i.i, align 4, !noalias !2096
  %i.dw = add nuw nsw i64 %i.ds, 1                ; 3 uses
  %i.dx = icmp eq ptr %i.dt, %i.m
  br i1 %i.dx, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i, label %.lr.ph24.i.i

.split21.us.i.invoke.i:                           ; preds = %.lr.ph24.i.i, %.lr.ph24.i.i.preheader, %.loopexit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %.split21.us.i.cont.i unwind label %.body.thread109.i, !noalias !2075

.split21.us.i.cont.i:                             ; preds = %.split21.us.i.invoke.i
  unreachable

_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i: ; preds = %.lr.ph211, %.split.us.i.i
  %.sroa.17.1.i = phi i64 [ %i.dr, %.split.us.i.i ], [ %i.dw, %.lr.ph211 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2075
  store i64 8, ptr %i.f, align 8, !noalias !2075
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.bx, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2075
  %.sroa.761.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.by, ptr %.sroa.761.0..sroa_idx.i, align 8, !noalias !2075
  %.sroa.962.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %i.cj, ptr %.sroa.962.0..sroa_idx.i, align 8, !noalias !2075
  %.sroa.1365.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  store i64 %.sroa.0.0.i.i, ptr %.sroa.1365.0..sroa_idx.i, align 8, !noalias !2075
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store i64 %.sroa.17.1.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !noalias !2075
  %i.dy = icmp eq i64 %.sroa.17.1.i, %.sroa.0.0.i.i
  br i1 %i.dy, label %bb.ab, label %bb.w, !prof !27

bb.w:                                             ; preds = %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.17.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.1365.0..sroa_idx.i, ptr noundef nonnull @203, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #62
          to label %bb.y unwind label %bb.x, !noalias !2097

bb.x:                                             ; preds = %bb.w
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %3) #65
          to label %bb.aa unwind label %bb.z, !noalias !2098

bb.y:                                             ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64, !noalias !2097
  unreachable

bb.aa:                                            ; preds = %bb.x
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.by, i64 noundef %i.bx, i64 noundef 8) #63, !noalias !2099
  br label %common.resume

bb.ab:                                            ; preds = %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !2100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2075
  %i.eb = or disjoint i8 %2, 4
  br label %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit

bb.ac:                                            ; preds = %.thread112.i
  %i.ec = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #64, !noalias !2075
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit41.i: ; preds = %.body.thread102.i, %.body.i
  %.pn106.i = phi { ptr, i32 } [ %i.bs, %.body.thread102.i ], [ %lpad.thr_comm.split-lp.i, %.body.i ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef 8) #63, !noalias !2101
  br label %.thread112.i

.thread112.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit41.i, %.body.thread109.i, %.thread.i
  %.pn.pn85.i = phi { ptr, i32 } [ %i.t, %.thread.i ], [ %lpad.thr_comm.i, %.body.thread109.i ], [ %.pn106.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit41.i ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local24QueryRevisionsExtraInnerEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %3) #65
          to label %common.resume unwind label %bb.ac, !noalias !2102

common.resume:                                    ; preds = %.body35.i, %bb.an, %bb.ao, %.split.thread.i, %bb.aw, %bb.ax, %bb.ay, %bb.az, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit.i.i, %bb.aa, %.thread112.i
  %common.resume.op = phi { ptr, i32 } [ %i.bu, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_.exit.i.i ], [ %.pn.pn85.i, %.thread112.i ], [ %i.dz, %bb.aa ], [ %6, %.split.thread.i ], [ %i.gi, %bb.ao ], [ %i.gg, %.body35.i ], [ %i.gi, %bb.an ], [ %lpad.thr_comm.split-lp.i18, %bb.ay ], [ %.pn79158.i, %bb.az ], [ %i.ii, %bb.ax ], [ %i.ii, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit: ; preds = %bb.q, %bb.ab
  %.sink189.i = phi i8 [ %i.eb, %bb.ab ], [ %2, %bb.q ]
  %.sink.i = phi ptr [ %i.by, %bb.ab ], [ %i.ad, %bb.q ]
  %i.ed = or disjoint i8 %.sink189.i, 8
  br label %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_.exit

bb.ad:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.ee = load i64, ptr %1, align 8, !range !38, !alias.scope !2104, !noalias !2105, !noundef !25
  %i.ef = trunc nuw i64 %i.ee to i1               ; 2 uses
  %i.eg = load ptr, ptr %i.j, align 8, !alias.scope !2104, !noalias !2105, !nonnull !25, !noundef !25 ; 6 uses
  %i.eh = load ptr, ptr %i.i, align 8, !alias.scope !2104, !noalias !2105, !nonnull !25, !noundef !25 ; 11 uses
  %i.ei = ptrtoint ptr %i.eg to i64               ; 3 uses
  %i.ej = ptrtoint ptr %i.eh to i64               ; 3 uses
  %i.ek = sub nuw i64 %i.ei, %i.ej                ; 2 uses
  br i1 %i.ef, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.el = udiv exact i64 %i.ek, 12
  br label %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2

bb.af:                                            ; preds = %bb.ad
  %i.em = lshr exact i64 %i.ek, 3
  br label %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2

_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2: ; preds = %bb.af, %bb.ae
  %.sroa.0.0.i.i3 = phi i64 [ %i.el, %bb.ae ], [ %i.em, %bb.af ] ; 21 uses
  %i.en = icmp samesign ugt i64 %.sroa.0.0.i.i3, 4294967295
  %i.eo = shl nuw i64 %.sroa.0.0.i.i3, 32
  %.sroa.016.0.insert.insert.i4 = select i1 %i.en, i64 513, i64 %i.eo ; 3 uses
  %i.ep = trunc i64 %.sroa.016.0.insert.insert.i4 to i1
  br i1 %i.ep, label %bb.ag, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs45bxiIjzMqg_5salsa.exit.i, !prof !26

bb.ag:                                            ; preds = %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2106
  store i8 2, ptr %i.a, align 1, !noalias !2106
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 67, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #62, !noalias !2106
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs45bxiIjzMqg_5salsa.exit.i: ; preds = %_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len.exit.i2
  %i.eq = icmp samesign ugt i64 %.sroa.0.0.i.i3, 1152921504606846975
  br i1 %i.eq, label %bb.ah, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i, !prof !26

bb.ah:                                            ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs45bxiIjzMqg_5salsa.exit.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @196, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #62, !noalias !2107
  unreachable

_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultmNtNtNtB4_3num5error15TryFromIntErrorE6expectCs45bxiIjzMqg_5salsa.exit.i
  %i.er = shl nuw nsw i64 %.sroa.0.0.i.i3, 3      ; 6 uses
  %i.es = icmp eq i64 %.sroa.0.0.i.i3, 0          ; 6 uses
  br i1 %i.es, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i, label %bb.ai

bb.ai:                                            ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2108
  %i.et = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.er, i64 noundef 4) #63, !noalias !2108 ; 2 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.aj, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i, !prof !26

bb.aj:                                            ; preds = %bb.ai
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef %i.er) #62, !noalias !2108
  unreachable

_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i: ; preds = %bb.ai, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i
  %.sroa.0.0.i24.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_.exit.i.i ], [ %i.et, %bb.ai ] ; 14 uses
  %i.ev = icmp eq ptr %i.eh, %i.eg                ; 2 uses
  br i1 %i.ef, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i

_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i: ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i
  br i1 %i.ev, label %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i, %bb.al
  %.sroa.16.0.us114.i = phi i64 [ %i.fe, %bb.al ], [ 0, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i ] ; 5 uses
  %i.ew = phi ptr [ %i.ex, %bb.al ], [ %i.eh, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i ] ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12 ; 4 uses
  %.sroa.1155.4..sroa_idx.us.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %.sroa.1155.4.copyload.us.i = load i32, ptr %.sroa.1155.4..sroa_idx.us.i, align 4, !noalias !2109 ; 3 uses
  %.sroa.13.4..sroa_idx.us.i18 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %.sroa.13.4.copyload.us.i19 = load i32, ptr %.sroa.13.4..sroa_idx.us.i18, align 4, !noalias !2109 ; 3 uses
  %.sroa.8.1.ph.us.i20 = load i32, ptr %i.ew, align 4, !noalias !2109 ; 2 uses
  %i.ey = icmp ugt i32 %.sroa.13.4.copyload.us.i19, 4095
  %i.ez = icmp ugt i32 %.sroa.1155.4.copyload.us.i, 1048575
  %or.cond.us.i21 = or i1 %i.ez, %i.ey
  br i1 %or.cond.us.i21, label %.split.us.i22, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph115.i
  %exitcond138.not.i = icmp eq i64 %.sroa.16.0.us114.i, %.sroa.0.0.i.i3
  br i1 %exitcond138.not.i, label %.split108.us.invoke.i, label %bb.al, !prof !26

bb.al:                                            ; preds = %bb.ak
  %i.fa = shl nuw i32 %.sroa.13.4.copyload.us.i19, 20
  %i.fb = or disjoint i32 %i.fa, %.sroa.1155.4.copyload.us.i
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %.sroa.16.0.us114.i ; 2 uses
  store i32 %.sroa.8.1.ph.us.i20, ptr %i.fc, align 4, !noalias !2106
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 %i.fb, ptr %i.fd, align 4, !noalias !2106
  %i.fe = add i64 %.sroa.16.0.us114.i, 1          ; 2 uses
  %i.ff = icmp eq ptr %i.ex, %i.eg
  br i1 %i.ff, label %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph115.i

.split.us.i22:                                    ; preds = %.lr.ph115.i
  %i.fg = icmp samesign ugt i64 %.sroa.0.0.i.i3, 768614336404564650
  br i1 %i.fg, label %4, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i, !prof !26

_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i: ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.i
  br i1 %i.ev, label %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph.i5.preheader

.lr.ph.i5.preheader:                              ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i
  %exitcond.not.i6212 = icmp eq i64 %.sroa.0.0.i.i3, 0
  br i1 %exitcond.not.i6212, label %.split108.us.invoke.i, label %.lr.ph214, !prof !36

.lr.ph214:                                        ; preds = %.lr.ph.i5.preheader
  %i.fh = add i64 %i.ei, -8
  %i.fi = sub i64 %i.fh, %i.ej                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 3
  %i.fk = add nsw i64 %.sroa.0.0.i.i3, -1         ; 2 uses
  %i.fl = tail call i64 @llvm.umin.i64(i64 %i.fj, i64 %i.fk) ; 2 uses
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check234 = icmp samesign ult i64 %i.fl, 20
  br i1 %min.iters.check234, label %scalar.ph233.preheader, label %vector.scevcheck226, !prof !36

scalar.ph233.preheader:                           ; preds = %vector.body241, %vector.memcheck235, %vector.scevcheck226, %.lr.ph214
  %.ph = phi ptr [ %i.eh, %vector.memcheck235 ], [ %i.eh, %vector.scevcheck226 ], [ %i.eh, %.lr.ph214 ], [ %i.fz, %vector.body241 ]
  %.sroa.16.0111.i213.ph = phi i64 [ 0, %vector.memcheck235 ], [ 0, %vector.scevcheck226 ], [ 0, %.lr.ph214 ], [ %n.vec240, %vector.body241 ]
  br label %scalar.ph233

vector.scevcheck226:                              ; preds = %.lr.ph214
  %i.fn = sub i64 %i.ei, %i.ej
  %i.fo = and i64 %i.fn, 7
  %ident.check227.not = icmp eq i64 %i.fo, 0
  br i1 %ident.check227.not, label %vector.memcheck235, label %scalar.ph233.preheader, !prof !2078

vector.memcheck235:                               ; preds = %vector.scevcheck226
  %i.fp = lshr i64 %i.fi, 3
  %i.fq = tail call i64 @llvm.umin.i64(i64 %i.fp, i64 %i.fk)
  %i.fr = shl nuw i64 %i.fq, 3
  %i.fs = add i64 %i.fr, 8                        ; 2 uses
  %i.ft = getelementptr i8, ptr %.sroa.0.0.i24.i, i64 %i.fs
  %i.fu = getelementptr i8, ptr %i.eh, i64 %i.fs
  %bound0236 = icmp ult ptr %.sroa.0.0.i24.i, %i.fu
  %bound1237 = icmp ult ptr %i.eh, %i.ft
  %found.conflict238 = and i1 %bound0236, %bound1237
  br i1 %found.conflict238, label %scalar.ph233.preheader, label %vector.ph239, !prof !36

vector.ph239:                                     ; preds = %vector.memcheck235
  %i.fv = and i64 %i.fm, 3                        ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = select i1 %i.fw, i64 4, i64 %i.fv
  %n.vec240 = sub nsw i64 %i.fm, %i.fx            ; 3 uses
  %i.fy = shl i64 %n.vec240, 3
  %i.fz = getelementptr i8, ptr %i.eh, i64 %i.fy
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next253, %vector.body241 ] ; 4 uses
  %i.ga = shl i64 %index242, 3                    ; 2 uses
  %next.gep243 = getelementptr i8, ptr %i.eh, i64 %i.ga
  %i.gb = getelementptr i8, ptr %i.eh, i64 %i.ga
  %next.gep244 = getelementptr i8, ptr %i.gb, i64 16
  %wide.vec245 = load <4 x i32>, ptr %next.gep243, align 4, !alias.scope !2110, !noalias !2109
  %wide.vec248 = load <4 x i32>, ptr %next.gep244, align 4, !alias.scope !2110, !noalias !2109
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %index242
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %index242
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store <4 x i32> %wide.vec245, ptr %i.gc, align 4, !alias.scope !2111, !noalias !2106
  store <4 x i32> %wide.vec248, ptr %i.ge, align 4, !alias.scope !2111, !noalias !2106
  %index.next253 = add nuw i64 %index242, 4       ; 2 uses
  %i.gf = icmp eq i64 %index.next253, %n.vec240
  br i1 %i.gf, label %scalar.ph233.preheader, label %vector.body241, !prof !2081, !llvm.loop !2031

.body35.i:                                        ; preds = %bb.au
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i25.i, i64 noundef %i.gj, i64 noundef 4) #63, !noalias !2112
  br label %common.resume

.lr.ph.i5:                                        ; preds = %scalar.ph233
  %exitcond.not.i6 = icmp eq i64 %i.gq, %.sroa.0.0.i.i3
  br i1 %exitcond.not.i6, label %.split108.us.invoke.i, label %scalar.ph233, !prof !2085, !llvm.loop !2038

_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8: ; preds = %scalar.ph233, %bb.al, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i
  %.us-phi.i9 = phi i64 [ 0, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.us.i ], [ 0, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_.exit.split.split.i ], [ %i.fe, %bb.al ], [ %i.gq, %scalar.ph233 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2106
  store i64 4, ptr %i.b, align 8, !noalias !2106
  %.sroa.7.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.er, ptr %.sroa.7.0..sroa_idx39.i, align 8, !noalias !2106
  %.sroa.9.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.0.0.i24.i, ptr %.sroa.9.0..sroa_idx.i10, align 8, !noalias !2106
  %.sroa.11.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.0.0.i24.i, ptr %.sroa.11.0..sroa_idx.i11, align 8, !noalias !2106
  %.sroa.14.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.14.0..sroa_idx.i12, align 8, !noalias !2106
  %.sroa.16.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  store i64 %.us-phi.i9, ptr %.sroa.16.0..sroa_idx.i13, align 8, !noalias !2106
  %i.gh = icmp eq i64 %.us-phi.i9, %.sroa.0.0.i.i3
  br i1 %i.gh, label %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i, label %bb.am, !prof !27

bb.am:                                            ; preds = %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.16.0..sroa_idx.i13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.14.0..sroa_idx.i12, ptr noundef nonnull @203, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #62
          to label %bb.ap unwind label %bb.an, !noalias !2113

bb.an:                                            ; preds = %bb.am
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.es, label %common.resume, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i24.i, i64 noundef %i.er, i64 noundef 4) #63, !noalias !2114
  br label %common.resume

bb.ap:                                            ; preds = %bb.am
  unreachable

_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i: ; preds = %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2106
  br label %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_.exit

4:                                                ; preds = %.split.us.i22
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @196, ptr noundef nonnull inttoptr (i64 59 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @197) #62
          to label %.noexc.i47 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_.exit.i, !noalias !2106

.noexc.i47:                                       ; preds = %4
  unreachable

_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i: ; preds = %.split.us.i22
  %i.gj = mul nuw nsw i64 %.sroa.0.0.i.i3, 12     ; 6 uses
  br i1 %i.es, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2115
  %i.gk = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.gj, i64 noundef 4) #63, !noalias !2115 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %bb.ar, label %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i, !prof !26

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef %i.gj) #62
          to label %.noexc26.i46 unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_.exit.i, !noalias !2106

.noexc26.i46:                                     ; preds = %bb.ar
  unreachable

.split108.us.invoke.i:                            ; preds = %.lr.ph.i5, %bb.ak, %.lr.ph.i5.preheader
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %5 unwind label %bb.ay, !noalias !2106

scalar.ph233:                                     ; preds = %scalar.ph233.preheader, %.lr.ph.i5
  %i.gm = phi ptr [ %i.gn, %.lr.ph.i5 ], [ %.ph, %scalar.ph233.preheader ] ; 2 uses
  %.sroa.16.0111.i213 = phi i64 [ %i.gq, %.lr.ph.i5 ], [ %.sroa.16.0111.i213.ph, %scalar.ph233.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i24.i, i64 %.sroa.16.0111.i213
  %i.gp = load <2 x i32>, ptr %i.gm, align 4, !noalias !2109
  store <2 x i32> %i.gp, ptr %i.go, align 4, !noalias !2106
  %i.gq = add nuw nsw i64 %.sroa.16.0111.i213, 1  ; 3 uses
  %i.gr = icmp eq ptr %i.gn, %i.eg
  br i1 %i.gr, label %_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i8, label %.lr.ph.i5

5:                                                ; preds = %.invoke.i28, %.split108.us.invoke.i
  unreachable

_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i: ; preds = %bb.aq, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i
  %.sroa.0.0.i25.i = phi ptr [ inttoptr (i64 4 to ptr), %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE6layoutB7_.exit.i.i ], [ %i.gk, %bb.aq ] ; 11 uses
  %i.gs = icmp eq i64 %.sroa.16.0.us114.i, 0
  br i1 %i.gs, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i, label %.lr.ph.i.i24.preheader

.lr.ph.i.i24.preheader:                           ; preds = %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i
  %i.gt = add i64 %.sroa.16.0.us114.i, 2305843009213693951 ; 2 uses
  %i.gu = and i64 %i.gt, 2305843009213693951      ; 2 uses
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %i.gw = icmp eq i64 %i.gu, 0
  br i1 %i.gw, label %.lr.ph.i.i24.epil.preheader, label %.lr.ph.i.i24.preheader.new

.lr.ph.i.i24.preheader.new:                       ; preds = %.lr.ph.i.i24.preheader
  %unroll_iter303 = and i64 %i.gv, 4611686018427387902
  br label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.as, %.lr.ph.i.i24.preheader.new
  %i.gx = phi i64 [ 0, %.lr.ph.i.i24.preheader.new ], [ %i.hn, %bb.as ] ; 4 uses
  %.sroa.0.014.i.i25 = phi ptr [ %.sroa.0.0.i24.i, %.lr.ph.i.i24.preheader.new ], [ %i.hh, %bb.as ] ; 5 uses
  %niter304 = phi i64 [ 0, %.lr.ph.i.i24.preheader.new ], [ %niter304.next.1, %bb.as ]
  %exitcond.not.i.i26 = icmp eq i64 %i.gx, %.sroa.0.0.i.i3
  br i1 %exitcond.not.i.i26, label %.loopexit305, label %.lr.ph.i.i24.1, !prof !26

.loopexit305:                                     ; preds = %.lr.ph.i.i24, %.lr.ph.i.i24.1, %.lr.ph.i.i24.epil.preheader
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %.noexc29.i unwind label %bb.aw, !noalias !2106

.noexc29.i:                                       ; preds = %.loopexit305
  unreachable

.lr.ph.i.i24.1:                                   ; preds = %.lr.ph.i.i24
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i25, i64 4
  %i.gz = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %i.gx ; 2 uses
  %i.ha = load i32, ptr %i.gy, align 4, !noalias !2116, !noundef !25
  %i.hb = load <2 x i32>, ptr %.sroa.0.014.i.i25, align 4, !noalias !2116
  %i.hc = lshr i32 %i.ha, 20
  %i.hd = and <2 x i32> %i.hb, <i32 -1, i32 1048575>
  store <2 x i32> %i.hd, ptr %i.gz, align 4, !noalias !2117
  %.sroa.54.0..sroa_idx.i28.i = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store i32 %i.hc, ptr %.sroa.54.0..sroa_idx.i28.i, align 4, !noalias !2117
  %i.he = or disjoint i64 %i.gx, 1                ; 2 uses
  %exitcond.not.i.i26.1 = icmp eq i64 %i.he, %.sroa.0.0.i.i3
  br i1 %exitcond.not.i.i26.1, label %.loopexit305, label %bb.as, !prof !26

bb.as:                                            ; preds = %.lr.ph.i.i24.1
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i25, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i25, i64 12
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i25, i64 16 ; 2 uses
  %i.hi = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %i.he ; 2 uses
  %i.hj = load i32, ptr %i.hg, align 4, !noalias !2116, !noundef !25
  %i.hk = load <2 x i32>, ptr %i.hf, align 4, !noalias !2116
  %i.hl = lshr i32 %i.hj, 20
  %i.hm = and <2 x i32> %i.hk, <i32 -1, i32 1048575>
  store <2 x i32> %i.hm, ptr %i.hi, align 4, !noalias !2117
  %.sroa.54.0..sroa_idx.i28.i.1 = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i32 %i.hl, ptr %.sroa.54.0..sroa_idx.i28.i.1, align 4, !noalias !2117
  %i.hn = add nuw nsw i64 %i.gx, 2                ; 3 uses
  %niter304.next.1 = add i64 %niter304, 2         ; 2 uses
  %niter304.ncmp.1 = icmp eq i64 %niter304.next.1, %unroll_iter303
  br i1 %niter304.ncmp.1, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i24

_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.unr-lcssa: ; preds = %bb.as
  %i.ho = and i64 %i.gt, 1
  %lcmp.mod300.not.not = icmp eq i64 %i.ho, 0
  br i1 %lcmp.mod300.not.not, label %.lr.ph.i.i24.epil.preheader, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i

.lr.ph.i.i24.epil.preheader:                      ; preds = %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i24.preheader
  %.epil.init299 = phi i64 [ 0, %.lr.ph.i.i24.preheader ], [ %i.hn, %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.0.014.i.i25.epil.init = phi ptr [ %.sroa.0.0.i24.i, %.lr.ph.i.i24.preheader ], [ %i.hh, %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod302 = trunc i64 %i.gv to i1
  tail call void @llvm.assume(i1 %lcmp.mod302)
  %exitcond.not.i.i26.epil = icmp eq i64 %.epil.init299, %.sroa.0.0.i.i3
  br i1 %exitcond.not.i.i26.epil, label %.loopexit305, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.epilog-lcssa, !prof !26

_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.epilog-lcssa: ; preds = %.lr.ph.i.i24.epil.preheader
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0.014.i.i25.epil.init, i64 4
  %i.hq = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %.epil.init299 ; 2 uses
  %i.hr = load i32, ptr %i.hp, align 4, !noalias !2116, !noundef !25
  %i.hs = load <2 x i32>, ptr %.sroa.0.014.i.i25.epil.init, align 4, !noalias !2116
  %i.ht = lshr i32 %i.hr, 20
  %i.hu = and <2 x i32> %i.hs, <i32 -1, i32 1048575>
  store <2 x i32> %i.hu, ptr %i.hq, align 4, !noalias !2117
  %.sroa.54.0..sroa_idx.i28.i.epil = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store i32 %i.ht, ptr %.sroa.54.0..sroa_idx.i28.i.epil, align 4, !noalias !2117
  %i.hv = add nuw nsw i64 %.epil.init299, 1
  br label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i

_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i: ; preds = %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.epilog-lcssa, %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.unr-lcssa, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i
  %.sroa.17.0.i27 = phi i64 [ 0, %_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_.exit.i ], [ %i.hn, %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.unr-lcssa ], [ %i.hv, %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i.loopexit.epilog-lcssa ] ; 3 uses
  br i1 %i.es, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i, label %bb.at

bb.at:                                            ; preds = %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i24.i, i64 noundef %i.er, i64 noundef 4) #63, !noalias !2118
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i: ; preds = %bb.at, %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_.exit.i
  %i.hw = icmp ult i64 %.sroa.17.0.i27, %.sroa.0.0.i.i3
  br i1 %i.hw, label %.split.us.i.i30, label %.invoke.i28, !prof !27

.invoke.i28:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %5 unwind label %bb.aw, !noalias !2106

.split.us.i.i30:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_.exit.i
  %i.hx = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %.sroa.17.0.i27 ; 3 uses
  store i32 %.sroa.8.1.ph.us.i20, ptr %i.hx, align 4, !noalias !2106
  %.sroa.64.0..sroa_idx5.i31 = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  store i32 %.sroa.1155.4.copyload.us.i, ptr %.sroa.64.0..sroa_idx5.i31, align 4, !noalias !2106
  %.sroa.7.0..sroa_idx7.i32 = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 %.sroa.13.4.copyload.us.i19, ptr %.sroa.7.0..sroa_idx7.i32, align 4, !noalias !2106
  %i.hy = icmp eq ptr %i.ex, %i.eg
  %i.hz = add nuw nsw i64 %.sroa.17.0.i27, 1      ; 3 uses
  br i1 %i.hy, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i, label %.lr.ph24.i.i33.preheader

.lr.ph24.i.i33.preheader:                         ; preds = %.split.us.i.i30
  %exitcond28.not.i.i35215 = icmp eq i64 %i.hz, %.sroa.0.0.i.i3
  br i1 %exitcond28.not.i.i35215, label %.split21.us.i.i, label %.lr.ph217, !prof !36

.lr.ph24.i.i33:                                   ; preds = %.lr.ph217
  %exitcond28.not.i.i35 = icmp eq i64 %i.ie, %.sroa.0.0.i.i3
  br i1 %exitcond28.not.i.i35, label %.split21.us.i.i, label %.lr.ph217, !prof !37

.lr.ph217:                                        ; preds = %.lr.ph24.i.i33.preheader, %.lr.ph24.i.i33
  %i.ia = phi i64 [ %i.ie, %.lr.ph24.i.i33 ], [ %i.hz, %.lr.ph24.i.i33.preheader ] ; 2 uses
  %.sroa.4.0.us23.i.i34216 = phi ptr [ %i.ib, %.lr.ph24.i.i33 ], [ %i.ex, %.lr.ph24.i.i33.preheader ] ; 3 uses
  %.sroa.11.4..sroa.4.8..sroa_idx.us.i.i36 = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us23.i.i34216, i64 8
  %.sroa.11.4.copyload7.us.i.i37 = load i32, ptr %.sroa.11.4..sroa.4.8..sroa_idx.us.i.i36, align 4, !noalias !2119
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.4.0.us23.i.i34216, i64 12 ; 2 uses
  %i.ic = getelementptr inbounds nuw [12 x i8], ptr %.sroa.0.0.i25.i, i64 %i.ia ; 2 uses
  %i.id = load <2 x i32>, ptr %.sroa.4.0.us23.i.i34216, align 4, !noalias !2119
  store <2 x i32> %i.id, ptr %i.ic, align 4, !noalias !2120
  %.sroa.510.0..sroa_idx.us.i.i42 = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  store i32 %.sroa.11.4.copyload7.us.i.i37, ptr %.sroa.510.0..sroa_idx.us.i.i42, align 4, !noalias !2120
  %i.ie = add nuw nsw i64 %i.ia, 1                ; 3 uses
  %i.if = icmp eq ptr %i.ib, %i.eg
  br i1 %i.if, label %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i, label %.lr.ph24.i.i33

.split21.us.i.i:                                  ; preds = %.lr.ph24.i.i33, %.lr.ph24.i.i33.preheader
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @40, ptr noundef nonnull inttoptr (i64 117 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #62
          to label %.noexc34.i unwind label %.split.thread.i, !noalias !2106

.split.thread.i:                                  ; preds = %.split21.us.i.i
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i25.i, i64 noundef %i.gj, i64 noundef 4) #63, !noalias !2121
  br label %common.resume

.noexc34.i:                                       ; preds = %.split21.us.i.i
  unreachable

_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i: ; preds = %.lr.ph217, %.split.us.i.i30
  %.sroa.17.1.i43 = phi i64 [ %i.hz, %.split.us.i.i30 ], [ %i.ie, %.lr.ph217 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2106
  store i64 4, ptr %i.c, align 8, !noalias !2106
  %.sroa.5.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.gj, ptr %.sroa.5.0..sroa_idx.i44, align 8, !noalias !2106
  %.sroa.757.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.0.0.i25.i, ptr %.sroa.757.0..sroa_idx.i, align 8, !noalias !2106
  %.sroa.958.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.0.0.i25.i, ptr %.sroa.958.0..sroa_idx.i, align 8, !noalias !2106
  %.sroa.1361.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %.sroa.0.0.i.i3, ptr %.sroa.1361.0..sroa_idx.i, align 8, !noalias !2106
  %.sroa.17.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  store i64 %.sroa.17.1.i43, ptr %.sroa.17.0..sroa_idx.i45, align 8, !noalias !2106
  %i.ig = icmp eq i64 %.sroa.17.1.i43, %.sroa.0.0.i.i3
  br i1 %i.ig, label %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i, label %bb.au, !prof !27

bb.au:                                            ; preds = %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.17.0..sroa_idx.i45, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.1361.0..sroa_idx.i, ptr noundef nonnull @203, ptr nonnull inttoptr (i64 99 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @204) #62
          to label %bb.av unwind label %.body35.i, !noalias !2122

bb.av:                                            ; preds = %bb.au
  unreachable

_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i: ; preds = %_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2106
  %i.ih = or disjoint i8 %2, 4
  br label %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_.exit

bb.aw:                                            ; preds = %.invoke.i28, %.loopexit305
  %.sroa.012.2.i = phi i1 [ true, %.loopexit305 ], [ false, %.invoke.i28 ]
  %i.ii = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.es, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i25.i, i64 noundef %i.gj, i64 noundef 4) #63, !noalias !2121
  br i1 %.sroa.012.2.i, label %bb.az, label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_.exit.i: ; preds = %bb.ar, %4
  %lpad.thr_comm.i45 = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %.split108.us.invoke.i
  %lpad.thr_comm.split-lp.i18 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.es, label %common.resume, label %bb.az

bb.az:                                            ; preds = %bb.ay, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_.exit.i, %bb.ax
  %.pn79158.i = phi { ptr, i32 } [ %lpad.thr_comm.i45, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_.exit.i ], [ %lpad.thr_comm.split-lp.i18, %bb.ay ], [ %i.ii, %bb.ax ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.i24.i, i64 noundef %i.er, i64 noundef 4) #63, !noalias !2123
  br label %common.resume

_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_.exit: ; preds = %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit
  %.sink.i15.sink = phi i8 [ %i.ed, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit ], [ %i.ih, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i ], [ %2, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i ]
  %.sroa.0.0.i25.sink.i.sink = phi ptr [ %.sink.i, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit ], [ %.sroa.0.0.i25.i, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i ], [ %.sroa.0.0.i24.i, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i ]
  %.sroa.6.0.extract.trunc.i.i17.sink.in.in = phi i64 [ %.sroa.016.0.insert.insert.i, %_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_.exit ], [ %.sroa.016.0.insert.insert.i4, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_.exit.i ], [ %.sroa.016.0.insert.insert.i4, %_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_.exit.i ]
  %.sroa.6.0.extract.trunc.i.i17.sink.in = lshr i64 %.sroa.6.0.extract.trunc.i.i17.sink.in.in, 32
  %.sroa.6.0.extract.trunc.i.i17.sink = trunc nuw i64 %.sroa.6.0.extract.trunc.i.i17.sink.in to i32
  store i8 %.sink.i15.sink, ptr %0, align 1
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %.sroa.0.0.i25.sink.i.sink, ptr %i.ij, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i32 %.sroa.6.0.extract.trunc.i.i17.sink, ptr %i.ik, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs45bxiIjzMqg_5salsa(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 8, 145) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.n, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i64 %2, 4
  %i.k = and i64 %2, 8
  %..i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph = phi i64 [ %i.i, %bb.e ], [ %.sroa.03.0.i, %bb.f ] ; 5 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 8, 145) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !26

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 6 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !41

_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.r, label %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i

_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2126
  %i.w = tail call noundef align 16 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 16) #63, !noalias !2126 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.k, label %bb.r

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  br i1 %3, label %bb.m, label %bb.q, !prof !26

bb.k:                                             ; preds = %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i
  br i1 %3, label %bb.l, label %bb.q, !prof !26

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.s) #62, !noalias !2126
  unreachable

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #62, !noalias !2126
  unreachable

bb.n:                                             ; preds = %bb.d
  br i1 %3, label %bb.o, label %bb.p, !prof !26

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 57 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #62
  unreachable

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.s

bb.q:                                             ; preds = %bb.k, %bb.j
  %.sroa.11.0.ph = phi i64 [ undef, %bb.j ], [ %i.s, %bb.k ]
  %.sroa.7.0.ph = phi i64 [ 0, %bb.j ], [ 16, %bb.k ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.0.ph, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.11.0.ph, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

bb.r:                                             ; preds = %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i, %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %.sroa.0.0.i.i11.i = phi ptr [ %i.w, %_RNvXs_NtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6globalNtB4_6GlobalNtB6_9Allocator8allocate.exit.i ], [ inttoptr (i64 16 to ptr), %_RNvMs1_NtCs8bMtf1JxJvX_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i11.i, i64 %i.q ; 2 uses
  %i.ab = add nsw i64 %.sroa.4.0.i.ph, -1         ; 2 uses
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.ph, 9
  %i.ad = lshr i64 %.sroa.4.0.i.ph, 3
  %i.ae = mul nuw nsw i64 %i.ad, 7
  %.sroa.07.0.i = select i1 %i.ac, i64 %i.ab, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.aa, i8 -1, i64 %i.r, i1 false)
  store ptr %i.aa, ptr %0, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.07.0.i, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.618.0..sroa_idx, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.q, %bb.b, %bb.r
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs45bxiIjzMqg_5salsa(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef range(i64 12, 73) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @9, i64 32, i1 false)
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 15
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.c, label %bb.l, label %bb.e, !prof !26

bb.e:                                             ; preds = %bb.d
  %i.d = shl nuw i64 %2, 3
  %i.e = udiv i64 %i.d, 7
  %i.f = add nsw i64 %i.e, -1
  %i.g = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.f, i1 true)
  %i.h = lshr i64 -1, %i.g
  %i.i = add nuw nsw i64 %i.h, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.j = icmp samesign ult i64 %2, 4
  %i.k = and i64 %2, 8
  %..i = add nuw nsw i64 %i.k, 8
  %.sroa.03.0.i = select i1 %i.j, i64 4, i64 %..i
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.i.ph = phi i64 [ %i.i, %bb.e ], [ %.sroa.03.0.i, %bb.f ] ; 5 uses
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 12, 73) %1, i64 %.sroa.4.0.i.ph) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.j, label %bb.h, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.o = icmp ugt i64 %i.n, -16
  br i1 %i.o, label %bb.j, label %bb.i, !prof !26

bb.i:                                             ; preds = %bb.h
  %i.p = add nuw i64 %i.n, 15
  %i.q = and i64 %i.p, -16                        ; 3 uses
  %i.r = add nuw nsw i64 %.sroa.4.0.i.ph, 16      ; 2 uses
  %i.s = add i64 %i.r, %i.q                       ; 5 uses
  %i.t = icmp ult i64 %i.s, %i.q
  %i.u = icmp ugt i64 %i.s, 9223372036854775792
  %or.cond.i = or i1 %i.t, %i.u
  br i1 %or.cond.i, label %bb.j, label %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, !prof !41

_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.i
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %bb.n, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMs1_NtCsgQfI1edjipl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #63, !noalias !2129
end_hunk_2
begin_hunk_3_@llvm.vector.reduce.add.v2i64
!1921 = !{!1818, !1762, !1760}
!1922 = !{!1822, !1820, !1818, !1817, !1762, !1760, !1761}
!1923 = !{!1818, !1823, !1762, !1760}
!1924 = !{!1827, !1825, !1762, !1760, !1761}
!1925 = !{!1762, !1760}
!1926 = !{!1829}
!1927 = !{!1830}
!1928 = !{!1830, !1829}
!1929 = !{!1832, !1830, !1829}
!1930 = !{!1838, !1836, !1834, !1830, !1829}
!1931 = !{!1840}
!1932 = !{!1840, !1830, !1829}
!1933 = !{!1840, !1829}
!1934 = !{!1841, !1830}
!1935 = !{!1843, !1830, !1829}
!1936 = !{!1847, !1845, !1843, !1830, !1829}
!1937 = !{!1849}
!1938 = !{!1851}
!1939 = !{!1853}
!1940 = !{!1853, !1851, !1849, !1829}
!1941 = !{!1853, !1851, !1849, !1830, !1829}
!1942 = !{!1855, !1830, !1829}
!1943 = !{!1863, !1862, !1860, !1859, !1857, !1830, !1829}
!1944 = !{!1857, !1830, !1829}
!1945 = !{!1867, !1865, !1830, !1829}
!1946 = !{!1871, !1869, !1830, !1829}
!1947 = !{!1874, !1873, !1830, !1829}
!1948 = !{!1876}
!1949 = !{!1877, !1874, !1873, !1830, !1829}
!1950 = !{!1879}
!1951 = !{!1881}
!1952 = !{!1883}
!1953 = !{!1883, !1881, !1879}
!1954 = !{!1883, !1881, !1879, !1874, !1873, !1830, !1829}
!1955 = !{!1834, !1830, !1829}
!1956 = !{!1887, !1885, !1830, !1829}
!1957 = distinct !{!1957, i1 false, !"_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_"}
!1958 = distinct !{!1958, !1957, !"_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_: argument 1"}
!1959 = distinct !{!1959, i1 false, !"_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len"}
!1960 = distinct !{!1960, !1959, !"_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len: argument 0"}
!1961 = distinct !{!1961, !1957, !"_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_: argument 2"}
!1962 = distinct !{!1962, !1957, !"_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headerNtB6_24QueryRevisionsExtraInnerNtB6_13QueryEdgeIterEB8_: argument 0"}
!1963 = distinct !{!1963, i1 false, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeE8allocateB7_"}
!1964 = distinct !{!1964, !1963, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeE8allocateB7_: argument 0"}
!1965 = distinct !{!1965, i1 false, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!1966 = distinct !{!1966, !1965, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 1"}
!1967 = distinct !{!1967, i1 false, !"LVerDomain"}
!1968 = distinct !{!1968, !1967}
!1969 = distinct !{!1969, !1967}
!1970 = distinct !{!1970, !39, !40, !2082}
!1971 = distinct !{!1971, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_9QueryEdgeEEBG_"}
!1972 = distinct !{!1972, !1971, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_9QueryEdgeEEBG_: argument 0:thread"}
!1973 = distinct !{!1973, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!1974 = distinct !{!1974, !1973, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0:thread"}
!1975 = distinct !{!1975, !1971, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_9QueryEdgeEEBG_: argument 0"}
!1976 = distinct !{!1976, !1973, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!1977 = distinct !{!1977, !39, !2086}
!1978 = distinct !{!1978, i1 false, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeE6finishB7_"}
!1979 = distinct !{!1979, !1978, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeE6finishB7_: argument 2"}
!1980 = distinct !{!1980, !1978, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeE6finishB7_: argument 0"}
!1981 = distinct !{!1981, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_"}
!1982 = distinct !{!1982, !1981, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_: argument 0"}
!1983 = distinct !{!1983, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!1984 = distinct !{!1984, !1983, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!1985 = distinct !{!1985, !1978, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeE6finishB7_: argument 1"}
!1986 = distinct !{!1986, i1 false, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeE8allocateB7_"}
!1987 = distinct !{!1987, !1986, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeE8allocateB7_: argument 0"}
!1988 = distinct !{!1988, i1 false, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB26_6copied6CopiedINtNtNtB2a_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B3D_4edgeEEB8_"}
!1989 = distinct !{!1989, !1988, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB26_6copied6CopiedINtNtNtB2a_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B3D_4edgeEEB8_: argument 0"}
!1990 = distinct !{!1990, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENvMsl_B1K_B1I_4edgeENtNtNtB9_6traits8iterator8Iterator4nextB1M_"}
!1991 = distinct !{!1991, !1990, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENvMsl_B1K_B1I_4edgeENtNtNtB9_6traits8iterator8Iterator4nextB1M_: argument 1"}
!1992 = distinct !{!1992, !1990, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENvMsl_B1K_B1I_4edgeENtNtNtB9_6traits8iterator8Iterator4nextB1M_: argument 0"}
!1993 = distinct !{!1993, i1 false, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_"}
!1994 = distinct !{!1994, !1993, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_: argument 1"}
!1995 = distinct !{!1995, !1993, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_: argument 0"}
!1996 = distinct !{!1996, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_"}
!1997 = distinct !{!1997, !1996, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_: argument 0"}
!1998 = distinct !{!1998, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!1999 = distinct !{!1999, !1998, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2000 = distinct !{!2000, i1 false, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_"}
!2001 = distinct !{!2001, !2000, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_: argument 1"}
!2002 = distinct !{!2002, !2000, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderNtB6_24QueryRevisionsExtraInnerNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_: argument 0"}
!2003 = distinct !{!2003, i1 false, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!2004 = distinct !{!2004, !2003, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 1"}
!2005 = distinct !{!2005, i1 false, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeE6finishB7_"}
!2006 = distinct !{!2006, !2005, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeE6finishB7_: argument 2"}
!2007 = distinct !{!2007, !2005, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeE6finishB7_: argument 0"}
!2008 = distinct !{!2008, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_9QueryEdgeEEBG_"}
!2009 = distinct !{!2009, !2008, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_9QueryEdgeEEBG_: argument 0"}
!2010 = distinct !{!2010, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!2011 = distinct !{!2011, !2010, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2012 = distinct !{!2012, !2005, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_9QueryEdgeE6finishB7_: argument 1"}
!2013 = distinct !{!2013, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_"}
!2014 = distinct !{!2014, !2013, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderNtBE_24QueryRevisionsExtraInnerNtBE_15PackedQueryEdgeEEBG_: argument 0"}
!2015 = distinct !{!2015, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!2016 = distinct !{!2016, !2015, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderNtB5_24QueryRevisionsExtraInnerNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2017 = distinct !{!2017, i1 false, !"_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_"}
!2018 = distinct !{!2018, !2017, !"_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_: argument 1"}
!2019 = distinct !{!2019, i1 false, !"_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len"}
!2020 = distinct !{!2020, !2019, !"_RNvXsp_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits10exact_size17ExactSizeIterator3len: argument 0"}
!2021 = distinct !{!2021, !2017, !"_RINvMsa_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB6_14OriginAndExtra28allocate_derived_with_headeruNtB6_13QueryEdgeIterEB8_: argument 0"}
!2022 = distinct !{!2022, i1 false, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_"}
!2023 = distinct !{!2023, !2022, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE8allocateB7_: argument 0"}
!2024 = distinct !{!2024, i1 false, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_"}
!2025 = distinct !{!2025, !2024, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_15PackedQueryEdgeE6layoutB7_: argument 0"}
!2026 = distinct !{!2026, i1 false, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!2027 = distinct !{!2027, !2026, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 1"}
!2028 = distinct !{!2028, i1 false, !"LVerDomain"}
!2029 = distinct !{!2029, !2028}
!2030 = distinct !{!2030, !2028}
!2031 = distinct !{!2031, !39, !40, !2082}
!2032 = distinct !{!2032, i1 false, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_"}
!2033 = distinct !{!2033, !2032, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeE6finishB7_: argument 0"}
!2034 = distinct !{!2034, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_"}
!2035 = distinct !{!2035, !2034, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_: argument 0"}
!2036 = distinct !{!2036, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!2037 = distinct !{!2037, !2036, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2038 = distinct !{!2038, !39, !2086}
!2039 = distinct !{!2039, i1 false, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_"}
!2040 = distinct !{!2040, !2039, !"_RNvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeE6finishB7_: argument 0"}
!2041 = distinct !{!2041, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_"}
!2042 = distinct !{!2042, !2041, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_: argument 0"}
!2043 = distinct !{!2043, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!2044 = distinct !{!2044, !2043, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2045 = distinct !{!2045, i1 false, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_"}
!2046 = distinct !{!2046, !2045, !"_RNvMse_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_15SliceWithHeaderuNtB5_9QueryEdgeE8allocateB7_: argument 0"}
!2047 = distinct !{!2047, i1 false, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_"}
!2048 = distinct !{!2048, !2047, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB1C_6copied6CopiedINtNtNtB1G_5slice4iter4IterNtB6_15PackedQueryEdgeEENvMsl_B6_B39_4edgeEEB8_: argument 0"}
!2049 = distinct !{!2049, i1 false, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENvMsl_B1K_B1I_4edgeENtNtNtB9_6traits8iterator8Iterator4nextB1M_"}
!2050 = distinct !{!2050, !2049, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENvMsl_B1K_B1I_4edgeENtNtNtB9_6traits8iterator8Iterator4nextB1M_: argument 1"}
!2051 = distinct !{!2051, !2049, !"_RNvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB5_3MapINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENvMsl_B1K_B1I_4edgeENtNtNtB9_6traits8iterator8Iterator4nextB1M_: argument 0"}
!2052 = distinct !{!2052, i1 false, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_"}
!2053 = distinct !{!2053, !2052, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_: argument 1"}
!2054 = distinct !{!2054, !2052, !"_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCs45bxiIjzMqg_5salsa11zalsa_local15PackedQueryEdgeEENtNtNtB8_6traits8iterator8Iterator4nextB1v_: argument 0"}
!2055 = distinct !{!2055, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_"}
!2056 = distinct !{!2056, !2055, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_: argument 0"}
!2057 = distinct !{!2057, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!2058 = distinct !{!2058, !2057, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2059 = distinct !{!2059, i1 false, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_"}
!2060 = distinct !{!2060, !2059, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_: argument 1"}
!2061 = distinct !{!2061, !2059, !"_RINvMsg_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB6_22SliceWithHeaderBuilderuNtB6_9QueryEdgeE6extendNtB6_13QueryEdgeIterEB8_: argument 0"}
!2062 = distinct !{!2062, i1 false, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next"}
!2063 = distinct !{!2063, !2062, !"_RNvXsn_NtCs45bxiIjzMqg_5salsa11zalsa_localNtB5_13QueryEdgeIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next: argument 1"}
!2064 = distinct !{!2064, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_"}
!2065 = distinct !{!2065, !2064, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_9QueryEdgeEEBG_: argument 0"}
!2066 = distinct !{!2066, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!2067 = distinct !{!2067, !2066, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_9QueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2068 = distinct !{!2068, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_"}
!2069 = distinct !{!2069, !2068, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa11zalsa_local22SliceWithHeaderBuilderuNtBE_15PackedQueryEdgeEEBG_: argument 0"}
!2070 = distinct !{!2070, i1 false, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_"}
!2071 = distinct !{!2071, !2070, !"_RNvXsh_NtCs45bxiIjzMqg_5salsa11zalsa_localINtB5_22SliceWithHeaderBuilderuNtB5_15PackedQueryEdgeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB7_: argument 0"}
!2072 = !{!1958}
!2073 = !{!1960, !1958}
!2074 = !{!1962, !1961}
!2075 = !{!1962, !1958, !1961}
!2076 = !{!1964, !1962, !1958, !1961}
!2077 = !{!1966, !1962, !1958, !1961}
!2078 = !{!"branch_weights", i32 127, i32 1}
!2079 = !{!1968}
!2080 = !{!1969}
!2081 = !{!"branch_weights", i32 127, i32 63881}
!2082 = !{!"llvm.loop.estimated_trip_count", i32 504}
!2083 = !{!1974, !1972, !1962, !1958, !1961}
!2084 = !{!1976, !1975, !1962, !1958, !1961}
!2085 = !{!"branch_weights", i32 1, i32 0}
!2086 = !{!"llvm.loop.estimated_trip_count", i32 0}
!2087 = !{!1980, !1979, !1962, !1958, !1961}
!2088 = !{!1980, !1962, !1958}
!2089 = !{!1984, !1982, !1980, !1979, !1962, !1958, !1961}
!2090 = !{!1980, !1985, !1962, !1958}
!2091 = !{!1987, !1962, !1958, !1961}
!2092 = !{!1995, !1994, !1992, !1991, !1989, !1962, !1958, !1961}
!2093 = !{!1989, !1962, !1958, !1961}
!2094 = !{!1999, !1997, !1962, !1958, !1961}
!2095 = !{!2004, !2002, !2001, !1962, !1958, !1961}
!2096 = !{!2002, !2001, !1962, !1958, !1961}
!2097 = !{!2007, !2006, !1962, !1958, !1961}
!2098 = !{!2007, !1962, !1958}
!2099 = !{!2011, !2009, !2007, !2006, !1962, !1958, !1961}
!2100 = !{!2007, !2012, !1962, !1958}
!2101 = !{!2016, !2014, !1962, !1958, !1961}
!2102 = !{!1962, !1958}
!2103 = !{!2018}
!2104 = !{!2020, !2018}
!2105 = !{!2021}
!2106 = !{!2021, !2018}
!2107 = !{!2025, !2023, !2021, !2018}
!2108 = !{!2023, !2021, !2018}
!2109 = !{!2027, !2021, !2018}
!2110 = !{!2029}
!2111 = !{!2030}
!2112 = !{!2037, !2035, !2033, !2021, !2018}
!2113 = !{!2040, !2021, !2018}
!2114 = !{!2044, !2042, !2040, !2021, !2018}
!2115 = !{!2046, !2021, !2018}
!2116 = !{!2054, !2053, !2051, !2050, !2048, !2021, !2018}
!2117 = !{!2048, !2021, !2018}
!2118 = !{!2058, !2056, !2021, !2018}
!2119 = !{!2063, !2061, !2060, !2021, !2018}
!2120 = !{!2061, !2060, !2021, !2018}
!2121 = !{!2067, !2065, !2021, !2018}
!2122 = !{!2033, !2021, !2018}
!2123 = !{!2071, !2069, !2021, !2018}
!2124 = distinct !{!2124, i1 false, !"_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs45bxiIjzMqg_5salsa"}
!2125 = distinct !{!2125, !2124, !"_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECs45bxiIjzMqg_5salsa: argument 0"}
!2126 = !{!2125}
!2127 = distinct !{!2127, i1 false, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs45bxiIjzMqg_5salsa"}
!2128 = distinct !{!2128, !2127, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCscdodAO9FK5_5alloc5alloc6GlobalECs45bxiIjzMqg_5salsa: argument 0"}
!2129 = !{!2128}
!2130 = distinct !{!2130, i1 false, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!2131 = distinct !{!2131, !2130, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!2132 = distinct !{null}
!2133 = distinct !{!2133, i1 false, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!2134 = distinct !{!2134, !2133, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!2135 = distinct !{null, null, null}
!2136 = distinct !{!2136, i1 false, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0Cs45bxiIjzMqg_5salsa"}
!2137 = distinct !{!2137, !2136, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0Cs45bxiIjzMqg_5salsa: argument 0"}
!2138 = distinct !{!2138, i1 false, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!2139 = distinct !{!2139, !2138, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!2140 = distinct !{!2140, i1 false, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!2141 = distinct !{!2141, !2140, !"_RNCNvMs_NtNtCs45bxiIjzMqg_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!2142 = !{!2131}
!2143 = !{!2134}
!2144 = !{!2137}
!2145 = !{!2139}
!2146 = !{!2141}
!2147 = distinct !{!2147, i1 false, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!2148 = distinct !{!2148, !2147, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!2149 = distinct !{null}
!2150 = distinct !{!2150, i1 false, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!2151 = distinct !{!2151, !2150, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!2152 = distinct !{null, null, null}
!2153 = distinct !{!2153, i1 false, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0Cs45bxiIjzMqg_5salsa"}
!2154 = distinct !{!2154, !2153, !"_RNCNvMsc_NtCs3pBv9WGWlWf_12tracing_core10dispatcherNtB7_7Entered7current0Cs45bxiIjzMqg_5salsa: argument 0"}
!2155 = distinct !{!2155, i1 false, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!2156 = distinct !{!2156, !2155, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!2157 = distinct !{!2157, i1 false, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!2158 = distinct !{!2158, !2157, !"_RNCNvNvNtNtCs45bxiIjzMqg_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!2159 = !{!2148}
!2160 = !{!2151}
!2161 = !{!2154}
!2162 = !{!2156}
!2163 = !{!2158}
!2164 = distinct !{!2164, i1 false, !"_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_"}
!2165 = distinct !{!2165, !2164, !"_RNvXsI_CsaSrGj5dYoxL_8thin_vecINtB5_8IntoIterNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_: argument 0"}
!2166 = !{!2165}
!2167 = distinct !{!2167, i1 false, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!2168 = distinct !{!2168, !2167, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!2169 = distinct !{!2169, i1 false, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_"}
!2170 = distinct !{!2170, !2169, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_: argument 0"}
!2171 = !{!2168}
!2172 = !{!2170}
!2173 = distinct !{!2173, i1 false, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_"}
!2174 = distinct !{!2174, !2173, !"_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterATNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_: argument 0"}
!2175 = distinct !{!2175, i1 false, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_"}
!2176 = distinct !{!2176, !2175, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexNtNtBN_5cycle14IterationStampEj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_: argument 0"}
!2177 = !{!2174}
!2178 = !{!2176}
!2179 = distinct !{!2179, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB22_EEEB1l_"}
!2180 = distinct !{!2180, !2179, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtB1l_3key16DatabaseKeyIndexB22_EEEB1l_: argument 0"}
!2181 = distinct !{!2181, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_"}
!2182 = distinct !{!2182, !2181, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3set8IndexSetNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_: argument 0"}
!2183 = distinct !{!2183, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_"}
!2184 = distinct !{!2184, !2183, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_: argument 0"}
!2185 = distinct !{!2185, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuEEB1i_"}
!2186 = distinct !{!2186, !2185, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuEEB1i_: argument 0"}
!2187 = !{!2180}
!2188 = !{!2182}
!2189 = !{!2184}
!2190 = !{!2186}
!2191 = !{!2186, !2184, !2182, !2180}
!2192 = distinct !{!2192, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs45bxiIjzMqg_5salsa5zalsa5ZalsaEEB1c_"}
!2193 = distinct !{!2193, !2192, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCs45bxiIjzMqg_5salsa5zalsa5ZalsaEEB1c_: argument 0"}
!2194 = distinct !{!2194, i1 false, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs45bxiIjzMqg_5salsa5zalsa5ZalsaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_"}
!2195 = distinct !{!2195, !2194, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs45bxiIjzMqg_5salsa5zalsa5ZalsaENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_: argument 0"}
!2196 = !{!2193}
!2197 = !{!2195}
!2198 = !{!2195, !2193}
!2199 = distinct !{!2199, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexuEEB1i_"}
!2200 = distinct !{!2200, !2199, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexuEEB1i_: argument 0"}
!2201 = !{!2200}
!2202 = distinct !{!2202, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_"}
!2203 = distinct !{!2203, !2202, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_: argument 0"}
!2204 = distinct !{!2204, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuEEB1i_"}
!2205 = distinct !{!2205, !2204, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa11zalsa_local9QueryEdgeuEEB1i_: argument 0"}
!2206 = !{!2203}
!2207 = !{!2205}
!2208 = !{!2205, !2203}
!2209 = distinct !{!2209, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexuINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_"}
!2210 = distinct !{!2210, !2209, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap3map8IndexMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexuINtNtB4_4hash18BuildHasherDefaultNtCsjp5HOZs6k8V_10rustc_hash8FxHasherEEEB1k_: argument 0"}
!2211 = distinct !{!2211, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexuEEB1i_"}
!2212 = distinct !{!2212, !2211, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5e9M2GLoJMY_8indexmap5inner4CoreNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexuEEB1i_: argument 0"}
!2213 = !{!2210}
!2214 = !{!2212}
!2215 = !{!2212, !2210}
!2216 = distinct !{!2216, i1 false, !"_RNvXs1_NtCs8bMtf1JxJvX_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa"}
!2217 = distinct !{!2217, !2216, !"_RNvXs1_NtCs8bMtf1JxJvX_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa: argument 0"}
!2218 = distinct !{!2218, i1 false, !"_RNCINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalE0Cs45bxiIjzMqg_5salsa"}
!2219 = distinct !{!2219, !2218, !"_RNCINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalE0Cs45bxiIjzMqg_5salsa: argument 0"}
!2220 = !{!2217}
!2221 = !{!2219}
!2222 = !{!2219, !2217}
!2223 = distinct !{!2223, i1 false, !"_RNvXs1_NtCs8bMtf1JxJvX_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa"}
!2224 = distinct !{!2224, !2223, !"_RNvXs1_NtCs8bMtf1JxJvX_9hashbrown10scopeguardINtB5_10ScopeGuardQNtNtB7_3raw13RawTableInnerNCNvMsa_B12_B10_15rehash_in_place0ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa: argument 0"}
!2225 = distinct !{null, null}
!2226 = !{!2224}
!2227 = distinct !{!2227, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw3VecNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1j_"}
!2228 = distinct !{!2228, !2227, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCsc4HYy37PfYO_6boxcar3vec3raw3VecNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEEB1j_: argument 0"}
!2229 = distinct !{!2229, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc4HYy37PfYO_6boxcar7buckets7BucketsINtNtNtBG_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_EEB1J_"}
!2230 = distinct !{!2230, !2229, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsc4HYy37PfYO_6boxcar7buckets7BucketsINtNtNtBG_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_EEB1J_: argument 0"}
!2231 = distinct !{!2231, i1 false, !"_RNvXs3_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1g_"}
!2232 = distinct !{!2232, !2231, !"_RNvXs3_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1g_: argument 0"}
!2233 = distinct !{!2233, i1 false, !"_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_E8truncateB1g_"}
!2234 = distinct !{!2234, !2233, !"_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_E8truncateB1g_: argument 0"}
!2235 = distinct !{!2235, i1 false, !"_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_E11take_bucketB1g_"}
!2236 = distinct !{!2236, !2235, !"_RNvMs2_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_E11take_bucketB1g_: argument 0"}
!2237 = !{!2228}
!2238 = !{!2230}
!2239 = !{!2232}
!2240 = !{!2234}
!2241 = !{!2236, !2234, !2232, !2230, !2228}
!2242 = !{!2234, !2232, !2230, !2228}
!2243 = distinct !{!2243, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs45bxiIjzMqg_5salsa12active_query11ActiveQueryEBG_"}
!2244 = distinct !{!2244, !2243, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs45bxiIjzMqg_5salsa12active_query11ActiveQueryEBG_: argument 0"}
!2245 = !{!2244}
!2246 = distinct !{!2246, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryEBG_"}
!2247 = distinct !{!2247, !2246, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryEBG_: argument 0"}
!2248 = distinct !{!2248, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryEBF_"}
!2249 = distinct !{!2249, !2248, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryEBF_: argument 0"}
!2250 = distinct !{!2250, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_"}
!2251 = distinct !{!2251, !2250, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_: argument 0"}
!2252 = distinct !{!2252, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEEB1d_"}
!2253 = distinct !{!2253, !2252, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEEB1d_: argument 0"}
!2254 = distinct !{!2254, i1 false, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_"}
!2255 = distinct !{!2255, !2254, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_: argument 0"}
!2256 = distinct !{!2256, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryEBF_"}
!2257 = distinct !{!2257, !2256, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa12active_query13CapturedQueryEBF_: argument 0"}
!2258 = distinct !{!2258, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_"}
!2259 = distinct !{!2259, !2258, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa5cycle10CycleHeadsEBF_: argument 0"}
!2260 = distinct !{!2260, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEEB1d_"}
!2261 = distinct !{!2261, !2260, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadEEB1d_: argument 0"}
!2262 = distinct !{!2262, i1 false, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_"}
!2263 = distinct !{!2263, !2262, !"_RNvXs6_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCs45bxiIjzMqg_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_: argument 0"}
!2264 = !{!2247}
!2265 = !{!2255, !2253, !2251, !2249, !2247}
!2266 = !{!2263, !2261, !2259, !2257, !2247}
!2267 = distinct !{!2267, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1Z_5table9PageIndexENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB1Z_"}
!2268 = distinct !{!2268, !2267, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1Z_5table9PageIndexENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEEB1Z_: argument 0"}
!2269 = distinct !{!2269, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1A_5table9PageIndexENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_"}
!2270 = distinct !{!2270, !2269, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1A_5table9PageIndexENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_: argument 0"}
!2271 = distinct !{!2271, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1k_5table9PageIndexENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1k_"}
!2272 = distinct !{!2272, !2271, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3map7HashMapNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1k_5table9PageIndexENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1k_: argument 0"}
!2273 = distinct !{!2273, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1m_5table9PageIndexEEEEB1m_"}
!2274 = distinct !{!2274, !2273, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1m_5table9PageIndexEEEEB1m_: argument 0"}
!2275 = distinct !{!2275, i1 false, !"_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_"}
!2276 = distinct !{!2276, !2275, !"_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_: argument 0"}
!2277 = distinct !{!2277, i1 false, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1h_5table9PageIndexEENtNtB23_5alloc6GlobalEB1h_"}
!2278 = distinct !{!2278, !2277, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1h_5table9PageIndexEENtNtB23_5alloc6GlobalEB1h_: argument 0"}
!2279 = distinct !{!2279, i1 false, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1e_5table9PageIndexEEEB1e_"}
!2280 = distinct !{!2280, !2279, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1e_5table9PageIndexEEEB1e_: argument 0"}
!2281 = distinct !{!2281, i1 false, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBY_5table9PageIndexEEE3newBY_"}
!2282 = distinct !{!2282, !2281, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBY_5table9PageIndexEEE3newBY_: argument 0"}
!2283 = distinct !{!2283, i1 false, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE9next_implKb0_EBZ_"}
!2284 = distinct !{!2284, !2283, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBZ_5table9PageIndexEEE9next_implKb0_EBZ_: argument 0"}
!2285 = !{!2268}
!2286 = !{!2270}
!2287 = !{!2272}
!2288 = !{!2274}
!2289 = !{!2276}
!2290 = !{!2278}
!2291 = !{!2278, !2276, !2274, !2272, !2270, !2268}
!2292 = !{!2280}
!2293 = !{!2280, !2278, !2276, !2274, !2272, !2270, !2268}
!2294 = !{!2282, !2280, !2278, !2276, !2274, !2272, !2270, !2268}
!2295 = !{!2284, !2280, !2278, !2276, !2274, !2272, !2270, !2268}
!2296 = distinct !{!2296, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB16_"}
!2297 = distinct !{!2297, !2296, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEEB16_: argument 0"}
!2298 = distinct !{!2298, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEBH_"}
!2299 = distinct !{!2299, !2298, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph15DependencyGraphEBH_: argument 0"}
!2300 = distinct !{!2300, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph5EdgesEBH_"}
!2301 = distinct !{!2301, !2300, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs45bxiIjzMqg_5salsa7runtime16dependency_graph5EdgesEBH_: argument 0"}
!2302 = distinct !{!2302, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_"}
!2303 = distinct !{!2303, !2302, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtBK_6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1A_: argument 0"}
!2304 = distinct !{!2304, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1k_"}
!2305 = distinct !{!2305, !2304, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3map7HashMapNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1k_: argument 0"}
!2306 = distinct !{!2306, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEEB1m_"}
!2307 = distinct !{!2307, !2306, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsgQfI1edjipl_9hashbrown3raw8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEEB1m_: argument 0"}
!2308 = distinct !{!2308, i1 false, !"_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_"}
!2309 = distinct !{!2309, !2308, !"_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_: argument 0"}
!2310 = distinct !{!2310, i1 false, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_"}
!2311 = distinct !{!2311, !2310, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EENtNtCscdodAO9FK5_5alloc5alloc6GlobalEB1h_: argument 0"}
!2312 = distinct !{!2312, i1 false, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEB1e_"}
!2313 = distinct !{!2313, !2312, !"_RINvMsa_NtCsgQfI1edjipl_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEEB1e_: argument 0"}
!2314 = distinct !{!2314, i1 false, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE3newBY_"}
!2315 = distinct !{!2315, !2314, !"_RNvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB5_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE3newBY_: argument 0"}
!2316 = distinct !{!2316, i1 false, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_"}
!2317 = distinct !{!2317, !2316, !"_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_EEE9next_implKb0_EBZ_: argument 0"}
!2318 = distinct !{!2318, i1 false, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa"}
!2319 = distinct !{!2319, !2318, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa: argument 0"}
!2320 = distinct !{!2320, i1 false, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa"}
!2321 = distinct !{!2321, !2320, !"_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs45bxiIjzMqg_5salsa: argument 0"}
!2322 = distinct !{!2322, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtBK_6thread2id8ThreadIdNtNtCs45bxiIjzMqg_5salsa7runtime10WaitResultNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB22_"}
end_hunk_3
