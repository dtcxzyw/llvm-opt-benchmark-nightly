inline.NumInlined: 2394
inline.NumDeleted: 987
begin_hunk_0_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %2, ptr %i.cr, align 8, !tbaa !56
  %.sroa.2191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i64 %3, ptr %.sroa.2191.0..sroa_idx.i, align 8, !tbaa !57
  %.not.i = icmp ne ptr %4, null                  ; 4 uses
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i
  %i.cs = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i
  %.0193.i = phi ptr [ %4, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i ], [ %i.cs, %bb.q ] ; 7 uses
  %i.ct = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE acquire, align 8
  %.not.i284.i = icmp eq ptr %i.ct, null
  br i1 %.not.i284.i, label %bb.s, label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i

bb.s:                                             ; preds = %bb.r
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4llvh2cl18TopLevelSubCommandE, ptr noundef nonnull @_ZN4llvh14object_creatorINS_2cl10SubCommandEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_2cl10SubCommandEE4callEPv) #28
  br label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i

_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i: ; preds = %bb.s, %bb.r
  %i.cu = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE monotonic, align 8 ; 2 uses
  %i.cv = icmp sgt i32 %i.ax, 1
  br i1 %i.cv, label %bb.t, label %bb.z

bb.t:                                             ; preds = %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !56 ; 3 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !18
  %.not230.i = icmp eq i8 %i.cy, 45
  br i1 %.not230.i, label %bb.z, label %_ZN4llvh9StringRefC2EPKc.exit269.i

_ZN4llvh9StringRefC2EPKc.exit269.i:               ; preds = %bb.t
  %i.cz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cx) #32 ; 3 uses
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit269.i
  %i.db = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE acquire, align 8
  %.not.i.i286.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i286.i, label %.thread44.sink.split.sink.split.i.i, label %.thread44.sink.split.i.i

bb.v:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit269.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 240
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !64 ; 5 uses
  %i.df = load ptr, ptr %i.dc, align 8, !tbaa !65
  %i.dg = icmp eq ptr %i.de, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.n, i64 252
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  %i.dk = load i32, ptr %i.dj, align 8
  %.v.v.i4.i2.i.i.i = select i1 %i.dg, i32 %i.di, i32 %i.dk ; 2 uses
  %.v.i5.i3.i.i.i = zext i32 %.v.v.i4.i2.i.i.i to i64 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %.v.i5.i3.i.i.i, 3
  %i.dl = getelementptr i8, ptr %i.de, i64 %.idx.i.i.i ; 4 uses
  %.not3.i4.i.i6.i4.i.i.i = icmp eq i32 %.v.v.i4.i2.i.i.i, 0
  br i1 %.not3.i4.i.i6.i4.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i.i, label %.lr.ph.i5.i.i7.i5.i.i.i

.lr.ph.i5.i.i7.i5.i.i.i:                          ; preds = %bb.v, %.critedge2.i7.i.i9.i11.i.i.i
  %.sroa.0.3.i6.i.i.i = phi ptr [ %i.dn, %.critedge2.i7.i.i9.i11.i.i.i ], [ %i.de, %bb.v ] ; 3 uses
  %i.dm = load ptr, ptr %.sroa.0.3.i6.i.i.i, align 8, !tbaa !66
  %switch.i6.i.i8.i7.i.i.i = icmp ugt ptr %i.dm, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i7.i.i.i, label %.critedge2.i7.i.i9.i11.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i.i

.critedge2.i7.i.i9.i11.i.i.i:                     ; preds = %.lr.ph.i5.i.i7.i5.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i12.i.i.i = icmp eq ptr %i.dn, %i.dl
  br i1 %.not.i8.i.i10.i12.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i.i, label %.lr.ph.i5.i.i7.i5.i.i.i, !llvm.loop !67

_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i.i: ; preds = %.critedge2.i7.i.i9.i11.i.i.i, %.lr.ph.i5.i.i7.i5.i.i.i, %bb.v
  %.sroa.0.4.i8.i.i.i = phi ptr [ %i.de, %bb.v ], [ %.sroa.0.3.i6.i.i.i, %.lr.ph.i5.i.i7.i5.i.i.i ], [ %i.dl, %.critedge2.i7.i.i9.i11.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.v.i5.i3.i.i.i ; 2 uses
  %.not47.i.i = icmp eq ptr %.sroa.0.4.i8.i.i.i, %i.do
  br i1 %.not47.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i
  %.sroa.024.048.i.i = phi ptr [ %.sroa.024.2.i.i, %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i ], [ %.sroa.0.4.i8.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i.i ] ; 2 uses
  %i.dp = load ptr, ptr %.sroa.024.048.i.i, align 8, !tbaa !66 ; 4 uses
  %i.dq = load atomic ptr, ptr @_ZN4llvh2cl14AllSubCommandsE acquire, align 8
  %.not.i14.i.i = icmp eq ptr %i.dq, null
  br i1 %.not.i14.i.i, label %bb.w, label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit15.i.i

bb.w:                                             ; preds = %.lr.ph.i.i
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4llvh2cl14AllSubCommandsE, ptr noundef nonnull @_ZN4llvh14object_creatorINS_2cl10SubCommandEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_2cl10SubCommandEE4callEPv) #28
  br label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit15.i.i

_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit15.i.i: ; preds = %bb.w, %.lr.ph.i.i
  %i.dr = load atomic ptr, ptr @_ZN4llvh2cl14AllSubCommandsE monotonic, align 8
  %i.ds = icmp eq ptr %i.dp, %i.dr
  br i1 %i.ds, label %.thread35.i.i, label %bb.x

bb.x:                                             ; preds = %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit15.i.i
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %.sroa.2.0.copyload.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !57
  %i.dt = icmp eq i64 %.sroa.2.0.copyload.i.i.i, %i.cz
  br i1 %i.dt, label %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, label %.thread35.i.i

_ZNK4llvh9StringRef6equalsES0_.exit.i.i:          ; preds = %bb.x
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.dp, align 8, !tbaa !56
  %bcmp.i.i = call i32 @bcmp(ptr %.sroa.0.0.copyload.i.i.i, ptr nonnull readonly %i.cx, i64 %i.cz)
  %bcmp.fr.i.i = freeze i32 %bcmp.i.i
  %i.du = icmp eq i32 %bcmp.fr.i.i, 0
  br i1 %i.du, label %_ZN12_GLOBAL__N_117CommandLineParser16LookupSubCommandEN4llvh9StringRefE.exit.i, label %.thread35.i.i

.thread35.i.i:                                    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %bb.x, %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit15.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.024.048.i.i, i64 8 ; 3 uses
  %.not3.i3.i.i.i = icmp eq ptr %i.dv, %i.dl
  br i1 %.not3.i3.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i, label %.lr.ph.i4.i.i.i

.lr.ph.i4.i.i.i:                                  ; preds = %.thread35.i.i, %.critedge2.i6.i.i.i
  %.sroa.024.1.i.i = phi ptr [ %i.dx, %.critedge2.i6.i.i.i ], [ %i.dv, %.thread35.i.i ] ; 3 uses
  %i.dw = load ptr, ptr %.sroa.024.1.i.i, align 8, !tbaa !66
  %switch.i5.i.i.i = icmp ugt ptr %i.dw, inttoptr (i64 -3 to ptr)
  br i1 %switch.i5.i.i.i, label %.critedge2.i6.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i

.critedge2.i6.i.i.i:                              ; preds = %.lr.ph.i4.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.024.1.i.i, i64 8 ; 3 uses
  %.not.i7.i.i.i = icmp eq ptr %i.dx, %i.dl
  br i1 %.not.i7.i.i.i, label %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i, label %.lr.ph.i4.i.i.i, !llvm.loop !67

_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i: ; preds = %.critedge2.i6.i.i.i, %.lr.ph.i4.i.i.i, %.thread35.i.i
  %.sroa.024.2.i.i = phi ptr [ %i.dv, %.thread35.i.i ], [ %.sroa.024.1.i.i, %.lr.ph.i4.i.i.i ], [ %i.dx, %.critedge2.i6.i.i.i ] ; 2 uses
  %.not.i285.i = icmp eq ptr %.sroa.024.2.i.i, %i.do
  br i1 %.not.i285.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_ZN4llvh19SmallPtrSetIteratorIPNS_2cl10SubCommandEEppEv.exit.i.i, %_ZNK4llvh15SmallPtrSetImplIPNS_2cl10SubCommandEE5beginEv.exit.i.i
  %i.dy = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE acquire, align 8
  %.not.i21.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i21.i.i, label %.thread44.sink.split.sink.split.i.i, label %.thread44.sink.split.i.i

.thread44.sink.split.sink.split.i.i:              ; preds = %._crit_edge.i.i, %bb.u
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4llvh2cl18TopLevelSubCommandE, ptr noundef nonnull @_ZN4llvh14object_creatorINS_2cl10SubCommandEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_2cl10SubCommandEE4callEPv) #28
  br label %.thread44.sink.split.i.i

.thread44.sink.split.i.i:                         ; preds = %.thread44.sink.split.sink.split.i.i, %._crit_edge.i.i, %bb.u
  %i.dz = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE monotonic, align 8
  br label %_ZN12_GLOBAL__N_117CommandLineParser16LookupSubCommandEN4llvh9StringRefE.exit.i

_ZN12_GLOBAL__N_117CommandLineParser16LookupSubCommandEN4llvh9StringRefE.exit.i: ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i.i, %.thread44.sink.split.i.i
  %.3.i.i = phi ptr [ %i.dz, %.thread44.sink.split.i.i ], [ %i.dp, %_ZNK4llvh9StringRef6equalsES0_.exit.i.i ] ; 2 uses
  %i.ea = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE acquire, align 8
  %.not.i287.i = icmp eq ptr %i.ea, null
  br i1 %.not.i287.i, label %bb.y, label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit288.i

bb.y:                                             ; preds = %_ZN12_GLOBAL__N_117CommandLineParser16LookupSubCommandEN4llvh9StringRefE.exit.i
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZN4llvh2cl18TopLevelSubCommandE, ptr noundef nonnull @_ZN4llvh14object_creatorINS_2cl10SubCommandEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterINS_2cl10SubCommandEE4callEPv) #28
  br label %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit288.i

_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit288.i: ; preds = %bb.y, %_ZN12_GLOBAL__N_117CommandLineParser16LookupSubCommandEN4llvh9StringRefE.exit.i
  %i.eb = load atomic ptr, ptr @_ZN4llvh2cl18TopLevelSubCommandE monotonic, align 8
  %.not231.i = icmp eq ptr %.3.i.i, %i.eb
  %spec.select.i = select i1 %.not231.i, i32 1, i32 2
  br label %bb.z

bb.z:                                             ; preds = %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit288.i, %bb.t, %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i
  %.0197.i = phi ptr [ %i.cu, %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i ], [ %.3.i.i, %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit288.i ], [ %i.cu, %bb.t ] ; 9 uses
  %.0196.i = phi i32 [ 1, %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit.i ], [ %spec.select.i, %_ZN4llvh13ManagedStaticINS_2cl10SubCommandENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEdeEv.exit288.i ], [ 1, %bb.t ] ; 3 uses
  %i.ec = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i289.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i289.i, label %bb.aa, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i

bb.aa:                                            ; preds = %bb.z
  call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i: ; preds = %bb.aa, %bb.z
  %i.ed = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 296
  store ptr %.0197.i, ptr %i.ee, align 8, !tbaa !170
  %i.ef = getelementptr inbounds nuw i8, ptr %.0197.i, i64 160 ; 5 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.0197.i, i64 32 ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0197.i, i64 80
  %i.ei = getelementptr inbounds nuw i8, ptr %.0197.i, i64 128 ; 18 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0197.i, i64 40 ; 7 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !156 ; 2 uses
  %.not.i290.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i290.i, label %bb.aw, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %21, i64 17
  %i.eo = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %22, i64 17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.au
  br i1 %i.gv, label %bb.aw, label %bb.av

bb.ad:                                            ; preds = %bb.au, %bb.ab
  %.0194653.i = phi i32 [ 0, %bb.ab ], [ %.1.i, %bb.au ] ; 6 uses
  %.0198652.i = phi i1 [ false, %bb.ab ], [ %i.gv, %bb.au ] ; 2 uses
  %.0204651.i = phi i64 [ 0, %bb.ab ], [ %i.gw, %bb.au ] ; 2 uses
  %.0569650.i = phi i8 [ 0, %bb.ab ], [ %.1570.i, %bb.au ] ; 4 uses
  %i.er = load ptr, ptr %i.eg, align 8, !tbaa !178
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.0204651.i
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !240 ; 5 uses
  %i.eu = getelementptr i8, ptr %i.et, i64 12     ; 2 uses
  %.val278.i = load i16, ptr %i.eu, align 4
  %i.ev = and i16 %.val278.i, 6
  %spec.select.i.i = icmp eq i16 %i.ev, 2
  br i1 %spec.select.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = add i32 %.0194653.i, 1
  br label %bb.au

bb.af:                                            ; preds = %bb.ad
  %i.ex = load ptr, ptr %i.ef, align 8, !tbaa !240
  %.not233.i = icmp eq ptr %i.ex, null
  br i1 %.not233.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ey = load i32, ptr %i.ej, align 8, !tbaa !156
  %i.ez = icmp ult i32 %i.ey, 2                   ; 2 uses
  %brmerge625.i = or i1 %.not.i, %i.ez
  %.0569.mux.i = select i1 %i.ez, i8 %.0569650.i, i8 1
  br i1 %brmerge625.i, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  store i8 1, ptr %i.en, align 1, !tbaa !17
  store ptr @.str.71, ptr %21, align 8, !tbaa !18
  store i8 3, ptr %i.em, align 8, !tbaa !11
  %i.fa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.fb = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %i.et, ptr noundef nonnull align 8 dereferenceable(18) %21, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.fa) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %bb.au

bb.ai:                                            ; preds = %bb.af
  br i1 %.0198652.i, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !50
  %.not628.i = icmp eq i64 %i.fd, 0
  br i1 %.not628.i, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  store i8 1, ptr %i.ep, align 1, !tbaa !17
  store ptr @.str.72, ptr %22, align 8, !tbaa !18
  store i8 3, ptr %i.eo, align 8, !tbaa !11
  %i.fe = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.ff = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %i.et, ptr noundef nonnull align 8 dereferenceable(18) %22, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.fe) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fg = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.fh = load i64, ptr %i.eq, align 8, !tbaa !96
  %i.fi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0193.i, ptr noundef %i.fg, i64 noundef %i.fh) #28 ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !52
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !55 ; 2 uses
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp ult i64 %i.fp, 29
  br i1 %i.fq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fi, ptr noundef nonnull @.str.66, i64 noundef 29) #28 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.fm, ptr noundef nonnull align 1 dereferenceable(29) @.str.66, i64 29, i1 false)
  %i.fs = load ptr, ptr %i.fl, align 8, !tbaa !55
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 29 ; 2 uses
  store ptr %i.ft, ptr %i.fl, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

_ZN4llvh11raw_ostreamlsEPKc.exit.i:               ; preds = %bb.ao, %bb.an
  %i.fu = phi ptr [ %.pre.i, %bb.an ], [ %i.ft, %bb.ao ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.fr, %bb.an ], [ %i.fi, %bb.ao ] ; 5 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %.sroa.084.0.copyload.i = load ptr, ptr %i.fv, align 8, !tbaa !56 ; 2 uses
  %.sroa.285.0.copyload.i = load i64, ptr %i.fc, align 8, !tbaa !57 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !52
  %i.fy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24 ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fu to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = icmp ugt i64 %.sroa.285.0.copyload.i, %i.gb
  br i1 %i.gc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  %i.gd = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i.i, ptr noundef %.sroa.084.0.copyload.i, i64 noundef %.sroa.285.0.copyload.i) #28 ; 2 uses
  %.phi.trans.insert736.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %.pre737.i = load ptr, ptr %.phi.trans.insert736.i, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i

bb.aq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  %.not.i291.i = icmp eq i64 %.sroa.285.0.copyload.i, 0
  br i1 %.not.i291.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fu, ptr align 1 %.sroa.084.0.copyload.i, i64 %.sroa.285.0.copyload.i, i1 false)
  %i.ge = load ptr, ptr %i.fy, align 8, !tbaa !55
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.sroa.285.0.copyload.i ; 2 uses
  store ptr %i.gf, ptr %i.fy, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i:    ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.gg = phi ptr [ %.pre737.i, %bb.ap ], [ %i.gf, %bb.ar ], [ %i.fu, %bb.aq ] ; 2 uses
  %.0.i.i = phi ptr [ %i.gd, %bb.ap ], [ %.0.i.i.i, %bb.ar ], [ %.0.i.i.i, %bb.aq ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !52
  %i.gj = ptrtoint ptr %i.gi to i64
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = icmp ult i64 %i.gl, 20
  br i1 %i.gm, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i
  %i.gn = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull @.str.73, i64 noundef 20) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit294.i

bb.at:                                            ; preds = %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.gg, ptr noundef nonnull align 1 dereferenceable(20) @.str.73, i64 20, i1 false)
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !55
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store ptr %i.gq, ptr %i.go, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit294.i

_ZN4llvh11raw_ostreamlsEPKc.exit294.i:            ; preds = %bb.at, %bb.as
  %i.gr = load i32, ptr %i.ej, align 8, !tbaa !156
  %i.gs = zext i32 %i.gr to i64
  %i.gt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0193.i, i64 noundef %i.gs) #28 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit294.i, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.ae
  %.1570.i = phi i8 [ %.0569650.i, %bb.ae ], [ %.0569650.i, %bb.aj ], [ 1, %_ZN4llvh11raw_ostreamlsEPKc.exit294.i ], [ %.0569650.i, %bb.ai ], [ %.0569.mux.i, %bb.ag ], [ 1, %bb.ah ] ; 3 uses
  %.1.i = phi i32 [ %i.ew, %bb.ae ], [ %.0194653.i, %bb.aj ], [ %.0194653.i, %_ZN4llvh11raw_ostreamlsEPKc.exit294.i ], [ %.0194653.i, %bb.ai ], [ %.0194653.i, %bb.ag ], [ %.0194653.i, %bb.ah ] ; 3 uses
  %.val279.i = load i16, ptr %i.eu, align 4
  %i.gu = and i16 %.val279.i, 5
  %spec.select.i295.i = icmp eq i16 %i.gu, 1
  %i.gv = or i1 %.0198652.i, %spec.select.i295.i  ; 2 uses
  %i.gw = add nuw nsw i64 %.0204651.i, 1          ; 2 uses
  %.not232.i = icmp eq i64 %i.gw, %i.el
  br i1 %.not232.i, label %bb.ac, label %bb.ad, !llvm.loop !241

bb.av:                                            ; preds = %bb.ac
  %i.gx = load ptr, ptr %i.ef, align 8, !tbaa !240
  %i.gy = icmp eq ptr %i.gx, null
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ac, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i
  %.2571.i = phi i8 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i ], [ %.1570.i, %bb.ac ], [ %.1570.i, %bb.av ] ; 2 uses
  %.0195.i = phi i1 [ true, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i ], [ false, %bb.ac ], [ %i.gy, %bb.av ]
  %.2.i = phi i32 [ 0, %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit.i ], [ %.1.i, %bb.ac ], [ %.1.i, %bb.av ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  store ptr %i.gz, ptr %23, align 8, !tbaa !178
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 12 uses
  store i32 0, ptr %i.ha, align 8, !tbaa !156
  %i.hb = getelementptr inbounds nuw i8, ptr %23, i64 12 ; 3 uses
  store i32 4, ptr %i.hb, align 4, !tbaa !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #28
  store i32 %.0196.i, ptr %i.l, align 4, !tbaa !3
  %i.hc = icmp slt i32 %.0196.i, %i.ax
  br i1 %i.hc, label %.lr.ph674.i, label %._crit_edge.i

.lr.ph674.i:                                      ; preds = %bb.aw
  %i.hd = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 10 uses
  %i.he = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 8 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.0197.i, i64 136 ; 9 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %25, i64 17
  %i.hi = getelementptr inbounds nuw i8, ptr %.0197.i, i64 88 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %.sroa.414.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %13, i64 17
  %i.hr = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %12, i64 17
  %i.ht = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 13 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ea, %.lr.ph674.i
  %.0205672.i = phi ptr [ null, %.lr.ph674.i ], [ %.2207.i, %bb.ea ] ; 17 uses
  %.0210670.i = phi i1 [ false, %.lr.ph674.i ], [ %.1211.i, %bb.ea ] ; 9 uses
  %.promoted.i = phi i32 [ %.0196.i, %.lr.ph674.i ], [ %i.xr, %bb.ea ] ; 4 uses
  %.3572667.i = phi i8 [ %.2571.i, %.lr.ph674.i ], [ %.6.i, %bb.ea ] ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  store ptr %i.hd, ptr %24, align 8, !tbaa !94
  store i64 0, ptr %i.he, align 8, !tbaa !96
  store i8 0, ptr %i.hd, align 8, !tbaa !18
  %i.ia = sext i32 %.promoted.i to i64            ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !56 ; 7 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !18
  %.not234.i = icmp eq i8 %i.id, 45
  br i1 %.not234.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ie = getelementptr i8, ptr %i.ic, i64 1      ; 7 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !18  ; 2 uses
  %i.ig = icmp eq i8 %i.if, 0
  %or.cond.i = select i1 %i.ig, i1 true, i1 %.0210670.i
  br i1 %or.cond.i, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.not242.i = icmp eq ptr %.0205672.i, null
  br i1 %.not242.i, label %bb.ba, label %_ZN4llvh9StringRefC2EPKc.exit267.i

_ZN4llvh9StringRefC2EPKc.exit267.i:               ; preds = %bb.az
  %i.ih = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ic) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #28
  store i32 %.promoted.i, ptr %i.j, align 4, !tbaa !3
  %i.ii = getelementptr inbounds nuw i8, ptr %.0205672.i, i64 24
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.ii, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0205672.i, i64 32
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !57
  %i.ij = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %.0205672.i, ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.22.0.copyload.i.i, ptr nonnull %i.ic, i64 %i.ih, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

bb.ba:                                            ; preds = %bb.az
  %i.ik = load i32, ptr %i.ej, align 8, !tbaa !156
  %.not.i296.i = icmp eq i32 %i.ik, 0
  br i1 %.not.i296.i, label %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i, label %_ZN4llvh9StringRefC2EPKc.exit265.i

_ZN4llvh9StringRefC2EPKc.exit265.i:               ; preds = %bb.ba
  %i.il = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ic) #32
  %i.im = load i32, ptr %i.ha, align 8, !tbaa !156 ; 2 uses
  %i.in = load i32, ptr %i.hb, align 4, !tbaa !179
  %.not.i297.i = icmp ult i32 %i.im, %i.in
  br i1 %.not.i297.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i, label %bb.bb, !prof !181

bb.bb:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit265.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.gz, i64 noundef 0, i64 noundef 24) #28
  %.pre.i298.i = load i32, ptr %i.ha, align 8, !tbaa !156
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i: ; preds = %bb.bb, %_ZN4llvh9StringRefC2EPKc.exit265.i
  %i.io = phi i32 [ %.pre.i298.i, %bb.bb ], [ %i.im, %_ZN4llvh9StringRefC2EPKc.exit265.i ]
  %i.ip = load ptr, ptr %23, align 8, !tbaa !178
  %i.iq = zext i32 %i.io to i64
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.ip, i64 %i.iq ; 3 uses
  store ptr %i.ic, ptr %i.ir, align 1
  %.sroa.4478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  store i64 %i.il, ptr %.sroa.4478.0..sroa_idx.i, align 1
  %.sroa.5479.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  store i32 %.promoted.i, ptr %.sroa.5479.0..sroa_idx.i, align 1
  %i.is = load i32, ptr %i.ha, align 8, !tbaa !156
  %i.it = add i32 %i.is, 1                        ; 3 uses
  store i32 %i.it, ptr %i.ha, align 8, !tbaa !156
  %.not243.i = icmp ult i32 %i.it, %.2.i
  br i1 %.not243.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i
  %i.iu = load ptr, ptr %i.ef, align 8, !tbaa !240
  %.not244.i = icmp eq ptr %i.iu, null
  br i1 %.not244.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bc
  %storemerge245660.i = add nsw i32 %.promoted.i, 1 ; 2 uses
  %i.iv = icmp slt i32 %storemerge245660.i, %i.ax
  br i1 %i.iv, label %.lr.ph662.preheader.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i

.lr.ph662.preheader.i:                            ; preds = %.preheader.i
  %i.iw = add nsw i64 %i.ia, 1
  br label %.lr.ph662.i

.lr.ph662.i:                                      ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i, %.lr.ph662.preheader.i
  %i.ix = phi i32 [ %i.it, %.lr.ph662.preheader.i ], [ %i.jj, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.iw, %.lr.ph662.preheader.i ], [ %indvars.iv.next.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i ] ; 3 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !56 ; 3 uses
  %.not.i262.i = icmp eq ptr %i.iz, null
  br i1 %.not.i262.i, label %_ZN4llvh9StringRefC2EPKc.exit263.i, label %bb.bd

bb.bd:                                            ; preds = %.lr.ph662.i
  %i.ja = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.iz) #32
  br label %_ZN4llvh9StringRefC2EPKc.exit263.i

_ZN4llvh9StringRefC2EPKc.exit263.i:               ; preds = %bb.bd, %.lr.ph662.i
  %i.jb = phi i64 [ %i.ja, %bb.bd ], [ 0, %.lr.ph662.i ]
  %i.jc = load i32, ptr %i.hb, align 4, !tbaa !179
  %.not.i299.i = icmp ult i32 %i.ix, %i.jc
  br i1 %.not.i299.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i, label %bb.be, !prof !181

bb.be:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit263.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %i.gz, i64 noundef 0, i64 noundef 24) #28
  %.pre.i300.i = load i32, ptr %i.ha, align 8, !tbaa !156
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i: ; preds = %bb.be, %_ZN4llvh9StringRefC2EPKc.exit263.i
  %i.jd = phi i32 [ %.pre.i300.i, %bb.be ], [ %i.ix, %_ZN4llvh9StringRefC2EPKc.exit263.i ]
  %i.je = load ptr, ptr %23, align 8, !tbaa !178
  %i.jf = zext i32 %i.jd to i64
  %i.jg = getelementptr inbounds nuw [24 x i8], ptr %i.je, i64 %i.jf ; 3 uses
  store ptr %i.iz, ptr %i.jg, align 1
  %.sroa.4469.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store i64 %i.jb, ptr %.sroa.4469.0..sroa_idx.i, align 1
  %.sroa.5470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.jh = trunc nsw i64 %indvars.iv.i to i32
  store i32 %i.jh, ptr %.sroa.5470.0..sroa_idx.i, align 1
  %i.ji = load i32, ptr %i.ha, align 8, !tbaa !156
  %i.jj = add i32 %i.ji, 1                        ; 2 uses
  store i32 %i.jj, ptr %i.ha, align 8, !tbaa !156
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.ax, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i, label %.lr.ph662.i, !llvm.loop !242

bb.bf:                                            ; preds = %bb.ay
  %i.jk = icmp eq i8 %i.if, 45
  br i1 %i.jk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ic, i64 2
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !18
  %.not235.i = icmp eq i8 %i.jm, 0
  br i1 %.not235.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.not236.i = icmp eq ptr %.0205672.i, null
  br i1 %.not236.i, label %bb.bq, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.jn = getelementptr inbounds nuw i8, ptr %.0205672.i, i64 12
  %i.jo = load i16, ptr %i.jn, align 4
  %i.jp = and i16 %i.jo, 1024
  %.not237.i = icmp eq i16 %i.jp, 0
  br i1 %.not237.i, label %bb.bq, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.jq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ie) #32 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bj, %bb.bk
  %.sroa.22.0655.i = phi i64 [ %i.jv, %bb.bk ], [ %i.jq, %bb.bj ] ; 7 uses
  %.sroa.0483.0654.i = phi ptr [ %i.ju, %bb.bk ], [ %i.ie, %bb.bj ] ; 8 uses
  %i.js = load i8, ptr %.sroa.0483.0654.i, align 1, !tbaa !18
  %i.jt = icmp eq i8 %i.js, 45
  br i1 %i.jt, label %bb.bk, label %.critedge.i

bb.bk:                                            ; preds = %.lr.ph.i
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0483.0654.i, i64 1
  %i.jv = add i64 %.sroa.22.0655.i, -1            ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 0
  br i1 %i.jw, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i, label %.lr.ph.i, !llvm.loop !243

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.jx = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.0483.0654.i, i32 noundef 61, i64 noundef %.sroa.22.0655.i) #32 ; 2 uses
  %.not.i.i303.i = icmp eq ptr %i.jx, null
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %.sroa.0483.0654.i to i64
  %i.ka = sub i64 %i.jy, %i.jz                    ; 3 uses
  %i.kb = icmp eq i64 %i.ka, -1
  %or.cond.i.i = or i1 %.not.i.i303.i, %i.kb
  br i1 %or.cond.i.i, label %_ZNK4llvh9StringRef4findEcm.exit.thread.i.i, label %bb.bm

_ZNK4llvh9StringRef4findEcm.exit.thread.i.i:      ; preds = %.critedge.i
  %i.kc = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr nonnull %.sroa.0483.0654.i, i64 %.sroa.22.0655.i) #28 ; 2 uses
  %i.kd = icmp eq i32 %i.kc, -1
  %i.ke = load i32, ptr %i.hf, align 8
  %i.kf = zext i32 %i.ke to i64
  %i.kg = sext i32 %i.kc to i64                   ; 2 uses
  %i.kh = icmp eq i64 %i.kg, %i.kf
  %i.ki = select i1 %i.kd, i1 true, i1 %i.kh
  br i1 %i.ki, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNK4llvh9StringRef4findEcm.exit.thread.i.i
  %i.kj = load ptr, ptr %i.ei, align 8
  %.sroa.0.0.i.i.i = getelementptr inbounds [8 x i8], ptr %i.kj, i64 %i.kg
  br label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.i

bb.bm:                                            ; preds = %.critedge.i
  %.sroa.speculated28.i.i = call i64 @llvm.umin.i64(i64 %.sroa.22.0655.i, i64 %i.ka) ; 2 uses
  %i.kk = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr nonnull %.sroa.0483.0654.i, i64 %.sroa.speculated28.i.i) #28 ; 2 uses
  %i.kl = icmp eq i32 %i.kk, -1
  %i.km = load i32, ptr %i.hf, align 8
  %i.kn = zext i32 %i.km to i64
  %i.ko = sext i32 %i.kk to i64                   ; 2 uses
  %i.kp = icmp eq i64 %i.ko, %i.kn
  %i.kq = select i1 %i.kl, i1 true, i1 %i.kp
  br i1 %i.kq, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kr = load ptr, ptr %i.ei, align 8
  %.sroa.0.0.i36.i.i = getelementptr inbounds [8 x i8], ptr %i.kr, i64 %i.ko
  %i.ks = add nuw i64 %i.ka, 1
  %.sroa.speculated22.i.i = call i64 @llvm.umin.i64(i64 %.sroa.22.0655.i, i64 %i.ks) ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0483.0654.i, i64 %.sroa.speculated22.i.i
  %i.ku = sub i64 %.sroa.22.0655.i, %.sroa.speculated22.i.i
  br label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.i: ; preds = %bb.bn, %bb.bl
  %.sroa.22.4.i = phi i64 [ %.sroa.22.0655.i, %bb.bl ], [ %.sroa.speculated28.i.i, %bb.bn ]
  %.sroa.7532.2.i = phi i64 [ 0, %bb.bl ], [ %i.ku, %bb.bn ]
  %.sroa.0531.2.i = phi ptr [ null, %bb.bl ], [ %i.kt, %bb.bn ]
  %.sink47.in.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.bl ], [ %.sroa.0.0.i36.i.i, %bb.bn ]
  %.sink47.i.i = load ptr, ptr %.sink47.in.i.i, align 8, !tbaa !147
  %i.kv = getelementptr inbounds nuw i8, ptr %.sink47.i.i, i64 8
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !150 ; 3 uses
  %.not240.i = icmp eq ptr %i.kw, null
  br i1 %.not240.i, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i, label %bb.bo

bb.bo:                                            ; preds = %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.i
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  %i.ky = load i16, ptr %i.kx, align 4            ; 2 uses
  %i.kz = and i16 %i.ky, 384
  %.not241.i = icmp eq i16 %i.kz, 128
  br i1 %.not241.i, label %.loopexit.i, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i: ; preds = %bb.bk, %bb.bo, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.i, %bb.bm, %_ZNK4llvh9StringRef4findEcm.exit.thread.i.i, %bb.bj
  %i.la = load i32, ptr %i.l, align 4, !tbaa !3   ; 2 uses
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !56 ; 3 uses
  %.not.i259.i = icmp eq ptr %i.ld, null
  br i1 %.not.i259.i, label %_ZN4llvh9StringRefC2EPKc.exit260.i, label %bb.bp

bb.bp:                                            ; preds = %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i
  %i.le = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ld) #32
  br label %_ZN4llvh9StringRefC2EPKc.exit260.i

_ZN4llvh9StringRefC2EPKc.exit260.i:               ; preds = %bb.bp, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i
  %i.lf = phi i64 [ %i.le, %bb.bp ], [ 0, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #28
  store i32 %i.la, ptr %i.i, align 4, !tbaa !3
  %i.lg = getelementptr inbounds nuw i8, ptr %.0205672.i, i64 24
  %.sroa.01.0.copyload.i305.i = load ptr, ptr %i.lg, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx.i306.i = getelementptr inbounds nuw i8, ptr %.0205672.i, i64 32
  %.sroa.22.0.copyload.i307.i = load i64, ptr %.sroa.22.0..sroa_idx.i306.i, align 8, !tbaa !57
  %i.lh = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %.0205672.i, ptr %.sroa.01.0.copyload.i305.i, i64 %.sroa.22.0.copyload.i307.i, ptr %i.ld, i64 %i.lf, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

bb.bq:                                            ; preds = %bb.bi, %bb.bh
  %i.li = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ie) #32 ; 3 uses
  %i.lj = icmp eq i64 %i.li, 0
  br i1 %i.lj, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i, label %.lr.ph658.preheader.i

.lr.ph658.preheader.i:                            ; preds = %bb.bq
  %scevgep734.i = getelementptr i8, ptr %i.ie, i64 %i.li
  br label %.lr.ph658.i

.lr.ph658.i:                                      ; preds = %bb.br, %.lr.ph658.preheader.i
  %.sroa.22.1657.i = phi i64 [ %i.ln, %bb.br ], [ %i.li, %.lr.ph658.preheader.i ] ; 9 uses
  %.sroa.0483.1656.i = phi ptr [ %i.lm, %bb.br ], [ %i.ie, %.lr.ph658.preheader.i ] ; 10 uses
  %i.lk = load i8, ptr %.sroa.0483.1656.i, align 1, !tbaa !18
  %i.ll = icmp eq i8 %i.lk, 45
  br i1 %i.ll, label %bb.br, label %.critedge5.i

bb.br:                                            ; preds = %.lr.ph658.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0483.1656.i, i64 1
  %i.ln = add i64 %.sroa.22.1657.i, -1            ; 2 uses
  %i.lo = icmp eq i64 %i.ln, 0
  br i1 %i.lo, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i, label %.lr.ph658.i, !llvm.loop !244

.critedge5.i:                                     ; preds = %.lr.ph658.i
  %i.lp = call noundef ptr @memchr(ptr noundef nonnull dereferenceable(1) %.sroa.0483.1656.i, i32 noundef 61, i64 noundef %.sroa.22.1657.i) #32 ; 2 uses
  %.not.i.i310.i = icmp eq ptr %i.lp, null
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %.sroa.0483.1656.i to i64
  %i.ls = sub i64 %i.lq, %i.lr                    ; 3 uses
  %i.lt = icmp eq i64 %i.ls, -1
  %or.cond.i311.i = or i1 %.not.i.i310.i, %i.lt
  br i1 %or.cond.i311.i, label %_ZNK4llvh9StringRef4findEcm.exit.thread.i321.i, label %bb.bt

_ZNK4llvh9StringRef4findEcm.exit.thread.i321.i:   ; preds = %.critedge5.i
  %i.lu = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr nonnull %.sroa.0483.1656.i, i64 %.sroa.22.1657.i) #28 ; 2 uses
  %i.lv = icmp eq i32 %i.lu, -1
  %i.lw = load i32, ptr %i.hf, align 8
  %i.lx = zext i32 %i.lw to i64
  %i.ly = sext i32 %i.lu to i64                   ; 2 uses
  %i.lz = icmp eq i64 %i.ly, %i.lx
  %i.ma = select i1 %i.lv, i1 true, i1 %i.lz
  br i1 %i.ma, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNK4llvh9StringRef4findEcm.exit.thread.i321.i
  %i.mb = load ptr, ptr %i.ei, align 8
  %.sroa.0.0.i.i322.i = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.ly
  br label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i

bb.bt:                                            ; preds = %.critedge5.i
  %.sroa.speculated28.i312.i = call i64 @llvm.umin.i64(i64 %.sroa.22.1657.i, i64 %i.ls) ; 2 uses
  %i.mc = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr nonnull %.sroa.0483.1656.i, i64 %.sroa.speculated28.i312.i) #28 ; 2 uses
  %i.md = icmp eq i32 %i.mc, -1
  %i.me = load i32, ptr %i.hf, align 8
  %i.mf = zext i32 %i.me to i64
  %i.mg = sext i32 %i.mc to i64                   ; 2 uses
  %i.mh = icmp eq i64 %i.mg, %i.mf
  %i.mi = select i1 %i.md, i1 true, i1 %i.mh
  br i1 %i.mi, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mj = load ptr, ptr %i.ei, align 8
  %.sroa.0.0.i36.i313.i = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.mg
  %i.mk = add nuw i64 %i.ls, 1
  %.sroa.speculated22.i314.i = call i64 @llvm.umin.i64(i64 %.sroa.22.1657.i, i64 %i.mk) ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0483.1656.i, i64 %.sroa.speculated22.i314.i
  %i.mm = sub i64 %.sroa.22.1657.i, %.sroa.speculated22.i314.i
  br label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i: ; preds = %bb.bu, %bb.bs
  %.sroa.22.6.i = phi i64 [ %.sroa.22.1657.i, %bb.bs ], [ %.sroa.speculated28.i312.i, %bb.bu ] ; 2 uses
  %.sroa.7532.4.i = phi i64 [ 0, %bb.bs ], [ %i.mm, %bb.bu ] ; 2 uses
  %.sroa.0531.4.i = phi ptr [ null, %bb.bs ], [ %i.ml, %bb.bu ] ; 2 uses
  %.sink47.in.i318.i = phi ptr [ %.sroa.0.0.i.i322.i, %bb.bs ], [ %.sroa.0.0.i36.i313.i, %bb.bu ]
  %.sink47.i319.i = load ptr, ptr %.sink47.in.i318.i, align 8, !tbaa !147
  %i.mn = getelementptr inbounds nuw i8, ptr %.sink47.i319.i, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !150 ; 3 uses
  %.not238.i = icmp eq ptr %i.mo, null
  br i1 %.not238.i, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i: ; preds = %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i
  %.phi.trans.insert738.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %.pre739.i = load i16, ptr %.phi.trans.insert738.i, align 4
  br label %.loopexit.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i: ; preds = %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i, %bb.bt, %_ZNK4llvh9StringRef4findEcm.exit.thread.i321.i
  %.sroa.0531.5586.i = phi ptr [ %.sroa.0531.4.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i ], [ null, %_ZNK4llvh9StringRef4findEcm.exit.thread.i321.i ], [ null, %bb.bt ]
  %.sroa.7532.5585.i = phi i64 [ %.sroa.7532.4.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i ], [ 0, %_ZNK4llvh9StringRef4findEcm.exit.thread.i321.i ], [ 0, %bb.bt ]
  %.sroa.22.7584.i = phi i64 [ %.sroa.22.6.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.i ], [ %.sroa.22.1657.i, %_ZNK4llvh9StringRef4findEcm.exit.thread.i321.i ], [ %.sroa.22.1657.i, %bb.bt ] ; 2 uses
  %i.mp = icmp eq i64 %.sroa.22.7584.i, 1
  br i1 %i.mp, label %.thread872.i, label %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i

_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i: ; preds = %bb.br, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i, %bb.bq
  %.sroa.0483.1636.i = phi ptr [ %.sroa.0483.1656.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i ], [ %i.ie, %bb.bq ], [ %scevgep734.i, %bb.br ] ; 7 uses
  %.sroa.22.7584622.i = phi i64 [ %.sroa.22.7584.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i ], [ 0, %bb.bq ], [ 0, %bb.br ] ; 9 uses
  %.sroa.7532.5585620.i = phi i64 [ %.sroa.7532.5585.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i ], [ 0, %bb.bq ], [ 0, %bb.br ]
  %.sroa.0531.5586618.i = phi ptr [ %.sroa.0531.5586.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i ], [ null, %bb.bq ], [ null, %bb.br ]
  %i.mq = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr nonnull %.sroa.0483.1636.i, i64 %.sroa.22.7584622.i) #28 ; 2 uses
  %i.mr = icmp eq i32 %i.mq, -1
  %i.ms = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.mt = load i32, ptr %i.hf, align 8
  %i.mu = zext i32 %i.mt to i64                   ; 3 uses
  %i.mv = sext i32 %i.mq to i64
  %.sroa.0.0.v.i.i.i.i = select i1 %i.mr, i64 %i.mu, i64 %i.mv ; 2 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %.sroa.0.0.v.i.i.i.i
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.mu
  %i.mx = icmp eq i64 %.sroa.0.0.v.i.i.i.i, %i.mu
  %i.my = icmp ne i64 %.sroa.22.7584622.i, 0
  %or.cond39.i.i.i = and i1 %i.my, %i.mx
  br i1 %or.cond39.i.i.i, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i, %.lr.ph.i.i.i
  %.sroa.3.040.i.i.i = phi i64 [ %i.mz, %.lr.ph.i.i.i ], [ %.sroa.22.7584622.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i ]
  %i.mz = add i64 %.sroa.3.040.i.i.i, -1          ; 4 uses
  %i.na = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr nonnull %.sroa.0483.1636.i, i64 %i.mz) #28 ; 2 uses
  %i.nb = icmp eq i32 %i.na, -1
  %i.nc = load i32, ptr %i.hf, align 8
  %i.nd = zext i32 %i.nc to i64                   ; 3 uses
  %i.ne = sext i32 %i.na to i64
  %.sroa.0.0.v.i14.i.i.i = select i1 %i.nb, i64 %i.nd, i64 %i.ne ; 2 uses
  %i.nf = icmp eq i64 %.sroa.0.0.v.i14.i.i.i, %i.nd
  %i.ng = icmp ugt i64 %i.mz, 1
  %or.cond.i.i.i = select i1 %i.nf, i1 %i.ng, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %.critedge.loopexit.i.i.i, !llvm.loop !245

.critedge.loopexit.i.i.i:                         ; preds = %.lr.ph.i.i.i
  %i.nh = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.nh, i64 %i.nd
  %.sroa.0.0.i15.i.i.i = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %.sroa.0.0.v.i14.i.i.i
  br label %.critedge.i.i.i

.critedge.i.i.i:                                  ; preds = %.critedge.loopexit.i.i.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i
  %.sroa.3.0.lcssa.i.i.i = phi i64 [ %.sroa.22.7584622.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i ], [ %i.mz, %.critedge.loopexit.i.i.i ] ; 2 uses
  %storemerge.lcssa.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i ], [ %.sroa.0.0.i15.i.i.i, %.critedge.loopexit.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi ptr [ %i.mw, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.thread.i ], [ %i.ni, %.critedge.loopexit.i.i.i ]
  %.not.i.i324.i = icmp eq ptr %storemerge.lcssa.i.i.i, %.lcssa.i.i.i
  br i1 %.not.i.i324.i, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %.critedge.i.i.i
  %i.nj = load ptr, ptr %storemerge.lcssa.i.i.i, align 8, !tbaa !147
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !150 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  %i.nn = load i16, ptr %i.nm, align 4            ; 3 uses
  %i.no = and i16 %i.nn, 256
  %.not.i325.i = icmp eq i16 %i.no, 0
  br i1 %.not.i325.i, label %bb.bz, label %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i

_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i: ; preds = %bb.bv
  %i.np = and i16 %i.nn, 384
  %i.nq = icmp eq i16 %i.np, 256
  br i1 %i.nq, label %bb.bw, label %.preheader.i.preheader.i

.preheader.i.preheader.i:                         ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i
  %27 = trunc nuw i8 %.3572667.i to i1
  br label %.preheader.i.i

bb.bw:                                            ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit.i.i
  %.sroa.speculated117.i.i = call i64 @llvm.umin.i64(i64 %.sroa.22.7584622.i, i64 %.sroa.3.0.lcssa.i.i.i) ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0483.1636.i, i64 %.sroa.speculated117.i.i
  %i.ns = sub i64 %.sroa.22.7584622.i, %.sroa.speculated117.i.i
  br label %.loopexit.i

.preheader.i.i:                                   ; preds = %bb.by, %.preheader.i.preheader.i
  %.sroa.0483.4.i = phi ptr [ %i.nu, %bb.by ], [ %.sroa.0483.1636.i, %.preheader.i.preheader.i ] ; 2 uses
  %.15.i = phi i1 [ %i.nx, %bb.by ], [ %27, %.preheader.i.preheader.i ]
  %i.nt = phi i64 [ %i.nv, %bb.by ], [ %.sroa.22.7584622.i, %.preheader.i.preheader.i ] ; 2 uses
  %.0122.i.i = phi i64 [ %.sroa.3.0.lcssa.i63.i.i, %bb.by ], [ %.sroa.3.0.lcssa.i.i.i, %.preheader.i.preheader.i ]
  %.032.i.i = phi ptr [ %i.ot, %bb.by ], [ %i.nl, %.preheader.i.preheader.i ]
  %.sroa.speculated87.i.i = call i64 @llvm.umin.i64(i64 %i.nt, i64 %.0122.i.i) ; 3 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0483.4.i, i64 %.sroa.speculated87.i.i ; 5 uses
  %i.nv = sub i64 %i.nt, %.sroa.speculated87.i.i  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #28
  store i32 0, ptr %i.h, align 4, !tbaa !3
  %i.nw = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %.032.i.i, ptr %.sroa.0483.4.i, i64 %.sroa.speculated87.i.i, ptr null, i64 0, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.h)
  %i.nx = or i1 %.15.i, %i.nw                     ; 3 uses
  %i.ny = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr %i.nu, i64 %i.nv) #28 ; 2 uses
  %i.nz = icmp eq i32 %i.ny, -1
  %i.oa = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.ob = load i32, ptr %i.hf, align 8
  %i.oc = zext i32 %i.ob to i64                   ; 3 uses
  %i.od = sext i32 %i.ny to i64
  %.sroa.0.0.v.i.i59.i.i = select i1 %i.nz, i64 %i.oc, i64 %i.od ; 2 uses
  %.sroa.0.0.i.i60.i.i = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %.sroa.0.0.v.i.i59.i.i
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.oa, i64 %i.oc
  %i.of = icmp eq i64 %.sroa.0.0.v.i.i59.i.i, %i.oc
  %i.og = icmp ugt i64 %i.nv, 1
  %or.cond39.i61.i.i = select i1 %i.of, i1 %i.og, i1 false
  br i1 %or.cond39.i61.i.i, label %.lr.ph.i68.i.i, label %.critedge.i62.i.i

.lr.ph.i68.i.i:                                   ; preds = %.preheader.i.i, %.lr.ph.i68.i.i
  %.sroa.3.040.i69.i.i = phi i64 [ %i.oh, %.lr.ph.i68.i.i ], [ %i.nv, %.preheader.i.i ]
  %i.oh = add i64 %.sroa.3.040.i69.i.i, -1        ; 4 uses
  %i.oi = call noundef i32 @_ZNK4llvh13StringMapImpl7FindKeyENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(25) %i.ei, ptr %i.nu, i64 %i.oh) #28 ; 2 uses
  %i.oj = icmp eq i32 %i.oi, -1
  %i.ok = load i32, ptr %i.hf, align 8
  %i.ol = zext i32 %i.ok to i64                   ; 3 uses
  %i.om = sext i32 %i.oi to i64
  %.sroa.0.0.v.i14.i70.i.i = select i1 %i.oj, i64 %i.ol, i64 %i.om ; 2 uses
  %i.on = icmp eq i64 %.sroa.0.0.v.i14.i70.i.i, %i.ol
  %i.oo = icmp ugt i64 %i.oh, 1
  %or.cond.i71.i.i = select i1 %i.on, i1 %i.oo, i1 false
  br i1 %or.cond.i71.i.i, label %.lr.ph.i68.i.i, label %.critedge.loopexit.i72.i.i, !llvm.loop !245

.critedge.loopexit.i72.i.i:                       ; preds = %.lr.ph.i68.i.i
  %i.op = load ptr, ptr %i.ei, align 8            ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.ol
  %.sroa.0.0.i15.i73.i.i = getelementptr inbounds [8 x i8], ptr %i.op, i64 %.sroa.0.0.v.i14.i70.i.i
  br label %.critedge.i62.i.i

.critedge.i62.i.i:                                ; preds = %.critedge.loopexit.i72.i.i, %.preheader.i.i
  %.sroa.3.0.lcssa.i63.i.i = phi i64 [ %i.nv, %.preheader.i.i ], [ %i.oh, %.critedge.loopexit.i72.i.i ] ; 2 uses
  %storemerge.lcssa.i64.i.i = phi ptr [ %.sroa.0.0.i.i60.i.i, %.preheader.i.i ], [ %.sroa.0.0.i15.i73.i.i, %.critedge.loopexit.i72.i.i ] ; 2 uses
  %.lcssa.i65.i.i = phi ptr [ %i.oe, %.preheader.i.i ], [ %i.oq, %.critedge.loopexit.i72.i.i ]
  %.not.i66.i.i = icmp eq ptr %storemerge.lcssa.i64.i.i, %.lcssa.i65.i.i
  br i1 %.not.i66.i.i, label %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i, label %bb.bx

bb.bx:                                            ; preds = %.critedge.i62.i.i
  %i.or = load ptr, ptr %storemerge.lcssa.i64.i.i, align 8, !tbaa !147
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !150 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 12
  %i.ov = load i16, ptr %i.ou, align 4            ; 2 uses
  %i.ow = and i16 %i.ov, 384
  %i.ox = icmp eq i16 %i.ow, 384
  br i1 %i.ox, label %bb.by, label %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i

_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i: ; preds = %bb.bx, %.critedge.i62.i.i
  %28 = zext i1 %i.nx to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  br label %bb.bz

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #28
  %.not36.i.i = icmp eq i64 %.sroa.3.0.lcssa.i63.i.i, %i.nv
  br i1 %.not36.i.i, label %.loopexit.loopexit.i, label %.preheader.i.i, !llvm.loop !246

bb.bz:                                            ; preds = %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i, %bb.bv, %.critedge.i.i.i
  %.sroa.0483.2.ph.i = phi ptr [ %i.nu, %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i ], [ %.sroa.0483.1636.i, %bb.bv ], [ %.sroa.0483.1636.i, %.critedge.i.i.i ]
  %.sroa.22.2.ph.i = phi i64 [ %i.nv, %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i ], [ %.sroa.22.7584622.i, %bb.bv ], [ %.sroa.22.7584622.i, %.critedge.i.i.i ] ; 2 uses
  %.4573.ph.i = phi i8 [ %28, %_ZL13getOptionPredN4llvh9StringRefERmPFbPKNS_2cl6OptionEERKNS_9StringMapIPS3_NS_15MallocAllocatorEEE.exit74.thread.i.i ], [ %.3572667.i, %bb.bv ], [ %.3572667.i, %.critedge.i.i.i ] ; 3 uses
  %i.oy = load i32, ptr %i.hi, align 8, !tbaa !156 ; 2 uses
  %.not.i326.i = icmp eq i32 %i.oy, 0
  br i1 %.not.i326.i, label %bb.ca, label %.lr.ph666.i

.thread872.i:                                     ; preds = %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323.thread.i
  %i.oz = load i32, ptr %i.hi, align 8, !tbaa !156 ; 2 uses
  %.not.i326876.i = icmp eq i32 %i.oz, 0
  br i1 %.not.i326876.i, label %.thread880.i, label %.lr.ph666.i

.thread880.i:                                     ; preds = %.thread872.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0483.1656.i, ptr %5, align 8
  store i64 1, ptr %i.hj, align 8
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0483.2.ph.i, ptr %5, align 8
  store i64 %.sroa.22.2.ph.i, ptr %i.hj, align 8
  %i.pa = icmp eq i64 %.sroa.22.2.ph.i, 0
  br i1 %i.pa, label %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %.thread880.i
  %.4573.ph879884.i = phi i8 [ %.3572667.i, %.thread880.i ], [ %.4573.ph.i, %bb.ca ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 61, ptr %i.g, align 1, !tbaa !18, !noalias !247
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.pb = call noundef i64 @_ZNK4llvh9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull %i.g, i64 1, i64 noundef 0) #28, !noalias !253 ; 3 uses
  %i.pc = icmp eq i64 %i.pb, -1
  br i1 %i.pc, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i8 0, i64 16, i1 false), !alias.scope !253
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !128
  br label %_ZNK4llvh9StringRef5splitEc.exit.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.pd = load i64, ptr %i.hj, align 8, !tbaa !57, !noalias !253 ; 3 uses
  %i.pe = call i64 @llvm.umin.i64(i64 %i.pd, i64 %i.pb)
  %i.pf = load ptr, ptr %5, align 8, !tbaa !254, !noalias !253 ; 2 uses
  %i.pg = add nuw i64 %i.pb, 1
  %i.ph = call i64 @llvm.umin.i64(i64 %i.pd, i64 %i.pg) ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.ph
  %i.pj = sub i64 %i.pd, %i.ph
  store ptr %i.pf, ptr %6, align 8, !tbaa !56, !alias.scope !253
  store i64 %i.pe, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8, !tbaa !57, !alias.scope !253
  store ptr %i.pi, ptr %i.hk, align 8, !tbaa !56, !alias.scope !253
  store i64 %i.pj, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !57, !alias.scope !253
  br label %_ZNK4llvh9StringRef5splitEc.exit.i.i

_ZNK4llvh9StringRef5splitEc.exit.i.i:             ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.pk = load ptr, ptr %i.ei, align 8, !tbaa !143 ; 3 uses
  %i.pl = load i32, ptr %i.hf, align 8, !tbaa !146 ; 2 uses
  %i.pm = icmp eq i32 %i.pl, 0
  br i1 %i.pm, label %_ZNK4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %_ZNK4llvh9StringRef5splitEc.exit.i.i, %.critedge.i.i.i.i.i.i
  %.sroa.0.0.i.i327.i = phi ptr [ %i.po, %.critedge.i.i.i.i.i.i ], [ %i.pk, %_ZNK4llvh9StringRef5splitEc.exit.i.i ] ; 3 uses
  %i.pn = load ptr, ptr %.sroa.0.0.i.i327.i, align 8, !tbaa !147
  %magicptr.i.i.i.i.i.i = ptrtoint ptr %i.pn to i64
  switch i64 %magicptr.i.i.i.i.i.i, label %_ZNK4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i.i [
    i64 0, label %.critedge.i.i.i.i.i.i
    i64 -8, label %.critedge.i.i.i.i.i.i
  ]

.critedge.i.i.i.i.i.i:                            ; preds = %.preheader.i.i.i.i.i, %.preheader.i.i.i.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i327.i, i64 8
  br label %.preheader.i.i.i.i.i, !llvm.loop !255

_ZNK4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i.i: ; preds = %.preheader.i.i.i.i.i, %_ZNK4llvh9StringRef5splitEc.exit.i.i
  %.sroa.0.1.i.i.i = phi ptr [ %i.pk, %_ZNK4llvh9StringRef5splitEc.exit.i.i ], [ %.sroa.0.0.i.i327.i, %.preheader.i.i.i.i.i ] ; 3 uses
  %i.pp = zext i32 %i.pl to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pk, i64 %i.pp ; 2 uses
  %.not70.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.pq
  br i1 %.not70.i.i, label %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i, label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %_ZNK4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i.i
  %.pre.i328.i = load ptr, ptr %.sroa.0.1.i.i.i, align 8, !tbaa !147
  br label %bb.ce

_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i: ; preds = %.critedge.i.i.i.i
  %.not.i335.i = icmp eq ptr %storemerge.i.i.i, %i.pq
  br i1 %.not.i335.i, label %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.loopexit.i, label %bb.ce, !llvm.loop !256

_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.loopexit.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i
  %i.pr = icmp eq ptr %.1.lcssa.i.i, null
  br label %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i

_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.loopexit.i, %_ZNK4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i.i
  %.028.lcssa.i.i = phi i1 [ true, %_ZNK4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i.i ], [ %i.pr, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

bb.ce:                                            ; preds = %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i, %.lr.ph74.i.i
  %i.ps = phi ptr [ %.pre.i328.i, %.lr.ph74.i.i ], [ %i.ra, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i ]
  %.02873.i.i = phi ptr [ null, %.lr.ph74.i.i ], [ %.1.lcssa.i.i, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i ] ; 2 uses
  %.02972.i.i = phi i32 [ 0, %.lr.ph74.i.i ], [ %.130.lcssa.i.i, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i ] ; 2 uses
  %.sroa.061.071.i.i = phi ptr [ %.sroa.0.1.i.i.i, %.lr.ph74.i.i ], [ %storemerge.i.i.i, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !150 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr %i.hl, ptr %7, align 8, !tbaa !178
  store i32 0, ptr %i.hm, align 8, !tbaa !156
  store i32 16, ptr %i.hn, align 4, !tbaa !179
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !7
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 72
  %i.px = load ptr, ptr %i.pw, align 8
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(145) %i.pu, ptr noundef nonnull align 8 dereferenceable(16) %7) #28, !inline_history !257
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 32
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !50
  %.not64.i.i = icmp eq i64 %i.pz, 0
  br i1 %.not64.i.i, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.qb = load i32, ptr %i.hm, align 8, !tbaa !156 ; 2 uses
  %i.qc = load i32, ptr %i.hn, align 4, !tbaa !179
  %.not.i.i329.i = icmp ult i32 %i.qb, %i.qc
  br i1 %.not.i.i329.i, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i.i, label %bb.cg, !prof !181

bb.cg:                                            ; preds = %bb.cf
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull %i.hl, i64 noundef 0, i64 noundef 16) #28
  %.pre.i.i330.i = load i32, ptr %i.hm, align 8, !tbaa !156
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i.i

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i.i: ; preds = %bb.cg, %bb.cf
  %i.qd = phi i32 [ %.pre.i.i330.i, %bb.cg ], [ %i.qb, %bb.cf ]
  %i.qe = load ptr, ptr %7, align 8, !tbaa !178
  %i.qf = zext i32 %i.qd to i64
  %i.qg = getelementptr inbounds nuw [16 x i8], ptr %i.qe, i64 %i.qf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.qg, ptr noundef nonnull align 8 dereferenceable(16) %i.qa, i64 16, i1 false)
  %i.qh = load i32, ptr %i.hm, align 8, !tbaa !156
  %i.qi = add i32 %i.qh, 1
  store i32 %i.qi, ptr %i.hm, align 8, !tbaa !156
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit.i.i, %bb.ce
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pu, i64 12
  %i.qk = load i16, ptr %i.qj, align 4
  %i.ql = lshr i16 %i.qk, 3
  %i.qm = and i16 %i.ql, 3                        ; 2 uses
  %.not.i38.i.i = icmp eq i16 %i.qm, 0
  br i1 %.not.i38.i.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qn = zext nneg i16 %i.qm to i32
  br label %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i

bb.cj:                                            ; preds = %bb.ch
  %i.qo = load ptr, ptr %i.pu, align 8, !tbaa !7
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.qq = load ptr, ptr %i.qp, align 8
  %i.qr = call noundef i32 %i.qq(ptr noundef nonnull align 8 dereferenceable(145) %i.pu) #28, !inline_history !258
  br label %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i

_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i: ; preds = %bb.cj, %bb.ci
  %i.qs = phi i32 [ %i.qn, %bb.ci ], [ %i.qr, %bb.cj ]
  %i.qt = icmp eq i32 %i.qs, 3                    ; 3 uses
  %.val.i.i = load ptr, ptr %6, align 8
  %.val33.i.i = load ptr, ptr %5, align 8
  %.sroa.08.0.copyload.i.i = select i1 %i.qt, ptr %.val33.i.i, ptr %.val.i.i
  %.0.22.sroa.gep.val.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i, align 8
  %.val34.i.i = load i64, ptr %i.hj, align 8
  %.sroa.4.0.copyload.i.i = select i1 %i.qt, i64 %.val34.i.i, i64 %.0.22.sroa.gep.val.i.i
  %i.qu = load ptr, ptr %7, align 8, !tbaa !178   ; 3 uses
  %i.qv = load i32, ptr %i.hm, align 8, !tbaa !156 ; 2 uses
  %i.qw = zext i32 %i.qv to i64
  %.idx.i.i = shl nuw nsw i64 %i.qw, 4
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 %.idx.i.i
  %.not3565.i.i = icmp eq i32 %i.qv, 0
  br i1 %.not3565.i.i, label %._crit_edge.i334.i, label %.lr.ph.i331.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.dc
  %.pre80.i.i = load ptr, ptr %7, align 8, !tbaa !178
  br label %._crit_edge.i334.i

._crit_edge.i334.i:                               ; preds = %._crit_edge.loopexit.i.i, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i
  %i.qy = phi ptr [ %i.qu, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i ], [ %.pre80.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.130.lcssa.i.i = phi i32 [ %.02972.i.i, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i ], [ %.231.i.i, %._crit_edge.loopexit.i.i ]
  %.1.lcssa.i.i = phi ptr [ %.02873.i.i, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i ], [ %.2.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.qz = icmp eq ptr %i.qy, %i.hl
  br i1 %i.qz, label %_ZN4llvh11SmallVectorINS_9StringRefELj16EED2Ev.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i334.i
  call void @free(ptr noundef %i.qy) #28
  br label %_ZN4llvh11SmallVectorINS_9StringRefELj16EED2Ev.exit.i.i

_ZN4llvh11SmallVectorINS_9StringRefELj16EED2Ev.exit.i.i: ; preds = %bb.ck, %._crit_edge.i334.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.backedge, %_ZN4llvh11SmallVectorINS_9StringRefELj16EED2Ev.exit.i.i
  %.pn.i.i.i = phi ptr [ %.sroa.061.071.i.i, %_ZN4llvh11SmallVectorINS_9StringRefELj16EED2Ev.exit.i.i ], [ %storemerge.i.i.i, %.critedge.i.i.i.i.backedge ]
  %storemerge.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 8 ; 4 uses
  %i.ra = load ptr, ptr %storemerge.i.i.i, align 8, !tbaa !147 ; 2 uses
  %magicptr.i.i.i.i = ptrtoint ptr %i.ra to i64
  switch i64 %magicptr.i.i.i.i, label %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i.i [
    i64 0, label %.critedge.i.i.i.i.backedge
    i64 -8, label %.critedge.i.i.i.i.backedge
  ]

.critedge.i.i.i.i.backedge:                       ; preds = %.critedge.i.i.i.i, %.critedge.i.i.i.i
  br label %.critedge.i.i.i.i, !llvm.loop !255

.lr.ph.i331.i:                                    ; preds = %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i, %bb.dc
  %.168.i.i = phi ptr [ %.2.i.i, %bb.dc ], [ %.02873.i.i, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i ] ; 2 uses
  %.13067.i.i = phi i32 [ %.231.i.i, %bb.dc ], [ %.02972.i.i, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i ] ; 3 uses
  %.03266.i.i = phi ptr [ %i.sy, %bb.dc ], [ %i.qu, %_ZNK4llvh2cl6Option20getValueExpectedFlagEv.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.03266.i.i, i64 16, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !128
  %i.rb = call noundef i32 @_ZNK4llvh9StringRef13edit_distanceES0_bj(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr %.sroa.08.0.copyload.i.i, i64 %.sroa.4.0.copyload.i.i, i1 noundef zeroext true, i32 noundef %.13067.i.i) #28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %.not36.i332.i = icmp eq ptr %.168.i.i, null
  %i.rc = icmp ult i32 %i.rb, %.13067.i.i
  %or.cond.i333.i = or i1 %.not36.i332.i, %i.rc
  br i1 %or.cond.i333.i, label %bb.cl, label %bb.dc

bb.cl:                                            ; preds = %.lr.ph.i331.i
  %i.rd = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !50
end_hunk_0
begin_hunk_1_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
bb.cr:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rk, ptr nonnull align 1 %i.rf, i64 %i.rg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i: ; preds = %bb.cr, %bb.cq, %._crit_edge.i.i.i.i.i.i
  %i.rm = load i64, ptr %i.f, align 8, !tbaa !57, !noalias !265 ; 2 uses
  store i64 %i.rm, ptr %i.hy, align 8, !tbaa !96, !alias.scope !265
  %i.rn = load ptr, ptr %10, align 8, !tbaa !98, !alias.scope !265
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.rm
  store i8 0, ptr %i.ro, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #28, !noalias !265
  br label %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i

_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i.i.i.i, %bb.cn
  %i.rp = load ptr, ptr %24, align 8, !tbaa !98   ; 6 uses
  %i.rq = icmp eq ptr %i.rp, %i.hd
  %i.rr = load ptr, ptr %10, align 8, !tbaa !98   ; 5 uses
  %i.rs = icmp eq ptr %i.rr, %i.hx                ; 2 uses
  %.pre79.i.i = load i64, ptr %i.hy, align 8, !tbaa !96 ; 5 uses
  br i1 %i.rq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i338.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i
  br i1 %i.rs, label %bb.cs, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i338.i: ; preds = %_ZNK4llvh9StringRefcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv.exit.i.i
  br i1 %i.rs, label %bb.cs, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i338.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341.i
  %i.rt = icmp ult i64 %.pre79.i.i, 16
  call void @llvm.assume(i1 %i.rt)
  switch i64 %.pre79.i.i, label %bb.cu [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.ru = load i8, ptr %i.rr, align 1, !tbaa !18
  store i8 %i.ru, ptr %i.rp, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.cu:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rp, ptr align 1 %i.rr, i64 %.pre79.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.cu, %bb.ct, %bb.cs
  %i.rv = load i64, ptr %i.hy, align 8, !tbaa !96 ; 2 uses
  store i64 %i.rv, ptr %i.he, align 8, !tbaa !96
  %i.rw = load ptr, ptr %24, align 8, !tbaa !98
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.rv
  store i8 0, ptr %i.rx, align 1, !tbaa !18
  %.pre.i40.i.i = load ptr, ptr %10, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341.i
  store ptr %i.rr, ptr %24, align 8, !tbaa !98
  store i64 %.pre79.i.i, ptr %i.he, align 8, !tbaa !96
  %i.ry = load i64, ptr %i.hx, align 8, !tbaa !18
  store i64 %i.ry, ptr %i.hd, align 8, !tbaa !18
  br label %bb.cw

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i338.i
  %i.rz = load i64, ptr %i.hd, align 8, !tbaa !18
  store ptr %i.rr, ptr %24, align 8, !tbaa !98
  store i64 %.pre79.i.i, ptr %i.he, align 8, !tbaa !96
  %i.sa = load i64, ptr %i.hx, align 8, !tbaa !18
  store i64 %i.sa, ptr %i.hd, align 8, !tbaa !18
  %.not.i39.i.i = icmp eq ptr %i.rp, null
  br i1 %.not.i39.i.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.rp, ptr %10, align 8, !tbaa !98
  store i64 %i.rz, ptr %i.hx, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.hx, ptr %10, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.cw, %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.sb = phi ptr [ %i.rp, %bb.cv ], [ %i.hx, %bb.cw ], [ %.pre.i40.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ]
  store i64 0, ptr %i.hy, align 8, !tbaa !96
  store i8 0, ptr %i.sb, align 1, !tbaa !18
  %i.sc = load ptr, ptr %10, align 8, !tbaa !98   ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.hx
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.se = load i64, ptr %i.hx, align 8, !tbaa !18
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sf) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i339.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.dc

_ZN4llvhplERKNS_5TwineES2_.exit48.i.i:            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store ptr %8, ptr %13, align 8, !tbaa !18, !alias.scope !266
  store ptr @.str.90, ptr %i.ho, align 8, !tbaa !18, !alias.scope !266
  store i8 5, ptr %i.hp, align 8, !tbaa !11, !alias.scope !266
  store i8 3, ptr %i.hq, align 1, !tbaa !17, !alias.scope !266
  store ptr %13, ptr %12, align 8, !tbaa !18, !alias.scope !271
  store ptr %i.hk, ptr %i.ht, align 8, !tbaa !18, !alias.scope !271
  store i8 2, ptr %i.hr, align 8, !tbaa !11, !alias.scope !271
  store i8 5, ptr %i.hs, align 1, !tbaa !17, !alias.scope !271
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(18) %12) #28
  %i.sg = load ptr, ptr %24, align 8, !tbaa !98   ; 6 uses
  %i.sh = icmp eq ptr %i.sg, %i.hd
  %i.si = load ptr, ptr %11, align 8, !tbaa !98   ; 5 uses
  %i.sj = icmp eq ptr %i.si, %i.hu                ; 2 uses
  br i1 %i.sh, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i55.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i55.i.i: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit48.i.i
  br i1 %i.sj, label %bb.cx, label %.thread.i56.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49.i.i: ; preds = %_ZN4llvhplERKNS_5TwineES2_.exit48.i.i
  br i1 %i.sj, label %bb.cx, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50.i.i

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i55.i.i
  %i.sk = load i64, ptr %i.hv, align 8, !tbaa !96 ; 3 uses
  %i.sl = icmp ult i64 %i.sk, 16
  call void @llvm.assume(i1 %i.sl)
  switch i64 %i.sk, label %bb.cz [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53.i.i
    i64 1, label %bb.cy
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.sm = load i8, ptr %i.si, align 1, !tbaa !18
  store i8 %i.sm, ptr %i.sg, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53.i.i

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sg, ptr align 1 %i.si, i64 %i.sk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53.i.i: ; preds = %bb.cz, %bb.cy, %bb.cx
  %i.sn = load i64, ptr %i.hv, align 8, !tbaa !96 ; 2 uses
  store i64 %i.sn, ptr %i.he, align 8, !tbaa !96
  %i.so = load ptr, ptr %24, align 8, !tbaa !98
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sn
  store i8 0, ptr %i.sp, align 1, !tbaa !18
  %.pre.i54.i.i = load ptr, ptr %11, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57.i.i

.thread.i56.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i55.i.i
  store ptr %i.si, ptr %24, align 8, !tbaa !98
  %i.sq = load <2 x i64>, ptr %i.hv, align 8, !tbaa !18
  store <2 x i64> %i.sq, ptr %i.he, align 8, !tbaa !18
  br label %bb.db

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i49.i.i
  %i.sr = load i64, ptr %i.hd, align 8, !tbaa !18
  store ptr %i.si, ptr %24, align 8, !tbaa !98
  %i.ss = load <2 x i64>, ptr %i.hv, align 8, !tbaa !18
  store <2 x i64> %i.ss, ptr %i.he, align 8, !tbaa !18
  %.not.i51.i.i = icmp eq ptr %i.sg, null
  br i1 %.not.i51.i.i, label %bb.db, label %bb.da

bb.da:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50.i.i
  store ptr %i.sg, ptr %11, align 8, !tbaa !98
  store i64 %i.sr, ptr %i.hu, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57.i.i

bb.db:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i50.i.i, %.thread.i56.i.i
  store ptr %i.hu, ptr %11, align 8, !tbaa !98
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57.i.i: ; preds = %bb.db, %bb.da, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53.i.i
  %i.st = phi ptr [ %i.sg, %bb.da ], [ %i.hu, %bb.db ], [ %.pre.i54.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i53.i.i ]
  store i64 0, ptr %i.hv, align 8, !tbaa !96
  store i8 0, ptr %i.st, align 1, !tbaa !18
  %i.su = load ptr, ptr %11, align 8, !tbaa !98   ; 2 uses
  %i.sv = icmp eq ptr %i.su, %i.hu
  br i1 %i.sv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57.i.i
  %i.sw = load i64, ptr %i.hu, align 8, !tbaa !18
  %i.sx = add i64 %i.sw, 1
  call void @_ZdlPvm(ptr noundef %i.su, i64 noundef %i.sx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit57.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.dc

bb.dc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %.lr.ph.i331.i
  %.231.i.i = phi i32 [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i ], [ %i.rb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.13067.i.i, %.lr.ph.i331.i ] ; 2 uses
  %.2.i.i = phi ptr [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60.i.i ], [ %i.pu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.168.i.i, %.lr.ph.i331.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.sy = getelementptr inbounds nuw i8, ptr %.03266.i.i, i64 16 ; 2 uses
  %.not35.i.i = icmp eq ptr %i.sy, %i.qx
  br i1 %.not35.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i331.i

_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i, %bb.ca
  %.4573.ph879885.i = phi i8 [ %.4573.ph879884.i, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i ], [ %.4573.ph.i, %bb.ca ]
  %.0.i336.i = phi i1 [ %.028.lcssa.i.i, %_ZN4llvh17StringMapIterBaseINS_22StringMapConstIteratorIPNS_2cl6OptionEEEKNS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i.i ], [ true, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i

_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i: ; preds = %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, %bb.ba
  %.5.ph886.i = phi i8 [ %.4573.ph879885.i, %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ %.3572667.i, %bb.ba ]
  %.0216.ph.i = phi i1 [ %.0.i336.i, %_ZL19LookupNearestOptionN4llvh9StringRefERKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i ], [ true, %bb.ba ]
  %.pr.i = load i32, ptr %i.hi, align 8, !tbaa !156 ; 2 uses
  %.not.i342.i = icmp eq i32 %.pr.i, 0
  br i1 %.not.i342.i, label %bb.dd, label %.lr.ph666.i

bb.dd:                                            ; preds = %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i
  %i.sz = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.ta = load i64, ptr %i.hz, align 8, !tbaa !96
  %i.tb = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0193.i, ptr noundef %i.sz, i64 noundef %i.ta) #28 ; 4 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 16
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !52
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 24 ; 3 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !55 ; 2 uses
  %i.tg = ptrtoint ptr %i.td to i64
  %i.th = ptrtoint ptr %i.tf to i64
  %i.ti = sub i64 %i.tg, %i.th
  %i.tj = icmp ult i64 %i.ti, 33
  br i1 %i.tj, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.tk = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.tb, ptr noundef nonnull @.str.74, i64 noundef 33) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit345.i

bb.df:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(33) %i.tf, ptr noundef nonnull align 1 dereferenceable(33) @.str.74, i64 33, i1 false)
  %i.tl = load ptr, ptr %i.te, align 8, !tbaa !55
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 33
  store ptr %i.tm, ptr %i.te, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit345.i

_ZN4llvh11raw_ostreamlsEPKc.exit345.i:            ; preds = %bb.df, %bb.de
  %.0.i.i344.i = phi ptr [ %i.tk, %bb.de ], [ %i.tb, %bb.df ] ; 6 uses
  %i.tn = load i32, ptr %i.l, align 4, !tbaa !3
  %i.to = sext i32 %i.tn to i64
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.to
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !56 ; 4 uses
  %.not.i.i346.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i346.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit349.i, label %_ZN4llvh9StringRefC2EPKc.exit.i.i

_ZN4llvh9StringRefC2EPKc.exit.i.i:                ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit345.i
  %i.tr = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tq) #32 ; 5 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.0.i.i344.i, i64 16
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !52
  %i.tu = getelementptr inbounds nuw i8, ptr %.0.i.i344.i, i64 24 ; 3 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !55 ; 2 uses
  %i.tw = ptrtoint ptr %i.tt to i64
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = sub i64 %i.tw, %i.tx
  %i.tz = icmp ugt i64 %i.tr, %i.ty
  br i1 %i.tz, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i
  %i.ua = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i344.i, ptr noundef nonnull %i.tq, i64 noundef %i.tr) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit349.i

bb.dh:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i.i
  %.not.i2.i347.i = icmp eq i64 %i.tr, 0
  br i1 %.not.i2.i347.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit349.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tv, ptr nonnull align 1 %i.tq, i64 %i.tr, i1 false)
  %i.ub = load ptr, ptr %i.tu, align 8, !tbaa !55
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 %i.tr
  store ptr %i.uc, ptr %i.tu, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit349.i

_ZN4llvh11raw_ostreamlsEPKc.exit349.i:            ; preds = %bb.di, %bb.dh, %bb.dg, %_ZN4llvh11raw_ostreamlsEPKc.exit345.i
  %.0.i.i348.i = phi ptr [ %i.ua, %bb.dg ], [ %.0.i.i344.i, %bb.di ], [ %.0.i.i344.i, %bb.dh ], [ %.0.i.i344.i, %_ZN4llvh11raw_ostreamlsEPKc.exit345.i ] ; 4 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.0.i.i348.i, i64 16
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !52
  %i.uf = getelementptr inbounds nuw i8, ptr %.0.i.i348.i, i64 24 ; 3 uses
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !55 ; 2 uses
  %i.uh = ptrtoint ptr %i.ue to i64
  %i.ui = ptrtoint ptr %i.ug to i64
  %i.uj = sub i64 %i.uh, %i.ui
  %i.uk = icmp ult i64 %i.uj, 10
  br i1 %i.uk, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit349.i
  %i.ul = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i348.i, ptr noundef nonnull @.str.75, i64 noundef 10) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit353.i

bb.dk:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit349.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.ug, ptr noundef nonnull align 1 dereferenceable(10) @.str.75, i64 10, i1 false)
  %i.um = load ptr, ptr %i.uf, align 8, !tbaa !55
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 10
  store ptr %i.un, ptr %i.uf, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit353.i

_ZN4llvh11raw_ostreamlsEPKc.exit353.i:            ; preds = %bb.dk, %bb.dj
  %.0.i.i352.i = phi ptr [ %i.ul, %bb.dj ], [ %.0.i.i348.i, %bb.dk ] ; 6 uses
  %i.uo = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 4 uses
  %.not.i.i354.i = icmp eq ptr %i.uo, null
  br i1 %.not.i.i354.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit358.i, label %_ZN4llvh9StringRefC2EPKc.exit.i355.i

_ZN4llvh9StringRefC2EPKc.exit.i355.i:             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit353.i
  %i.up = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.uo) #32 ; 5 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %.0.i.i352.i, i64 16
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !52
  %i.us = getelementptr inbounds nuw i8, ptr %.0.i.i352.i, i64 24 ; 3 uses
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !55 ; 2 uses
  %i.uu = ptrtoint ptr %i.ur to i64
  %i.uv = ptrtoint ptr %i.ut to i64
  %i.uw = sub i64 %i.uu, %i.uv
  %i.ux = icmp ugt i64 %i.up, %i.uw
  br i1 %i.ux, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i355.i
  %i.uy = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i352.i, ptr noundef nonnull %i.uo, i64 noundef %i.up) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit358.i

bb.dm:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i355.i
  %.not.i2.i356.i = icmp eq i64 %i.up, 0
  br i1 %.not.i2.i356.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit358.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ut, ptr nonnull align 1 %i.uo, i64 %i.up, i1 false)
  %i.uz = load ptr, ptr %i.us, align 8, !tbaa !55
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %i.up
  store ptr %i.va, ptr %i.us, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit358.i

_ZN4llvh11raw_ostreamlsEPKc.exit358.i:            ; preds = %bb.dn, %bb.dm, %bb.dl, %_ZN4llvh11raw_ostreamlsEPKc.exit353.i
  %.0.i.i357.i = phi ptr [ %i.uy, %bb.dl ], [ %.0.i.i352.i, %bb.dn ], [ %.0.i.i352.i, %bb.dm ], [ %.0.i.i352.i, %_ZN4llvh11raw_ostreamlsEPKc.exit353.i ] ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.0.i.i357.i, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !52
  %i.vd = getelementptr inbounds nuw i8, ptr %.0.i.i357.i, i64 24 ; 3 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !55 ; 2 uses
  %i.vf = ptrtoint ptr %i.vc to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = icmp ult i64 %i.vh, 8
  br i1 %i.vi, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit358.i
  %i.vj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i357.i, ptr noundef nonnull @.str.76, i64 noundef 8) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit362.i

bb.dp:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit358.i
  store i64 731677075331099936, ptr %i.ve, align 1
  %i.vk = load ptr, ptr %i.vd, align 8, !tbaa !55
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 8
  store ptr %i.vl, ptr %i.vd, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit362.i

_ZN4llvh11raw_ostreamlsEPKc.exit362.i:            ; preds = %bb.dp, %bb.do
  br i1 %.0216.ph.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, label %bb.dq

bb.dq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit362.i
  %i.vm = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.vn = load i64, ptr %i.hz, align 8, !tbaa !96
  %i.vo = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0193.i, ptr noundef %i.vm, i64 noundef %i.vn) #28 ; 4 uses
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !52
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 24 ; 3 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !55 ; 2 uses
  %i.vt = ptrtoint ptr %i.vq to i64
  %i.vu = ptrtoint ptr %i.vs to i64
  %i.vv = sub i64 %i.vt, %i.vu
  %i.vw = icmp ult i64 %i.vv, 17
  br i1 %i.vw, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.vx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.vo, ptr noundef nonnull @.str.77, i64 noundef 17) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit366.i

bb.ds:                                            ; preds = %bb.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.vs, ptr noundef nonnull align 1 dereferenceable(17) @.str.77, i64 17, i1 false)
  %i.vy = load ptr, ptr %i.vr, align 8, !tbaa !55
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 17
  store ptr %i.vz, ptr %i.vr, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit366.i

_ZN4llvh11raw_ostreamlsEPKc.exit366.i:            ; preds = %bb.ds, %bb.dr
  %.0.i.i365.i = phi ptr [ %i.vx, %bb.dr ], [ %i.vo, %bb.ds ]
  %i.wa = load ptr, ptr %24, align 8, !tbaa !98
  %i.wb = load i64, ptr %i.he, align 8, !tbaa !96
  %i.wc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i365.i, ptr noundef %i.wa, i64 noundef %i.wb) #28 ; 3 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 16
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !52
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 24 ; 3 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !55 ; 2 uses
  %i.wh = ptrtoint ptr %i.we to i64
  %i.wi = ptrtoint ptr %i.wg to i64
  %i.wj = sub i64 %i.wh, %i.wi
  %i.wk = icmp ult i64 %i.wj, 3
  br i1 %i.wk, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit366.i
  %i.wl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.wc, ptr noundef nonnull @.str.78, i64 noundef 3) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

bb.du:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit366.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.wg, ptr noundef nonnull align 1 dereferenceable(3) @.str.78, i64 3, i1 false)
  %i.wm = load ptr, ptr %i.wf, align 8, !tbaa !55
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 3
  store ptr %i.wn, ptr %i.wf, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

.lr.ph666.i:                                      ; preds = %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i, %.thread872.i, %bb.bz
  %.5891.i = phi i8 [ %.5.ph886.i, %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i ], [ %.3572667.i, %.thread872.i ], [ %.4573.ph.i, %bb.bz ]
  %i.wo = phi i32 [ %.pr.i, %_ZL29HandlePrefixedOrGroupedOptionRN4llvh9StringRefES1_RbRKNS_9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEEE.exit.i ], [ %i.oz, %.thread872.i ], [ %i.oy, %bb.bz ]
  %i.wp = load ptr, ptr %i.eh, align 8, !tbaa !178 ; 2 uses
  %i.wq = zext i32 %i.wo to i64
  %.idx710.i = shl nuw nsw i64 %i.wq, 3
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wp, i64 %.idx710.i
  %i.ws = load i32, ptr %i.l, align 4, !tbaa !3   ; 2 uses
  %i.wt = sext i32 %i.ws to i64
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.wt
  br label %bb.dv

bb.dv:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i, %.lr.ph666.i
  %.0220665.i = phi ptr [ %i.wp, %.lr.ph666.i ], [ %i.xd, %_ZN4llvh9StringRefC2EPKc.exit.i ] ; 2 uses
  %i.wv = load ptr, ptr %.0220665.i, align 8, !tbaa !240 ; 2 uses
  %i.ww = load ptr, ptr %i.wu, align 8, !tbaa !56 ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i4, label %_ZN4llvh9StringRefC2EPKc.exit.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.wx = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ww) #32
  br label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %bb.dw, %bb.dv
  %i.wy = phi i64 [ %i.wx, %bb.dw ], [ 0, %bb.dv ]
  %i.wz = load ptr, ptr %i.wv, align 8, !tbaa !7
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 80
  %i.xb = load ptr, ptr %i.xa, align 8
  %i.xc = call noundef zeroext i1 %i.xb(ptr noundef nonnull align 8 dereferenceable(145) %i.wv, i32 noundef %i.ws, ptr nonnull @.str.1, i64 0, ptr %i.ww, i64 %i.wy, i1 noundef zeroext false) #28, !inline_history !276 ; 0 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.0220665.i, i64 8 ; 2 uses
  %.not247.i = icmp eq ptr %i.xd, %i.wr
  br i1 %.not247.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, label %bb.dv, !llvm.loop !277

.loopexit.loopexit.i:                             ; preds = %bb.by
  %29 = zext i1 %i.nx to i8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bw, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i, %bb.bo
  %i.xe = phi i16 [ %i.nn, %bb.bw ], [ %i.ky, %bb.bo ], [ %.pre739.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.ov, %.loopexit.loopexit.i ] ; 2 uses
  %.sroa.0483.3.ph.i = phi ptr [ %.sroa.0483.1636.i, %bb.bw ], [ %.sroa.0483.0654.i, %bb.bo ], [ %.sroa.0483.1656.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.nu, %.loopexit.loopexit.i ]
  %.sroa.22.3.ph.i = phi i64 [ %.sroa.speculated117.i.i, %bb.bw ], [ %.sroa.22.4.i, %bb.bo ], [ %.sroa.22.6.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.nv, %.loopexit.loopexit.i ]
  %.sroa.7532.1.ph.i = phi i64 [ %i.ns, %bb.bw ], [ %.sroa.7532.2.i, %bb.bo ], [ %.sroa.7532.4.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %.sroa.7532.5585620.i, %.loopexit.loopexit.i ] ; 2 uses
  %.sroa.0531.1.ph.i = phi ptr [ %i.nr, %bb.bw ], [ %.sroa.0531.2.i, %bb.bo ], [ %.sroa.0531.4.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %.sroa.0531.5586618.i, %.loopexit.loopexit.i ]
  %.5.ph.i = phi i8 [ %.3572667.i, %bb.bw ], [ %.3572667.i, %bb.bo ], [ %.3572667.i, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %29, %.loopexit.loopexit.i ] ; 2 uses
  %.1214.ph.i = phi ptr [ %i.nl, %bb.bw ], [ %i.kw, %bb.bo ], [ %i.mo, %_ZN12_GLOBAL__N_117CommandLineParser12LookupOptionERN4llvh2cl10SubCommandERNS1_9StringRefES6_.exit323..loopexit_crit_edge.i ], [ %i.ot, %.loopexit.loopexit.i ] ; 4 uses
  %i.xf = and i16 %i.xe, 384
  %i.xg = icmp eq i16 %i.xf, 128
  br i1 %i.xg, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %.loopexit.i
  %i.xh = and i16 %i.xe, 1024
  %.not249.i = icmp eq i16 %i.xh, 0
  %i.xi = icmp eq i64 %.sroa.7532.1.ph.i, 0
  %or.cond626.i = select i1 %.not249.i, i1 true, i1 %i.xi
  br i1 %or.cond626.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  store i8 1, ptr %i.hh, align 1, !tbaa !17
  store ptr @.str.79, ptr %25, align 8, !tbaa !18
  store i8 3, ptr %i.hg, align 8, !tbaa !11
  %i.xj = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %.1214.ph.i, ptr noundef nonnull align 8 dereferenceable(18) %25, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %.0193.i) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

bb.dz:                                            ; preds = %.loopexit.i
  %i.xk = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %.1214.ph.i, ptr %.sroa.0483.3.ph.i, i64 %.sroa.22.3.ph.i, ptr %.sroa.0531.1.ph.i, i64 %.sroa.7532.1.ph.i, i32 noundef %i.ax, ptr noundef nonnull %i.aw, ptr noundef nonnull align 4 dereferenceable(4) %i.l)
  %30 = trunc nuw i8 %.5.ph.i to i1
  %i.xl = or i1 %i.xk, %30
  %31 = zext i1 %i.xl to i8
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i: ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i, %.preheader.i
  %storemerge245.lcssa.i = phi i32 [ %storemerge245660.i, %.preheader.i ], [ %i.ax, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit301.i ]
  store i32 %storemerge245.lcssa.i, ptr %i.l, align 4, !tbaa !3
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit370.i

_ZN4llvh11raw_ostreamlsEPKc.exit370.i:            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i, %bb.dz, %bb.dy, %bb.dx, %bb.du, %bb.dt, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i, %_ZN4llvh9StringRefC2EPKc.exit260.i, %bb.bg, %bb.bc, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i, %_ZN4llvh9StringRefC2EPKc.exit267.i
  %.6.i = phi i8 [ %.3572667.i, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ 1, %bb.dt ], [ %.5.ph.i, %bb.dx ], [ 1, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ 1, %bb.dy ], [ %31, %bb.dz ], [ %.3572667.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ %.3572667.i, %bb.bc ], [ %.3572667.i, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ %.3572667.i, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ %.3572667.i, %bb.bg ], [ 1, %bb.du ], [ %.5891.i, %_ZN4llvh9StringRefC2EPKc.exit.i ] ; 2 uses
  %.0212.i = phi i32 [ 7, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ 7, %bb.dt ], [ 0, %bb.dx ], [ 7, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ 0, %bb.dy ], [ 0, %bb.dz ], [ 7, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ 7, %bb.bc ], [ 5, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ 7, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ 7, %bb.bg ], [ 7, %bb.du ], [ 7, %_ZN4llvh9StringRefC2EPKc.exit.i ]
  %.1211.i = phi i1 [ false, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ %.0210670.i, %bb.dt ], [ false, %bb.dx ], [ %.0210670.i, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ false, %bb.dy ], [ false, %bb.dz ], [ %.0210670.i, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ %.0210670.i, %bb.bc ], [ %.0210670.i, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ %.0210670.i, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ true, %bb.bg ], [ %.0210670.i, %bb.du ], [ %.0210670.i, %_ZN4llvh9StringRefC2EPKc.exit.i ]
  %.2207.i = phi ptr [ %.0205672.i, %_ZN4llvh9StringRefC2EPKc.exit260.i ], [ %.0205672.i, %bb.dt ], [ %.1214.ph.i, %bb.dx ], [ %.0205672.i, %_ZN4llvh11raw_ostreamlsEPKc.exit362.i ], [ %.1214.ph.i, %bb.dy ], [ %.0205672.i, %bb.dz ], [ null, %_ZN4llvh23SmallVectorTemplateBaseISt4pairINS_9StringRefEjELb1EE9push_backERKS3_.exit.i ], [ null, %bb.bc ], [ null, %_ZN4llvh11raw_ostreamlsEPKc.exit370.loopexit631.i ], [ %.0205672.i, %_ZN4llvh9StringRefC2EPKc.exit267.i ], [ %.0205672.i, %bb.bg ], [ %.0205672.i, %bb.du ], [ %.0205672.i, %_ZN4llvh9StringRefC2EPKc.exit.i ]
  %i.xm = load ptr, ptr %24, align 8, !tbaa !98   ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.hd
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit370.i
  %i.xo = load i64, ptr %i.hd, align 8, !tbaa !18
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit370.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i371.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  switch i32 %.0212.i, label %._crit_edge.loopexit.i [
    i32 0, label %bb.ea
    i32 7, label %bb.ea
  ]

bb.ea:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.i
  %i.xq = load i32, ptr %i.l, align 4, !tbaa !3
  %i.xr = add nsw i32 %i.xq, 1                    ; 3 uses
  store i32 %i.xr, ptr %i.l, align 4, !tbaa !3
  %i.xs = icmp slt i32 %i.xr, %i.ax
  br i1 %i.xs, label %bb.ax, label %._crit_edge.loopexit.i, !llvm.loop !278

._crit_edge.loopexit.i:                           ; preds = %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit373.i
  %.pre740.i = load i32, ptr %i.ha, align 8, !tbaa !156
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.aw
  %i.xt = phi i32 [ 0, %bb.aw ], [ %.pre740.i, %._crit_edge.loopexit.i ] ; 5 uses
  %.7.i = phi i8 [ %.2571.i, %bb.aw ], [ %.6.i, %._crit_edge.loopexit.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #28
  %i.xu = zext i32 %.2.i to i64
  %i.xv = icmp ult i32 %i.xt, %.2.i
  br i1 %i.xv, label %bb.eb, label %bb.es

bb.eb:                                            ; preds = %._crit_edge.i
  %i.xw = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.xx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !96
  %i.xz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0193.i, ptr noundef %i.xw, i64 noundef %i.xy) #28 ; 4 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !52
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 24 ; 3 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !55 ; 2 uses
  %i.ye = ptrtoint ptr %i.yb to i64
  %i.yf = ptrtoint ptr %i.yd to i64
  %i.yg = sub i64 %i.ye, %i.yf
  %i.yh = icmp ult i64 %i.yg, 58
  br i1 %i.yh, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.yi = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.xz, ptr noundef nonnull @.str.80, i64 noundef 58) #28 ; 2 uses
  %.phi.trans.insert751.i = getelementptr inbounds nuw i8, ptr %i.yi, i64 24
  %.pre752.i = load ptr, ptr %.phi.trans.insert751.i, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit377.i

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.yd, ptr noundef nonnull align 1 dereferenceable(58) @.str.80, i64 58, i1 false)
  %i.yj = load ptr, ptr %i.yc, align 8, !tbaa !55
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 58 ; 2 uses
  store ptr %i.yk, ptr %i.yc, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit377.i

_ZN4llvh11raw_ostreamlsEPKc.exit377.i:            ; preds = %bb.ed, %bb.ec
  %i.yl = phi ptr [ %.pre752.i, %bb.ec ], [ %i.yk, %bb.ed ] ; 2 uses
  %.0.i.i376.i = phi ptr [ %i.yi, %bb.ec ], [ %i.xz, %bb.ed ] ; 4 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %.0.i.i376.i, i64 16
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !52
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = ptrtoint ptr %i.yl to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = icmp ult i64 %i.yq, 22
  br i1 %i.yr, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit377.i
  %i.ys = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i376.i, ptr noundef nonnull @.str.81, i64 noundef 22) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit381.i

bb.ef:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit377.i
  %i.yt = getelementptr inbounds nuw i8, ptr %.0.i.i376.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.yl, ptr noundef nonnull align 1 dereferenceable(22) @.str.81, i64 22, i1 false)
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !55
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 22
  store ptr %i.yv, ptr %i.yt, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit381.i

_ZN4llvh11raw_ostreamlsEPKc.exit381.i:            ; preds = %bb.ef, %bb.ee
  %.0.i.i380.i = phi ptr [ %i.ys, %bb.ee ], [ %.0.i.i376.i, %bb.ef ]
  %i.yw = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i380.i, i64 noundef %i.xu) #28 ; 4 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !52
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 24 ; 3 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !55 ; 2 uses
  %i.zb = ptrtoint ptr %i.yy to i64
  %i.zc = ptrtoint ptr %i.za to i64
  %i.zd = sub i64 %i.zb, %i.zc
  %i.ze = icmp ult i64 %i.zd, 20
  br i1 %i.ze, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit381.i
  %i.zf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.yw, ptr noundef nonnull @.str.82, i64 noundef 20) #28 ; 2 uses
  %.phi.trans.insert753.i = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %.pre754.i = load ptr, ptr %.phi.trans.insert753.i, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit385.i

bb.eh:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit381.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.za, ptr noundef nonnull align 1 dereferenceable(20) @.str.82, i64 20, i1 false)
  %i.zg = load ptr, ptr %i.yz, align 8, !tbaa !55
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 20 ; 2 uses
  store ptr %i.zh, ptr %i.yz, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit385.i

_ZN4llvh11raw_ostreamlsEPKc.exit385.i:            ; preds = %bb.eh, %bb.eg
  %i.zi = phi ptr [ %.pre754.i, %bb.eg ], [ %i.zh, %bb.eh ] ; 3 uses
  %.0.i.i384.i = phi ptr [ %i.zf, %bb.eg ], [ %i.yw, %bb.eh ] ; 5 uses
  %i.zj = icmp ugt i32 %.2.i, 1                   ; 3 uses
  %i.zk = zext i1 %i.zj to i64                    ; 4 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.0.i.i384.i, i64 16
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !52
  %i.zn = getelementptr inbounds nuw i8, ptr %.0.i.i384.i, i64 24 ; 2 uses
  %i.zo = ptrtoint ptr %i.zm to i64
  %i.zp = ptrtoint ptr %i.zi to i64
  %i.zq = sub i64 %i.zo, %i.zp
  %i.zr = icmp ult i64 %i.zq, %i.zk
  br i1 %i.zr, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit385.i
  %i.zs = select i1 %i.zj, ptr @.str.83, ptr @.str.1
  %i.zt = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i384.i, ptr noundef nonnull %i.zs, i64 noundef %i.zk) #28 ; 2 uses
  %.phi.trans.insert755.i = getelementptr inbounds nuw i8, ptr %i.zt, i64 24
  %.pre756.i = load ptr, ptr %.phi.trans.insert755.i, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit390.i

bb.ej:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit385.i
  br i1 %i.zj, label %bb.ek, label %_ZN4llvh11raw_ostreamlsEPKc.exit390.i

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zi, ptr nonnull align 1 @.str.83, i64 %i.zk, i1 false)
  %i.zu = load ptr, ptr %i.zn, align 8, !tbaa !55
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 %i.zk ; 2 uses
  store ptr %i.zv, ptr %i.zn, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit390.i

_ZN4llvh11raw_ostreamlsEPKc.exit390.i:            ; preds = %bb.ek, %bb.ej, %bb.ei
  %i.zw = phi ptr [ %.pre756.i, %bb.ei ], [ %i.zv, %bb.ek ], [ %i.zi, %bb.ej ] ; 2 uses
  %.0.i.i389.i = phi ptr [ %i.zt, %bb.ei ], [ %.0.i.i384.i, %bb.ek ], [ %.0.i.i384.i, %bb.ej ] ; 4 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %.0.i.i389.i, i64 16
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !52
  %i.zz = ptrtoint ptr %i.zy to i64
  %i.aaa = ptrtoint ptr %i.zw to i64
  %i.aab = sub i64 %i.zz, %i.aaa
  %i.aac = icmp ult i64 %i.aab, 7
  br i1 %i.aac, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit390.i
  %i.aad = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i389.i, ptr noundef nonnull @.str.84, i64 noundef 7) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit394.i

bb.em:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit390.i
  %i.aae = getelementptr inbounds nuw i8, ptr %.0.i.i389.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.zw, ptr noundef nonnull align 1 dereferenceable(7) @.str.84, i64 7, i1 false)
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !55
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 7
  store ptr %i.aag, ptr %i.aae, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit394.i

_ZN4llvh11raw_ostreamlsEPKc.exit394.i:            ; preds = %bb.em, %bb.el
  %.0.i.i393.i = phi ptr [ %i.aad, %bb.el ], [ %.0.i.i389.i, %bb.em ] ; 6 uses
  %i.aah = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 4 uses
  %.not.i.i395.i = icmp eq ptr %i.aah, null
  br i1 %.not.i.i395.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit399.i, label %_ZN4llvh9StringRefC2EPKc.exit.i396.i

_ZN4llvh9StringRefC2EPKc.exit.i396.i:             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit394.i
  %i.aai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aah) #32 ; 5 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %.0.i.i393.i, i64 16
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !52
  %i.aal = getelementptr inbounds nuw i8, ptr %.0.i.i393.i, i64 24 ; 3 uses
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !55 ; 2 uses
  %i.aan = ptrtoint ptr %i.aak to i64
  %i.aao = ptrtoint ptr %i.aam to i64
  %i.aap = sub i64 %i.aan, %i.aao
  %i.aaq = icmp ugt i64 %i.aai, %i.aap
  br i1 %i.aaq, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i396.i
  %i.aar = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i393.i, ptr noundef nonnull %i.aah, i64 noundef %i.aai) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit399.i

bb.eo:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i396.i
  %.not.i2.i397.i = icmp eq i64 %i.aai, 0
  br i1 %.not.i2.i397.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit399.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aam, ptr nonnull align 1 %i.aah, i64 %i.aai, i1 false)
  %i.aas = load ptr, ptr %i.aal, align 8, !tbaa !55
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 %i.aai
  store ptr %i.aat, ptr %i.aal, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit399.i

_ZN4llvh11raw_ostreamlsEPKc.exit399.i:            ; preds = %bb.ep, %bb.eo, %bb.en, %_ZN4llvh11raw_ostreamlsEPKc.exit394.i
  %.0.i.i398.i = phi ptr [ %i.aar, %bb.en ], [ %.0.i.i393.i, %bb.ep ], [ %.0.i.i393.i, %bb.eo ], [ %.0.i.i393.i, %_ZN4llvh11raw_ostreamlsEPKc.exit394.i ] ; 3 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %.0.i.i398.i, i64 16
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !52
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0.i.i398.i, i64 24 ; 3 uses
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !55 ; 2 uses
  %i.aay = ptrtoint ptr %i.aav to i64
  %i.aaz = ptrtoint ptr %i.aax to i64
  %i.aba = sub i64 %i.aay, %i.aaz
  %i.abb = icmp ult i64 %i.aba, 7
  br i1 %i.abb, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit399.i
  %i.abc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i398.i, ptr noundef nonnull @.str.85, i64 noundef 7) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i

bb.er:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit399.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.aax, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, i64 7, i1 false)
  %i.abd = load ptr, ptr %i.aaw, align 8, !tbaa !55
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 7
  store ptr %i.abe, ptr %i.aaw, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i

bb.es:                                            ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.ej, align 8, !tbaa !156 ; 4 uses
  %i.abf = icmp ugt i32 %i.xt, %.pr
  %or.cond = select i1 %.0195.i, i1 %i.abf, i1 false
  br i1 %or.cond, label %bb.et, label %thread-pre-split

bb.et:                                            ; preds = %bb.es
  %i.abg = load ptr, ptr %i.n, align 8, !tbaa !98
end_hunk_1
begin_hunk_2_@_ZN4llvh2cl23ParseCommandLineOptionsEiPKPKcNS_9StringRefEPNS_11raw_ostreamE:bb.a
bb.ex:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit407.i
  %i.acd = getelementptr inbounds nuw i8, ptr %.0.i.i406.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.abv, ptr noundef nonnull align 1 dereferenceable(20) @.str.87, i64 20, i1 false)
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !55
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 20
  store ptr %i.acf, ptr %i.acd, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit411.i

_ZN4llvh11raw_ostreamlsEPKc.exit411.i:            ; preds = %bb.ex, %bb.ew
  %.0.i.i410.i = phi ptr [ %i.acc, %bb.ew ], [ %.0.i.i406.i, %bb.ex ]
  %i.acg = load i32, ptr %i.ej, align 8, !tbaa !156
  %i.ach = zext i32 %i.acg to i64
  %i.aci = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i410.i, i64 noundef %i.ach) #28 ; 4 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 16
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !52
  %i.acl = getelementptr inbounds nuw i8, ptr %i.aci, i64 24 ; 3 uses
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !55 ; 2 uses
  %i.acn = ptrtoint ptr %i.ack to i64
  %i.aco = ptrtoint ptr %i.acm to i64
  %i.acp = sub i64 %i.acn, %i.aco
  %i.acq = icmp ult i64 %i.acp, 28
  br i1 %i.acq, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit411.i
  %i.acr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.aci, ptr noundef nonnull @.str.88, i64 noundef 28) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit415.i

bb.ez:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit411.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.acm, ptr noundef nonnull align 1 dereferenceable(28) @.str.88, i64 28, i1 false)
  %i.acs = load ptr, ptr %i.acl, align 8, !tbaa !55
  %i.act = getelementptr inbounds nuw i8, ptr %i.acs, i64 28
  store ptr %i.act, ptr %i.acl, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit415.i

_ZN4llvh11raw_ostreamlsEPKc.exit415.i:            ; preds = %bb.ez, %bb.ey
  %.0.i.i414.i = phi ptr [ %i.acr, %bb.ey ], [ %i.aci, %bb.ez ] ; 6 uses
  %i.acu = load ptr, ptr %i.aw, align 8, !tbaa !56 ; 4 uses
  %.not.i.i416.i = icmp eq ptr %i.acu, null
  br i1 %.not.i.i416.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit420.i, label %_ZN4llvh9StringRefC2EPKc.exit.i417.i

_ZN4llvh9StringRefC2EPKc.exit.i417.i:             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit415.i
  %i.acv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.acu) #32 ; 5 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.0.i.i414.i, i64 16
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !52
  %i.acy = getelementptr inbounds nuw i8, ptr %.0.i.i414.i, i64 24 ; 3 uses
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !55 ; 2 uses
  %i.ada = ptrtoint ptr %i.acx to i64
  %i.adb = ptrtoint ptr %i.acz to i64
  %i.adc = sub i64 %i.ada, %i.adb
  %i.add = icmp ugt i64 %i.acv, %i.adc
  br i1 %i.add, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i417.i
  %i.ade = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i414.i, ptr noundef nonnull %i.acu, i64 noundef %i.acv) #28
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit420.i

bb.fb:                                            ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i417.i
  %.not.i2.i418.i = icmp eq i64 %i.acv, 0
  br i1 %.not.i2.i418.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit420.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.acz, ptr nonnull align 1 %i.acu, i64 %i.acv, i1 false)
  %i.adf = load ptr, ptr %i.acy, align 8, !tbaa !55
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 %i.acv
  store ptr %i.adg, ptr %i.acy, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit420.i

_ZN4llvh11raw_ostreamlsEPKc.exit420.i:            ; preds = %bb.fc, %bb.fb, %bb.fa, %_ZN4llvh11raw_ostreamlsEPKc.exit415.i
  %.0.i.i419.i = phi ptr [ %i.ade, %bb.fa ], [ %.0.i.i414.i, %bb.fc ], [ %.0.i.i414.i, %bb.fb ], [ %.0.i.i414.i, %_ZN4llvh11raw_ostreamlsEPKc.exit415.i ] ; 3 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.0.i.i419.i, i64 16
  %i.adi = load ptr, ptr %i.adh, align 8, !tbaa !52
  %i.adj = getelementptr inbounds nuw i8, ptr %.0.i.i419.i, i64 24 ; 3 uses
  %i.adk = load ptr, ptr %i.adj, align 8, !tbaa !55 ; 2 uses
  %i.adl = ptrtoint ptr %i.adi to i64
  %i.adm = ptrtoint ptr %i.adk to i64
  %i.adn = sub i64 %i.adl, %i.adm
  %i.ado = icmp ult i64 %i.adn, 7
  br i1 %i.ado, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit420.i
  %i.adp = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i419.i, ptr noundef nonnull @.str.85, i64 noundef 7) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i

bb.fe:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit420.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.adk, ptr noundef nonnull align 1 dereferenceable(7) @.str.85, i64 7, i1 false)
  %i.adq = load ptr, ptr %i.adj, align 8, !tbaa !55
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 7
  store ptr %i.adr, ptr %i.adj, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i

thread-pre-split:                                 ; preds = %bb.es
  %i.ads = load ptr, ptr %i.ef, align 8, !tbaa !240
  %.not250.i = icmp eq ptr %i.ads, null
  %i.adt = zext i32 %.pr to i64                   ; 2 uses
  br i1 %.not250.i, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %thread-pre-split
  %.not251699.i = icmp eq i32 %.pr, 0
  br i1 %.not251699.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i, label %.lr.ph704.i

.lr.ph704.i:                                      ; preds = %bb.ff, %._crit_edge697.i
  %.3702.i = phi i32 [ %.4.i, %._crit_edge697.i ], [ %.2.i, %bb.ff ] ; 2 uses
  %.0215701.i = phi i64 [ %i.afe, %._crit_edge697.i ], [ 0, %bb.ff ] ; 4 uses
  %.0217700.i = phi i32 [ %.2219.lcssa.i, %._crit_edge697.i ], [ 0, %bb.ff ] ; 3 uses
  %i.adu = load ptr, ptr %i.eg, align 8, !tbaa !178
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %.0215701.i
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !240 ; 4 uses
  %i.adx = getelementptr i8, ptr %i.adw, i64 12
  %.val277.i = load i16, ptr %i.adx, align 4      ; 2 uses
  %i.ady = and i16 %.val277.i, 6
  %spec.select.i425.i = icmp eq i16 %i.ady, 2
  br i1 %spec.select.i425.i, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.lr.ph704.i
  %i.adz = zext i32 %.0217700.i to i64
  %i.aea = load ptr, ptr %23, align 8, !tbaa !178
  %i.aeb = getelementptr inbounds nuw [24 x i8], ptr %i.aea, i64 %i.adz ; 3 uses
  %.sroa.034.0.copyload.i = load ptr, ptr %i.aeb, align 8, !tbaa !56
  %.sroa.235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %.sroa.235.0.copyload.i = load i64, ptr %.sroa.235.0..sroa_idx.i, align 8, !tbaa !57
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %i.aed = load i32, ptr %i.aec, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store i32 %i.aed, ptr %i.e, align 4, !tbaa !3
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adw, i64 24
  %.sroa.01.0.copyload.i426.i = load ptr, ptr %i.aee, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx.i427.i = getelementptr inbounds nuw i8, ptr %i.adw, i64 32
  %.sroa.22.0.copyload.i428.i = load i64, ptr %.sroa.22.0..sroa_idx.i427.i, align 8, !tbaa !57
  %i.aef = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %i.adw, ptr %.sroa.01.0.copyload.i426.i, i64 %.sroa.22.0.copyload.i428.i, ptr %.sroa.034.0.copyload.i, i64 %.sroa.235.0.copyload.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  %i.aeg = add i32 %.0217700.i, 1
  %i.aeh = add i32 %.3702.i, -1
  %.pre746.i = load ptr, ptr %i.eg, align 8, !tbaa !178
  %.phi.trans.insert747.i = getelementptr inbounds nuw [8 x i8], ptr %.pre746.i, i64 %.0215701.i
  %.pre748.i = load ptr, ptr %.phi.trans.insert747.i, align 8, !tbaa !240
  %.phi.trans.insert749.i = getelementptr inbounds nuw i8, ptr %.pre748.i, i64 12
  %.pre750.i = load i16, ptr %.phi.trans.insert749.i, align 4
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %.lr.ph704.i
  %i.aei = phi i16 [ %.pre750.i, %bb.fg ], [ %.val277.i, %.lr.ph704.i ]
  %.1218.i = phi i32 [ %i.aeg, %bb.fg ], [ %.0217700.i, %.lr.ph704.i ] ; 3 uses
  %.4.i = phi i32 [ %i.aeh, %bb.fg ], [ %.3702.i, %.lr.ph704.i ] ; 3 uses
  %i.aej = and i16 %i.aei, 7
  %i.aek = icmp eq i16 %i.aej, 2
  %i.ael = sub i32 %i.xt, %.1218.i
  %i.aem = icmp ule i32 %i.ael, %.4.i
  %.not253692.i = select i1 %i.aem, i1 true, i1 %i.aek
  br i1 %.not253692.i, label %._crit_edge697.i, label %.lr.ph696.i

.lr.ph696.i:                                      ; preds = %bb.fh, %.lr.ph696.i
  %.2219693.i = phi i32 [ %i.afb, %.lr.ph696.i ], [ %.1218.i, %bb.fh ] ; 2 uses
  %i.aen = load ptr, ptr %i.eg, align 8, !tbaa !178
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %i.aen, i64 %.0215701.i
  %i.aep = load ptr, ptr %i.aeo, align 8, !tbaa !240 ; 4 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 12
  %i.aer = load i16, ptr %i.aeq, align 4
  %i.aes = and i16 %i.aer, 7
  %i.aet = icmp eq i16 %i.aes, 0
  %i.aeu = zext i32 %.2219693.i to i64
  %i.aev = load ptr, ptr %23, align 8, !tbaa !178
  %i.aew = getelementptr inbounds nuw [24 x i8], ptr %i.aev, i64 %i.aeu ; 3 uses
  %.sroa.031.0.copyload.i = load ptr, ptr %i.aew, align 8, !tbaa !56
  %.sroa.232.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  %.sroa.232.0.copyload.i = load i64, ptr %.sroa.232.0..sroa_idx.i, align 8, !tbaa !57
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aew, i64 16
  %i.aey = load i32, ptr %i.aex, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 %i.aey, ptr %i.d, align 4, !tbaa !3
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aep, i64 24
  %.sroa.01.0.copyload.i429.i = load ptr, ptr %i.aez, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx.i430.i = getelementptr inbounds nuw i8, ptr %i.aep, i64 32
  %.sroa.22.0.copyload.i431.i = load i64, ptr %.sroa.22.0..sroa_idx.i430.i, align 8, !tbaa !57
  %i.afa = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef %i.aep, ptr %.sroa.01.0.copyload.i429.i, i64 %.sroa.22.0.copyload.i431.i, ptr %.sroa.031.0.copyload.i, i64 %.sroa.232.0.copyload.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.d) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  %i.afb = add i32 %.2219693.i, 1                 ; 3 uses
  %i.afc = sub i32 %i.xt, %i.afb
  %i.afd = icmp ule i32 %i.afc, %.4.i
  %.not253.i = select i1 %i.afd, i1 true, i1 %i.aet
  br i1 %.not253.i, label %._crit_edge697.i, label %.lr.ph696.i, !llvm.loop !281

._crit_edge697.i:                                 ; preds = %.lr.ph696.i, %bb.fh
  %.2219.lcssa.i = phi i32 [ %.1218.i, %bb.fh ], [ %i.afb, %.lr.ph696.i ]
  %i.afe = add nuw nsw i64 %.0215701.i, 1         ; 2 uses
  %.not251.i = icmp eq i64 %i.afe, %i.adt
  br i1 %.not251.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i, label %.lr.ph704.i, !llvm.loop !282

bb.fi:                                            ; preds = %thread-pre-split
  %.not254677.i = icmp eq i32 %.pr, 1
  br i1 %.not254677.i, label %._crit_edge683.i, label %.lr.ph682.i

._crit_edge683.loopexit.i:                        ; preds = %bb.fk
  %.pre743.i = load i32, ptr %i.ej, align 8, !tbaa !156
  %.pre745.pre.i = load i32, ptr %i.ha, align 8, !tbaa !156
  %i.aff = icmp eq i32 %.pre743.i, 1
  br label %._crit_edge683.i

._crit_edge683.i:                                 ; preds = %._crit_edge683.loopexit.i, %bb.fi
  %.pre745.i = phi i32 [ %i.xt, %bb.fi ], [ %.pre745.pre.i, %._crit_edge683.loopexit.i ] ; 2 uses
  %i.afg = phi i1 [ true, %bb.fi ], [ %i.aff, %._crit_edge683.loopexit.i ]
  %.8.lcssa.i = phi i8 [ %.7.i, %bb.fi ], [ %.9.i, %._crit_edge683.loopexit.i ] ; 3 uses
  %.0200.lcssa.i = phi i32 [ 0, %bb.fi ], [ %.1201.i, %._crit_edge683.loopexit.i ] ; 2 uses
  %i.afh = icmp eq i32 %.0200.lcssa.i, 0
  %or.cond7.i = select i1 %i.afg, i1 %i.afh, i1 false
  br i1 %or.cond7.i, label %bb.fl, label %bb.fn

.lr.ph682.i:                                      ; preds = %bb.fi, %bb.fk
  %.0199680.i = phi i64 [ %i.afw, %bb.fk ], [ 1, %bb.fi ] ; 2 uses
  %.0200679.i = phi i32 [ %.1201.i, %bb.fk ], [ 0, %bb.fi ] ; 3 uses
  %.8678.i = phi i8 [ %.9.i, %bb.fk ], [ %.7.i, %bb.fi ] ; 2 uses
  %i.afi = load ptr, ptr %i.eg, align 8, !tbaa !178
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.afi, i64 %.0199680.i
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !240 ; 4 uses
  %i.afl = getelementptr i8, ptr %i.afk, i64 12
  %.val.i = load i16, ptr %i.afl, align 4
  %i.afm = and i16 %.val.i, 6
  %spec.select.i432.i = icmp eq i16 %i.afm, 2
  br i1 %spec.select.i432.i, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %.lr.ph682.i
  %i.afn = zext i32 %.0200679.i to i64
  %i.afo = load ptr, ptr %23, align 8, !tbaa !178
  %i.afp = getelementptr inbounds nuw [24 x i8], ptr %i.afo, i64 %i.afn ; 3 uses
  %.sroa.014.0.copyload.i = load ptr, ptr %i.afp, align 8, !tbaa !56
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afp, i64 8
  %.sroa.215.0.copyload.i = load i64, ptr %.sroa.215.0..sroa_idx.i, align 8, !tbaa !57
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 16
  %i.afr = load i32, ptr %i.afq, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 %i.afr, ptr %i.c, align 4, !tbaa !3
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afk, i64 24
  %.sroa.01.0.copyload.i433.i = load ptr, ptr %i.afs, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx.i434.i = getelementptr inbounds nuw i8, ptr %i.afk, i64 32
  %.sroa.22.0.copyload.i435.i = load i64, ptr %.sroa.22.0..sroa_idx.i434.i, align 8, !tbaa !57
  %i.aft = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef nonnull %i.afk, ptr %.sroa.01.0.copyload.i433.i, i64 %.sroa.22.0.copyload.i435.i, ptr %.sroa.014.0.copyload.i, i64 %.sroa.215.0.copyload.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %32 = trunc nuw i8 %.8678.i to i1
  %i.afu = or i1 %i.aft, %32
  %33 = zext i1 %i.afu to i8
  %i.afv = add i32 %.0200679.i, 1
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %.lr.ph682.i
  %.9.i = phi i8 [ %33, %bb.fj ], [ %.8678.i, %.lr.ph682.i ] ; 2 uses
  %.1201.i = phi i32 [ %i.afv, %bb.fj ], [ %.0200679.i, %.lr.ph682.i ] ; 2 uses
  %i.afw = add i64 %.0199680.i, 1                 ; 2 uses
  %.not254.i = icmp eq i64 %i.afw, %i.adt
  br i1 %.not254.i, label %._crit_edge683.loopexit.i, label %.lr.ph682.i, !llvm.loop !283

bb.fl:                                            ; preds = %._crit_edge683.i
  %.not.i436.i = icmp eq i32 %.pre745.i, 0
  br i1 %.not.i436.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.afx = load ptr, ptr %i.eg, align 8, !tbaa !178
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !240 ; 3 uses
  %i.afz = load ptr, ptr %23, align 8, !tbaa !178 ; 3 uses
  %.sroa.012.0.copyload.i = load ptr, ptr %i.afz, align 8, !tbaa !56
  %.sroa.213.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %.sroa.213.0.copyload.i = load i64, ptr %.sroa.213.0..sroa_idx.i, align 8, !tbaa !57
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afz, i64 16
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 %i.agb, ptr %i.b, align 4, !tbaa !3
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afy, i64 24
  %.sroa.01.0.copyload.i437.i = load ptr, ptr %i.agc, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx.i438.i = getelementptr inbounds nuw i8, ptr %i.afy, i64 32
  %.sroa.22.0.copyload.i439.i = load i64, ptr %.sroa.22.0..sroa_idx.i438.i, align 8, !tbaa !57
  %i.agd = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef %i.afy, ptr %.sroa.01.0.copyload.i437.i, i64 %.sroa.22.0.copyload.i439.i, ptr %.sroa.012.0.copyload.i, i64 %.sroa.213.0.copyload.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %34 = trunc nuw i8 %.8.lcssa.i to i1
  %i.age = or i1 %i.agd, %34
  %35 = zext i1 %i.age to i8
  %.pre744.i = load i32, ptr %i.ha, align 8, !tbaa !156
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %._crit_edge683.i
  %i.agf = phi i32 [ %.pre745.i, %._crit_edge683.i ], [ %.pre744.i, %bb.fm ]
  %.10.i = phi i8 [ %.8.lcssa.i, %._crit_edge683.i ], [ %35, %bb.fm ] ; 2 uses
  %.2202.i = phi i32 [ %.0200.lcssa.i, %._crit_edge683.i ], [ 1, %bb.fm ] ; 2 uses
  %.not255686.i = icmp eq i32 %i.agf, %.2202.i
  br i1 %.not255686.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i, label %.lr.ph690.preheader.i

.lr.ph690.preheader.i:                            ; preds = %bb.fn
  %36 = trunc nuw i8 %.10.i to i1
  br label %.lr.ph690.i

.lr.ph690.i:                                      ; preds = %.lr.ph690.i, %.lr.ph690.preheader.i
  %.3203688.i = phi i32 [ %i.agp, %.lr.ph690.i ], [ %.2202.i, %.lr.ph690.preheader.i ] ; 2 uses
  %.11687.i = phi i1 [ %i.ago, %.lr.ph690.i ], [ %36, %.lr.ph690.preheader.i ]
  %i.agg = zext i32 %.3203688.i to i64
  %i.agh = load ptr, ptr %i.ef, align 8, !tbaa !240 ; 3 uses
  %i.agi = load ptr, ptr %23, align 8, !tbaa !178
  %i.agj = getelementptr inbounds nuw [24 x i8], ptr %i.agi, i64 %i.agg ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.agj, align 8, !tbaa !56
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agj, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !57
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 16
  %i.agl = load i32, ptr %i.agk, align 8, !tbaa !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 %i.agl, ptr %i.a, align 4, !tbaa !3
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agh, i64 24
  %.sroa.01.0.copyload.i440.i = load ptr, ptr %i.agm, align 8, !tbaa !56
  %.sroa.22.0..sroa_idx.i441.i = getelementptr inbounds nuw i8, ptr %i.agh, i64 32
  %.sroa.22.0.copyload.i442.i = load i64, ptr %.sroa.22.0..sroa_idx.i441.i, align 8, !tbaa !57
  %i.agn = call fastcc noundef zeroext i1 @_ZL13ProvideOptionPN4llvh2cl6OptionENS_9StringRefES3_iPKPKcRi(ptr noundef %i.agh, ptr %.sroa.01.0.copyload.i440.i, i64 %.sroa.22.0.copyload.i442.i, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef 0, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.ago = or i1 %.11687.i, %i.agn                ; 2 uses
  %i.agp = add i32 %.3203688.i, 1                 ; 2 uses
  %i.agq = load i32, ptr %i.ha, align 8, !tbaa !156
  %.not255.i = icmp eq i32 %i.agq, %i.agp
  br i1 %.not255.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i, label %.lr.ph690.i, !llvm.loop !284

_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i: ; preds = %.lr.ph690.i
  %37 = zext i1 %i.ago to i8
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit403.i

_ZN4llvh11raw_ostreamlsEPKc.exit403.i:            ; preds = %._crit_edge697.i, %_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i, %bb.fn, %bb.fl, %bb.ff, %bb.fe, %bb.fd, %bb.er, %bb.eq
  %.12.i = phi i8 [ 1, %bb.er ], [ 1, %bb.fd ], [ %.7.i, %bb.ff ], [ 1, %bb.eq ], [ 1, %bb.fe ], [ %.8.lcssa.i, %bb.fl ], [ %.10.i, %bb.fn ], [ %37, %_ZN4llvh11raw_ostreamlsEPKc.exit403.loopexit711.i ], [ %.7.i, %._crit_edge697.i ] ; 2 uses
  %i.agr = load ptr, ptr %i.ei, align 8, !tbaa !143 ; 3 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %.0197.i, i64 136
  %i.agt = load i32, ptr %i.ags, align 8, !tbaa !146 ; 2 uses
  %i.agu = icmp eq i32 %i.agt, 0
  br i1 %i.agu, label %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit403.i, %.critedge.i.i.i.i.i
  %.sroa.0.0.i.i = phi ptr [ %i.agw, %.critedge.i.i.i.i.i ], [ %i.agr, %_ZN4llvh11raw_ostreamlsEPKc.exit403.i ] ; 3 uses
  %i.agv = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !147
  %magicptr.i.i.i.i.i = ptrtoint ptr %i.agv to i64
  switch i64 %magicptr.i.i.i.i.i, label %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i [
    i64 0, label %.critedge.i.i.i.i.i
    i64 -8, label %.critedge.i.i.i.i.i
  ]

.critedge.i.i.i.i.i:                              ; preds = %.preheader.i.i.i.i, %.preheader.i.i.i.i
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 8
  br label %.preheader.i.i.i.i, !llvm.loop !149

_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i: ; preds = %.preheader.i.i.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit403.i
  %.sroa.0.1.i.i = phi ptr [ %i.agr, %_ZN4llvh11raw_ostreamlsEPKc.exit403.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.agx = zext i32 %i.agt to i64
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.agr, i64 %i.agx ; 2 uses
  %.not629705.i = icmp eq ptr %.sroa.0.1.i.i, %i.agy
  br i1 %.not629705.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i, label %.lr.ph708.i

.lr.ph708.i:                                      ; preds = %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i
  %i.agz = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.aha = getelementptr inbounds nuw i8, ptr %26, i64 17
  %.pre757.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !147
  br label %bb.fp

_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i: ; preds = %.critedge.i.i444.i
  %.not629.i = icmp eq ptr %storemerge.i.i, %i.agy
  br i1 %.not629.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i, label %bb.fp

_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i: ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i, %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i
  %.13.lcssa.i = phi i8 [ %.12.i, %_ZN4llvh9StringMapIPNS_2cl6OptionENS_15MallocAllocatorEE5beginEv.exit.i ], [ %.14.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ]
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.ahc = load ptr, ptr %i.ahb, align 8, !tbaa !127 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 2 uses
  %i.ahe = load ptr, ptr %i.ahd, align 8, !tbaa !123
  %.not.i.i443.i = icmp eq ptr %i.ahe, %i.ahc
  br i1 %.not.i.i443.i, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit.i, label %bb.fo

bb.fo:                                            ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i
  store ptr %i.ahc, ptr %i.ahd, align 8, !tbaa !123
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit.i

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit.i: ; preds = %bb.fo, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit._crit_edge.i
  %38 = trunc nuw i8 %.13.lcssa.i to i1
  %.not257.i = xor i1 %38, true                   ; 2 uses
  %brmerge.i = or i1 %.not.i, %.not257.i
  br i1 %brmerge.i, label %bb.fu, label %bb.ft

bb.fp:                                            ; preds = %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i, %.lr.ph708.i
  %i.ahf = phi ptr [ %.pre757.i, %.lr.ph708.i ], [ %i.ahq, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ]
  %.13707.i = phi i8 [ %.12.i, %.lr.ph708.i ], [ %.14.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ] ; 2 uses
  %.sroa.0452.0706.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph708.i ], [ %storemerge.i.i, %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i ]
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !150 ; 3 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 12
  %i.ahj = load i16, ptr %i.ahi, align 4
  %i.ahk = and i16 %i.ahj, 6
  %switch.i = icmp eq i16 %i.ahk, 2
  br i1 %switch.i, label %bb.fq, label %bb.fs

bb.fq:                                            ; preds = %bb.fp
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8
  %i.ahm = load i32, ptr %i.ahl, align 8, !tbaa !285
  %i.ahn = icmp eq i32 %i.ahm, 0
  br i1 %i.ahn, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  store i8 1, ptr %i.aha, align 1, !tbaa !17
  store ptr @.str.89, ptr %26, align 8, !tbaa !18
  store i8 3, ptr %i.agz, align 8, !tbaa !11
  %i.aho = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #28
  %i.ahp = call noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(145) %i.ahh, ptr noundef nonnull align 8 dereferenceable(18) %26, ptr null, i64 0, ptr noundef nonnull align 8 dereferenceable(36) %i.aho) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq, %bb.fp
  %.14.i = phi i8 [ 1, %bb.fr ], [ %.13707.i, %bb.fq ], [ %.13707.i, %bb.fp ] ; 2 uses
  br label %.critedge.i.i444.i

.critedge.i.i444.i:                               ; preds = %.critedge.i.i444.i.backedge, %bb.fs
  %.pn.i.i = phi ptr [ %.sroa.0452.0706.i, %bb.fs ], [ %storemerge.i.i, %.critedge.i.i444.i.backedge ]
  %storemerge.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 4 uses
  %i.ahq = load ptr, ptr %storemerge.i.i, align 8, !tbaa !147 ; 2 uses
  %magicptr.i.i.i = ptrtoint ptr %i.ahq to i64
  switch i64 %magicptr.i.i.i, label %_ZN4llvh17StringMapIterBaseINS_17StringMapIteratorIPNS_2cl6OptionEEENS_14StringMapEntryIS4_EEEppEv.exit.loopexit.i [
    i64 0, label %.critedge.i.i444.i.backedge
    i64 -8, label %.critedge.i.i444.i.backedge
  ]

.critedge.i.i444.i.backedge:                      ; preds = %.critedge.i.i444.i, %.critedge.i.i444.i
  br label %.critedge.i.i444.i, !llvm.loop !149

bb.ft:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit.i
  call void @exit(i32 noundef 1) #33
  unreachable

bb.fu:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit.i
  %i.ahr = load ptr, ptr %23, align 8, !tbaa !178 ; 2 uses
  %i.ahs = icmp eq ptr %i.ahr, %i.gz
  br i1 %i.ahs, label %_ZN4llvh11SmallVectorISt4pairINS_9StringRefEjELj4EED2Ev.exit.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @free(ptr noundef %i.ahr) #28
  br label %_ZN4llvh11SmallVectorISt4pairINS_9StringRefEjELj4EED2Ev.exit.i

_ZN4llvh11SmallVectorISt4pairINS_9StringRefEjELj4EED2Ev.exit.i: ; preds = %bb.fv, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  %i.aht = load ptr, ptr %i.y, align 8, !tbaa !178 ; 2 uses
  %i.ahu = load i32, ptr %i.aa, align 8, !tbaa !156 ; 2 uses
  %i.ahv = zext i32 %i.ahu to i64
  %.idx.i445.i = shl nuw nsw i64 %i.ahv, 3
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.aht, i64 %.idx.i445.i
  %.not6.i.i.i = icmp eq i32 %i.ahu, 0
  br i1 %.not6.i.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i446.i

.lr.ph.i.i446.i:                                  ; preds = %_ZN4llvh11SmallVectorISt4pairINS_9StringRefEjELj4EED2Ev.exit.i, %.lr.ph.i.i446.i
  %.07.i.i.i = phi ptr [ %i.ahy, %.lr.ph.i.i446.i ], [ %i.aht, %_ZN4llvh11SmallVectorISt4pairINS_9StringRefEjELj4EED2Ev.exit.i ] ; 2 uses
  %i.ahx = load ptr, ptr %.07.i.i.i, align 8, !tbaa !66
  call void @free(ptr noundef %i.ahx) #28
  %i.ahy = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 8 ; 2 uses
  %.not.i.i447.i = icmp eq ptr %i.ahy, %i.ahw
  br i1 %.not.i.i447.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i, label %.lr.ph.i.i446.i, !llvm.loop !221

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i: ; preds = %.lr.ph.i.i446.i, %_ZN4llvh11SmallVectorISt4pairINS_9StringRefEjELj4EED2Ev.exit.i
  %i.ahz = load ptr, ptr %i.ac, align 8, !tbaa !178 ; 3 uses
  %i.aia = load i32, ptr %i.ae, align 8, !tbaa !156 ; 2 uses
  %i.aib = zext i32 %i.aia to i64
  %.idx.i.i448.i = shl nuw nsw i64 %i.aib, 4
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahz, i64 %.idx.i.i448.i
  %.not10.i.i.i = icmp eq i32 %i.aia, 0
  br i1 %.not10.i.i.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i, label %.lr.ph.i1.i.i

.lr.ph.i1.i.i:                                    ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i, %.lr.ph.i1.i.i
  %.011.i.i.i = phi ptr [ %i.aie, %.lr.ph.i1.i.i ], [ %i.ahz, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 2 uses
  %i.aid = load ptr, ptr %.011.i.i.i, align 8, !tbaa !222
  call void @free(ptr noundef %i.aid) #28
  %i.aie = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 16 ; 2 uses
  %.not.i2.i449.i = icmp eq ptr %i.aie, %i.aic
  br i1 %.not.i2.i449.i, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, label %.lr.ph.i1.i.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i1.i.i
  %.pre.i450.i = load ptr, ptr %i.ac, align 8, !tbaa !178
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i: ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i
  %i.aif = phi ptr [ %.pre.i450.i, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.loopexit.i.i ], [ %i.ahz, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE15DeallocateSlabsEPPvS4_.exit.i.i ] ; 2 uses
  %i.aig = icmp eq ptr %i.aif, %i.ad
  br i1 %i.aig, label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i, label %bb.fw

bb.fw:                                            ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i
  call void @free(ptr noundef %i.aif) #28
  br label %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i

_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i: ; preds = %bb.fw, %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EE26DeallocateCustomSizedSlabsEv.exit.i.i
  %i.aih = load ptr, ptr %i.y, align 8, !tbaa !178 ; 2 uses
  %i.aii = icmp eq ptr %i.aih, %i.z
  br i1 %i.aii, label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit.i, label %bb.fx

bb.fx:                                            ; preds = %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  call void @free(ptr noundef %i.aih) #28
  br label %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit.i

_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit.i: ; preds = %bb.fx, %_ZN4llvh11SmallVectorISt4pairIPvmELj0EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.aij = load ptr, ptr %14, align 8, !tbaa !178 ; 2 uses
  %i.aik = icmp eq ptr %i.aij, %i.p
  br i1 %i.aik, label %_ZN12_GLOBAL__N_117CommandLineParser23ParseCommandLineOptionsEiPKPKcN4llvh9StringRefEPNS5_11raw_ostreamE.exit, label %bb.fy

bb.fy:                                            ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit.i
  call void @free(ptr noundef %i.aij) #28
  br label %_ZN12_GLOBAL__N_117CommandLineParser23ParseCommandLineOptionsEiPKPKcN4llvh9StringRefEPNS5_11raw_ostreamE.exit

_ZN12_GLOBAL__N_117CommandLineParser23ParseCommandLineOptionsEiPKPKcN4llvh9StringRefEPNS5_11raw_ostreamE.exit: ; preds = %_ZN4llvh20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096EED2Ev.exit.i, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  ret i1 %.not257.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvh2cl6Option5errorERKNS_5TwineENS_9StringRefERNS_11raw_ostreamE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(145) %0, ptr noundef nonnull align 8 dereferenceable(18) %1, ptr %2, i64 %3, ptr noundef nonnull align 8 dereferenceable(36) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload16 = load ptr, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0 = select i1 %.not, i64 %.sroa.4.0.copyload, i64 %3 ; 5 uses
  %.sroa.0.0 = select i1 %.not, ptr %.sroa.0.0.copyload16, ptr %2 ; 2 uses
  %i.b = icmp eq i64 %.sroa.4.0, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.01.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !56 ; 2 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !57 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55   ; 2 uses
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %.sroa.22.0.copyload, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %.sroa.01.0.copyload, i64 noundef %.sroa.22.0.copyload) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, i1 false)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.22.0.copyload
  store ptr %i.n, ptr %i.f, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %bb.a
  %i.o = load atomic ptr, ptr @_ZL12GlobalParser acquire, align 8
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.g, label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK4llvh17ManagedStaticBase21RegisterManagedStaticEPFPvvEPFvS1_E(ptr noundef nonnull align 8 dereferenceable(24) @_ZL12GlobalParser, ptr noundef nonnull @_ZN4llvh14object_creatorIN12_GLOBAL__N_117CommandLineParserEE4callEv, ptr noundef nonnull @_ZN4llvh14object_deleterIN12_GLOBAL__N_117CommandLineParserEE4callEPv) #28, !inline_history !61
  br label %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit

_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit: ; preds = %bb.f, %bb.g
  %i.p = load atomic ptr, ptr @_ZL12GlobalParser monotonic, align 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !98
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !96
  %i.t = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %i.q, i64 noundef %i.s) #28 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !55   ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, 11
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull @.str.2, i64 noundef 11) #28 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %_ZN4llvh13ManagedStaticIN12_GLOBAL__N_117CommandLineParserENS_14object_creatorIS2_EENS_14object_deleterIS2_EEEptEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.2, i64 11, i1 false)
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 11 ; 2 uses
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !55
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.h, %bb.i
  %i.af = phi ptr [ %.pre, %bb.h ], [ %i.ae, %bb.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.ac, %bb.h ], [ %i.t, %bb.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !52
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ugt i64 %.sroa.4.0, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.am = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef %.sroa.0.0, i64 noundef %.sroa.4.0) #28 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %.sroa.0.0, i64 %.sroa.4.0, i1 false)
end_hunk_2
