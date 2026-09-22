Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/criterion-524b2807e12f564b.criterion.5ad8dacf280593c5-cgu.12?download=true
inline.NumInlined: 484
inline.NumDeleted: 246
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvNtNtCs7NzLGBMhIGf_9criterion8analysis7compare6t_test:bb.a
  %epil.iter118 = phi i64 [ %epil.iter118.next, %.preheader.i1.i.epil ], [ 0, %.preheader.i1.i.epil.preheader ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.sroa.04.0.i.i2.i.epil
  %.val13.i.i4.i.epil = load double, ptr %i.ck, align 8, !alias.scope !701, !noalias !702, !noundef !4
  %i.cl = fsub double %.val13.i.i4.i.epil, %i.cj  ; 2 uses
  %i.cm = fmul double %i.cl, %i.cl
  %i.cn = fadd double %.sroa.02.0.i.i3.i.epil, %i.cm ; 2 uses
  %i.co = add nuw i64 %.sroa.04.0.i.i2.i.epil, 1
  %epil.iter118.next = add i64 %epil.iter118, 1   ; 2 uses
  %epil.iter118.cmp.not = icmp eq i64 %epil.iter118.next, %xtraiter117
  br i1 %epil.iter118.cmp.not, label %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE1tB8_.exit, label %.preheader.i1.i.epil, !llvm.loop !649

_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE1tB8_.exit: ; preds = %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE1tB8_.exit.loopexit.unr-lcssa, %.preheader.i1.i.epil, %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3varB8_.exit.i
  %.sroa.0.0.i.i5.i = phi double [ 0.000000e+00, %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3varB8_.exit.i ], [ %i.ch, %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE1tB8_.exit.loopexit.unr-lcssa ], [ %i.cn, %.preheader.i1.i.epil ]
  %i.cp = add <2 x i64> %i.w, splat (i64 -1)
  %i.cq = uitofp <2 x i64> %i.cp to <2 x double>  ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %.sroa.0.0.i.i.i, i64 0
  %i.cs = insertelement <2 x double> %i.cr, double %.sroa.0.0.i.i5.i, i64 1
  %i.ct = fdiv <2 x double> %i.cs, %i.cq
  %shift = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.ac, %shift
  %i.cu = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.cv = fdiv <2 x double> %i.ct, %i.x           ; 2 uses
  %shift101 = shufflevector <2 x double> %i.cv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop102 = fadd <2 x double> %i.cv, %shift101
  %i.cw = extractelement <2 x double> %foldExtExtBinop102, i64 0
  %i.cx = tail call noundef double @llvm.sqrt.f64(double %i.cw)
  %i.cy = fdiv double %i.cu, %i.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cz = tail call { i64, i32 } @_RNvMNtCs2AWtUsOyxgP_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.da = extractvalue { i64, i32 } %i.cz, 0
  %i.db = extractvalue { i64, i32 } %i.cz, 1
  store i64 %i.da, ptr %i.q, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.db, ptr %i.dc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !703
  %i.dd = add i64 %4, %2                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !703
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.dd, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !noalias !703
  %i.de = load i64, ptr %i.e, align 8, !range !14, !noalias !703, !noundef !4
  %i.df = trunc nuw i64 %i.de to i1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !15, !noalias !703, !noundef !4 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.df, label %bb.b, label %bb.c, !prof !9

common.resume.sink.split:                         ; preds = %bb.av, %bb.ah
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn, %bb.ah ], [ %i.jg, %bb.av ]
  %.sink = shl nuw nsw i64 %i.im, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.il, i64 noundef range(i64 1, -9223372036854775808) %.sink, i64 noundef 8) #22
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body, %bb.av, %bb.ae, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.ii, %bb.ae ], [ %i.jg, %bb.av ], [ %.pn, %.body ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE1tB8_.exit
  %i.dj = load i64, ptr %i.di, align 8, !noalias !703
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dh, i64 %i.dj) #19
  unreachable

bb.c:                                             ; preds = %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE1tB8_.exit
  %i.dk = load ptr, ptr %i.di, align 8, !noalias !703, !nonnull !4, !noundef !4
  %i.dl = icmp ule i64 %i.dd, %i.dh
  tail call void @llvm.assume(i1 %i.dl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !703
  store i64 %i.dh, ptr %i.i, align 8, !noalias !703
  %i.dm = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.dk, ptr %i.dm, align 8, !noalias !703
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 0, ptr %i.dn, align 8, !noalias !703
  invoke void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdEE11spec_extendCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 %1, ptr noundef nonnull readonly %i.t)
          to label %bb.h unwind label %bb.g

.body11.i:                                        ; preds = %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i, %bb.ac, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ig, %bb.ac ], [ %i.dq, %bb.g ], [ %eh.lpad-body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i ], [ %eh.lpad-body.i, %.body.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %.body11.i
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body25 unwind label %bb.f

bb.e:                                             ; preds = %.body11.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ag

bb.f:                                             ; preds = %bb.d
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i10.i, %._crit_edge, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i, %bb.h, %bb.c
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %.body11.i

bb.h:                                             ; preds = %bb.c
  invoke void @_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VecdEINtB5_10SpecExtendRdINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterdEE11spec_extendCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 %3, ptr noundef nonnull readonly %i.y)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.dr = load ptr, ptr %i.dm, align 8, !noalias !703, !nonnull !4, !noundef !4 ; 3 uses
  %i.ds = load i64, ptr %i.dn, align 8, !noalias !703, !noundef !4 ; 3 uses
  %i.dt = icmp samesign ugt i64 %i.ds, 1
  br i1 %i.dt, label %.lr.ph, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i, !prof !5

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i: ; preds = %bb.k, %bb.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i
  unreachable

.lr.ph:                                           ; preds = %bb.i
  %.idx = shl nuw nsw i64 %i.ds, 3
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.idx
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.du
  br i1 %i.dw, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j
  %i.dx = phi ptr [ %i.dr, %.lr.ph ], [ %i.dv, %bb.j ] ; 2 uses
  %.val.i.i.i = load double, ptr %i.dx, align 8, !alias.scope !704, !noalias !705, !noundef !4
  %i.dy = fcmp ord double %.val.i.i.i, 0.000000e+00
  br i1 %i.dy, label %bb.j, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i

._crit_edge:                                      ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !703
  invoke void @_RNvNtNtCs7NzLGBMhIGf_9criterion5stats9rand_util7new_rng(ptr noalias noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.d)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %._crit_edge
  %i.dz = load i128, ptr %i.d, align 16, !noalias !703, !noundef !4
  %i.ea = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eb = load i128, ptr %i.ea, align 16, !noalias !703, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !703
  %i.ec = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i128 %i.dz, ptr %i.ec, align 16, !noalias !703
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i128 %i.eb, ptr %i.ed, align 16, !noalias !703
  store ptr %i.dr, ptr %i.h, align 16, !noalias !703
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ds, ptr %i.ee, align 8, !noalias !703
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 9 uses
  store i64 -1, ptr %i.ef, align 16, !noalias !703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !703
  invoke void @_RNvXs0_NtNtCs7NzLGBMhIGf_9criterion5stats5tupleTINtNtCscdodAO9FK5_5alloc3vec3VecdEENtB5_26TupledDistributionsBuilder3newB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef 0)
          to label %bb.q unwind label %bb.m

bb.m:                                             ; preds = %.loopexit.i, %bb.l
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i.i, %.split25.us.i, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.eg, %bb.m ], [ %lpad.phi.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i.i ], [ %i.hw, %.split25.us.i ] ; 2 uses
  %i.eh = load i64, ptr %i.ef, align 16, !range !7, !alias.scope !706, !noundef !4
  %i.ei = icmp eq i64 %i.eh, -1
  br i1 %i.ei, label %.body11.i, label %bb.n

bb.n:                                             ; preds = %.body.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %.body25 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %.body11.i unwind label %bb.ag

bb.q:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !707
  %.not.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.em = icmp ugt i64 %2, 1
  br i1 %i.em, label %.lr.ph.i.split.us.i.preheader, label %.lr.ph.i.split.i, !prof !5

.lr.ph.i.split.us.i.preheader:                    ; preds = %.lr.ph.i.i
  %.idx98 = shl nuw nsw i64 %2, 3                 ; 2 uses
  %i.en = extractelement <2 x double> %i.x, i64 0
  %xtraiter124 = and i64 %2, 3                    ; 3 uses
  %i.eo = icmp ult i64 %2, 4
  %unroll_iter129 = and i64 %2, -4
  %lcmp.mod126.not = icmp eq i64 %xtraiter124, 0
  %lcmp.mod128 = icmp ne i64 %xtraiter124, 0
  br label %.lr.ph.i.split.us.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.split.us.i.preheader, %bb.v
  %.sroa.0.018.i.us.i = phi i64 [ %i.ep, %bb.v ], [ 0, %.lr.ph.i.split.us.i.preheader ]
  %i.ep = add nuw i64 %.sroa.0.018.i.us.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !709
  %i.eq = invoke { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate9resamplesINtB2_9ResamplesdE4nextB8_(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.h)
          to label %.noexc.i.i.us.i unwind label %.loopexit.i.split.us.i, !noalias !710 ; 2 uses

.noexc.i.i.us.i:                                  ; preds = %.lr.ph.i.split.us.i
  %i.er = extractvalue { ptr, i64 } %i.eq, 0      ; 9 uses
  %i.es = extractvalue { ptr, i64 } %i.eq, 1      ; 5 uses
  %.not.i.i.i.us.i = icmp ugt i64 %2, %i.es
  br i1 %.not.i.i.i.us.i, label %.split.us.i, label %.lr.ph94, !prof !13

.lr.ph94:                                         ; preds = %.noexc.i.i.us.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx98 ; 9 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.et
  br i1 %i.ev, label %._crit_edge95, label %bb.s

bb.s:                                             ; preds = %.lr.ph94, %bb.r
  %i.ew = phi ptr [ %i.er, %.lr.ph94 ], [ %i.eu, %bb.r ] ; 2 uses
  %.val.i.i.i.i.i.us.i = load double, ptr %i.ew, align 8, !alias.scope !711, !noalias !712, !noundef !4
  %i.ex = fcmp ord double %.val.i.i.i.i.i.us.i, 0.000000e+00
  br i1 %i.ex, label %bb.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.invoke.i.i.i

._crit_edge95:                                    ; preds = %bb.r
  %i.ey = sub nuw i64 %i.es, %2                   ; 5 uses
  %i.ez = icmp samesign ugt i64 %i.ey, 1
  br i1 %i.ez, label %bb.t, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.invoke.i.i.i, !prof !5

bb.t:                                             ; preds = %._crit_edge95
  %.idx99 = shl nuw nsw i64 %i.es, 3              ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx99 ; 2 uses
  %6 = icmp samesign eq i64 %.idx98, %.idx99
  br i1 %6, label %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3newB8_.exit6.i.i.i.us.i, label %.lr.ph97

bb.u:                                             ; preds = %.lr.ph97
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, %i.fa
  br i1 %i.fc, label %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3newB8_.exit6.i.i.i.us.i, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.t, %bb.u
  %i.fd = phi ptr [ %i.fb, %bb.u ], [ %i.et, %bb.t ] ; 2 uses
  %.val.i.i5.i.i.i.us.i = load double, ptr %i.fd, align 8, !alias.scope !713, !noalias !714, !noundef !4
  %i.fe = fcmp ord double %.val.i.i5.i.i.i.us.i, 0.000000e+00
  br i1 %i.fe, label %bb.u, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.invoke.i.i.i

_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3newB8_.exit6.i.i.i.us.i: ; preds = %bb.u, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !715)
  call void @llvm.experimental.noalias.scope.decl(metadata !716)
  call void @llvm.experimental.noalias.scope.decl(metadata !717)
  call void @llvm.experimental.noalias.scope.decl(metadata !718)
  %i.ff = invoke noundef double @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtNtBb_3ops5arith3Add3addECs7NzLGBMhIGf_9criterion(ptr noundef nonnull readonly align 8 %i.er, ptr noundef nonnull readonly %i.et, double noundef 0.000000e+00)
          to label %.noexc6.i.i.us.i unwind label %.loopexit.i.split.us.i, !noalias !710

.noexc6.i.i.us.i:                                 ; preds = %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3newB8_.exit6.i.i.i.us.i
  %i.fg = fdiv double %i.ff, %i.en                ; 6 uses
  %i.fh = invoke noundef double @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterdEENtNtNtB9_6traits8iterator8Iterator4folddNvYdNtNtNtBb_3ops5arith3Add3addECs7NzLGBMhIGf_9criterion(ptr noundef nonnull readonly align 8 %i.et, ptr noundef nonnull readonly %i.fa, double noundef 0.000000e+00)
          to label %.preheader.i.i.i.i.i.i.us.i.preheader unwind label %.loopexit.i.split.us.i, !noalias !710

.preheader.i.i.i.i.i.i.us.i.preheader:            ; preds = %.noexc6.i.i.us.i
  br i1 %i.eo, label %.preheader.i.i.i.i.i.i.us.i.epil.preheader, label %.preheader.i.i.i.i.i.i.us.i

.preheader.i.i.i.i.i.i.us.i:                      ; preds = %.preheader.i.i.i.i.i.i.us.i.preheader, %.preheader.i.i.i.i.i.i.us.i
  %.sroa.04.0.i.i.i.i.i.i.i.us.i = phi i64 [ %i.gb, %.preheader.i.i.i.i.i.i.us.i ], [ 0, %.preheader.i.i.i.i.i.i.us.i.preheader ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.us.i = phi double [ %i.ga, %.preheader.i.i.i.i.i.i.us.i ], [ 0.000000e+00, %.preheader.i.i.i.i.i.i.us.i.preheader ]
  %niter130 = phi i64 [ %niter130.next.3, %.preheader.i.i.i.i.i.i.us.i ], [ 0, %.preheader.i.i.i.i.i.i.us.i.preheader ]
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.04.0.i.i.i.i.i.i.i.us.i
  %.val13.i.i.i.i.i.i.i.us.i = load double, ptr %i.fi, align 8, !alias.scope !719, !noalias !720, !noundef !4
  %i.fj = fsub double %.val13.i.i.i.i.i.i.i.us.i, %i.fg ; 2 uses
  %i.fk = fmul double %i.fj, %i.fj
  %i.fl = fadd double %.sroa.02.0.i.i.i.i.i.i.i.us.i, %i.fk
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.04.0.i.i.i.i.i.i.i.us.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %.val13.i.i.i.i.i.i.i.us.i.1 = load double, ptr %i.fn, align 8, !alias.scope !719, !noalias !720, !noundef !4
  %i.fo = fsub double %.val13.i.i.i.i.i.i.i.us.i.1, %i.fg ; 2 uses
  %i.fp = fmul double %i.fo, %i.fo
  %i.fq = fadd double %i.fl, %i.fp
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.04.0.i.i.i.i.i.i.i.us.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %.val13.i.i.i.i.i.i.i.us.i.2 = load double, ptr %i.fs, align 8, !alias.scope !719, !noalias !720, !noundef !4
  %i.ft = fsub double %.val13.i.i.i.i.i.i.i.us.i.2, %i.fg ; 2 uses
  %i.fu = fmul double %i.ft, %i.ft
  %i.fv = fadd double %i.fq, %i.fu
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.04.0.i.i.i.i.i.i.i.us.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  %.val13.i.i.i.i.i.i.i.us.i.3 = load double, ptr %i.fx, align 8, !alias.scope !719, !noalias !720, !noundef !4
  %i.fy = fsub double %.val13.i.i.i.i.i.i.i.us.i.3, %i.fg ; 2 uses
  %i.fz = fmul double %i.fy, %i.fy
  %i.ga = fadd double %i.fv, %i.fz                ; 3 uses
  %i.gb = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter130.next.3 = add nuw i64 %niter130, 4     ; 2 uses
  %niter130.ncmp.3 = icmp eq i64 %niter130.next.3, %unroll_iter129
  br i1 %niter130.ncmp.3, label %.preheader.i1.i.preheader.i.i.i.i.us.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.us.i

.preheader.i1.i.preheader.i.i.i.i.us.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.us.i
  br i1 %lcmp.mod126.not, label %.preheader.i1.i.preheader.i.i.i.i.us.i, label %.preheader.i.i.i.i.i.i.us.i.epil.preheader

.preheader.i.i.i.i.i.i.us.i.epil.preheader:       ; preds = %.preheader.i1.i.preheader.i.i.i.i.us.i.unr-lcssa, %.preheader.i.i.i.i.i.i.us.i.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.us.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.us.i.preheader ], [ %i.gb, %.preheader.i1.i.preheader.i.i.i.i.us.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.i.i.i.i.i.i.us.i.preheader ], [ %i.ga, %.preheader.i1.i.preheader.i.i.i.i.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod128)
  br label %.preheader.i.i.i.i.i.i.us.i.epil

.preheader.i.i.i.i.i.i.us.i.epil:                 ; preds = %.preheader.i.i.i.i.i.i.us.i.epil, %.preheader.i.i.i.i.i.i.us.i.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.us.i.epil = phi i64 [ %i.gg, %.preheader.i.i.i.i.i.i.us.i.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.us.i.epil.init, %.preheader.i.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.us.i.epil = phi double [ %i.gf, %.preheader.i.i.i.i.i.i.us.i.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.us.i.epil.init, %.preheader.i.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter125 = phi i64 [ %epil.iter125.next, %.preheader.i.i.i.i.i.i.us.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.us.i.epil.preheader ]
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.sroa.04.0.i.i.i.i.i.i.i.us.i.epil
  %.val13.i.i.i.i.i.i.i.us.i.epil = load double, ptr %i.gc, align 8, !alias.scope !719, !noalias !720, !noundef !4
  %i.gd = fsub double %.val13.i.i.i.i.i.i.i.us.i.epil, %i.fg ; 2 uses
  %i.ge = fmul double %i.gd, %i.gd
  %i.gf = fadd double %.sroa.02.0.i.i.i.i.i.i.i.us.i.epil, %i.ge ; 2 uses
  %i.gg = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.us.i.epil, 1
  %epil.iter125.next = add i64 %epil.iter125, 1   ; 2 uses
  %epil.iter125.cmp.not = icmp eq i64 %epil.iter125.next, %xtraiter124
  br i1 %epil.iter125.cmp.not, label %.preheader.i1.i.preheader.i.i.i.i.us.i, label %.preheader.i.i.i.i.i.i.us.i.epil, !llvm.loop !685

.preheader.i1.i.preheader.i.i.i.i.us.i:           ; preds = %.preheader.i.i.i.i.i.i.us.i.epil, %.preheader.i1.i.preheader.i.i.i.i.us.i.unr-lcssa
  %.lcssa = phi double [ %i.ga, %.preheader.i1.i.preheader.i.i.i.i.us.i.unr-lcssa ], [ %i.gf, %.preheader.i.i.i.i.i.i.us.i.epil ]
  %i.gh = uitofp nneg i64 %i.ey to double         ; 2 uses
  %i.gi = fdiv double %i.fh, %i.gh                ; 6 uses
  %xtraiter131 = and i64 %i.ey, 3                 ; 3 uses
  %i.gj = sub i64 %2, %i.es
  %i.gk = icmp ugt i64 %i.gj, -4
  br i1 %i.gk, label %.preheader.i1.i.i.i.i.i.us.i.epil.preheader, label %.preheader.i1.i.preheader.i.i.i.i.us.i.new

.preheader.i1.i.preheader.i.i.i.i.us.i.new:       ; preds = %.preheader.i1.i.preheader.i.i.i.i.us.i
  %unroll_iter136 = and i64 %i.ey, -4
  br label %.preheader.i1.i.i.i.i.i.us.i

.preheader.i1.i.i.i.i.i.us.i:                     ; preds = %.preheader.i1.i.i.i.i.i.us.i, %.preheader.i1.i.preheader.i.i.i.i.us.i.new
  %.sroa.04.0.i.i2.i.i.i.i.i.us.i = phi i64 [ 0, %.preheader.i1.i.preheader.i.i.i.i.us.i.new ], [ %i.he, %.preheader.i1.i.i.i.i.i.us.i ] ; 5 uses
  %.sroa.02.0.i.i3.i.i.i.i.i.us.i = phi double [ 0.000000e+00, %.preheader.i1.i.preheader.i.i.i.i.us.i.new ], [ %i.hd, %.preheader.i1.i.i.i.i.i.us.i ]
  %niter137 = phi i64 [ 0, %.preheader.i1.i.preheader.i.i.i.i.us.i.new ], [ %niter137.next.3, %.preheader.i1.i.i.i.i.i.us.i ]
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.04.0.i.i2.i.i.i.i.i.us.i
  %.val13.i.i4.i.i.i.i.i.us.i = load double, ptr %i.gl, align 8, !alias.scope !721, !noalias !722, !noundef !4
  %i.gm = fsub double %.val13.i.i4.i.i.i.i.i.us.i, %i.gi ; 2 uses
  %i.gn = fmul double %i.gm, %i.gm
  %i.go = fadd double %.sroa.02.0.i.i3.i.i.i.i.i.us.i, %i.gn
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.04.0.i.i2.i.i.i.i.i.us.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %.val13.i.i4.i.i.i.i.i.us.i.1 = load double, ptr %i.gq, align 8, !alias.scope !721, !noalias !722, !noundef !4
  %i.gr = fsub double %.val13.i.i4.i.i.i.i.i.us.i.1, %i.gi ; 2 uses
  %i.gs = fmul double %i.gr, %i.gr
  %i.gt = fadd double %i.go, %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.04.0.i.i2.i.i.i.i.i.us.i
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %.val13.i.i4.i.i.i.i.i.us.i.2 = load double, ptr %i.gv, align 8, !alias.scope !721, !noalias !722, !noundef !4
  %i.gw = fsub double %.val13.i.i4.i.i.i.i.i.us.i.2, %i.gi ; 2 uses
  %i.gx = fmul double %i.gw, %i.gw
  %i.gy = fadd double %i.gt, %i.gx
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.04.0.i.i2.i.i.i.i.i.us.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %.val13.i.i4.i.i.i.i.i.us.i.3 = load double, ptr %i.ha, align 8, !alias.scope !721, !noalias !722, !noundef !4
  %i.hb = fsub double %.val13.i.i4.i.i.i.i.i.us.i.3, %i.gi ; 2 uses
  %i.hc = fmul double %i.hb, %i.hb
  %i.hd = fadd double %i.gy, %i.hc                ; 3 uses
  %i.he = add nuw nsw i64 %.sroa.04.0.i.i2.i.i.i.i.i.us.i, 4 ; 2 uses
  %niter137.next.3 = add i64 %niter137, 4         ; 2 uses
  %niter137.ncmp.3 = icmp eq i64 %niter137.next.3, %unroll_iter136
  br i1 %niter137.ncmp.3, label %.unr-lcssa, label %.preheader.i1.i.i.i.i.i.us.i

.unr-lcssa:                                       ; preds = %.preheader.i1.i.i.i.i.i.us.i
  %lcmp.mod133.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod133.not, label %.epilog-lcssa, label %.preheader.i1.i.i.i.i.i.us.i.epil.preheader

.preheader.i1.i.i.i.i.i.us.i.epil.preheader:      ; preds = %.unr-lcssa, %.preheader.i1.i.preheader.i.i.i.i.us.i
  %.sroa.04.0.i.i2.i.i.i.i.i.us.i.epil.init = phi i64 [ 0, %.preheader.i1.i.preheader.i.i.i.i.us.i ], [ %i.he, %.unr-lcssa ]
  %.sroa.02.0.i.i3.i.i.i.i.i.us.i.epil.init = phi double [ 0.000000e+00, %.preheader.i1.i.preheader.i.i.i.i.us.i ], [ %i.hd, %.unr-lcssa ]
  %lcmp.mod135 = icmp ne i64 %xtraiter131, 0
  call void @llvm.assume(i1 %lcmp.mod135)
  br label %.preheader.i1.i.i.i.i.i.us.i.epil

.preheader.i1.i.i.i.i.i.us.i.epil:                ; preds = %.preheader.i1.i.i.i.i.i.us.i.epil, %.preheader.i1.i.i.i.i.i.us.i.epil.preheader
  %.sroa.04.0.i.i2.i.i.i.i.i.us.i.epil = phi i64 [ %i.hj, %.preheader.i1.i.i.i.i.i.us.i.epil ], [ %.sroa.04.0.i.i2.i.i.i.i.i.us.i.epil.init, %.preheader.i1.i.i.i.i.i.us.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i3.i.i.i.i.i.us.i.epil = phi double [ %i.hi, %.preheader.i1.i.i.i.i.i.us.i.epil ], [ %.sroa.02.0.i.i3.i.i.i.i.i.us.i.epil.init, %.preheader.i1.i.i.i.i.i.us.i.epil.preheader ]
  %epil.iter132 = phi i64 [ %epil.iter132.next, %.preheader.i1.i.i.i.i.i.us.i.epil ], [ 0, %.preheader.i1.i.i.i.i.i.us.i.epil.preheader ]
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.sroa.04.0.i.i2.i.i.i.i.i.us.i.epil
  %.val13.i.i4.i.i.i.i.i.us.i.epil = load double, ptr %i.hf, align 8, !alias.scope !721, !noalias !722, !noundef !4
  %i.hg = fsub double %.val13.i.i4.i.i.i.i.i.us.i.epil, %i.gi ; 2 uses
  %i.hh = fmul double %i.hg, %i.hg
  %i.hi = fadd double %.sroa.02.0.i.i3.i.i.i.i.i.us.i.epil, %i.hh ; 2 uses
  %i.hj = add nuw nsw i64 %.sroa.04.0.i.i2.i.i.i.i.i.us.i.epil, 1
  %epil.iter132.next = add i64 %epil.iter132, 1   ; 2 uses
  %epil.iter132.cmp.not = icmp eq i64 %epil.iter132.next, %xtraiter131
  br i1 %epil.iter132.cmp.not, label %.epilog-lcssa, label %.preheader.i1.i.i.i.i.i.us.i.epil, !llvm.loop !690

.epilog-lcssa:                                    ; preds = %.preheader.i1.i.i.i.i.i.us.i.epil, %.unr-lcssa
  %.lcssa106 = phi double [ %i.hd, %.unr-lcssa ], [ %i.hi, %.preheader.i1.i.i.i.i.i.us.i.epil ]
  %i.hk = add nsw i64 %i.ey, -1
  %i.hl = uitofp nneg i64 %i.hk to double
  %i.hm = fsub double %i.fg, %i.gi
  %i.hn = insertelement <2 x double> poison, double %.lcssa, i64 0
  %i.ho = insertelement <2 x double> %i.hn, double %.lcssa106, i64 1
  %i.hp = insertelement <2 x double> %i.cq, double %i.hl, i64 1
  %i.hq = fdiv <2 x double> %i.ho, %i.hp
  %i.hr = insertelement <2 x double> %i.x, double %i.gh, i64 1
  %i.hs = fdiv <2 x double> %i.hq, %i.hr
  %i.ht = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hs)
  %i.hu = call noundef double @llvm.sqrt.f64(double %i.ht)
  %i.hv = fdiv double %i.hm, %i.hu                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !709
  store double %i.hv, ptr %i.el, align 8, !noalias !708
  invoke void @_RNvXs0_NtNtCs7NzLGBMhIGf_9criterion5stats5tupleTINtNtCscdodAO9FK5_5alloc3vec3VecdEENtB5_26TupledDistributionsBuilder4pushB9_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, double noundef %i.hv)
          to label %bb.v unwind label %.split25.us.i, !noalias !723

bb.v:                                             ; preds = %.epilog-lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !708
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !708
  %exitcond.not.i.us.i = icmp eq i64 %i.ep, %i.s
  br i1 %exitcond.not.i.us.i, label %.loopexit.i, label %.lr.ph.i.split.us.i

.loopexit.i.split.us.i:                           ; preds = %.noexc6.i.i.us.i, %_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB2_6SampledE3newB8_.exit6.i.i.i.us.i, %.lr.ph.i.split.us.i
  %lpad.loopexit.i.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

.split25.us.i:                                    ; preds = %.epilog-lcssa
  %i.hw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCscdodAO9FK5_5alloc3vec3VecdEEECs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #20
          to label %.body.i unwind label %bb.w, !noalias !723

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !703
  %i.hx = invoke { ptr, i64 } @_RNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate9resamplesINtB2_9ResamplesdE4nextB8_(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.h)
          to label %.noexc.i.i.i unwind label %.loopexit.i.split.i, !noalias !710

.noexc.i.i.i:                                     ; preds = %.lr.ph.i.split.i
  %i.hy = extractvalue { ptr, i64 } %i.hx, 1
  %.not.i.i.i.i = icmp ugt i64 %2, %i.hy
  br i1 %.not.i.i.i.i, label %.split.us.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.invoke.i.i.i, !prof !13

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.invoke.i.i.i: ; preds = %._crit_edge95, %bb.s, %.lr.ph97, %.noexc.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 70, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #19
          to label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.cont.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !710

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.cont.i.i.i: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.invoke.i.i.i
  unreachable

.split.us.i:                                      ; preds = %.noexc.i.i.us.i, %.noexc.i.i.i
  %.us-phi23.i = phi i64 [ 0, %.noexc.i.i.i ], [ %i.es, %.noexc.i.i.us.i ]
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %2, i64 noundef %.us-phi23.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #19
          to label %.noexc4.i.i.i unwind label %.loopexit.split-lp.i.i, !noalias !710

.noexc4.i.i.i:                                    ; preds = %.split.us.i
  unreachable

bb.w:                                             ; preds = %.split25.us.i
  %i.hz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !723
  unreachable

.loopexit.i.split.i:                              ; preds = %.lr.ph.i.split.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

.loopexit.split-lp.i.i:                           ; preds = %.split.us.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtCs7NzLGBMhIGf_9criterion5stats10univariate6sampleINtB1G_6SampledE3new0EB1M_.exit.i.i.invoke.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.split.i, %.loopexit.i.split.us.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.split.i ], [ %lpad.loopexit.i.us.i, %.loopexit.i.split.us.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i.i unwind label %bb.x, !noalias !710

bb.x:                                             ; preds = %.loopexit.i.i
  %i.ia = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body5.i.i unwind label %bb.y, !noalias !710

bb.y:                                             ; preds = %bb.x
  %i.ib = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !710
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i.i: ; preds = %.loopexit.i.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7NzLGBMhIGf_9criterion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.z, !noalias !724

bb.z:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecdEECs7NzLGBMhIGf_9criterion.exit.i.i.i
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
