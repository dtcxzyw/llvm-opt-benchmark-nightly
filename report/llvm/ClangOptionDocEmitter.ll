Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ClangOptionDocEmitter?download=true
inline.NumInlined: 1926
inline.NumDeleted: 876
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_117emitDocumentationEiRKNS_13DocumentationEPKN4llvm6RecordERNS3_11raw_ostreamE:bb.a
  store i8 0, ptr %i.d, align 1, !tbaa !147
  %i.uu = load ptr, ptr %.sroa.0310.0359, align 8, !tbaa !135
  call fastcc void @"_ZZN12_GLOBAL__N_110emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS3_11raw_ostreamEENK3$_2clES6_"(ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(48) %3, ptr noundef %i.uu)
  %i.uv = load ptr, ptr %i.dn, align 8, !tbaa !109 ; 2 uses
  %i.uw = load ptr, ptr %i.dp, align 8, !tbaa !109 ; 2 uses
  %.not16.i106.i = icmp eq ptr %i.uv, %i.uw
  br i1 %.not16.i106.i, label %"_ZN12_GLOBAL__N_117forEachOptionNameIZNS_10emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS4_11raw_ostreamEE3$_2EEvS3_S7_T_.exit117.i", label %.lr.ph.i107.i

.lr.ph.i107.i:                                    ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit105.i, %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i
  %.sroa.011.017.i108.i = phi ptr [ %i.vi, %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i ], [ %i.uv, %_ZN4llvm11raw_ostreamlsEPKc.exit105.i ] ; 2 uses
  %i.ux = load ptr, ptr %.sroa.011.017.i108.i, align 8, !tbaa !27 ; 2 uses
  %i.uy = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_115isOptionVisibleEPKN4llvm6RecordES3_(ptr noundef %i.ux, ptr noundef nonnull %2)
  br i1 %i.uy, label %bb.bq, label %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i

bb.bq:                                            ; preds = %.lr.ph.i107.i
  %i.uz = load ptr, ptr %.sroa.0310.0359, align 8, !tbaa !135
  %i.va = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.uz, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.vb = extractvalue { ptr, i64 } %i.va, 0      ; 2 uses
  %i.vc = extractvalue { ptr, i64 } %i.va, 1      ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 %i.vc
  %.not17.not.i.i111.i = icmp samesign eq i64 %i.vc, 0
  br i1 %.not17.not.i.i111.i, label %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i, label %.lr.ph.i.i112.i

bb.br:                                            ; preds = %.lr.ph.i.i112.i
  %i.ve = getelementptr inbounds nuw i8, ptr %.01018.i.i113.i, i64 1 ; 2 uses
  %.not.not.i.i116.i = icmp eq ptr %i.ve, %i.vd
  br i1 %.not.not.i.i116.i, label %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i, label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %bb.bq, %bb.br
  %.01018.i.i113.i = phi ptr [ %i.ve, %bb.br ], [ %i.vb, %bb.bq ] ; 2 uses
  %i.vf = load i8, ptr %.01018.i.i113.i, align 1, !tbaa !31
  %i.vg = sext i8 %i.vf to i32
  %i.vh = call i32 @isalnum(i32 noundef %i.vg) #19
  %.not13.not.i.i114.i = icmp eq i32 %i.vh, 0
  br i1 %.not13.not.i.i114.i, label %bb.br, label %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.i115.i

_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.i115.i: ; preds = %.lr.ph.i.i112.i
  call fastcc void @"_ZZN12_GLOBAL__N_110emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS3_11raw_ostreamEENK3$_2clES6_"(ptr nonnull %i.d, ptr nonnull align 8 dereferenceable(48) %3, ptr noundef %i.ux)
  br label %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i

_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i: ; preds = %bb.br, %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.i115.i, %bb.bq, %.lr.ph.i107.i
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i108.i, i64 8 ; 2 uses
  %.not.i110.i = icmp eq ptr %i.vi, %i.uw
  br i1 %.not.i110.i, label %"_ZN12_GLOBAL__N_117forEachOptionNameIZNS_10emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS4_11raw_ostreamEE3$_2EEvS3_S7_T_.exit117.i", label %.lr.ph.i107.i

"_ZN12_GLOBAL__N_117forEachOptionNameIZNS_10emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS4_11raw_ostreamEE3$_2EEvS3_S7_T_.exit117.i": ; preds = %_ZN12_GLOBAL__N_123canSphinxCopeWithOptionEPKN4llvm6RecordE.exit.thread.i109.i, %_ZN4llvm11raw_ostreamlsEPKc.exit105.i, %_ZN4llvm11raw_ostreamlsEPKc.exit102.i
  %i.vj = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.vk = load ptr, ptr %i.v, align 8, !tbaa !38  ; 2 uses
  %i.vl = ptrtoint ptr %i.vj to i64
  %i.vm = ptrtoint ptr %i.vk to i64
  %i.vn = sub i64 %i.vl, %i.vm
  %i.vo = icmp ult i64 %i.vn, 2
  br i1 %i.vo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %"_ZN12_GLOBAL__N_117forEachOptionNameIZNS_10emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS4_11raw_ostreamEE3$_2EEvS3_S7_T_.exit117.i"
  %i.vp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull @.str.11, i64 noundef 2) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit120.i

bb.bt:                                            ; preds = %"_ZN12_GLOBAL__N_117forEachOptionNameIZNS_10emitOptionERKNS_16DocumentedOptionEPKN4llvm6RecordERNS4_11raw_ostreamEE3$_2EEvS3_S7_T_.exit117.i"
  store i16 2570, ptr %i.vk, align 1
  %i.vq = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  store ptr %i.vr, ptr %i.v, align 8, !tbaa !38
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit120.i

_ZN4llvm11raw_ostreamlsEPKc.exit120.i:            ; preds = %bb.bt, %bb.bs
  %i.vs = load ptr, ptr %.sroa.0310.0359, align 8, !tbaa !135 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20
  store ptr %i.aj, ptr %22, align 8, !tbaa !46
  store i64 0, ptr %i.ak, align 8, !tbaa !23
  store i8 0, ptr %i.aj, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20
  call void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.73") align 8 %23, ptr noundef nonnull align 8 dereferenceable(192) %i.vs, ptr nonnull @.str.12, i64 20) #20
  %i.vt = load ptr, ptr %23, align 8, !tbaa !109  ; 3 uses
  %i.vu = load ptr, ptr %i.al, align 8, !tbaa !109 ; 2 uses
  %.not223237.i = icmp eq ptr %i.vt, %i.vu
  br i1 %.not223237.i, label %._crit_edge240.i, label %.lr.ph239.i

.lr.ph239.i:                                      ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit120.i, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit.i
  %.sroa.0195.0238.i = phi ptr [ %i.zl, %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit.i ], [ %i.vt, %_ZN4llvm11raw_ostreamlsEPKc.exit120.i ] ; 2 uses
  %i.vv = load ptr, ptr %.sroa.0195.0238.i, align 8, !tbaa !27 ; 2 uses
  %i.vw = call noundef ptr @_ZNK4llvm6Record18getValueAsListInitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.vv, ptr nonnull @.str.13, i64 12) #20 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 40 ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 32
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !215 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20
  call void @_ZNK4llvm6Record23getValueAsListOfStringsENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.94") align 8 %24, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr nonnull @.str.14, i64 14) #20
  %i.wa = load ptr, ptr %24, align 8, !tbaa !139  ; 4 uses
  %i.wb = load ptr, ptr %i.am, align 8, !tbaa !139 ; 2 uses
  %.not224231.i = icmp eq ptr %i.wa, %i.wb
  br i1 %.not224231.i, label %._crit_edge235.i, label %.lr.ph234.i

.lr.ph234.i:                                      ; preds = %.lr.ph239.i
  %i.wc = zext i32 %i.vz to i64
  %.idx.i = shl nuw nsw i64 %i.wc, 3
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vx, i64 %.idx.i ; 2 uses
  %.not69227.i = icmp eq i32 %i.vz, 0
  br i1 %.not69227.i, label %._crit_edge235.i, label %.lr.ph230.i

.lr.ph230.i:                                      ; preds = %.lr.ph234.i, %..loopexit_crit_edge.i
  %.sroa.0185.0232.i = phi ptr [ %i.zd, %..loopexit_crit_edge.i ], [ %i.wa, %.lr.ph234.i ] ; 3 uses
  %.sroa.019.0.copyload.i = load ptr, ptr %.sroa.0185.0232.i, align 8, !tbaa !137
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0185.0232.i, i64 8
  %.sroa.420.0.copyload.i = load i64, ptr %.sroa.420.0..sroa_idx.i, align 8, !tbaa !47
  %.sroa.420.0.copyload.i.fr = freeze i64 %.sroa.420.0.copyload.i ; 3 uses
  %i.we = icmp eq i64 %.sroa.420.0.copyload.i.fr, 0
  br i1 %i.we, label %_ZN4llvmeqENS_9StringRefES0_.exit124.i.us, label %.lr.ph230.i.split

_ZN4llvmeqENS_9StringRefES0_.exit124.i.us:        ; preds = %.lr.ph230.i, %bb.bu
  %.066228.i.us = phi ptr [ %i.wp, %bb.bu ], [ %i.vx, %.lr.ph230.i ] ; 2 uses
  %i.wf = load ptr, ptr %.066228.i.us, align 8, !tbaa !216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !218
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 48
  %i.wi = load ptr, ptr %i.wh, align 8
  call void %i.wi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(10) %i.wf) #20, !inline_history !199
  %i.wj = load ptr, ptr %25, align 8, !tbaa !24   ; 2 uses
  %i.wk = load i64, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %.not.i121.i.us.not = icmp eq i64 %i.wk, 0
  %i.wl = icmp eq ptr %i.wj, %i.ao
  br i1 %i.wl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit124.i.us
  %i.wm = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.wn = add i64 %i.wm, 1
  call void @_ZdlPvm(ptr noundef %i.wj, i64 noundef %i.wn) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit124.i.us
  %i.wo = icmp ult i64 %i.wk, 16
  call void @llvm.assume(i1 %i.wo)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.us, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br i1 %.not.i121.i.us.not, label %.split.us, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us
  %i.wp = getelementptr inbounds nuw i8, ptr %.066228.i.us, i64 8 ; 2 uses
  %.not69.i.us = icmp eq ptr %i.wp, %i.wd
  br i1 %.not69.i.us, label %..loopexit_crit_edge.i, label %_ZN4llvmeqENS_9StringRefES0_.exit124.i.us

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.wq = getelementptr inbounds nuw i8, ptr %.066228.i, i64 8 ; 2 uses
  %.not69.i = icmp eq ptr %i.wq, %i.wd
  br i1 %.not69.i, label %..loopexit_crit_edge.i, label %.lr.ph230.i.split

.lr.ph230.i.split:                                ; preds = %.lr.ph230.i, %bb.bv
  %.066228.i = phi ptr [ %i.wq, %bb.bv ], [ %i.vx, %.lr.ph230.i ] ; 2 uses
  %i.wr = load ptr, ptr %.066228.i, align 8, !tbaa !216 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !218
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 48
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(10) %i.wr) #20, !inline_history !199
  %i.wv = load ptr, ptr %25, align 8, !tbaa !24   ; 3 uses
  %i.ww = load i64, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %.not.i121.i.not = icmp eq i64 %i.ww, %.sroa.420.0.copyload.i.fr
  br i1 %.not.i121.i.not, label %bb.bw, label %_ZN4llvmeqENS_9StringRefES0_.exit124.i

bb.bw:                                            ; preds = %.lr.ph230.i.split
  %bcmp.i123.i = call i32 @bcmp(ptr %i.wv, ptr %.sroa.019.0.copyload.i, i64 %.sroa.420.0.copyload.i.fr)
  %i.wx = icmp eq i32 %bcmp.i123.i, 0
  br label %_ZN4llvmeqENS_9StringRefES0_.exit124.i

_ZN4llvmeqENS_9StringRefES0_.exit124.i:           ; preds = %bb.bw, %.lr.ph230.i.split
  %.0.i122.i = phi i1 [ %i.wx, %bb.bw ], [ false, %.lr.ph230.i.split ]
  %i.wy = icmp eq ptr %i.wv, %i.ao
  br i1 %i.wy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit124.i
  %i.wz = icmp ult i64 %i.ww, 16
  call void @llvm.assume(i1 %i.wz)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit124.i
  %i.xa = load i64, ptr %i.ao, align 8, !tbaa !31
  %i.xb = add i64 %i.xa, 1
  call void @_ZdlPvm(ptr noundef %i.wv, i64 noundef %i.xb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20
  br i1 %.0.i122.i, label %.split.us, label %bb.bv

.split.us:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20
  %i.xc = call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.vv, ptr nonnull @.str.15, i64 4) #20 ; 2 uses
  %i.xd = extractvalue { ptr, i64 } %i.xc, 0      ; 2 uses
  %i.xe = extractvalue { ptr, i64 } %i.xc, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !219)
  store ptr %i.ap, ptr %26, align 8, !tbaa !46, !alias.scope !219
  store i64 0, ptr %i.aq, align 8, !tbaa !23, !alias.scope !219
  store i8 0, ptr %i.ap, align 8, !tbaa !31, !alias.scope !219
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 %i.xe
  %.not18.i = icmp samesign eq i64 %i.xe, 0
  br i1 %.not18.i, label %_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %.split.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13.i
  %.019.i = phi ptr [ %i.yj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13.i ], [ %i.xd, %.split.us ] ; 2 uses
  %i.xg = load i8, ptr %.019.i, align 1, !tbaa !31, !noalias !219 ; 4 uses
  %35 = insertelement <4 x i8> poison, i8 %i.xg, i64 0
  %36 = shufflevector <4 x i8> %35, <4 x i8> poison, <4 x i32> zeroinitializer
  %37 = icmp eq <4 x i8> %36, <i8 96, i8 42, i8 124, i8 91>
  %i.xh = icmp eq i8 %i.xg, 93
  %i.xi = zext i1 %i.xh to i64
  %38 = bitcast <4 x i1> %37 to i4
  %39 = call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %38)
  %i.xj = zext nneg i4 %39 to i64
  %spec.select.i.4.i = add nuw nsw i64 %i.xj, %i.xi
  %i.xk = icmp eq i8 %i.xg, 92
  %i.xl = zext i1 %i.xk to i64
  %i.xm = or i64 %spec.select.i.4.i, %i.xl
  %.not8.i = icmp eq i64 %i.xm, 0
  %.pre20.i = load i64, ptr %i.aq, align 8, !tbaa !23, !alias.scope !219 ; 5 uses
  %.pre22.i = load ptr, ptr %26, align 8, !tbaa !24, !alias.scope !219 ; 3 uses
  br i1 %.not8.i, label %_ZNK4llvm9StringRef5countEc.exit.thread.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i24
  %i.xn = add i64 %.pre20.i, 1                    ; 3 uses
  %i.xo = icmp eq ptr %.pre22.i, %i.ap
  br i1 %i.xo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30: ; preds = %bb.bx
  %i.xp = icmp ult i64 %.pre20.i, 16
  call void @llvm.assume(i1 %i.xp)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25: ; preds = %bb.bx
  %i.xq = load i64, ptr %i.ap, align 8, !tbaa !31, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30
  %i.xr = phi i64 [ %i.xq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i25 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i30 ]
  %i.xs = icmp ugt i64 %i.xn, %i.xr
  br i1 %i.xs, label %bb.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.by:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %.pre20.i, i64 noundef 0, ptr noundef null, i64 noundef 1) #20
  %.pre.i.i29 = load ptr, ptr %26, align 8, !tbaa !24, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.xt = phi ptr [ %.pre.i.i29, %bb.by ], [ %.pre22.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 %.pre20.i
  store i8 92, ptr %i.xu, align 1, !tbaa !31
  store i64 %i.xn, ptr %i.aq, align 8, !tbaa !23, !alias.scope !219
  %i.xv = load ptr, ptr %26, align 8, !tbaa !24, !alias.scope !219
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xn
  store i8 0, ptr %i.xw, align 1, !tbaa !31
  %.pre.i26 = load i64, ptr %i.aq, align 8, !tbaa !23, !alias.scope !219
  %.pre21.i = load ptr, ptr %26, align 8, !tbaa !24, !alias.scope !219
  br label %_ZNK4llvm9StringRef5countEc.exit.thread.i

_ZNK4llvm9StringRef5countEc.exit.thread.i:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %.lr.ph.i24
  %i.xx = phi ptr [ %.pre21.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ], [ %.pre22.i, %.lr.ph.i24 ] ; 2 uses
  %i.xy = phi i64 [ %.pre.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i ], [ %.pre20.i, %.lr.ph.i24 ] ; 4 uses
  %i.xz = add i64 %i.xy, 1                        ; 3 uses
  %i.ya = icmp eq ptr %i.xx, %i.ap
  br i1 %i.ya, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.i: ; preds = %_ZNK4llvm9StringRef5countEc.exit.thread.i
  %i.yb = icmp ult i64 %i.xy, 16
  call void @llvm.assume(i1 %i.yb)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNK4llvm9StringRef5countEc.exit.thread.i
  %i.yc = load i64, ptr %i.ap, align 8, !tbaa !31, !alias.scope !219
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.i
  %i.yd = phi i64 [ %i.yc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12.i ]
  %i.ye = icmp ugt i64 %i.xz, %i.yd
  br i1 %i.ye, label %bb.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13.i

bb.bz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.xy, i64 noundef 0, ptr noundef null, i64 noundef 1) #20
  %.pre.i11.i = load ptr, ptr %26, align 8, !tbaa !24, !alias.scope !219
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13.i: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10.i
  %i.yf = phi ptr [ %.pre.i11.i, %bb.bz ], [ %i.xx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10.i ]
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.xy
  store i8 %i.xg, ptr %i.yg, align 1, !tbaa !31
  store i64 %i.xz, ptr %i.aq, align 8, !tbaa !23, !alias.scope !219
  %i.yh = load ptr, ptr %26, align 8, !tbaa !24, !alias.scope !219
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 %i.xz
  store i8 0, ptr %i.yi, align 1, !tbaa !31
  %i.yj = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %.not.i27 = icmp eq ptr %i.yj, %i.xf
  br i1 %.not.i27, label %_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE.exit, label %.lr.ph.i24

_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13.i, %.split.us
  %i.yk = load ptr, ptr %22, align 8, !tbaa !24   ; 6 uses
  %i.yl = icmp eq ptr %i.yk, %i.aj
  %i.ym = load ptr, ptr %26, align 8, !tbaa !24   ; 5 uses
  %i.yn = icmp eq ptr %i.ym, %i.ap                ; 2 uses
  %.pre383 = load i64, ptr %i.aq, align 8, !tbaa !23 ; 5 uses
  br i1 %i.yl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE.exit
  br i1 %i.yn, label %bb.ca, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE.exit
  br i1 %i.yn, label %bb.ca, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.ca:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.yo = icmp ult i64 %.pre383, 16
  call void @llvm.assume(i1 %i.yo)
  switch i64 %.pre383, label %bb.cc [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.cb
  ]

bb.cb:                                            ; preds = %bb.ca
  %i.yp = load i8, ptr %i.ym, align 1, !tbaa !31
  store i8 %i.yp, ptr %i.yk, align 1, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.cc:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.yk, ptr align 1 %i.ym, i64 %.pre383, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.cc, %bb.cb, %bb.ca
  %i.yq = load i64, ptr %i.aq, align 8, !tbaa !23 ; 2 uses
  store i64 %i.yq, ptr %i.ak, align 8, !tbaa !23
  %i.yr = load ptr, ptr %22, align 8, !tbaa !24
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 %i.yq
  store i8 0, ptr %i.ys, align 1, !tbaa !31
  %.pre.i.i = load ptr, ptr %26, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ym, ptr %22, align 8, !tbaa !24
  store i64 %.pre383, ptr %i.ak, align 8, !tbaa !23
  %i.yt = load i64, ptr %i.ap, align 8, !tbaa !31
  store i64 %i.yt, ptr %i.aj, align 8, !tbaa !31
  br label %bb.ce

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.yu = load i64, ptr %i.aj, align 8, !tbaa !31
  store ptr %i.ym, ptr %22, align 8, !tbaa !24
  store i64 %.pre383, ptr %i.ak, align 8, !tbaa !23
  %i.yv = load i64, ptr %i.ap, align 8, !tbaa !31
  store i64 %i.yv, ptr %i.aj, align 8, !tbaa !31
  %.not.i125.i = icmp eq ptr %i.yk, null
  br i1 %.not.i125.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.yk, ptr %26, align 8, !tbaa !24
  store i64 %i.yu, ptr %i.ap, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ap, ptr %26, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ce, %bb.cd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.yw = phi ptr [ %i.yk, %bb.cd ], [ %i.ap, %bb.ce ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.aq, align 8, !tbaa !23
  store i8 0, ptr %i.yw, align 1, !tbaa !31
  %i.yx = load ptr, ptr %26, align 8, !tbaa !24   ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.ap
  br i1 %i.yy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.yz = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.za = add i64 %i.yz, 1
  call void @_ZdlPvm(ptr noundef %i.yx, i64 noundef %i.za) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126.i
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %bb.bv, %bb.bu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i
  %i.zb = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.zc = icmp ne i64 %i.zb, 0
  %i.zd = getelementptr inbounds nuw i8, ptr %.sroa.0185.0232.i, i64 16 ; 2 uses
  %.not224.i = icmp eq ptr %i.zd, %i.wb
  %or.cond.i = select i1 %i.zc, i1 true, i1 %.not224.i
  br i1 %or.cond.i, label %._crit_edge235.loopexit241.i, label %.lr.ph230.i

._crit_edge235.loopexit241.i:                     ; preds = %..loopexit_crit_edge.i
  %.pre.i = load ptr, ptr %24, align 8, !tbaa !141
  br label %._crit_edge235.i

._crit_edge235.i:                                 ; preds = %._crit_edge235.loopexit241.i, %.lr.ph234.i, %.lr.ph239.i
  %i.ze = phi ptr [ %.pre.i, %._crit_edge235.loopexit241.i ], [ %i.wa, %.lr.ph239.i ], [ %i.wa, %.lr.ph234.i ] ; 3 uses
  %.not.i.i.i129.i = icmp eq ptr %i.ze, null
  br i1 %.not.i.i.i129.i, label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit.i, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge235.i
  %i.zf = load ptr, ptr %i.ar, align 8, !tbaa !142
  %i.zg = ptrtoint ptr %i.zf to i64
  %i.zh = ptrtoint ptr %i.ze to i64
  %i.zi = sub i64 %i.zg, %i.zh
  call void @_ZdlPvm(ptr noundef nonnull %i.ze, i64 noundef %i.zi) #22
  br label %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit.i: ; preds = %bb.cf, %._crit_edge235.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20
  %i.zj = load i64, ptr %i.ak, align 8, !tbaa !23
  %i.zk = icmp ne i64 %i.zj, 0
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0195.0238.i, i64 8 ; 2 uses
  %.not223.i = icmp eq ptr %i.zl, %i.vu
  %or.cond318.i = select i1 %i.zk, i1 true, i1 %.not223.i
  br i1 %or.cond318.i, label %._crit_edge240.loopexit.i, label %.lr.ph239.i

._crit_edge240.loopexit.i:                        ; preds = %_ZNSt6vectorIN4llvm9StringRefESaIS1_EED2Ev.exit.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_117emitDocumentationEiRKNS_13DocumentationEPKN4llvm6RecordERNS3_11raw_ostreamE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140: ; preds = %_ZN12_GLOBAL__N_111emitHeadingEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN4llvm11raw_ostreamE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  %i.agb = load ptr, ptr %i.aev, align 8, !tbaa !160
  call fastcc void @_ZN12_GLOBAL__N_128getRSTStringWithTextFallbackB5cxx11EPKN4llvm6RecordENS0_9StringRefES4_(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef %i.agb, ptr nonnull @.str.16, i64 8, ptr nonnull @.str.17, i64 8), !inline_history !210
  %i.agc = load i64, ptr %i.by, align 8, !tbaa !23 ; 2 uses
  %i.agd = icmp eq i64 %i.agc, 0
  br i1 %i.agd, label %_ZN12_GLOBAL__N_19emitGroupEiRKNS_15DocumentedGroupEPKN4llvm6RecordERNS3_11raw_ostreamE.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  %i.age = load ptr, ptr %18, align 8, !tbaa !24
  %i.agf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %i.age, i64 noundef %i.agc) #20 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 24
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !37
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agf, i64 32 ; 3 uses
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !38 ; 2 uses
  %i.agk = ptrtoint ptr %i.agh to i64
  %i.agl = ptrtoint ptr %i.agj to i64
  %i.agm = sub i64 %i.agk, %i.agl
  %i.agn = icmp ult i64 %i.agm, 2
  br i1 %i.agn, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.ago = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.agf, ptr noundef nonnull @.str.11, i64 noundef 2) #20 ; 0 uses
  br label %_ZN12_GLOBAL__N_19emitGroupEiRKNS_15DocumentedGroupEPKN4llvm6RecordERNS3_11raw_ostreamE.exit

bb.dn:                                            ; preds = %bb.dl
  store i16 2570, ptr %i.agj, align 1
  %i.agp = load ptr, ptr %i.agi, align 8, !tbaa !38
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agp, i64 2
  store ptr %i.agq, ptr %i.agi, align 8, !tbaa !38
  br label %_ZN12_GLOBAL__N_19emitGroupEiRKNS_15DocumentedGroupEPKN4llvm6RecordERNS3_11raw_ostreamE.exit

_ZN12_GLOBAL__N_19emitGroupEiRKNS_15DocumentedGroupEPKN4llvm6RecordERNS3_11raw_ostreamE.exit: ; preds = %bb.dn, %bb.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140
  call fastcc void @_ZN12_GLOBAL__N_117emitDocumentationEiRKNS_13DocumentationEPKN4llvm6RecordERNS3_11raw_ostreamE(i32 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.0308.0361, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %3), !inline_history !210
  %i.agr = load ptr, ptr %18, align 8, !tbaa !24  ; 2 uses
  %i.ags = icmp eq ptr %i.agr, %i.ca
  br i1 %i.ags, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %_ZN12_GLOBAL__N_19emitGroupEiRKNS_15DocumentedGroupEPKN4llvm6RecordERNS3_11raw_ostreamE.exit
  %i.agt = load i64, ptr %i.ca, align 8, !tbaa !31
  %i.agu = add i64 %i.agt, 1
  call void @_ZdlPvm(ptr noundef %i.agr, i64 noundef %i.agu) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_19emitGroupEiRKNS_15DocumentedGroupEPKN4llvm6RecordERNS3_11raw_ostreamE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.agv = getelementptr inbounds nuw i8, ptr %.sroa.0308.0361, i64 56 ; 2 uses
  %.not342 = icmp eq ptr %i.agv, %.val12
  br i1 %.not342, label %._crit_edge364, label %bb.dg
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef ptr @_ZNK4llvm6Record13getValueAsDefENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::tuple.115", align 8    ; 4 uses
  %3 = alloca %"class.std::tuple.118", align 1    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23   ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !18 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, label %bb.b, !llvm.loop !4

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #20 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store ptr %1, ptr %2, align 8, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

declare void @_ZNK4llvm6Record20getValueAsListOfDefsENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::vector.73") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

declare noundef ptr @_ZNK4llvm6Record18getValueAsListInitENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

declare void @_ZNK4llvm6Record23getValueAsListOfStringsENS_9StringRefE(ptr dead_on_unwind writable sret(%"class.std::vector.94") align 8, ptr noundef nonnull align 8 dereferenceable(192), ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_19escapeRSTB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree readonly captures(address) %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %.not18 = icmp samesign eq i64 %2, 0
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13
  %.019 = phi ptr [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13 ], [ %1, %bb.a ] ; 2 uses
  %i.d = load i8, ptr %.019, align 1, !tbaa !31   ; 4 uses
  %3 = insertelement <4 x i8> poison, i8 %i.d, i64 0
  %4 = shufflevector <4 x i8> %3, <4 x i8> poison, <4 x i32> zeroinitializer
  %5 = icmp eq <4 x i8> %4, <i8 96, i8 42, i8 124, i8 91>
  %i.e = icmp eq i8 %i.d, 93
  %i.f = zext i1 %i.e to i64
  %6 = bitcast <4 x i1> %5 to i4
  %7 = tail call range(i4 0, 5) i4 @llvm.ctpop.i4(i4 %6)
  %i.g = zext nneg i4 %7 to i64
  %spec.select.i.4 = add nuw nsw i64 %i.g, %i.f
  %i.h = icmp eq i8 %i.d, 92
  %i.i = zext i1 %i.h to i64
  %i.j = or i64 %spec.select.i.4, %i.i
  %.not8 = icmp eq i64 %i.j, 0
  %.pre20 = load i64, ptr %i.b, align 8, !tbaa !23 ; 5 uses
  %.pre22 = load ptr, ptr %0, align 8, !tbaa !24  ; 3 uses
  br i1 %.not8, label %_ZNK4llvm9StringRef5countEc.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = add i64 %.pre20, 1                       ; 3 uses
  %i.l = icmp eq ptr %.pre22, %i.a
  br i1 %i.l, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b
  %i.m = icmp ult i64 %.pre20, 16
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.n = load i64, ptr %i.a, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.o = phi i64 [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.p = icmp ugt i64 %i.k, %i.o
  br i1 %i.p, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre20, i64 noundef 0, ptr noundef null, i64 noundef 1) #20
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i, %bb.c
  %i.q = phi ptr [ %.pre.i, %bb.c ], [ %.pre22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.pre20
  store i8 92, ptr %i.r, align 1, !tbaa !31
  store i64 %i.k, ptr %i.b, align 8, !tbaa !23
  %i.s = load ptr, ptr %0, align 8, !tbaa !24
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  store i8 0, ptr %i.t, align 1, !tbaa !31
  %.pre = load i64, ptr %i.b, align 8, !tbaa !23
  %.pre21 = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZNK4llvm9StringRef5countEc.exit.thread

_ZNK4llvm9StringRef5countEc.exit.thread:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit, %.lr.ph
  %i.u = phi ptr [ %.pre21, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.pre22, %.lr.ph ] ; 2 uses
  %i.v = phi i64 [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit ], [ %.pre20, %.lr.ph ] ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = icmp eq ptr %i.u, %i.a
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12: ; preds = %_ZNK4llvm9StringRef5countEc.exit.thread
  %i.y = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.y)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNK4llvm9StringRef5countEc.exit.thread
  %i.z = load i64, ptr %i.a, align 8, !tbaa !31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12
  %i.aa = phi i64 [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i12 ]
  %i.ab = icmp ugt i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1) #20
  %.pre.i11 = load ptr, ptr %0, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10, %bb.d
  %i.ac = phi ptr [ %.pre.i11, %bb.d ], [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i10 ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.v
  store i8 %i.d, ptr %i.ad, align 1, !tbaa !31
  store i64 %i.w, ptr %i.b, align 8, !tbaa !23
  %i.ae = load ptr, ptr %0, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  store i8 0, ptr %i.af, align 1, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %.019, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit13, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_128getRSTStringWithTextFallbackB5cxx11EPKN4llvm6RecordENS0_9StringRefES4_(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly captures(none) %1, ptr %2, i64 %3, ptr %4, i64 %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !84, !nonnull !85, !align !86
  %i.f = tail call noundef ptr @_ZN4llvm10StringInit3getERNS_12RecordKeeperENS_9StringRefENS0_12StringFormatE(ptr noundef nonnull align 8 dereferenceable(240) %i.e, ptr %2, i64 %3, i32 noundef 0) #20
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !87   ; 2 uses
  %i.h = load i32, ptr %i.d, align 8, !tbaa !88   ; 2 uses
  %i.i = zext i32 %i.h to i64
  %.idx.i.i = mul nuw nsw i64 %i.i, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %.not18.i.i = icmp eq i32 %i.h, 0
  br i1 %.not18.i.i, label %.critedge34, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.01219.i.i = phi ptr [ %i.l, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.k = load ptr, ptr %.01219.i.i, align 8, !tbaa !93
  %.not15.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not15.i.i, label %_ZNK4llvm6Record8getValueENS_9StringRefE.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.01219.i.i, i64 56 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i, label %.critedge34, label %.lr.ph.i.i

_ZNK4llvm6Record8getValueENS_9StringRefE.exit:    ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01219.i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !226  ; 4 uses
  %.not.i.i35 = icmp eq ptr %i.n, null
  br i1 %.not.i.i35, label %.critedge34, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm6Record8getValueENS_9StringRefE.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !96
  %i.q = icmp eq i8 %i.p, 20
  br i1 %i.q, label %bb.d, label %.critedge34

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !47 ; 2 uses
  %i.r = icmp eq i64 %.sroa.2.0.copyload.i, 0
  br i1 %i.r, label %.critedge34, label %.thread

.thread:                                          ; preds = %bb.d
  %.sroa.0.0.copyload.i.lcssa.in66 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.lcssa67 = load ptr, ptr %.sroa.0.0.copyload.i.lcssa.in66, align 8, !tbaa !137
  br label %bb.f

bb.e:                                             ; preds = %bb.m
  %.sroa.0.0.copyload.i.lcssa.in = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %.sroa.0.0.copyload.i.lcssa = load ptr, ptr %.sroa.0.0.copyload.i.lcssa.in, align 8, !tbaa !137 ; 2 uses
  %.not.i = icmp eq i64 %5, %3
  br i1 %.not.i, label %bb.f, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread50

bb.f:                                             ; preds = %.thread, %bb.e
  %.sroa.0.0.copyload.i.lcssa72 = phi ptr [ %.sroa.0.0.copyload.i.lcssa67, %.thread ], [ %.sroa.0.0.copyload.i.lcssa, %bb.e ] ; 4 uses
  %.sroa.2.0.copyload.i.lcssa70 = phi i64 [ %.sroa.2.0.copyload.i, %.thread ], [ %.sroa.2.0.copyload.i.1, %bb.e ] ; 5 uses
  %.sroa.013.0.copyload.lcssa69 = phi ptr [ %2, %.thread ], [ %4, %bb.e ]
  %i.s = icmp eq i64 %3, 0
  br i1 %i.s, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.f
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.013.0.copyload.lcssa69, ptr %2, i64 %3)
  %i.t = icmp eq i32 %bcmp.i, 0
  br i1 %i.t, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread50

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.f, %_ZN4llvmeqENS_9StringRefES0_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %.not.i36 = icmp eq ptr %.sroa.0.0.copyload.i.lcssa72, null
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !46, !alias.scope !227
  br i1 %.not.i36, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.v, align 8, !tbaa !23, !alias.scope !227
  store i8 0, ptr %i.u, align 8, !tbaa !31, !alias.scope !227
  br label %_ZNK4llvm9StringRef3strB5cxx11Ev.exit.thread

bb.h:                                             ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20, !noalias !227
  store i64 %.sroa.2.0.copyload.i.lcssa70, ptr %i.a, align 8, !tbaa !47, !noalias !227
  %i.w = icmp ugt i64 %.sroa.2.0.copyload.i.lcssa70, 15
  br i1 %i.w, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %bb.h
  %i.x = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !24, !alias.scope !227
  %i.y = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !227
  store i64 %i.y, ptr %i.u, align 8, !tbaa !31, !alias.scope !227
  br label %bb.j

._crit_edge.i.i.i:                                ; preds = %bb.h
  %cond = icmp eq i64 %.sroa.2.0.copyload.i.lcssa70, 1
  br i1 %cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %.sroa.0.0.copyload.i.lcssa72, align 1, !tbaa !31
  store i8 %i.z, ptr %i.u, align 8, !tbaa !31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.aa = phi ptr [ %i.x, %._crit_edge.i.i.i.thread ], [ %i.u, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aa, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.copyload.i.lcssa72, i64 %.sroa.2.0.copyload.i.lcssa70, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_.exit.i: ; preds = %bb.j, %bb.i
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !47, !noalias !227 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !23, !alias.scope !227
  %i.ad = load ptr, ptr %0, align 8, !tbaa !24, !alias.scope !227
end_hunk_1
begin_hunk_2_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_SJ_T0_":bb.a
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.g ] ; 2 uses
  %i.c = load ptr, ptr %.sroa.0.022, align 8, !tbaa !27
  %i.d = load ptr, ptr %0, align 8, !tbaa !27
  %i.e = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.c, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.f = extractvalue { ptr, i64 } %i.e, 1        ; 2 uses
  %i.g = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 1        ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.i, label %.thread.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.j = extractvalue { ptr, i64 } %i.g, 0
  %i.k = extractvalue { ptr, i64 } %i.e, 0
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i.i) #19
  %.fr.i.i.i.i = freeze i32 %i.l                  ; 2 uses
  %.not.not.i.i.i.i = icmp eq i32 %.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i, label %.thread.i.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit"

.thread.i.i.i.i:                                  ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.m = icmp ult i64 %i.f, %i.h
  br i1 %i.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread17", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i
  %i.n = icmp slt i32 %.fr.i.i.i.i, 0
  br i1 %i.n, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread17", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread17": ; preds = %.thread.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit"
  %i.o = load ptr, ptr %.sroa.0.022, align 8, !tbaa !27
  %i.p = ptrtoint ptr %.sroa.0.022 to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.c, label %bb.d, !prof !164

bb.c:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread17"
  %i.t = getelementptr inbounds nuw i8, ptr %.pn21, i64 16
  %i.u = sub nsw i64 0, %i.r
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.q, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread17"
  %i.w = icmp eq i64 %i.q, 8
  br i1 %i.w, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %.pn21, i64 8
  %i.y = load ptr, ptr %0, align 8, !tbaa !27
  store ptr %i.y, ptr %i.x, align 8, !tbaa !27
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.c, %bb.d, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !27
  br label %bb.g

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread": ; preds = %.thread.i.i.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit"
  %i.z = load ptr, ptr %.sroa.0.022, align 8, !tbaa !27 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i", %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread"
  %.sroa.03.0.i = phi ptr [ %.sroa.0.022, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclINS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEESI_EEbT_T0_.exit.thread" ], [ %.sroa.0.0.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i" ] ; 3 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.03.0.i, i64 -8 ; 3 uses
  %i.aa = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !27
  %i.ab = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.z, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1      ; 2 uses
  %i.ad = tail call { ptr, i64 } @_ZNK4llvm6Record16getValueAsStringENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(192) %i.aa, ptr nonnull @.str.26, i64 4) #20 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.ac) ; 2 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.af, label %.thread.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ag = extractvalue { ptr, i64 } %i.ad, 0
  %i.ah = extractvalue { ptr, i64 } %i.ab, 0
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i) #19
  %.fr.i.i.i.i.i = freeze i32 %i.ai               ; 2 uses
  %.not.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i, label %.thread.i.i.i.i.i, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"

.thread.i.i.i.i.i:                                ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i, %bb.f
  %i.aj = icmp ult i64 %i.ac, %i.ae
  br i1 %i.aj, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i": ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i
  %i.ak = icmp slt i32 %.fr.i.i.i.i.i, 0
  br i1 %i.ak, label %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i", label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit"

"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.thread7.i": ; preds = %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i", %.thread.i.i.i.i.i
  %i.al = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !27
  store ptr %i.al, ptr %.sroa.03.0.i, align 8, !tbaa !27
  br label %bb.f, !llvm.loop !7

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit": ; preds = %.thread.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS3_6RecordEE3$_1EclIS9_NS_17__normal_iteratorIPS9_St6vectorIS9_SaIS9_EEEEEEbRT_T0_.exit.i"
  store ptr %i.z, ptr %.sroa.03.0.i, align 8, !tbaa !27
  br label %bb.g

bb.g:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN4llvm6RecordESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZN12_GLOBAL__N_120extractDocumentationERKNS2_12RecordKeeperES5_E3$_1EEEvT_T0_.exit"
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !358

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE8_M_eraseEPSt13_Rb_tree_nodeISC_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !31
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #22
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !359

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKN4llvm6RecordEESt10_Select1stISC_ESt4lessIS5_ESaISC_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISC_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161
  tail call void @_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !111
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #22
  br label %_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !360

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIPKN4llvm6RecordESt4pairIKS3_St6vectorIS3_SaIS3_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #18

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!15}

!0 = distinct !{!0, !25}
!1 = distinct !{null}
!2 = distinct !{!2, !25}
!3 = distinct !{null, null}
!4 = distinct !{!4, !25}
!5 = distinct !{!5, !25}
!6 = distinct !{!6, !25}
!7 = distinct !{!7, !25}
!8 = !{i32 8, !"PIC Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!"__libc_errno", !13, i64 0}
!15 = !{!14, !13, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !16, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 omnipotent char", !16, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"long", !12, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !12, i64 16}
!23 = !{!22, !21, i64 8}
!24 = !{!22, !19, i64 0}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"p1 _ZTSN4llvm6RecordE", !16, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"_ZTSN4llvm5Twine8NodeKindE", !12, i64 0}
!29 = !{!"_ZTSN4llvm5TwineE", !12, i64 0, !12, i64 16, !28, i64 32, !28, i64 33}
!30 = !{!29, !28, i64 33}
!31 = !{!12, !12, i64 0}
!32 = !{!29, !28, i64 32}
!33 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !12, i64 0}
!34 = !{!"bool", !12, i64 0}
!35 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !12, i64 0}
!36 = !{!"_ZTSN4llvm11raw_ostreamE", !33, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !34, i64 40, !35, i64 44}
!37 = !{!36, !19, i64 24}
!38 = !{!36, !19, i64 32}
!39 = !{!"_ZTSSt14_Rb_tree_color", !12, i64 0}
!40 = !{!"_ZTSSt18_Rb_tree_node_base", !39, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!41 = !{!"_ZTSSt15_Rb_tree_header", !40, i64 0, !21, i64 32}
!42 = !{!41, !39, i64 0}
!43 = !{!41, !17, i64 8}
!44 = !{!41, !17, i64 16}
!45 = !{!41, !21, i64 32}
!46 = !{!20, !19, i64 0}
!47 = !{!21, !21, i64 0}
!48 = !{!"p1 _ZTSN4llvm4InitE", !16, i64 0}
!49 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !16, i64 0, !13, i64 8, !13, i64 12}
!50 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_5SMLocEvEE", !49, i64 0}
!51 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_5SMLocELb1EEE", !50, i64 0}
!52 = !{!"_ZTSN4llvm15SmallVectorImplINS_5SMLocEEE", !51, i64 0}
!53 = !{!"_ZTSN4llvm18SmallVectorStorageINS_5SMLocELj4EEE", !12, i64 0}
!54 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj4EEE", !52, i64 0, !53, i64 16}
!55 = !{!"_ZTSN4llvm11SmallVectorINS_5SMLocELj0EEE", !52, i64 0}
!56 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_7SMRangeEvEE", !49, i64 0}
!57 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_7SMRangeELb1EEE", !56, i64 0}
!58 = !{!"_ZTSN4llvm15SmallVectorImplINS_7SMRangeEEE", !57, i64 0}
!59 = !{!"_ZTSN4llvm11SmallVectorINS_7SMRangeELj0EEE", !58, i64 0}
!60 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonIPKNS_4InitEvEE", !49, i64 0}
!61 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseIPKNS_4InitELb1EEE", !60, i64 0}
!62 = !{!"_ZTSN4llvm15SmallVectorImplIPKNS_4InitEEE", !61, i64 0}
!63 = !{!"_ZTSN4llvm11SmallVectorIPKNS_4InitELj0EEE", !62, i64 0}
!64 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_9RecordValEvEE", !49, i64 0}
!65 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_9RecordValELb0EEE", !64, i64 0}
!66 = !{!"_ZTSN4llvm15SmallVectorImplINS_9RecordValEEE", !65, i64 0}
!67 = !{!"_ZTSN4llvm11SmallVectorINS_9RecordValELj0EEE", !66, i64 0}
!68 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record13AssertionInfoEvEE", !49, i64 0}
!69 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record13AssertionInfoELb1EEE", !68, i64 0}
!70 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record13AssertionInfoEEE", !69, i64 0}
!71 = !{!"_ZTSN4llvm11SmallVectorINS_6Record13AssertionInfoELj0EEE", !70, i64 0}
!72 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_6Record8DumpInfoEvEE", !49, i64 0}
!73 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_6Record8DumpInfoELb1EEE", !72, i64 0}
!74 = !{!"_ZTSN4llvm15SmallVectorImplINS_6Record8DumpInfoEEE", !73, i64 0}
!75 = !{!"_ZTSN4llvm11SmallVectorINS_6Record8DumpInfoELj0EEE", !74, i64 0}
!76 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonISt4pairIPKNS_6RecordENS_7SMRangeEEvEE", !49, i64 0}
!77 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_6RecordENS_7SMRangeEELb1EEE", !76, i64 0}
!78 = !{!"_ZTSN4llvm15SmallVectorImplISt4pairIPKNS_6RecordENS_7SMRangeEEEE", !77, i64 0}
!79 = !{!"_ZTSN4llvm11SmallVectorISt4pairIPKNS_6RecordENS_7SMRangeEELj0EEE", !78, i64 0}
!80 = !{!"p1 _ZTSN4llvm12RecordKeeperE", !16, i64 0}
!81 = !{!"p1 _ZTSN4llvm7DefInitE", !16, i64 0}
!82 = !{!"_ZTSN4llvm6Record10RecordKindE", !12, i64 0}
!83 = !{!"_ZTSN4llvm6RecordE", !48, i64 0, !54, i64 8, !55, i64 56, !59, i64 72, !63, i64 88, !67, i64 104, !71, i64 120, !75, i64 136, !79, i64 152, !80, i64 168, !81, i64 176, !13, i64 184, !82, i64 188}
!84 = !{!83, !80, i64 168}
!85 = !{}
!86 = !{i64 8}
!87 = !{!49, !16, i64 0}
!88 = !{!49, !13, i64 8}
!89 = !{!"_ZTSN4llvm5SMLocE", !19, i64 0}
!90 = !{!"_ZTSN4llvm6detail13PunnedPointerIPKNS_5RecTyEEE", !12, i64 0}
!91 = !{!"_ZTSN4llvm14PointerIntPairIPKNS_5RecTyELj2ENS_9RecordVal9FieldKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj2ES7_EEEE", !90, i64 0}
!92 = !{!"_ZTSN4llvm9RecordValE", !48, i64 0, !89, i64 8, !91, i64 16, !48, i64 24, !34, i64 32, !59, i64 40}
!93 = !{!92, !48, i64 0}
!94 = !{!"_ZTSN4llvm4Init8InitKindE", !12, i64 0}
!95 = !{!"_ZTSN4llvm4InitE", !94, i64 8, !12, i64 9}
!96 = !{!95, !94, i64 8}
!97 = !{!"p1 _ZTSN4llvm5RecTyE", !16, i64 0}
!98 = !{!"_ZTSN4llvm9TypedInitE", !95, i64 0, !97, i64 16}
!99 = !{!"_ZTSN4llvm7DefInitE", !98, i64 0, !26, i64 24}
!100 = !{!99, !26, i64 24}
!101 = !{!"any p2 pointer", !16, i64 0}
!102 = !{!"p2 _ZTSN4llvm6RecordE", !101, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE17_Vector_impl_dataE", !102, i64 0, !102, i64 8, !102, i64 16}
!104 = !{!"_ZTSNSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE12_Vector_implE", !103, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseIPKN4llvm6RecordESaIS3_EE", !104, i64 0}
!106 = !{!"_ZTSSt6vectorIPKN4llvm6RecordESaIS3_EE", !105, i64 0}
!107 = !{!"_ZTSSt4pairIKPKN4llvm6RecordESt6vectorIS3_SaIS3_EEE", !26, i64 0, !106, i64 8}
!108 = !{!107, !26, i64 0}
!109 = !{!102, !102, i64 0}
!110 = !{!103, !102, i64 8}
!111 = !{!103, !102, i64 16}
!112 = !{!103, !102, i64 0}
!113 = !{!"p1 _ZTSSt3mapIPKN4llvm6RecordESt6vectorIS3_SaIS3_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE", !16, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{!16, !16, i64 0}
!116 = !{!"p1 _ZTSSt8functionIFN12_GLOBAL__N_113DocumentationEPKN4llvm6RecordEEE", !16, i64 0}
!117 = !{!116, !116, i64 0}
!118 = !{!"_ZTSSt14_Function_base", !12, i64 0, !16, i64 16}
!119 = !{!"_ZTSSt8functionIFN12_GLOBAL__N_113DocumentationEPKN4llvm6RecordEEE", !118, i64 0, !16, i64 24}
!120 = !{!119, !16, i64 24}
!121 = !{!118, !16, i64 16}
!122 = !{!"p1 _ZTSN12_GLOBAL__N_116DocumentedOptionE", !16, i64 0}
!123 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE17_Vector_impl_dataE", !122, i64 0, !122, i64 8, !122, i64 16}
!124 = !{!123, !122, i64 0}
!125 = !{!123, !122, i64 8}
!126 = !{!123, !122, i64 16}
!127 = !{!"p1 _ZTSN12_GLOBAL__N_115DocumentedGroupE", !16, i64 0}
!128 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!129 = !{!128, !127, i64 0}
!130 = !{!128, !127, i64 8}
!131 = !{!128, !127, i64 16}
!132 = !{!122, !122, i64 0}
!133 = !{!127, !127, i64 0}
!134 = !{!"_ZTSN12_GLOBAL__N_116DocumentedOptionE", !26, i64 0, !106, i64 8}
!135 = !{!134, !26, i64 0}
!136 = !{!83, !48, i64 0}
!137 = !{!19, !19, i64 0}
!138 = !{!"p1 _ZTSN4llvm9StringRefE", !16, i64 0}
!139 = !{!138, !138, i64 0}
!140 = !{!"_ZTSNSt12_Vector_baseIN4llvm9StringRefESaIS1_EE17_Vector_impl_dataE", !138, i64 0, !138, i64 8, !138, i64 16}
!141 = !{!140, !138, i64 0}
!142 = !{!140, !138, i64 16}
!143 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiE", !22, i64 0, !13, i64 32}
!146 = !{!145, !13, i64 32}
!147 = !{!34, !34, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !143, i64 0, !143, i64 8, !143, i64 16}
!149 = !{!148, !143, i64 0}
!150 = !{!148, !143, i64 8}
!151 = !{!148, !143, i64 16}
!152 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EE12_Vector_implE", !128, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_115DocumentedGroupESaIS1_EE", !152, i64 0}
!154 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_115DocumentedGroupESaIS1_EE", !153, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE12_Vector_implE", !123, i64 0}
!156 = !{!"_ZTSSt12_Vector_baseIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE", !155, i64 0}
!157 = !{!"_ZTSSt6vectorIN12_GLOBAL__N_116DocumentedOptionESaIS1_EE", !156, i64 0}
!158 = !{!"_ZTSN12_GLOBAL__N_113DocumentationE", !154, i64 0, !157, i64 24}
!159 = !{!"_ZTSN12_GLOBAL__N_115DocumentedGroupE", !158, i64 0, !26, i64 48}
!160 = !{!159, !26, i64 48}
!161 = !{!40, !17, i64 24}
!162 = !{!40, !17, i64 16}
!163 = !{!89, !19, i64 0}
!164 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!165 = distinct !{!165, !25}
!166 = distinct !{!166, !"_ZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS0_6RecordE"}
!167 = distinct !{!167, !166, !"_ZN12_GLOBAL__N_120extractDocumentationERKN4llvm12RecordKeeperEPKNS0_6RecordE: argument 0"}
!168 = distinct !{!168, !"_ZNKSt8functionIFN12_GLOBAL__N_113DocumentationEPKN4llvm6RecordEEEclES5_"}
!169 = distinct !{!169, !168, !"_ZNKSt8functionIFN12_GLOBAL__N_113DocumentationEPKN4llvm6RecordEEEclES5_: argument 0"}
!170 = distinct !{null}
end_hunk_2
