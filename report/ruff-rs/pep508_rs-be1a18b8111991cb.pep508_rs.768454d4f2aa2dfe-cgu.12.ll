Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/pep508_rs-be1a18b8111991cb.pep508_rs.768454d4f2aa2dfe-cgu.12?download=true
inline.NumInlined: 198
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify6to_dnf:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %i.n, align 8
  invoke fastcc void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11collect_dnf(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias noundef align 8 dereferenceable(24) %i.j, ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #15
          to label %.body unwind label %bb.bw

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bt, %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread92.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp141.loopexit.split-lp.i, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.p, %bb.d ], [ %lpad.loopexit.split-lp136, %bb.bt ], [ %lpad.loopexit.split-lp221.i, %.loopexit.split-lp141.loopexit.split-lp.i ], [ %eh.lpad-body.i, %.body.i ], [ %lpad.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread92.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecIBC_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEEB1h_(ptr noalias noundef align 8 dereferenceable(24) %i.j) #15
          to label %bb.bx unwind label %bb.bw

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEECsaaRuwTSDeTG_9pep508_rs.exit63.i, %._crit_edge200.i, %bb.e
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !387)
  %i.r = load i64, ptr %i.l, align 8, !alias.scope !387, !noundef !5 ; 5 uses
  %i.s = icmp ult i64 %i.r, 384307168202282326
  call void @llvm.assume(i1 %i.s)
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %._crit_edge189.thread.i, label %.lr.ph188.i

._crit_edge189.thread.i:                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !387
  store i64 0, ptr %i.e, align 8, !noalias !387
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !387
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.u, align 8, !noalias !387
  br label %._crit_edge197.i

.lr.ph188.i:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 6 uses
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %.idx203.i = mul nuw nsw i64 %i.r, 24           ; 2 uses
  br label %bb.g

.lr.ph196.i:                                      ; preds = %.noexc5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !387
  store i64 0, ptr %i.e, align 8, !noalias !387
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !387
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 5 uses
  store i64 0, ptr %i.y, align 8, !noalias !387
  %i.z = load ptr, ptr %i.k, align 8, !alias.scope !387, !nonnull !5, !noundef !5 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx203.i
  br label %.lr.ph193.i

bb.g:                                             ; preds = %.noexc5, %.lr.ph188.i
  %.sroa.038.0186.i = phi i64 [ 0, %.lr.ph188.i ], [ %i.ab, %.noexc5 ] ; 3 uses
  %i.ab = add nuw nsw i64 %.sroa.038.0186.i, 1    ; 2 uses
  %i.ac = load ptr, ptr %i.k, align 8, !alias.scope !387, !nonnull !5, !noundef !5 ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %.sroa.038.0186.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !387
  store i64 0, ptr %i.h, align 8, !noalias !387
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !387
  store i64 0, ptr %i.w, align 8, !noalias !387
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !387, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !387, !noundef !5 ; 2 uses
  %.idx201.i = mul nuw nsw i64 %i.ah, 40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %.idx201.i
  %i.aj = icmp eq i64 %i.ah, 0
  br i1 %i.aj, label %._crit_edge.thread.i, label %.lr.ph183.split.preheader.i

._crit_edge197.loopexit.i:                        ; preds = %.backedge.i
  %.pre258.i = load ptr, ptr %i.x, align 8, !noalias !387
  %.pre259.i = load i64, ptr %i.e, align 8, !range !12, !noalias !387
  %.pre260.i = load i64, ptr %i.y, align 8, !noalias !387
  br label %._crit_edge197.i

._crit_edge197.i:                                 ; preds = %._crit_edge197.loopexit.i, %._crit_edge189.thread.i
  %i.ak = phi i64 [ %.pre260.i, %._crit_edge197.loopexit.i ], [ 0, %._crit_edge189.thread.i ] ; 3 uses
  %i.al = phi i64 [ %.pre259.i, %._crit_edge197.loopexit.i ], [ 0, %._crit_edge189.thread.i ]
  %i.am = phi ptr [ %.pre258.i, %._crit_edge197.loopexit.i ], [ inttoptr (i64 8 to ptr), %._crit_edge189.thread.i ] ; 3 uses
  %i.an = icmp ult i64 %i.ak, 1152921504606846976
  call void @llvm.assume(i1 %i.an)
  %.idx207.i = shl nuw nsw i64 %i.ak, 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx207.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !387
  store ptr %i.am, ptr %i.d, align 8, !noalias !387
  %.sroa.230.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.am, ptr %.sroa.230.0..sroa_idx.i, align 8, !noalias !387
  %.sroa.331.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.al, ptr %.sroa.331.0..sroa_idx.i, align 8, !noalias !387
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store ptr %i.ao, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !387
  %i.ap = icmp eq i64 %i.ak, 0
  br i1 %i.ap, label %._crit_edge200.i, label %.lr.ph199.i

.lr.ph193.i:                                      ; preds = %.backedge.i, %.lr.ph196.i
  %.sroa.040.0194.i = phi i64 [ 0, %.lr.ph196.i ], [ %i.aq, %.backedge.i ] ; 4 uses
  %i.aq = add nuw nsw i64 %.sroa.040.0194.i, 1    ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.040.0194.i ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  br label %bb.n

bb.h:                                             ; preds = %bb.k, %.lr.ph199.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.h
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.au, %bb.h ], [ %i.ay, %bb.j ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.body unwind label %bb.m

.lr.ph199.i:                                      ; preds = %._crit_edge197.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit.i
  %i.av = phi ptr [ %i.ba, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit.i ], [ %i.ao, %._crit_edge197.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8 ; 2 uses
  store ptr %i.aw, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !388, !noalias !387
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !388, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !387
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecIBu_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEE6removeBN_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8)
          to label %bb.i unwind label %bb.h

._crit_edge200.i:                                 ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit.i, %._crit_edge197.i
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %.lr.ph199.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit.i unwind label %bb.h

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB1d_.exit.i: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !387
  %i.ba = load ptr, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !389, !noalias !387, !nonnull !5, !noundef !5 ; 2 uses
  %i.bb = load ptr, ptr %.sroa.230.0..sroa_idx.i, align 8, !alias.scope !389, !noalias !387, !nonnull !5, !noundef !5
  %i.bc = icmp eq ptr %i.bb, %i.ba
  br i1 %i.bc, label %._crit_edge200.i, label %.lr.ph199.i

bb.m:                                             ; preds = %bb.bt, %.loopexit.split-lp141.loopexit.split-lp.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread92.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body6

.body6:                                           ; preds = %bb.bs, %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread92.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph118, %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24) %i.e) #15
          to label %.body unwind label %bb.m, !noalias !387

bb.n:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, %.lr.ph193.i
  %.sroa.080.0191.i = phi ptr [ %i.z, %.lr.ph193.i ], [ %i.be, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i ] ; 3 uses
  %.sroa.882.0190.i = phi i64 [ 0, %.lr.ph193.i ], [ %i.bf, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i ] ; 17 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.080.0191.i, i64 24 ; 2 uses
  %i.bf = add nuw nsw i64 %.sroa.882.0190.i, 1
  %i.bg = icmp eq i64 %.sroa.040.0194.i, %.sroa.882.0190.i
  br i1 %i.bg, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load ptr, ptr %i.x, align 8, !noalias !387, !nonnull !5, !noundef !5 ; 2 uses
  %i.bi = load i64, ptr %i.y, align 8, !noalias !387, !noundef !5 ; 2 uses
  %i.bj = and i64 %i.bi, 1152921504606846968      ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj ; 7 uses
  %.not.i.i111 = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i111, label %._crit_edge114, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i

bb.p:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 64
  %i.bm = add nsw i64 %.sroa.5.0.i.i112, -8       ; 2 uses
  %.not.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i, label %._crit_edge114, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i

._crit_edge114:                                   ; preds = %bb.p, %bb.o
  %i.bn = shl i64 %i.bi, 3
  %.idx120 = and i64 %i.bn, 56                    ; 7 uses
  %.not.not.not.i.not.not.i.i115 = icmp samesign eq i64 %.idx120, 0
  br i1 %.not.not.not.i.not.not.i.i115, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph117

2:                                                ; preds = %.lr.ph117
  %.not.not.not.i.not.not.i.i = icmp samesign eq i64 %.idx120, 8
  br i1 %.not.not.not.i.not.not.i.i, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph117.1

.lr.ph117.1:                                      ; preds = %2
  %3 = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.val3.i.i.i.1 = load i64, ptr %3, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %4 = icmp eq i64 %.val3.i.i.i.1, %.sroa.882.0190.i
  br i1 %4, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %5

5:                                                ; preds = %.lr.ph117.1
  %.not.not.not.i.not.not.i.i.1 = icmp samesign eq i64 %.idx120, 16
  br i1 %.not.not.not.i.not.not.i.i.1, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph117.2

.lr.ph117.2:                                      ; preds = %5
  %6 = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.val3.i.i.i.2 = load i64, ptr %6, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %7 = icmp eq i64 %.val3.i.i.i.2, %.sroa.882.0190.i
  br i1 %7, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %8

8:                                                ; preds = %.lr.ph117.2
  %.not.not.not.i.not.not.i.i.2 = icmp samesign eq i64 %.idx120, 24
  br i1 %.not.not.not.i.not.not.i.i.2, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph117.3

.lr.ph117.3:                                      ; preds = %8
  %9 = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.val3.i.i.i.3 = load i64, ptr %9, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %10 = icmp eq i64 %.val3.i.i.i.3, %.sroa.882.0190.i
  br i1 %10, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %11

11:                                               ; preds = %.lr.ph117.3
  %.not.not.not.i.not.not.i.i.3 = icmp samesign eq i64 %.idx120, 32
  br i1 %.not.not.not.i.not.not.i.i.3, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph117.4

.lr.ph117.4:                                      ; preds = %11
  %12 = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.val3.i.i.i.4 = load i64, ptr %12, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %13 = icmp eq i64 %.val3.i.i.i.4, %.sroa.882.0190.i
  br i1 %13, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %14

14:                                               ; preds = %.lr.ph117.4
  %.not.not.not.i.not.not.i.i.4 = icmp samesign eq i64 %.idx120, 40
  br i1 %.not.not.not.i.not.not.i.i.4, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %bb.q

bb.q:                                             ; preds = %14
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.val3.i.i.i.5 = load i64, ptr %i.bo, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %.not.not.not.i.not.not.i.i.a = icmp eq i64 %.val3.i.i.i.5, %.sroa.882.0190.i
  br i1 %.not.not.not.i.not.not.i.i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %15

15:                                               ; preds = %bb.q
  %.not.not.not.i.not.not.i.i.5 = icmp samesign eq i64 %.idx120, 48
  br i1 %.not.not.not.i.not.not.i.i.5, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, label %.lr.ph117.a

.lr.ph117.a:                                      ; preds = %15
  %16 = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %.val3.i.i.i.a = load i64, ptr %16, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %i.bp = icmp eq i64 %.val3.i.i.i.a, %.sroa.882.0190.i
  br i1 %i.bp, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i

.lr.ph117:                                        ; preds = %._crit_edge114
  %.val3.i.i.i = load i64, ptr %i.bk, align 8, !alias.scope !390, !noalias !391, !noundef !5
  %17 = icmp eq i64 %.val3.i.i.i, %.sroa.882.0190.i
  br i1 %17, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %2

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i: ; preds = %bb.o, %bb.p
  %.sroa.0.05.i.i113 = phi ptr [ %i.bl, %bb.p ], [ %i.bh, %bb.o ] ; 9 uses
  %.sroa.5.0.i.i112 = phi i64 [ %i.bm, %bb.p ], [ %i.bj, %bb.o ]
  %.val13.i.i.i = load i64, ptr %.sroa.0.05.i.i113, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.bq = icmp eq i64 %.val13.i.i.i, %.sroa.882.0190.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 8
  %.val13.i.1.i.i = load i64, ptr %i.br, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.bs = icmp eq i64 %.val13.i.1.i.i, %.sroa.882.0190.i
  %i.bt = or i1 %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 16
  %.val13.i.2.i.i = load i64, ptr %i.bu, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.bv = icmp eq i64 %.val13.i.2.i.i, %.sroa.882.0190.i
  %i.bw = or i1 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 24
  %.val13.i.3.i.i = load i64, ptr %i.bx, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.by = icmp eq i64 %.val13.i.3.i.i, %.sroa.882.0190.i
  %i.bz = or i1 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 32
  %.val13.i.4.i.i = load i64, ptr %i.ca, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.cb = icmp eq i64 %.val13.i.4.i.i, %.sroa.882.0190.i
  %i.cc = or i1 %i.bz, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 40
  %.val13.i.5.i.i = load i64, ptr %i.cd, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.ce = icmp eq i64 %.val13.i.5.i.i, %.sroa.882.0190.i
  %i.cf = or i1 %i.cc, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 48
  %.val13.i.6.i.i = load i64, ptr %i.cg, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.ch = icmp eq i64 %.val13.i.6.i.i, %.sroa.882.0190.i
  %i.ci = or i1 %i.cf, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i113, i64 56
  %.val13.i.7.i.i = load i64, ptr %i.cj, align 8, !alias.scope !390, !noalias !392, !noundef !5
  %i.ck = icmp eq i64 %.val13.i.7.i.i, %.sroa.882.0190.i
  %i.cl = or i1 %i.ci, %i.ck
  br i1 %i.cl, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, label %bb.p

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i, %.lr.ph117, %.lr.ph117.1, %.lr.ph117.2, %.lr.ph117.3, %.lr.ph117.4, %bb.q, %.lr.ph117.a, %.noexc.i, %bb.n
  %i.cm = icmp eq ptr %i.be, %i.aa
  br i1 %i.cm, label %.backedge.i, label %bb.n

_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i: ; preds = %2, %5, %8, %11, %14, %15, %.lr.ph117.a, %._crit_edge114
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.080.0191.i, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !387, !nonnull !5, !noundef !5 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.080.0191.i, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !387, !noundef !5 ; 2 uses
  %.idx121 = mul nuw nsw i64 %i.cq, 40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx121
  %i.cs = load ptr, ptr %i.as, align 8, !alias.scope !393, !noalias !387, !nonnull !5
  %i.ct = load i64, ptr %i.at, align 8, !alias.scope !393, !noalias !387
  %i.cu = icmp eq i64 %i.cq, 0
  br i1 %i.cu, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i._crit_edge, label %.lr.ph118

bb.r:                                             ; preds = %.noexc.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cx, i64 40 ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.cr
  br i1 %i.cw, label %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, %bb.r
  %i.cx = phi ptr [ %i.cv, %bb.r ], [ %i.co, %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i ] ; 2 uses
  %i.cy = invoke noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cs, i64 noundef %i.ct)
          to label %.noexc.i unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread92.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.noexc.i:                                         ; preds = %.lr.ph118
  br i1 %i.cy, label %bb.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i

_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i._crit_edge: ; preds = %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i, %bb.r
  %i.cz = load i64, ptr %i.y, align 8, !alias.scope !394, !noalias !387, !noundef !5 ; 3 uses
  %i.da = load i64, ptr %i.e, align 8, !range !12, !alias.scope !394, !noalias !387, !noundef !5
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i._crit_edge
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.t unwind label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEEECsaaRuwTSDeTG_9pep508_rs.exit.thread92.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

bb.t:                                             ; preds = %bb.s, %_RNvXsJ_NtNtCs4NRVxsYgnAr_4core5slice3cmpjNtB5_13SliceContains14slice_contains.exit.i._crit_edge
  %i.dc = load ptr, ptr %i.x, align 8, !alias.scope !394, !noalias !387, !nonnull !5, !noundef !5
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.cz
  store i64 %.sroa.040.0194.i, ptr %i.dd, align 8, !noalias !387
  %i.de = add i64 %i.cz, 1
  store i64 %i.de, ptr %i.y, align 8, !alias.scope !394, !noalias !387
  br label %.backedge.i

.backedge.i:                                      ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplifys0_0EBW_.exit.backedge.i, %bb.t
  %exitcond256.not.i = icmp eq i64 %i.aq, %i.r
  br i1 %exitcond256.not.i, label %._crit_edge197.loopexit.i, label %.lr.ph193.i

._crit_edge.thread.i:                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !395
  br label %thread-pre-split.i

.lr.ph183.split.preheader.i:                      ; preds = %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx203.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.backedge147.i, %.lr.ph183.split.preheader.i
  %.sroa.0.0182.i = phi ptr [ %i.dg, %.backedge147.i ], [ %i.af, %.lr.ph183.split.preheader.i ] ; 8 uses
  %.sroa.7.0181.i = phi i64 [ %i.dh, %.backedge147.i ], [ 0, %.lr.ph183.split.preheader.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i, i64 40 ; 2 uses
  %i.dh = add nuw nsw i64 %.sroa.7.0181.i, 1
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i, i64 24 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i, i64 16 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i, i64 32 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i, i64 33 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.0182.i, i64 8 ; 2 uses
  br label %bb.aa

._crit_edge.i:                                    ; preds = %.backedge147.i
  %.pre.i = load ptr, ptr %i.v, align 8, !noalias !387 ; 3 uses
  %.pre257.i = load i64, ptr %i.w, align 8, !noalias !387 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !395
  store ptr %i.a, ptr %i.b, align 8, !noalias !396
  %i.dn = icmp samesign ult i64 %.pre257.i, 2
  br i1 %i.dn, label %bb.x, label %bb.u, !prof !397

bb.u:                                             ; preds = %._crit_edge.i
  %i.do = icmp samesign ult i64 %.pre257.i, 21
  br i1 %i.do, label %bb.w, label %bb.v, !prof !13

bb.v:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainjNCINvMNtCscdodAO9FK5_5alloc5sliceSj7sort_byNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplifys_0E0INtNtB18_3vec3VecjEEB1P_(ptr noalias noundef nonnull align 8 %.pre.i, i64 noundef range(i64 0, 1152921504606846976) %.pre257.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %thread-pre-split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

bb.w:                                             ; preds = %bb.u
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftjNCINvMNtCscdodAO9FK5_5alloc5sliceSj7sort_byNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplifys_0E0EB2c_(ptr noalias noundef nonnull align 8 %.pre.i, i64 noundef range(i64 0, 1152921504606846976) %.pre257.i, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %thread-pre-split.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

thread-pre-split.i:                               ; preds = %bb.w, %bb.v, %._crit_edge.thread.i
  %.pr.i = load i64, ptr %i.w, align 8, !noalias !387
  %.pre = load ptr, ptr %i.v, align 8, !noalias !387
  br label %bb.x

bb.x:                                             ; preds = %thread-pre-split.i, %._crit_edge.i
  %i.dp = phi ptr [ %.pre, %thread-pre-split.i ], [ %.pre.i, %._crit_edge.i ] ; 4 uses
  %i.dq = phi i64 [ %.pr.i, %thread-pre-split.i ], [ %.pre257.i, %._crit_edge.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !395
  %i.dr = load i64, ptr %i.h, align 8, !range !12, !noalias !387, !noundef !5
  %i.ds = icmp ult i64 %i.dq, 1152921504606846976
  call void @llvm.assume(i1 %i.ds)
  %.idx204.i = shl nuw nsw i64 %i.dq, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %.idx204.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !387
  store ptr %i.dp, ptr %i.g, align 8, !noalias !387
  store ptr %i.dp, ptr %.sroa.412.0..sroa_idx.i, align 8, !noalias !387
  store i64 %i.dr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !387
  store ptr %i.dt, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !387
  %i.du = icmp eq i64 %i.dq, 0
  br i1 %i.du, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEECsaaRuwTSDeTG_9pep508_rs.exit63.i, label %.lr.ph185.preheader.i

.loopexit.split-lp141.loopexit.split-lp.i:        ; preds = %bb.y, %.lr.ph185.preheader.i
  %lpad.loopexit.split-lp221.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.body unwind label %bb.m, !noalias !387

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEECsaaRuwTSDeTG_9pep508_rs.exit63.i: ; preds = %bb.z, %bb.x
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEECsaaRuwTSDeTG_9pep508_rs.exit63.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !387
  %exitcond.not.i = icmp eq i64 %i.ab, %i.r
  br i1 %exitcond.not.i, label %.lr.ph196.i, label %bb.g

.lr.ph185.preheader.i:                            ; preds = %bb.x, %bb.z
  %i.dv = phi ptr [ %i.dz, %bb.z ], [ %i.dp, %bb.x ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %i.dw, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !398, !noalias !387
  %i.dx = load i64, ptr %i.dv, align 8, !noalias !399, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !387
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionE6removeBJ_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad, i64 noundef %i.dx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9)
          to label %bb.y unwind label %.loopexit.split-lp141.loopexit.split-lp.i, !noalias !387

bb.y:                                             ; preds = %.lr.ph185.preheader.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEBH_(ptr noalias noundef align 8 dereferenceable(40) %i.f)
          to label %bb.z unwind label %.loopexit.split-lp141.loopexit.split-lp.i, !noalias !387

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !387
  %i.dy = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !400, !noalias !387, !nonnull !5, !noundef !5
  %i.dz = load ptr, ptr %.sroa.412.0..sroa_idx.i, align 8, !alias.scope !400, !noalias !387, !nonnull !5, !noundef !5 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.dy
  br i1 %i.ea, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterjEECsaaRuwTSDeTG_9pep508_rs.exit63.i, label %.lr.ph185.preheader.i

bb.aa:                                            ; preds = %.backedge139.i, %.lr.ph.i
  %.sroa.074.0180.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %i.eb, %.backedge139.i ] ; 3 uses
  %.sroa.8.0179.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ec, %.backedge139.i ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.074.0180.i, i64 24 ; 2 uses
  %i.ec = add nuw nsw i64 %.sroa.8.0179.i, 1
  %i.ed = icmp eq i64 %.sroa.038.0186.i, %.sroa.8.0179.i
  br i1 %i.ed, label %.backedge139.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.074.0180.i, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !noalias !387, !nonnull !5, !noundef !5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.074.0180.i, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !noalias !387, !noundef !5 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.eh, 40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i
  %i.ej = icmp eq i64 %i.eh, 0
  br i1 %i.ej, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplify0EBW_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ab, %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i
  %i.ek = phi ptr [ %i.el, %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i ], [ %i.ef, %bb.ab ] ; 18 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40 ; 2 uses
  %i.em = invoke fastcc noundef zeroext i1 @_RNvXs1M_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerExpressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ek, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.0182.i)
          to label %.noexc68.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.noexc68.i:                                       ; preds = %.lr.ph.i.i
  br i1 %i.em, label %.backedge139.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc68.i
  call void @llvm.experimental.noalias.scope.decl(metadata !401)
  call void @llvm.experimental.noalias.scope.decl(metadata !402)
  %i.en = load i64, ptr %i.ek, align 8, !range !8, !alias.scope !403, !noalias !404, !noundef !5 ; 3 uses
  %i.eo = add nsw i64 %i.en, -2
  %i.ep = icmp samesign ugt i64 %i.en, 1
  %i.eq = select i1 %i.ep, i64 %i.eo, i64 3
  %i.er = load i64, ptr %.sroa.0.0182.i, align 8, !range !8, !alias.scope !402, !noalias !405, !noundef !5 ; 5 uses
  switch i64 %i.eq, label %bb.ad [
    i64 0, label %bb.ae
    i64 1, label %bb.af
    i64 2, label %bb.ag
    i64 3, label %bb.ah
  ]

default.unreachable:                              ; preds = %bb.ba, %bb.am
  unreachable

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.es = icmp eq i64 %i.er, 2
  br i1 %i.es, label %bb.ai, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.af:                                            ; preds = %bb.ac
  %i.et = icmp eq i64 %i.er, 3
  br i1 %i.et, label %bb.au, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i
end_hunk_0
begin_hunk_1_@_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify6to_dnf:bb.a
bb.ak:                                            ; preds = %bb.aj
  %i.fg = load ptr, ptr %i.dm, align 8, !alias.scope !402, !noalias !405, !nonnull !5, !noundef !5 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load i64, ptr %i.fh, align 8, !range !7, !noalias !406, !noundef !5
  %.not9.i.i.i.i = icmp eq i64 %i.fi, 2
  br i1 %.not9.i.i.i.i, label %bb.al, label %.split.i.i.i.i, !prof !13

bb.al:                                            ; preds = %bb.ak
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fb, i64 56
  %i.fk = load i64, ptr %i.fj, align 8, !noalias !406, !noundef !5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 56
  %i.fm = load i64, ptr %i.fl, align 8, !noalias !406, !noundef !5
  %i.fn = icmp eq i64 %i.fk, %i.fm
  br i1 %i.fn, label %bb.am, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.am:                                            ; preds = %bb.al, %.noexc69.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.fp = load i8, ptr %i.fo, align 8, !range !15, !alias.scope !403, !noalias !404, !noundef !5
  switch i8 %i.fp, label %default.unreachable [
    i8 0, label %.split.i.i.i
    i8 1, label %bb.an
    i8 2, label %.split.i.i.i
    i8 3, label %bb.ao
    i8 4, label %bb.ap
    i8 5, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i
    i8 6, label %bb.aq
    i8 7, label %bb.ar
    i8 8, label %bb.as
    i8 9, label %bb.at
  ]

bb.an:                                            ; preds = %bb.am
  br label %.split.i.i.i

bb.ao:                                            ; preds = %bb.am
  br label %.split.i.i.i

bb.ap:                                            ; preds = %bb.am
  br label %.split.i.i.i

bb.aq:                                            ; preds = %bb.am
  br label %.split.i.i.i

bb.ar:                                            ; preds = %bb.am
  br label %.split.i.i.i

bb.as:                                            ; preds = %bb.am
  br label %.split.i.i.i

bb.at:                                            ; preds = %bb.am
  br label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.am
  %.sroa.05.0.i.i.i.i = phi i64 [ 6, %bb.at ], [ 4, %bb.an ], [ 3, %bb.am ], [ 0, %bb.ao ], [ 1, %bb.ap ], [ 9, %bb.aq ], [ 8, %bb.ar ], [ 7, %bb.as ], [ 3, %bb.am ]
  %i.fq = load i8, ptr %i.dj, align 8, !range !15, !alias.scope !402, !noalias !405, !noundef !5
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = icmp eq i64 %.sroa.05.0.i.i.i.i, %i.fr
  br i1 %i.fs, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.au:                                            ; preds = %bb.af
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ek, i64 33
  %i.fu = load i8, ptr %i.ft, align 1, !range !14, !alias.scope !403, !noalias !404, !noundef !5
  %i.fv = load i8, ptr %i.dl, align 1, !range !14, !alias.scope !402, !noalias !405, !noundef !5
  %i.fw = icmp eq i8 %i.fu, %i.fv
  br i1 %i.fw, label %bb.av, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.av:                                            ; preds = %bb.au
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !403, !noalias !404, !noundef !5 ; 2 uses
  %i.fz = load i64, ptr %i.di, align 8, !alias.scope !402, !noalias !405, !noundef !5
  %i.ga = icmp eq i64 %i.fy, %i.fz
  br i1 %i.ga, label %bb.aw, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.gb = load ptr, ptr %i.dj, align 8, !alias.scope !402, !noalias !405, !nonnull !5, !noundef !5
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.gd = load ptr, ptr %i.gc, align 8, !alias.scope !403, !noalias !404, !nonnull !5, !noundef !5
  %i.ge = invoke noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsaaRuwTSDeTG_9pep508_rs(ptr noundef nonnull %i.gd, ptr noundef nonnull %i.gb, i64 noundef %i.fy)
          to label %.noexc70.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.noexc70.i:                                       ; preds = %bb.aw
  br i1 %i.ge, label %.split8.i.i.i, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

.split8.i.i.i:                                    ; preds = %.noexc70.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.gg = load i8, ptr %i.gf, align 8, !range !16, !alias.scope !403, !noalias !404, !noundef !5
  %i.gh = load i8, ptr %i.dk, align 8, !range !16, !alias.scope !402, !noalias !405, !noundef !5
  %.not12.i.i.i = icmp eq i8 %i.gg, %i.gh
  br i1 %.not12.i.i.i, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i

bb.ax:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ek, i64 33
  %i.gj = load i8, ptr %i.gi, align 1, !range !11, !alias.scope !403, !noalias !404, !noundef !5
  %i.gk = load i8, ptr %i.dl, align 1, !range !11, !alias.scope !402, !noalias !405, !noundef !5
  %i.gl = icmp eq i8 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ay, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.ay:                                            ; preds = %bb.ax
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.gn = load i64, ptr %i.gm, align 8, !alias.scope !403, !noalias !404, !noundef !5 ; 2 uses
  %i.go = load i64, ptr %i.di, align 8, !alias.scope !402, !noalias !405, !noundef !5
  %i.gp = icmp eq i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.az, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.gq = load ptr, ptr %i.dj, align 8, !alias.scope !402, !noalias !405, !nonnull !5, !noundef !5
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !403, !noalias !404, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.gs, ptr nonnull %i.gq, i64 %i.gn), !noalias !406
  %i.gt = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.gt, label %bb.ba, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gu = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.gv = load i8, ptr %i.gu, align 8, !range !17, !alias.scope !403, !noalias !404, !noundef !5
  switch i8 %i.gv, label %default.unreachable [
    i8 0, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i
    i8 1, label %bb.bb
    i8 2, label %bb.bc
    i8 3, label %bb.bd
    i8 4, label %bb.be
    i8 5, label %bb.bf
    i8 6, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i
    i8 7, label %bb.bg
    i8 8, label %bb.bh
    i8 9, label %bb.bi
    i8 10, label %bb.bj
  ]

bb.bb:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bc:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bd:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.be:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bf:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bg:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bh:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bi:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bj:                                            ; preds = %bb.ba
  br label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i

bb.bk:                                            ; preds = %bb.ah
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.gw = icmp eq i64 %i.en, %i.er
  br i1 %i.gw, label %bb.bl, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !409, !noalias !404, !noundef !5 ; 2 uses
  %i.gz = load i64, ptr %i.di, align 8, !alias.scope !410, !noalias !405, !noundef !5
  %i.ha = icmp eq i64 %i.gy, %i.gz
  br i1 %i.ha, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i: ; preds = %bb.bl
  %i.hb = load ptr, ptr %i.dj, align 8, !alias.scope !410, !noalias !405, !nonnull !5, !noundef !5
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !409, !noalias !404, !nonnull !5, !noundef !5
  %bcmp6.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hd, ptr nonnull %i.hb, i64 %i.gy), !noalias !411
  %i.he = icmp eq i32 %bcmp6.i.i.i.i.i, 0
  br i1 %i.he, label %.split9.i.i.i, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

.split9.i.i.i:                                    ; preds = %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.hg = load i8, ptr %i.hf, align 8, !range !16, !alias.scope !403, !noalias !404, !noundef !5
  %i.hh = load i8, ptr %i.dk, align 8, !range !16, !alias.scope !402, !noalias !405, !noundef !5
  %.not.i.i.i = icmp eq i8 %i.hg, %i.hh
  br i1 %.not.i.i.i, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i

_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.06.0.i.i.i.i = phi i64 [ 9, %bb.bj ], [ 0, %bb.bb ], [ 5, %bb.bc ], [ 4, %bb.bd ], [ 3, %bb.be ], [ 2, %bb.bf ], [ 8, %bb.bg ], [ 7, %bb.bh ], [ 10, %bb.bi ], [ 1, %bb.ba ]
  %i.hi = load i8, ptr %i.dk, align 8, !range !17, !alias.scope !402, !noalias !405, !noundef !5
  %i.hj = zext nneg i8 %i.hi to i64
  %i.hk = icmp eq i64 %.sroa.06.0.i.i.i.i, %i.hj
  br i1 %i.hk, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i

_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i: ; preds = %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i, %.split9.i.i.i, %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i.i, %bb.bl, %bb.bk, %bb.ba, %bb.az, %bb.ay, %bb.ax, %.split8.i.i.i, %.noexc70.i, %bb.av, %bb.au, %.split.i.i.i, %bb.am, %bb.al, %.noexc69.i, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.hl = load ptr, ptr %i.ae, align 8, !noalias !405, !nonnull !5, !noundef !5 ; 2 uses
  %i.hm = load i64, ptr %i.ag, align 8, !noalias !405, !noundef !5 ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.hm, 40
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.idx.i.i.i
  %i.ho = icmp eq i64 %i.hm, 0
  br i1 %i.ho, label %.backedge139.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i, %bb.bm
  %.sroa.02.08.i.i.i.i = phi i64 [ %i.hs, %bb.bm ], [ 0, %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i ] ; 17 uses
  %i.hp = phi ptr [ %i.hr, %bb.bm ], [ %i.hl, %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i ] ; 2 uses
  %i.hq = invoke fastcc noundef zeroext i1 @_RNvXs1M_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerExpressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ek)
          to label %.noexc71.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

.noexc71.i:                                       ; preds = %.lr.ph.i.i.i.i
  br i1 %i.hq, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.noexc71.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 40 ; 2 uses
  %i.hs = add nuw nsw i64 %.sroa.02.08.i.i.i.i, 1
  %i.ht = icmp eq ptr %i.hr, %i.hn
  br i1 %i.ht, label %.backedge139.i, label %.lr.ph.i.i.i.i

bb.bn:                                            ; preds = %.noexc71.i
  %i.hu = icmp ult i64 %.sroa.02.08.i.i.i.i, %i.hm
  call void @llvm.assume(i1 %i.hu)
  %i.hv = load ptr, ptr %i.v, align 8, !noalias !405, !nonnull !5, !noundef !5 ; 2 uses
  %i.hw = load i64, ptr %i.w, align 8, !noalias !405, !noundef !5 ; 2 uses
  %i.hx = and i64 %i.hw, 1152921504606846968      ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.hx ; 7 uses
  %.not.i3.i.i.i106 = icmp eq i64 %i.hx, 0
  br i1 %.not.i3.i.i.i106, label %._crit_edge, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i.i.i

bb.bo:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i.i.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 64
  %i.ia = add nsw i64 %.sroa.5.0.i.i.i.i107, -8   ; 2 uses
  %.not.i3.i.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not.i3.i.i.i, label %._crit_edge, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i.i.i

._crit_edge:                                      ; preds = %bb.bo, %bb.bn
  %i.ib = shl i64 %i.hw, 3
  %.idx = and i64 %i.ib, 56                       ; 7 uses
  %.not.not.not.i.not.not.i.i.i.i109 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i.i.i.i109, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %.lr.ph

18:                                               ; preds = %.lr.ph
  %.not.not.not.i.not.not.i.i.i.i = icmp samesign eq i64 %.idx, 8
  br i1 %.not.not.not.i.not.not.i.i.i.i, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %18
  %19 = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %.val3.i.i.i.i.i.1 = load i64, ptr %19, align 8, !alias.scope !412, !noalias !413, !noundef !5
  %20 = icmp eq i64 %.val3.i.i.i.i.i.1, %.sroa.02.08.i.i.i.i
  br i1 %20, label %.backedge139.i, label %21

21:                                               ; preds = %.lr.ph.1
  %.not.not.not.i.not.not.i.i.i.i.1 = icmp samesign eq i64 %.idx, 16
  br i1 %.not.not.not.i.not.not.i.i.i.i.1, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %21
  %22 = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %.val3.i.i.i.i.i.2 = load i64, ptr %22, align 8, !alias.scope !412, !noalias !413, !noundef !5
  %23 = icmp eq i64 %.val3.i.i.i.i.i.2, %.sroa.02.08.i.i.i.i
  br i1 %23, label %.backedge139.i, label %24

24:                                               ; preds = %.lr.ph.2
  %.not.not.not.i.not.not.i.i.i.i.2 = icmp samesign eq i64 %.idx, 24
  br i1 %.not.not.not.i.not.not.i.i.i.i.2, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %24
  %25 = getelementptr inbounds nuw i8, ptr %i.hy, i64 24
  %.val3.i.i.i.i.i.3 = load i64, ptr %25, align 8, !alias.scope !412, !noalias !413, !noundef !5
  %26 = icmp eq i64 %.val3.i.i.i.i.i.3, %.sroa.02.08.i.i.i.i
  br i1 %26, label %.backedge139.i, label %27

27:                                               ; preds = %.lr.ph.3
  %.not.not.not.i.not.not.i.i.i.i.3 = icmp samesign eq i64 %.idx, 32
  br i1 %.not.not.not.i.not.not.i.i.i.i.3, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %27
  %28 = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %.val3.i.i.i.i.i.4 = load i64, ptr %28, align 8, !alias.scope !412, !noalias !413, !noundef !5
  %29 = icmp eq i64 %.val3.i.i.i.i.i.4, %.sroa.02.08.i.i.i.i
  br i1 %29, label %.backedge139.i, label %30

30:                                               ; preds = %.lr.ph.4
  %.not.not.not.i.not.not.i.i.i.i.4 = icmp samesign eq i64 %.idx, 40
  br i1 %.not.not.not.i.not.not.i.i.i.i.4, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %bb.bp

bb.bp:                                            ; preds = %30
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 40
  %.val3.i.i.i.i.i.5 = load i64, ptr %i.ic, align 8, !alias.scope !412, !noalias !413, !noundef !5
  %.not.not.not.i.not.not.i.i.i.i.a = icmp eq i64 %.val3.i.i.i.i.i.5, %.sroa.02.08.i.i.i.i
  br i1 %.not.not.not.i.not.not.i.i.i.i.a, label %.backedge139.i, label %31

31:                                               ; preds = %bb.bp
  %.not.not.not.i.not.not.i.i.i.i.5 = icmp samesign eq i64 %.idx, 48
  br i1 %.not.not.not.i.not.not.i.i.i.i.5, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i, label %.lr.ph.a

.lr.ph.a:                                         ; preds = %31
  %32 = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  %.val3.i.i.i.i.i.a = load i64, ptr %32, align 8, !alias.scope !412, !noalias !413, !noundef !5
  %i.id = icmp eq i64 %.val3.i.i.i.i.i.a, %.sroa.02.08.i.i.i.i
  br i1 %i.id, label %.backedge139.i, label %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i

.lr.ph:                                           ; preds = %._crit_edge
  %.val3.i.i.i.i.i = load i64, ptr %i.hy, align 8, !alias.scope !412, !noalias !413, !noundef !5
  %33 = icmp eq i64 %.val3.i.i.i.i.i, %.sroa.02.08.i.i.i.i
  br i1 %33, label %.backedge139.i, label %18

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i.i.i: ; preds = %bb.bn, %bb.bo
  %.sroa.0.05.i.i.i.i108 = phi ptr [ %i.hz, %bb.bo ], [ %i.hv, %bb.bn ] ; 9 uses
  %.sroa.5.0.i.i.i.i107 = phi i64 [ %i.ia, %bb.bo ], [ %i.hx, %bb.bn ]
  %.val13.i.i.i.i.i = load i64, ptr %.sroa.0.05.i.i.i.i108, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.ie = icmp eq i64 %.val13.i.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 8
  %.val13.i.1.i.i.i.i = load i64, ptr %i.if, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.ig = icmp eq i64 %.val13.i.1.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.ih = or i1 %i.ie, %i.ig
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 16
  %.val13.i.2.i.i.i.i = load i64, ptr %i.ii, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.ij = icmp eq i64 %.val13.i.2.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.ik = or i1 %i.ih, %i.ij
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 24
  %.val13.i.3.i.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.im = icmp eq i64 %.val13.i.3.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.in = or i1 %i.ik, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 32
  %.val13.i.4.i.i.i.i = load i64, ptr %i.io, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.ip = icmp eq i64 %.val13.i.4.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.iq = or i1 %i.in, %i.ip
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 40
  %.val13.i.5.i.i.i.i = load i64, ptr %i.ir, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.is = icmp eq i64 %.val13.i.5.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.it = or i1 %i.iq, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 48
  %.val13.i.6.i.i.i.i = load i64, ptr %i.iu, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.iv = icmp eq i64 %.val13.i.6.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.iw = or i1 %i.it, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i108, i64 56
  %.val13.i.7.i.i.i.i = load i64, ptr %i.ix, align 8, !alias.scope !412, !noalias !414, !noundef !5
  %i.iy = icmp eq i64 %.val13.i.7.i.i.i.i, %.sroa.02.08.i.i.i.i
  %i.iz = or i1 %i.iw, %i.iy
  br i1 %i.iz, label %.backedge139.i, label %bb.bo

_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i: ; preds = %18, %21, %24, %27, %30, %31, %.lr.ph.a, %._crit_edge, %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.i.i.i, %.split9.i.i.i, %.split8.i.i.i, %.split.i.i.i
  %i.ja = icmp eq ptr %i.el, %i.ei
  br i1 %i.ja, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplify0EBW_.exit.i, label %.lr.ph.i.i

.backedge139.i:                                   ; preds = %_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify11is_negation.exit.thread.i.i.i, %.noexc68.i, %bb.bm, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsJ_NtB9_3cmpjNtB1L_13SliceContains14slice_contains0ECsaaRuwTSDeTG_9pep508_rs.exit.i.i.i.i, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %bb.bp, %.lr.ph.a, %bb.aa
  %i.jb = icmp eq ptr %i.eb, %i.df
  br i1 %i.jb, label %.backedge147.i, label %bb.aa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplify0EBW_.exit.i: ; preds = %bb.ab, %_RNCNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify8simplify0B7_.exit.i.i
  %i.jc = load i64, ptr %i.w, align 8, !alias.scope !415, !noalias !387, !noundef !5 ; 3 uses
  %i.jd = load i64, ptr %i.h, align 8, !range !12, !alias.scope !415, !noalias !387, !noundef !5
  %i.je = icmp eq i64 %i.jc, %i.jd
  br i1 %i.je, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplify0EBW_.exit.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs79ICTHwG85D_12regex_syntax(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.br unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !387

bb.br:                                            ; preds = %bb.bq, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvNtBU_8simplify8simplify0EBW_.exit.i
  %i.jf = load ptr, ptr %i.v, align 8, !alias.scope !415, !noalias !387, !nonnull !5, !noundef !5
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.jc
  store i64 %.sroa.7.0181.i, ptr %i.jg, align 8, !noalias !387
  %i.jh = add i64 %i.jc, 1
  store i64 %i.jh, ptr %i.w, align 8, !alias.scope !415, !noalias !387
  br label %.backedge147.i

.backedge147.i:                                   ; preds = %.backedge139.i, %bb.br
  %i.ji = icmp eq ptr %i.dg, %i.ai
  br i1 %i.ji, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !385

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aw, %.split.i.i.i.i, %.lr.ph.i.i, %.lr.ph.i.i.i.i, %bb.bq, %bb.w, %bb.v
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.bt unwind label %bb.bs, !noalias !387

bb.bs:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body6 unwind label %bb.bu, !noalias !387

bb.bt:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.m

bb.bu:                                            ; preds = %bb.bs
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14, !noalias !387
  unreachable

bb.bv:                                            ; preds = %._crit_edge200.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !387
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.bw:                                            ; preds = %.body, %bb.b
  %i.jl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #14
  unreachable

bb.bx:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCsaaRuwTSDeTG_9pep508_rs6origins_1__NtB7_17RequirementOriginNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB19_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !417 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs0_NvXNvNtCsaaRuwTSDeTG_9pep508_rs6origins_1__NtBd_17RequirementOriginNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB8_9___VisitorNtB1f_7Visitor10visit_enumNtB2_9___VisitorB2q_9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !418 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 40)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsaaRuwTSDeTG_9pep508_rs6origins_1__NtBa_17RequirementOriginNtNtCs6nZeqdiIoCH_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1c_7Visitor9expecting(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !guid !419 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1M_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerExpressionNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) unnamed_addr #1 !guid !423 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 3 uses
  %i.b = add nsw i64 %i.a, -2
  %i.c = icmp samesign ugt i64 %i.a, 1
  %i.d = select i1 %i.c, i64 %i.b, i64 3          ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !8, !noundef !5 ; 3 uses
  %i.f = add nsw i64 %i.e, -2
  %i.g = icmp samesign ugt i64 %i.e, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 3
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit: ; preds = %.sink.split.i, %bb.t, %bb.s, %bb.g, %bb.q, %bb.f, %bb.p, %bb.n, %bb.e, %bb.m, %bb.j, %bb.l, %bb.h, %bb.d, %bb.a, %bb.r, %bb.o
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.h ], [ false, %bb.d ], [ false, %bb.a ], [ %i.bl, %bb.o ], [ false, %bb.e ], [ %i.aw, %bb.l ], [ %i.ca, %bb.r ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.q ], [ %i.ao, %bb.j ], [ false, %bb.m ], [ false, %bb.p ], [ false, %bb.s ], [ %i.cl, %.sink.split.i ], [ false, %bb.t ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !14, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !14, !noundef !5
  %i.n = icmp eq i8 %i.k, %i.m
  br i1 %i.n, label %bb.h, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load i8, ptr %i.o, align 8, !range !16, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !16, !noundef !5
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.m, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.w = load i8, ptr %i.v, align 1, !range !11, !noundef !5
  %i.x = icmp eq i8 %i.u, %i.w
  br i1 %i.x, label %bb.p, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i8, ptr %i.y, align 8, !range !16, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load i8, ptr %i.aa, align 8, !range !16, !noundef !5
  %i.ac = icmp eq i8 %i.z, %i.ab
  br i1 %i.ac, label %bb.s, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load i8, ptr %i.ae, align 8, !range !15, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i8, ptr %i.ah, align 8, !range !15, !noundef !5
  %i.aj = icmp eq i8 %i.af, %i.ai
  br i1 %i.aj, label %bb.i, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !7, !noundef !5
  %.not = icmp eq i64 %i.am, 2
  br i1 %.not, label %bb.k, label %bb.j, !prof !13

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.an = tail call noundef i8 @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version8cmp_slow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
  %i.ao = icmp eq i8 %i.an, 0
  br label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.ag, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !7, !noundef !5
  %.not6 = icmp eq i64 %i.ar, 2
  br i1 %.not6, label %bb.l, label %bb.j, !prof !13

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.at = load i64, ptr %i.as, align 8, !noundef !5
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  %i.aw = icmp eq i64 %i.at, %i.av
  br label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.ay = load i8, ptr %i.ax, align 1, !range !14, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.ba = load i8, ptr %i.az, align 1, !range !14, !noundef !5
  %i.bb = icmp eq i8 %i.ay, %i.ba
  br i1 %i.bb, label %bb.n, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !noundef !5
  %i.bg = icmp eq i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.o, label %_RNvXs1E_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
end_hunk_1
