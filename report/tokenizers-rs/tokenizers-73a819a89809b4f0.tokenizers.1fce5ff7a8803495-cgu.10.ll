Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode:bb.a

.noexc186.i:                                      ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  %i.na = lshr i64 %i.mz, 57
  %i.nb = trunc nuw nsw i64 %i.na to i8
  %i.nc = load i64, ptr %i.dg, align 8, !alias.scope !1236, !noalias !1237, !noundef !5 ; 2 uses
  %i.nd = load ptr, ptr %i.dd, align 8, !alias.scope !1236, !noalias !1237, !nonnull !5, !noundef !5 ; 2 uses
  %i.ne = insertelement <16 x i8> poison, i8 %i.nb, i64 0
  %i.nf = shufflevector <16 x i8> %i.ne, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ek, %.noexc186.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc186.i ], [ %i.nw, %bb.ek ]
  %.pn.i.i.i.i = phi i64 [ %i.mz, %.noexc186.i ], [ %i.nx, %bb.ek ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.nc ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ng, align 1, !noalias !1238 ; 2 uses
  %i.nh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.nf
  %i.ni = bitcast <16 x i1> %i.nh to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ni, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ei, %bb.ej
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.nv, %bb.ej ], [ %i.ni, %bb.ei ] ; 3 uses
  %i.nj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.nk = zext nneg i16 %i.nj to i64
  %i.nl = add i64 %.sroa.01.0.i.i.i.i, %i.nk
  %i.nm = and i64 %i.nl, %i.nc
  %i.nn = sub nsw i64 0, %i.nm
  %i.no = getelementptr inbounds [32 x i8], ptr %i.nd, i64 %i.nn ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 -32
  %i.nq = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.np)
          to label %.noexc187.i unwind label %.loopexit240.i, !noalias !1191

.noexc187.i:                                      ; preds = %.lr.ph.i.i.i
  br i1 %i.nq, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.ej, !prof !30

._crit_edge.i.i.i:                                ; preds = %bb.ej, %bb.ei
  %i.nr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ns = bitcast <16 x i1> %i.nr to i16
  %i.nt = icmp eq i16 %i.ns, 0
  br i1 %i.nt, label %bb.ek, label %.invoke600.i, !prof !11

bb.ej:                                            ; preds = %.noexc187.i
  %i.nu = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.nv = and i16 %i.nu, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.nv, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ek:                                            ; preds = %._crit_edge.i.i.i
  %i.nw = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.nx = add i64 %.sroa.01.0.i.i.i.i, %i.nw
  br label %bb.ei

bb.el:                                            ; preds = %bb.ef
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lk, i64 noundef %i.mt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #25
          to label %bb.at unwind label %.loopexit.split-lp241.loopexit.split-lp.i, !noalias !1191

.loopexit240.i:                                   ; preds = %.lr.ph.i.i.i
  %lpad.loopexit242.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp241.i

.loopexit.split-lp241.loopexit.i:                 ; preds = %bb.eh
  %lpad.loopexit246.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp241.i

.loopexit.split-lp241.loopexit.split-lp.i:        ; preds = %.invoke600.i, %bb.el
  %lpad.loopexit.split-lp247.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp241.i

.loopexit.split-lp241.i:                          ; preds = %.loopexit.split-lp241.loopexit.split-lp.i, %.loopexit.split-lp241.loopexit.i, %.loopexit240.i
  %lpad.phi244.i = phi { ptr, i32 } [ %lpad.loopexit242.i, %.loopexit240.i ], [ %lpad.loopexit246.i, %.loopexit.split-lp241.loopexit.i ], [ %lpad.loopexit.split-lp247.i, %.loopexit.split-lp241.loopexit.split-lp.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i unwind label %bb.em, !noalias !1191

bb.em:                                            ; preds = %.loopexit.split-lp241.i
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body160.i unwind label %bb.en, !noalias !1191

bb.en:                                            ; preds = %bb.em
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1191
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i: ; preds = %.loopexit.split-lp241.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.cq, !noalias !1191

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc187.i
  %i.oa = getelementptr inbounds i8, ptr %i.no, i64 -8
  %i.ob = load i64, ptr %i.dh, align 8, !noalias !1162, !noundef !5
  %i.oc = load i32, ptr %i.oa, align 4, !noalias !1191, !noundef !5
  %i.od = zext i32 %i.oc to i64                   ; 3 uses
  %i.oe = icmp ugt i64 %i.ob, %i.od
  br i1 %i.oe, label %bb.eo, label %.invoke600.i, !prof !30

.invoke600.i:                                     ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.eg, %._crit_edge.i.i.i
  %i.of = phi ptr [ @123, %._crit_edge.i.i.i ], [ @123, %bb.eg ], [ @124, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of) #25
          to label %.cont601.i unwind label %.loopexit.split-lp241.loopexit.split-lp.i, !noalias !1191

.cont601.i:                                       ; preds = %.invoke600.i
  unreachable

bb.eo:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.og = load ptr, ptr %i.di, align 8, !noalias !1162, !nonnull !5, !noundef !5
  %i.oh = getelementptr inbounds nuw [32 x i8], ptr %i.og, i64 %i.od
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load double, ptr %i.oi, align 8, !noalias !1191, !noundef !5
  %i.ok = fadd double %i.jj, %i.oj                ; 2 uses
  %i.ol = load i64, ptr %i.mw, align 8, !range !9, !noalias !1191, !noundef !5
  %i.om = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.not103.i = icmp eq i64 %i.ol, 0
  br i1 %.not103.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.on = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.oo = load double, ptr %i.on, align 8, !noalias !1191, !noundef !5
  %i.op = fcmp ogt double %i.ok, %i.oo
  br i1 %i.op, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store double %i.ok, ptr %i.oq, align 8, !noalias !1191
  store i64 1, ptr %i.mw, align 8, !noalias !1191
  store i64 %.sroa.011.0355.i, ptr %i.om, align 8, !noalias !1191
  %i.or = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i64 %i.od, ptr %i.or, align 8, !noalias !1191
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i unwind label %bb.es, !noalias !1191

bb.es:                                            ; preds = %bb.er
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.et, !noalias !1191

bb.et:                                            ; preds = %bb.es
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1191
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i: ; preds = %bb.er
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i unwind label %bb.df, !noalias !1191

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i
  %i.ou = icmp ne i64 %i.li, %.sroa.023.0.i
  %i.ov = trunc nuw i8 %.sroa.021.0.i to i1
  %or.cond.not.i = or i1 %i.ou, %i.ov
  %spec.store.select.i = select i1 %or.cond.not.i, i8 %.sroa.021.0.i, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1162
  br label %bb.dc

_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1162
  %i.ow = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.ow, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.v, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.ca, %bb.v ]
  %.sroa.6.0.copyload.sink = phi ptr [ %.sroa.6.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cd, %bb.v ]
  %.sroa.9.0.copyload.sink = phi ptr [ %.sroa.9.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cf, %bb.v ]
  store i64 %.sroa.0.0.copyload.sink, ptr %i.ad, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.6.0.copyload.sink, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.9.0.copyload.sink, ptr %.sroa.59.0..sroa_idx, align 8
  %i.ox = icmp ult i64 %3, 256
  br i1 %i.ox, label %bb.ey, label %bb.ex

bb.ev:                                            ; preds = %bb.v, %bb.ew
  %.sroa.6.055.sink = phi ptr [ %.sroa.6.055, %bb.ew ], [ %i.cd, %bb.v ]
  %.sroa.9.054.sink = phi ptr [ %.sroa.9.054, %bb.ew ], [ %i.cf, %bb.v ]
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.055.sink, ptr %i.oy, align 8
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.9.054.sink, ptr %i.oz, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.d

bb.ew:                                            ; preds = %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit
  %.sroa.6.055 = phi ptr [ %i.mj, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread ], [ %.sroa.6.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ] ; 2 uses
  %.sroa.9.054 = phi ptr [ @120, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread ], [ %.sroa.9.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.055) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.054) ]
  br label %bb.ev

bb.ex:                                            ; preds = %bb.fg, %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.t

bb.ey:                                            ; preds = %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.fb unwind label %bb.fa

bb.ez:                                            ; preds = %bb.fe, %bb.fh, %bb.fa
  %.pn = phi { ptr, i32 } [ %i.pa, %bb.fa ], [ %i.pl, %bb.fh ], [ %i.pj, %bb.fe ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ad) #28
          to label %common.resume unwind label %bb.u

bb.fa:                                            ; preds = %bb.fc, %bb.ey
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.fb:                                            ; preds = %bb.ey
  %i.pb = load i64, ptr %i.y, align 8, !range !9, !noundef !5
  %i.pc = trunc nuw i64 %i.pb to i1
  %i.pd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.pe = load i64, ptr %i.pd, align 8, !range !21, !noundef !5 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  br i1 %i.pc, label %bb.fc, label %bb.fd, !prof !11

bb.fc:                                            ; preds = %bb.fb
  %i.pg = load i64, ptr %i.pf, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.pe, i64 %i.pg) #25
          to label %bb.fi unwind label %bb.fa

bb.fd:                                            ; preds = %bb.fb
  %i.ph = load ptr, ptr %i.pf, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.pi = icmp samesign ule i64 %3, %i.pe
  call void @llvm.assume(i1 %i.pi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ph, ptr nonnull align 1 %2, i64 %3, i1 false)
  store i64 %i.pe, ptr %i.ab, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ph, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %3, ptr %.sroa.639.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad)
          to label %bb.ff unwind label %bb.fh

bb.fe:                                            ; preds = %bb.ff
  %i.pj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ff:                                            ; preds = %bb.fd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.pk = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.pk, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  invoke void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE10set_valuesINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources4once4OnceTBY_B1z_EEEBa_(ptr noundef nonnull align 8 %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.x)
          to label %bb.fg unwind label %bb.fe

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ex

bb.fh:                                            ; preds = %bb.fd
  %i.pl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ab) #28
          to label %bb.ez unwind label %bb.u

bb.fi:                                            ; preds = %bb.fc
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMs3_NtNtCseKCDlm5CXZl_4rand4rngs9reseedingINtB5_13ReseedingCoreNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtNtCshIVG2s6J0nm_9rand_core2os5OsRngE19reseed_and_generateCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 16 dereferenceable(64) %0, ptr noalias noundef align 4 dereferenceable(256) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1244
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @_RINvYNtNtCse8lV02w4rfA_11rand_chacha6chacha12ChaCha12CoreNtCshIVG2s6J0nm_9rand_core11SeedableRng12try_from_rngNtNtBV_2os5OsRngECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull %i.d)
  %i.e = load i32, ptr %i.a, align 16, !range !20, !noalias !1244, !noundef !5
  %i.f = trunc nuw i32 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load i32, ptr %i.g, align 4, !range !1245, !noalias !1244, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.h, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXNtCshIVG2s6J0nm_9rand_core2osNtB2_7OsErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @127, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @129) #25
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.l = load i64, ptr %i.j, align 16, !alias.scope !1244, !noalias !1246, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1244
  %i.m = add i64 %i.l, -256
  store i64 %i.m, ptr %i.i, align 8
  tail call void @_RNvNtCse8lV02w4rfA_11rand_chacha4guts11refill_wide(ptr noalias noundef nonnull align 16 dereferenceable(48) %0, i32 noundef 6, ptr noalias noundef nonnull align 4 dereferenceable(256) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levelNtB4_9ByteLevel8alphabet(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, i64 64) acquire, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  call void @_RNvMs0_NtNtNtNtCs2AWtUsOyxgP_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR, i64 64), i1 noundef zeroext true, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1253
  call void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMaphcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10BYTES_CHAR)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1253
  %i.h = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE), !noalias !1254 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !noalias !1254, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1254, !nonnull !5, !align !7, !noundef !5
  %i.l = call noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS), !noalias !1254 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !5, !noalias !1254, !nonnull !5
  %i.p = call noundef i64 %i.o(ptr noundef nonnull %i.i), !noalias !1254, !inline_history !1252
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.m, i64 noundef %i.p), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @67, i64 32, i1 false), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !1253
  invoke void @_RINvXs8_NtCsgQfI1edjipl_9hashbrown3setINtB6_7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect6ExtendcE6extendINtNtNtB1M_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.b)
          to label %_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetcEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBZ_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.c, !noalias !1253

bb.c:                                             ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTcuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.d, !noalias !1253

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1253
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetcNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.r

_RINvXsc_NtCsiTTz6JxaXqu_5ahash8hash_setINtB6_8AHashSetcEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBZ_8adapters6copied6CopiedINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map6ValueshcEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMaphcEE5force0ECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1253
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_level10bytes_char(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  store i64 0, ptr %i.e, align 8
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i24 noundef 8265984)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5_8EncodingNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone:bb.a
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.h ], [ %i.m, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %bb.b unwind label %bb.y

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEENtNtBJ_5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.k, %bb.i
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.k ], [ %i.o, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.g) #28
          to label %bb.e unwind label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.n, %bb.l
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.n ], [ %i.q, %bb.l ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionmEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.f) #28
          to label %bb.h unwind label %bb.y

bb.l:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 120
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.p unwind label %bb.o

bb.n:                                             ; preds = %bb.q, %bb.o
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.q ], [ %i.s, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.e) #28
          to label %bb.k unwind label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.t, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.t ], [ %i.u, %bb.r ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #28
          to label %bb.n unwind label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBK_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v)
          to label %bb.v unwind label %bb.u

bb.t:                                             ; preds = %bb.w, %bb.u
  %.pn = phi { ptr, i32 } [ %i.y, %bb.w ], [ %i.w, %bb.u ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.c) #28
          to label %bb.q unwind label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_RNvXNtCsgQfI1edjipl_9hashbrown3mapINtB2_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateENtNtBS_5clone5Clone5cloneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.x)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.b) #28
          to label %bb.t unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.y:                                             ; preds = %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e, %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.z:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !6, !noundef !5
  switch i8 %i.a, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @174, i64 noundef 52)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 43)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @176, i64 noundef 52)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ], [ %i.d, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs7_NtCs5PtHgSLqj5O_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser15SerializeStruct3endCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i8 noundef range(i8 0, 3) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  %i.a = icmp eq i8 %1, 0
  br i1 %i.a, label %_RNvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap3endCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !1485 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1487, !noundef !5
  %i.d = add i64 %i.c, -1                         ; 3 uses
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !1487
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !4, !alias.scope !1487, !noundef !5
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i

bb.c:                                             ; preds = %bb.b
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1487
  %i.h = load ptr, ptr %2, align 8, !alias.scope !1487, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1487, !noundef !5
  %.not.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.sroa.06.01.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ 0, %bb.c ]
  %i.k = add nuw i64 %.sroa.06.01.i.i, 1          ; 2 uses
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.h, i64 noundef range(i64 0, -9223372036854775808) %i.j), !noalias !1487
  %exitcond.not.i.i = icmp eq i64 %i.k, %i.d
  br i1 %exitcond.not.i.i, label %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, label %.lr.ph.i.i

_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.lr.ph.i.i, %bb.c, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !1487
  br label %_RNvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap3endCs2JiOgHzbbc7_10tokenizers.exit

_RNvXs6_NtCs5PtHgSLqj5O_10serde_json3serINtB5_8CompoundQINtNtCscdodAO9FK5_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsboAIIHEtPkY_10serde_core3ser12SerializeMap3endCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RINvXsd_NtCs5PtHgSLqj5O_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !6, !noundef !5 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_12UnigramErrorNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.153, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCs4NRVxsYgnAr_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @182, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @181)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @180, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels0_1__NtBG_12ByteLevelDef11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvMNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences0_1__NtBG_11SequenceDef11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils1__NtBG_8SequenceNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utils1__NtBG_8SequenceNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @143, i64 noundef 15)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss1_1__NtBG_13LowercaseTypeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss3_1__NtBG_15LowercaseHelperNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers5utilss3_1__NtBG_15LowercaseHelperNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 22)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels1_1__NtBG_13ByteLevelTypeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels2_1__NtBG_21ByteLevelDeserializerNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels2_1__NtBG_21ByteLevelDeserializerNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 28)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpe1__NtBG_10BPEDecoderNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders3bpe1__NtBG_10BPEDecoderNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @149, i64 noundef 17)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences1_1__NtBG_12SequenceTypeNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @138, i64 noundef 18)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences2_1__NtBG_20SequenceDeserializerNtB4_11Deserialize11deserialize14___FieldVisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 16)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtCsboAIIHEtPkY_10serde_core2deNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders8sequences2_1__NtBG_20SequenceDeserializerNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBK_(ptr noalias noundef nonnull readonly captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @151, i64 noundef 27)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
end_hunk_1
