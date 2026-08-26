Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InstrumentationMap?download=true
inline.NumInlined: 1668
inline.NumDeleted: 846
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm4xray22loadInstrumentationMapENS_9StringRefE:bb.a

_ZN4llvm8ExpectedImED2Ev.exit.i:                  ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i149.i, %bb.ax, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18, !noalias !142
  br i1 %i.mk, label %bb.bk, label %.critedge110.i

bb.ay:                                            ; preds = %.lr.ph.i48
  br i1 %.not.i47, label %bb.bf, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nb = load ptr, ptr %i.ku, align 8, !tbaa !201, !noalias !142 ; 2 uses
  %.sroa.0.0.copyload.i150.i = load i64, ptr %13, align 8, !tbaa !55, !noalias !142
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !61, !noalias !142
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 320
  %i.ne = load ptr, ptr %i.nd, align 8, !noalias !142
  %i.nf = call noundef i64 %i.ne(ptr noundef nonnull align 8 dereferenceable(48) %i.nb, i64 %.sroa.0.0.copyload.i150.i) #18, !noalias !142, !inline_history !203
  %i.ng = call noundef zeroext i1 %i.kr(i64 noundef %i.nf) #18, !noalias !142, !inline_history !151
  br i1 %i.ng, label %bb.ba, label %bb.bf

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !142
  %.sroa.033.0.copyload.i = load i64, ptr %13, align 8, !tbaa !55, !noalias !142
  %.sroa.434.0.copyload.i = load ptr, ptr %i.ku, align 8, !tbaa !145, !noalias !142 ; 2 uses
  %i.nh = load ptr, ptr %.sroa.434.0.copyload.i, align 8, !tbaa !61, !noalias !219
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 512
  %i.nj = load ptr, ptr %i.ni, align 8, !noalias !219
  call void %i.nj(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.156") align 8 %16, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.434.0.copyload.i, i64 %.sroa.033.0.copyload.i) #18, !noalias !142, !inline_history !222
  %i.nk = load i8, ptr %i.kv, align 8, !noalias !142
  %i.nl = load i64, ptr %16, align 8, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !142
  %i.nm = load ptr, ptr %i.ku, align 8, !tbaa !201, !noalias !142 ; 2 uses
  %.sroa.0.0.copyload.i152.i = load i64, ptr %13, align 8, !tbaa !55, !noalias !142
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !61, !noalias !142
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 312
  %i.np = load ptr, ptr %i.no, align 8, !noalias !142
  %i.nq = call { i64, ptr } %i.np(ptr noundef nonnull align 8 dereferenceable(48) %i.nm, i64 %.sroa.0.0.copyload.i152.i) #18, !noalias !142, !inline_history !204 ; 2 uses
  %i.nr = extractvalue { i64, ptr } %i.nq, 0
  %i.ns = extractvalue { i64, ptr } %i.nq, 1
  call void @_ZNK4llvm6object10ObjectFile14getSymbolValueENS0_11DataRefImplE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.146") align 8 %17, ptr noundef nonnull align 8 dereferenceable(48) %i.ns, i64 %i.nr) #18, !noalias !142
  %i.nt = load i8, ptr %i.kw, align 8, !noalias !142 ; 2 uses
  %i.nu = trunc i8 %i.nt to i1                    ; 2 uses
  br i1 %i.nu, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i155.i, label %bb.bb

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i155.i: ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %i.nv = load i64, ptr %17, align 8, !tbaa !46, !noalias !226
  %i.nw = inttoptr i64 %i.nv to ptr
  store ptr null, ptr %17, align 8, !tbaa !46, !noalias !226
  store ptr %i.nw, ptr %45, align 8, !tbaa !59, !alias.scope !226
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.nx = trunc i8 %i.nk to i1
  %spec.select.i = select i1 %i.nx, i64 0, i64 %i.nl
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18, !noalias !142
  %i.ny = load ptr, ptr %i.ku, align 8, !tbaa !201, !noalias !142 ; 2 uses
  %.sroa.0.0.copyload.i157.i = load i64, ptr %13, align 8, !tbaa !55, !noalias !142
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !61, !noalias !142
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 304
  %i.ob = load ptr, ptr %i.oa, align 8, !noalias !142
  %i.oc = call noundef i64 %i.ob(ptr noundef nonnull align 8 dereferenceable(48) %i.ny, i64 %.sroa.0.0.copyload.i157.i) #18, !noalias !142, !inline_history !209
  %i.od = load i64, ptr %17, align 8, !tbaa !27, !noalias !142
  %i.oe = call noundef i64 @_ZN4llvm6object17resolveRelocationEPFmmmmmlERKNS0_13RelocationRefEmm(ptr noundef %i.ks, ptr noundef nonnull align 8 dereferenceable(16) %13, i64 noundef %i.od, i64 noundef %spec.select.i) #18, !noalias !142
  store i64 %i.oc, ptr %18, align 8, !tbaa !210, !noalias !142
  store i64 %i.oe, ptr %i.kx, align 8, !tbaa !212, !noalias !142
  %i.of = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E24lookupOrInsertIntoBucketImJmEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.kx), !noalias !227 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !142
  %.pre.i50 = load i8, ptr %i.kw, align 8, !noalias !142
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i155.i
  %i.og = phi i8 [ %.pre.i50, %bb.bb ], [ %i.nt, %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit.i155.i ]
  %i.oh = trunc i8 %i.og to i1
  br i1 %i.oh, label %bb.bd, label %_ZN4llvm8ExpectedImED2Ev.exit166.i

bb.bd:                                            ; preds = %bb.bc
  %i.oi = load ptr, ptr %17, align 8, !tbaa !46, !noalias !142 ; 3 uses
  %.not.i.i164.i = icmp eq ptr %i.oi, null
  br i1 %.not.i.i164.i, label %_ZN4llvm8ExpectedImED2Ev.exit166.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i165.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i165.i: ; preds = %bb.bd
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !61, !noalias !142
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 8
  %i.ol = load ptr, ptr %i.ok, align 8, !noalias !142
  call void %i.ol(ptr noundef nonnull align 8 dereferenceable(8) %i.oi) #18, !noalias !142, !inline_history !218
  br label %_ZN4llvm8ExpectedImED2Ev.exit166.i

_ZN4llvm8ExpectedImED2Ev.exit166.i:               ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i165.i, %bb.bd, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !142
  %i.om = load i8, ptr %i.kv, align 8, !noalias !142
  %i.on = trunc i8 %i.om to i1
  br i1 %i.on, label %bb.be, label %_ZN4llvm8ExpectedIlED2Ev.exit.i

bb.be:                                            ; preds = %_ZN4llvm8ExpectedImED2Ev.exit166.i
  %i.oo = load ptr, ptr %16, align 8, !tbaa !46, !noalias !142 ; 3 uses
  %.not.i.i168.i = icmp eq ptr %i.oo, null
  br i1 %.not.i.i168.i, label %_ZN4llvm8ExpectedIlED2Ev.exit.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i169.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i169.i: ; preds = %bb.be
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !61, !noalias !142
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !noalias !142
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(8) %i.oo) #18, !noalias !142, !inline_history !232
  br label %_ZN4llvm8ExpectedIlED2Ev.exit.i

_ZN4llvm8ExpectedIlED2Ev.exit.i:                  ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i169.i, %bb.be, %_ZN4llvm8ExpectedImED2Ev.exit166.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !142
  br i1 %i.nu, label %bb.bk, label %.critedge110.i

bb.bf:                                            ; preds = %bb.az, %bb.ay
  %i.os = load ptr, ptr %i.ku, align 8, !tbaa !201, !noalias !142 ; 2 uses
  %.sroa.0.0.copyload.i170.i = load i64, ptr %13, align 8, !tbaa !55, !noalias !142
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !61, !noalias !142
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 320
  %i.ov = load ptr, ptr %i.ou, align 8, !noalias !142
  %i.ow = call noundef i64 %i.ov(ptr noundef nonnull align 8 dereferenceable(48) %i.os, i64 %.sroa.0.0.copyload.i170.i) #18, !noalias !142, !inline_history !203
  %i.ox = icmp eq i64 %i.ow, %i.ky
  br i1 %i.ox, label %bb.bg, label %.critedge110.i

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !142
  %.sroa.021.0.copyload.i = load i64, ptr %13, align 8, !tbaa !55, !noalias !142
  %.sroa.422.0.copyload.i = load ptr, ptr %i.ku, align 8, !tbaa !145, !noalias !142 ; 2 uses
  %i.oy = load ptr, ptr %.sroa.422.0.copyload.i, align 8, !tbaa !61, !noalias !233
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 512
  %i.pa = load ptr, ptr %i.oz, align 8, !noalias !233
  call void %i.pa(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.156") align 8 %19, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.422.0.copyload.i, i64 %.sroa.021.0.copyload.i) #18, !noalias !142, !inline_history !222
  %i.pb = load i8, ptr %i.kz, align 8, !noalias !142 ; 2 uses
  %i.pc = trunc i8 %i.pb to i1
  br i1 %i.pc, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18, !noalias !142
  %i.pd = load ptr, ptr %i.ku, align 8, !tbaa !201, !noalias !142 ; 2 uses
  %.sroa.0.0.copyload.i172.i = load i64, ptr %13, align 8, !tbaa !55, !noalias !142
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !61, !noalias !142
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 304
  %i.pg = load ptr, ptr %i.pf, align 8, !noalias !142
  %i.ph = call noundef i64 %i.pg(ptr noundef nonnull align 8 dereferenceable(48) %i.pd, i64 %.sroa.0.0.copyload.i172.i) #18, !noalias !142, !inline_history !209
  store i64 %i.ph, ptr %20, align 8, !tbaa !210, !noalias !142
  %i.pi = load i64, ptr %19, align 8, !tbaa !27, !noalias !142
  store i64 %i.pi, ptr %i.la, align 8, !tbaa !212, !noalias !142
  %i.pj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E24lookupOrInsertIntoBucketImJmEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.la), !noalias !236 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !142
  %.pre199.i = load i8, ptr %i.kz, align 8, !noalias !142
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.pk = phi i8 [ %.pre199.i, %bb.bh ], [ %i.pb, %bb.bg ]
  %i.pl = trunc i8 %i.pk to i1
  br i1 %i.pl, label %bb.bj, label %_ZN4llvm8ExpectedIlED2Ev.exit181.i

bb.bj:                                            ; preds = %bb.bi
  %i.pm = load ptr, ptr %19, align 8, !tbaa !46, !noalias !142 ; 3 uses
  %.not.i.i179.i = icmp eq ptr %i.pm, null
  br i1 %.not.i.i179.i, label %_ZN4llvm8ExpectedIlED2Ev.exit181.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i180.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i180.i: ; preds = %bb.bj
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !61, !noalias !142
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !noalias !142
  call void %i.pp(ptr noundef nonnull align 8 dereferenceable(8) %i.pm) #18, !noalias !142, !inline_history !232
  br label %_ZN4llvm8ExpectedIlED2Ev.exit181.i

_ZN4llvm8ExpectedIlED2Ev.exit181.i:               ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i180.i, %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !142
  br label %.critedge110.i

.critedge110.i:                                   ; preds = %_ZN4llvm8ExpectedIlED2Ev.exit181.i, %bb.bf, %_ZN4llvm8ExpectedIlED2Ev.exit.i, %_ZN4llvm8ExpectedImED2Ev.exit.i, %bb.at, %bb.as
  %i.pq = load ptr, ptr %i.ku, align 8, !tbaa !201, !noalias !142 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !61, !noalias !142
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 296
  %i.pt = load ptr, ptr %i.ps, align 8, !noalias !142
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(48) %i.pq, ptr noundef nonnull align 8 dereferenceable(16) %13) #18, !noalias !142, !inline_history !241
  %lhsv.i.i.i.i140.i = load i64, ptr %13, align 8, !noalias !142
  %.not.i.i.i.i142.not.i = icmp eq i64 %lhsv.i.i.i.i140.i, %i.lp
  br i1 %.not.i.i.i.i142.not.i, label %._crit_edge.i, label %.lr.ph.i48

._crit_edge.i:                                    ; preds = %.critedge110.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !142
  %i.pu = load ptr, ptr %i.kt, align 8, !tbaa !172, !noalias !142 ; 2 uses
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !61, !noalias !142
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 136
  %i.px = load ptr, ptr %i.pw, align 8, !noalias !142
  call void %i.px(ptr noundef nonnull align 8 dereferenceable(48) %i.pu, ptr noundef nonnull align 8 dereferenceable(16) %12) #18, !noalias !142, !inline_history !242
  %i.py = load ptr, ptr %i.kt, align 8, !tbaa !172, !noalias !142 ; 2 uses
  %i.pz = icmp ne ptr %i.py, %i.hz
  %lhsv.i.i.i.i.i = load i64, ptr %12, align 8, !noalias !142 ; 2 uses
  %.not.i.i.i.i.i49 = icmp ne i64 %lhsv.i.i.i.i.i, %i.hy
  %.not2.i.i = select i1 %i.pz, i1 true, i1 %.not.i.i.i.i.i49
  br i1 %.not2.i.i, label %bb.ar, label %.thread152.i

bb.bk:                                            ; preds = %_ZN4llvm8ExpectedIlED2Ev.exit.i, %_ZN4llvm8ExpectedImED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18, !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18, !noalias !142
  br label %bb.ct

bb.bl:                                            ; preds = %.thread152.i, %_ZN4llvm5ErrorD2Ev.exit.i38
  %i.qa = phi ptr [ %.pre201.i, %.thread152.i ], [ %i.kg, %_ZN4llvm5ErrorD2Ev.exit.i38 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18, !noalias !142
  call void @_ZNK4llvm6object10ObjectFile10makeTripleEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Triple") align 8 %21, ptr noundef nonnull align 8 dereferenceable(48) %i.qa) #18, !noalias !142
  %i.qb = call noundef zeroext i1 @_ZNK4llvm6Triple11isArch32BitEv(ptr noundef nonnull align 8 dereferenceable(56) %21) #18, !noalias !142 ; 4 uses
  %i.qc = load ptr, ptr %21, align 8, !tbaa !135, !noalias !142 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  %i.qe = icmp eq ptr %i.qc, %i.qd
  br i1 %i.qe, label %_ZN4llvm6TripleD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bl
  %i.qf = load i64, ptr %i.qd, align 8, !tbaa !55, !noalias !142
  %i.qg = add i64 %i.qf, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qg) #22, !noalias !142
  br label %_ZN4llvm6TripleD2Ev.exit.i

_ZN4llvm6TripleD2Ev.exit.i:                       ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !142
  %i.qh = select i1 %i.qb, i64 16, i64 32         ; 3 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.0133143148.i, i64 %.sroa.13.0135141149.i
  %i.qj = ptrtoint ptr %.sroa.0.0133143148.i to i64 ; 5 uses
  %gepdiff.i = sub nsw i64 0, %.sroa.13.0135141149.i
  %46 = add nsw i64 %i.qh, -1
  %i.qk = and i64 %46, %gepdiff.i
  %.not105.i = icmp eq i64 %i.qk, 0
  br i1 %.not105.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZN4llvm6TripleD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #18, !noalias !142
  %i.ql = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.qm = getelementptr inbounds nuw i8, ptr %22, i64 33
  store i8 1, ptr %i.qm, align 1, !tbaa !54, !noalias !142
  store ptr @.str.49, ptr %22, align 8, !tbaa !55, !noalias !142
  store i8 3, ptr %i.ql, align 8, !tbaa !51, !noalias !142
  %i.qn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #19
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.qo = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #20, !noalias !246 ; 2 uses
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.qo, ptr noundef nonnull align 8 dereferenceable(34) %22, i32 8, ptr nonnull %i.qn) #18, !noalias !246
  store ptr %i.qo, ptr %45, align 8, !tbaa !59, !alias.scope !249
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #18, !noalias !142
  br label %bb.ct

bb.bn:                                            ; preds = %_ZN4llvm6TripleD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18, !noalias !142
  store i32 1, ptr %i.a, align 4, !tbaa !24, !noalias !142
  %.not106183.i = icmp samesign eq i64 %.sroa.13.0135141149.i, 0
  br i1 %.not106183.i, label %_ZN4llvm5ErrorD2Ev.exit236.i, label %.lr.ph189.i

.lr.ph189.i:                                      ; preds = %bb.bn
  %i.qp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.qq = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.qr = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %11, i64 20 ; 4 uses
  %i.qv = select i1 %i.qb, i64 4, i64 8
  %invariant.op.i = add i64 %i.qv, %.2.i
  br label %bb.bo

bb.bo:                                            ; preds = %bb.cr, %.lr.ph189.i
  %.096187.i = phi i64 [ 0, %.lr.ph189.i ], [ %i.zp, %bb.cr ] ; 2 uses
  %.0124184.i = phi ptr [ %.sroa.0.0133143148.i, %.lr.ph189.i ], [ %i.zy, %bb.cr ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #18, !noalias !142
  store ptr %.0124184.i, ptr %23, align 8, !tbaa !250, !noalias !142
  store i64 %i.qh, ptr %i.qp, align 8, !tbaa !251, !noalias !142
  store i8 1, ptr %i.qq, align 8, !tbaa !252, !noalias !142
  %i.qw = load ptr, ptr %i.qr, align 8, !tbaa !118, !noalias !142 ; 3 uses
  %i.qx = load ptr, ptr %i.qs, align 16, !tbaa !114, !noalias !142
  %.not.i.i187.i = icmp eq ptr %i.qw, %i.qx
  br i1 %.not.i.i187.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qw, i8 0, i64 24, i1 false), !noalias !142
  %i.qy = load ptr, ptr %i.qr, align 8, !tbaa !118, !noalias !142
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 24 ; 2 uses
  store ptr %i.qz, ptr %i.qr, align 8, !tbaa !118, !noalias !142
  br label %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE9push_backEOS2_.exit.i39

bb.bq:                                            ; preds = %bb.bo
  %i.ra = load ptr, ptr %40, align 16, !tbaa !117, !noalias !142 ; 4 uses
  %i.rb = ptrtoint ptr %i.qw to i64
  %i.rc = ptrtoint ptr %i.ra to i64               ; 2 uses
  %i.rd = sub i64 %i.rb, %i.rc                    ; 5 uses
  %i.re = icmp eq i64 %i.rd, 9223372036854775800
  br i1 %i.re, label %bb.br, label %_ZNKSt6vectorIN4llvm4xray9SledEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i42

bb.br:                                            ; preds = %bb.bq
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21, !noalias !142
  unreachable

_ZNKSt6vectorIN4llvm4xray9SledEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i42: ; preds = %bb.bq
  %i.rf = sdiv exact i64 %i.rd, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i.i43 = call i64 @llvm.umax.i64(i64 %i.rf, i64 1)
  %i.rg = add nsw i64 %.sroa.speculated.i.i.i.i.i43, %i.rf ; 2 uses
  %i.rh = icmp ult i64 %i.rg, %i.rf
  %i.ri = call i64 @llvm.umin.i64(i64 %i.rg, i64 384307168202282325)
  %i.rj = select i1 %i.rh, i64 384307168202282325, i64 %i.ri ; 3 uses
  %.not.i.i.i.i188.i = icmp ne i64 %i.rj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i188.i)
  %i.rk = mul nuw nsw i64 %i.rj, 24
  %i.rl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rk) #20, !noalias !142 ; 4 uses
  %i.rm = getelementptr inbounds i8, ptr %i.rl, i64 %i.rd ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.rm, i8 0, i64 24, i1 false), !noalias !142
  %i.rn = icmp sgt i64 %i.rd, 0
  br i1 %i.rn, label %bb.bs, label %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i44

bb.bs:                                            ; preds = %_ZNKSt6vectorIN4llvm4xray9SledEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i42
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rl, ptr align 8 %i.ra, i64 %i.rd, i1 false), !noalias !142
  br label %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i44

_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i44: ; preds = %bb.bs, %_ZNKSt6vectorIN4llvm4xray9SledEntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i.i42
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rm, i64 24 ; 2 uses
  %.not.i17.i.i.i.i45 = icmp eq ptr %i.ra, null
  br i1 %.not.i17.i.i.i.i45, label %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i46, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i44
  %i.rp = load ptr, ptr %i.qs, align 16, !tbaa !114, !noalias !142
  %i.rq = ptrtoint ptr %i.rp to i64
  %i.rr = sub i64 %i.rq, %i.rc
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef %i.rr) #22, !noalias !142
  br label %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i46

_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i46: ; preds = %bb.bt, %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i.i44
  store ptr %i.rl, ptr %40, align 16, !tbaa !117, !noalias !142
  store ptr %i.ro, ptr %i.qr, align 8, !tbaa !118, !noalias !142
  %i.rs = getelementptr inbounds nuw [24 x i8], ptr %i.rl, i64 %i.rj
  store ptr %i.rs, ptr %i.qs, align 16, !tbaa !114, !noalias !142
  br label %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE9push_backEOS2_.exit.i39

_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE9push_backEOS2_.exit.i39: ; preds = %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i46, %bb.bp
  %i.rt = phi ptr [ %i.qz, %bb.bp ], [ %i.ro, %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i.i46 ] ; 5 uses
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 -24 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18, !noalias !142
  store i64 0, ptr %i.b, align 8, !tbaa !27, !noalias !142
  br i1 %i.qb, label %bb.bu, label %bb.by

bb.bu:                                            ; preds = %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE9push_backEOS2_.exit.i39
  %i.rv = call noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %23, ptr noundef nonnull %i.b, ptr noundef null) #18, !noalias !142 ; 2 uses
  %.not.i189.i = icmp eq i32 %i.rv, 0
  br i1 %.not.i189.i, label %bb.bv, label %"_ZZL7loadObjN4llvm9StringRefERNS_6object12OwningBinaryINS1_10ObjectFileEEERSt6vectorINS_4xray9SledEntryESaIS8_EERNS_8DenseMapIimNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIimEEEERNSC_ImiNSD_ImvEENSG_ImiEEEEENK3$_2clEmm.exit.thread.i"

"_ZZL7loadObjN4llvm9StringRefERNS_6object12OwningBinaryINS1_10ObjectFileEEERSt6vectorINS_4xray9SledEntryESaIS8_EERNS_8DenseMapIimNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIimEEEERNSC_ImiNSD_ImvEENSG_ImiEEEEENK3$_2clEmm.exit.thread.i": ; preds = %bb.bu
  %i.rw = zext i32 %i.rv to i64
  store i64 %i.rw, ptr %i.ru, align 8, !tbaa !254, !noalias !142
  %i.rx = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !142
  br label %bb.cc

bb.bv:                                            ; preds = %bb.bu
  %i.ry = load ptr, ptr %.sroa.22.0.copyload.i.i.i.i.i, align 8, !tbaa !61, !noalias !142
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 152
  %i.sa = load ptr, ptr %i.rz, align 8, !noalias !142
  %i.sb = call noundef i64 %i.sa(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.22.0.copyload.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i) #18, !noalias !142, !inline_history !256
  %i.sc = getelementptr inbounds nuw i8, ptr %.0124184.i, i64 %i.sb
  %i.sd = ptrtoint ptr %i.sc to i64
  %i.se = sub i64 %i.sd, %i.qj                    ; 2 uses
  %i.sf = load ptr, ptr %11, align 8, !tbaa !257, !noalias !260 ; 3 uses
  %i.sg = load ptr, ptr %i.qt, align 8, !tbaa !269, !noalias !260 ; 2 uses
  %i.sh = load i32, ptr %i.qu, align 4, !tbaa !270, !noalias !260 ; 4 uses
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %.loopexit.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sj = add i32 %i.sh, -1                       ; 2 uses
  %i.sk = mul i64 %i.se, -4658895280553007687     ; 2 uses
  %i.sl = lshr i64 %i.sk, 31
  %i.sm = xor i64 %i.sl, %i.sk
  %i.sn = trunc i64 %i.sm to i32
  %i.so = and i32 %i.sj, %i.sn                    ; 3 uses
  %i.sp = zext i32 %i.so to i64                   ; 2 uses
  %i.sq = lshr i64 %i.sp, 5
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.sq
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !24, !noalias !271
  %i.st = and i32 %i.so, 31
  %i.su = lshr i32 %i.ss, %i.st
  %i.sv = trunc i32 %i.su to i1
  br i1 %i.sv, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !26

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bw, %bb.bx
  %i.sw = phi i64 [ %i.tc, %bb.bx ], [ %i.sp, %bb.bw ]
  %.01117.i.i.i.i.i.i = phi i32 [ %i.tb, %bb.bx ], [ %i.so, %bb.bw ]
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.sw ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !27, !noalias !271
  %i.sz = icmp eq i64 %i.se, %i.sy
  br i1 %i.sz, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.loopexit.i.i, label %bb.bx, !prof !29

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ta = add nuw i32 %.01117.i.i.i.i.i.i, 1
  %i.tb = and i32 %i.ta, %i.sj                    ; 3 uses
  %i.tc = zext i32 %i.tb to i64                   ; 2 uses
  %i.td = lshr i64 %i.tc, 5
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.td
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !24, !noalias !271
  %i.tg = and i32 %i.tb, 31
  %i.th = lshr i32 %i.tf, %i.tg
  %i.ti = trunc i32 %i.th to i1
  br i1 %i.ti, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !30

.loopexit.i.i.i.i:                                ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.tj = zext i32 %i.sh to i64                   ; 2 uses
  %i.tk = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %i.tj
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i192.i = zext i32 %i.sh to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i192.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.loopexit.i.i ], [ %i.tj, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.sx, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4findERKm.exit.loopexit.i.i ], [ %i.tk, %.loopexit.i.i.i.i ] ; 2 uses
  %i.tl = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %.pre-phi.i.i
  %.not18.i191.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.tl
  br i1 %.not18.i191.i, label %"_ZZL7loadObjN4llvm9StringRefERNS_6object12OwningBinaryINS1_10ObjectFileEEERSt6vectorINS_4xray9SledEntryESaIS8_EERNS_8DenseMapIimNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIimEEEERNSC_ImiNSD_ImvEENSG_ImiEEEEENK3$_2clEmm.exit.i", label %"_ZZL7loadObjN4llvm9StringRefERNS_6object12OwningBinaryINS1_10ObjectFileEEERSt6vectorINS_4xray9SledEntryESaIS8_EERNS_8DenseMapIimNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIimEEEERNSC_ImiNSD_ImvEENSG_ImiEEEEENK3$_2clEmm.exit.sink.split.i"

bb.by:                                            ; preds = %_ZNSt6vectorIN4llvm4xray9SledEntryESaIS2_EE9push_backEOS2_.exit.i39
  %i.tm = call noundef i64 @_ZNK4llvm13DataExtractor6getU64EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17) %23, ptr noundef nonnull %i.b, ptr noundef null) #18, !noalias !142 ; 2 uses
  %.not.i193.i = icmp eq i64 %i.tm, 0
  br i1 %.not.i193.i, label %bb.bz, label %"_ZZL7loadObjN4llvm9StringRefERNS_6object12OwningBinaryINS1_10ObjectFileEEERSt6vectorINS_4xray9SledEntryESaIS8_EERNS_8DenseMapIimNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIimEEEERNSC_ImiNSD_ImvEENSG_ImiEEEEENK3$_2clEmm.exit.thread156.i"

"_ZZL7loadObjN4llvm9StringRefERNS_6object12OwningBinaryINS1_10ObjectFileEEERSt6vectorINS_4xray9SledEntryESaIS8_EERNS_8DenseMapIimNS_12DenseMapInfoIivEENS_6detail12DenseMapPairIimEEEERNSC_ImiNSD_ImvEENSG_ImiEEEEENK3$_2clEmm.exit.thread156.i": ; preds = %bb.by
  store i64 %i.tm, ptr %i.ru, align 8, !tbaa !254, !noalias !142
  %i.tn = load i64, ptr %i.b, align 8, !tbaa !27, !noalias !142
  br label %bb.cg

bb.bz:                                            ; preds = %bb.by
end_hunk_0
