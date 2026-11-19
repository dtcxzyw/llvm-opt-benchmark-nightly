Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/deepidselect?download=true
inline.NumInlined: 1091
inline.NumDeleted: 619
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  %.not534 = icmp eq ptr %.sroa.0446.0, %i.en
  br i1 %.not534, label %bb.be, label %bb.bg

bb.be:                                            ; preds = %bb.bd
  %i.eo = invoke noundef zeroext i1 @_ZN7Imf_3_413hasIDManifestERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.ea)
          to label %bb.bq unwind label %.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.ba, %bb.au, %bb.az, %bb.bb
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.fu

bb.bg:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0446.0, i64 32 ; 4 uses
  store ptr %i.df, ptr %8, align 8, !tbaa !42
  %i.er = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eq) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.er, ptr %i.a, align 8, !tbaa !43
  %i.es = icmp ugt i64 %i.er, 15
  br i1 %i.es, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bg
  %i.et = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc250 unwind label %bb.bo ; 2 uses

.noexc250:                                        ; preds = %.noexc.i
  store ptr %i.et, ptr %8, align 8, !tbaa !32
  %i.eu = load i64, ptr %i.a, align 8, !tbaa !43
  store i64 %i.eu, ptr %i.df, align 8, !tbaa !13
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc250, %bb.bg
  %i.ev = phi ptr [ %i.et, %.noexc250 ], [ %i.df, %bb.bg ] ; 2 uses
  switch i64 %i.er, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !13
  store i8 %i.ew, ptr %i.ev, align 1, !tbaa !13
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ev, ptr nonnull align 1 %i.eq, i64 %i.er, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i
  %i.ex = load i64, ptr %i.a, align 8, !tbaa !43  ; 2 uses
  store i64 %i.ex, ptr %i.dg, align 8, !tbaa !31
  %i.ey = load ptr, ptr %8, align 8, !tbaa !32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ex
  store i8 0, ptr %i.ez, align 1, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.fa = load ptr, ptr %i.db, align 8, !tbaa !39 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.fa, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bj
  %i.fb = load i64, ptr %i.dg, align 8, !tbaa !31 ; 4 uses
  %i.fc = load ptr, ptr %8, align 8               ; 3 uses
  br label %bb.bk

bb.bk:                                            ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.fa, %.lr.ph.i.i.i.i ], [ %.1.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 6 uses
  %.0811.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !31 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fb, i64 %i.fe) ; 2 uses
  %i.ff = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ff, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.bk
  %i.fg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !32
  %i.fi = call i32 @memcmp(ptr noundef %i.fh, ptr noundef %i.fc, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.bk
  %i.fj = sub i64 %i.fe, %i.fb
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.fj, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.fi, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.fk = icmp slt i32 %.0.i.i.i.i.i.i.i, 0       ; 4 uses
  %.19.i.i.i.i = select i1 %i.fk, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.fk, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !44 ; 2 uses
  %.not.i.i.i.i251 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i251, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i, label %bb.bk, !llvm.loop !85

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i.i
  %i.fl = icmp eq ptr %.19.i.i.i.i, %i.da
  br i1 %i.fl, label %.critedge.i, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.fk, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.fm = load i64, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !31 ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.fm, i64 %i.fb) ; 2 uses
  %i.fn = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.fn, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.bl
  %.19.i.i.i.i.sroa.sel453.v.sroa.sel.v.sroa.sel.v = select i1 %i.fk, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel453.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel453.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.fo = load ptr, ptr %.19.i.i.i.i.sroa.sel453.v.sroa.sel.v.sroa.sel, align 8, !tbaa !32
  %i.fp = call i32 @memcmp(ptr noundef %i.fc, ptr noundef %i.fo, i64 noundef %.sroa.speculated.i.i.i.i) #24 ; 2 uses
  %.not.i.i.i4.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i.i4.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.bl
  %i.fq = sub i64 %i.fb, %i.fm
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.fq, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.fp, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.fr = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.fr, label %.critedge.i, label %bb.bm

.critedge.i:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i, %bb.bj
  %.08.lcssa.i.i.i12.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ], [ %.19.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessIS5_ESaISt4pairIKS5_iEEE11lower_boundERS9_.exit.i ], [ %i.da, %bb.bj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %8, ptr %2, align 8, !tbaa !46, !alias.scope !112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.fs = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr %.08.lcssa.i.i.i12.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc252 unwind label %bb.bp

.noexc252:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %.pre = load ptr, ptr %8, align 8, !tbaa !32
  br label %bb.bm

bb.bm:                                            ; preds = %.noexc252, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i
  %i.ft = phi ptr [ %.pre, %.noexc252 ], [ %i.fc, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ] ; 2 uses
  %.sroa.07.0.i = phi ptr [ %i.fs, %.noexc252 ], [ %.19.i.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i, i64 64
  store i32 %.0156, ptr %i.fu, align 4, !tbaa !34
  %i.fv = icmp eq ptr %i.ft, %i.df
  br i1 %i.fv, label %sub_0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bm
  %i.fw = load i64, ptr %i.df, align 8, !tbaa !13
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #27
  br label %sub_0

sub_0:                                            ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.fy = load i8, ptr %i.eq, align 1
  %.not1030 = icmp eq i8 %i.fy, 65
  br i1 %.not1030, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0446.0, i64 33
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = icmp eq i8 %i.ga, 0
  br i1 %i.gb, label %bb.bn, label %.tail.thread

bb.bn:                                            ; preds = %.tail
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0446.0, i64 288
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !116
  br label %.tail.thread

bb.bo:                                            ; preds = %.noexc.i
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

bb.bp:                                            ; preds = %.critedge.i
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %8, align 8, !tbaa !32    ; 2 uses
  %i.gh = icmp eq ptr %i.gg, %i.df
  br i1 %i.gh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253: ; preds = %bb.bp
  %i.gi = load i64, ptr %i.df, align 8, !tbaa !13
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit255: ; preds = %bb.bp, %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253
  %.pn226.pn = phi { ptr, i32 } [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i253 ], [ %i.ge, %bb.bo ], [ %i.gf, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.fs

.tail.thread:                                     ; preds = %sub_0, %bb.bn, %.tail
  %.1160 = phi i32 [ %.0156, %bb.bn ], [ %.0159, %.tail ], [ %.0159, %sub_0 ]
  %.1158 = phi i32 [ %i.gd, %bb.bn ], [ %.0157, %.tail ], [ %.0157, %sub_0 ]
  %i.gk = add i32 %.0156, 1
  %i.gl = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0446.0) #23
  br label %.preheader558, !llvm.loop !88

bb.bq:                                            ; preds = %bb.be
  %i.gm = select i1 %i.eo, i32 %.0161, i32 0
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store ptr %9, ptr %i.dh, align 8, !tbaa !49
  store ptr %9, ptr %9, align 8, !tbaa !50
  store i64 0, ptr %i.di, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.gn = invoke noundef nonnull align 8 dereferenceable(49) ptr @_ZNK7Imf_3_418MultiPartInputFile6headerEi(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %i.gm)
          to label %bb.br unwind label %bb.bx

bb.br:                                            ; preds = %bb.bq
  %i.go = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN7Imf_3_410idManifestERKNS_6HeaderE(ptr noundef nonnull align 8 dereferenceable(49) %i.gn)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZN7Imf_3_410IDManifestC1ERKNS_20CompressedIDManifestE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.go)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  invoke void @_Z6setIdsRKN7Imf_3_410IDManifestERNSt7__cxx114listINS4_I5matchSaIS5_EEESaIS7_EEEPPKciRKSt3mapINS3_12basic_stringIcSt11char_traitsIcESaIcEEEiSt4lessISJ_ESaISt4pairIKSJ_iEEE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %.0200, i32 noundef %.0201, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  %i.gp = zext i32 %.0156 to i64                  ; 7 uses
  %.not.i.i.i.i256 = icmp eq i32 %.0156, 0        ; 4 uses
  br i1 %.not.i.i.i.i256, label %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.bu
  %i.gq = mul nuw nsw i64 %i.gp, 24               ; 6 uses
  %i.gr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #26
          to label %.lr.ph.preheader.i.i.i.i.i259 unwind label %bb.by ; 7 uses

.lr.ph.preheader.i.i.i.i.i259:                    ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %i.gp ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gr, i8 0, i64 %i.gq, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.gr, i64 %i.gq ; 3 uses
  %i.gt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #26
          to label %.lr.ph unwind label %bb.bz    ; 6 uses

_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge: ; preds = %bb.bu
  %.pre1373 = sext i32 %i.el to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.preheader.i.i.i.i.i259
  %i.gu = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %i.gp
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.gt, i8 0, i64 %i.gq, i1 false)
  %scevgep.i.i.i.i.i260 = getelementptr i8, ptr %i.gt, i64 %i.gq ; 2 uses
  %i.gv = ptrtoint ptr %i.gu to i64               ; 2 uses
  %i.gw = sext i32 %i.el to i64                   ; 9 uses
  br label %bb.ca

._crit_edge:                                      ; preds = %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge
  %.0.lcssa.i.i.i.i.i2621518 = phi ptr [ null, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge ], [ %scevgep.i.i.i.i.i260, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 5 uses
  %.sink.i2611510 = phi i64 [ 0, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge ], [ %i.gv, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 4 uses
  %.sroa.0421.01502 = phi ptr [ null, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge ], [ %i.gt, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 10 uses
  %.sroa.0430.04801494 = phi ptr [ null, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge ], [ %i.gr, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 17 uses
  %.sink.i4941486 = phi ptr [ null, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge ], [ %i.gs, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 4 uses
  %.0.lcssa.i.i.i.i.i5021478 = phi ptr [ null, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge ], [ %scevgep.i.i.i.i.i, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 5 uses
  %.pre-phi = phi i64 [ %.pre1373, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EEC2EmRKS3_.exit.._crit_edge_crit_edge ], [ %i.gw, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 5 uses
  %i.gx = icmp slt i32 %i.el, 0
  br i1 %i.gx, label %bb.bv, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.bv:                                            ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #25
          to label %.noexc265 unwind label %.loopexit.split-lp554.loopexit.split-lp.loopexit.split-lp

.noexc265:                                        ; preds = %bb.bv
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge
  %.not.i.i.i.i264 = icmp eq i32 %i.ek, %i.ed     ; 3 uses
  br i1 %.not.i.i.i.i264, label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EEC2EmRKS2_.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.gy = shl nuw nsw i64 %.pre-phi, 2
  %i.gz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gy) #26
          to label %.noexc266 unwind label %.loopexit.split-lp554.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc266:                                        ; preds = %bb.bw
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %.pre-phi ; 3 uses
  store i32 0, ptr %i.gz, align 4, !tbaa !34
  %i.hb = add nsw i64 %.pre-phi, -1               ; 3 uses
  %i.hc = icmp eq i64 %i.hb, 0                    ; 2 uses
  br i1 %i.hc, label %bb.ci, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc266
  %i.hd = getelementptr i8, ptr %i.gz, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.hb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.hd, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !34
  br label %bb.ci

.loopexit.split-lp560.loopexit.split-lp.loopexit.split-lp: ; preds = %.preheader558, %bb.be, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.bx:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7Imf_3_410IDManifestD2Ev.exit348

bb.by:                                            ; preds = %bb.bt, %.lr.ph.preheader.i.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IS_IjSaIjEESaIS1_EESaIS3_EED2Ev.exit339

bb.bz:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i259
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EED2Ev.exit319

bb.ca:                                            ; preds = %.lr.ph, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit
  %indvars.iv1304 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next1305, %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [24 x i8], ptr %i.gr, i64 %indvars.iv1304 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !55 ; 3 uses
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !56 ; 2 uses
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = sdiv exact i64 %i.hn, 24                ; 3 uses
  %i.hp = icmp ult i64 %i.ho, %i.gw
  br i1 %i.hp, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.hq = sub nuw nsw i64 %i.gw, %i.ho
  invoke void @_ZNSt6vectorIS_IjSaIjEESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, i64 noundef %i.hq)
          to label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit unwind label %.loopexit553

bb.cc:                                            ; preds = %bb.ca
  %i.hr = icmp ugt i64 %i.ho, %i.gw
  br i1 %i.hr, label %bb.cd, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit

bb.cd:                                            ; preds = %bb.cc
  %i.hs = getelementptr inbounds nuw [24 x i8], ptr %i.hk, i64 %i.gw ; 3 uses
  %.not.i.i = icmp eq ptr %i.hj, %i.hs
  br i1 %.not.i.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i267

.lr.ph.i.i.i.i267:                                ; preds = %bb.cd, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.hz, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i ], [ %i.hs, %bb.cd ] ; 3 uses
  %i.ht = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i267
  %i.hu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !59
  %i.hw = ptrtoint ptr %i.hv to i64
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = sub i64 %i.hw, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.ht, i64 noundef %i.hy) #27
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i: ; preds = %bb.ce, %.lr.ph.i.i.i.i267
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i268 = icmp eq ptr %i.hz, %i.hj
  br i1 %.not.i.i.i.i268, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i267, !llvm.loop !89

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i
  store ptr %i.hs, ptr %i.hi, align 8, !tbaa !55
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit

_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit:    ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.cd, %bb.cc, %bb.cb
  %i.ia = getelementptr inbounds nuw [24 x i8], ptr %i.gt, i64 %indvars.iv1304 ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !63 ; 2 uses
  %i.id = load ptr, ptr %i.ia, align 8, !tbaa !64 ; 2 uses
  %i.ie = ptrtoint ptr %i.ic to i64
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = sub i64 %i.ie, %i.if
  %i.ih = ashr exact i64 %i.ig, 3                 ; 3 uses
  %i.ii = icmp ult i64 %i.ih, %i.gw
  br i1 %i.ii, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit
  %i.ij = sub nuw nsw i64 %i.gw, %i.ih
  invoke void @_ZNSt6vectorIPjSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ia, i64 noundef %i.ij)
          to label %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit unwind label %.loopexit553

bb.cg:                                            ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EE6resizeEm.exit
  %i.ik = icmp ugt i64 %i.ih, %i.gw
  br i1 %i.ik, label %bb.ch, label %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit

bb.ch:                                            ; preds = %bb.cg
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.gw ; 2 uses
  %.not.i.i270 = icmp eq ptr %i.ic, %i.il
  br i1 %.not.i.i270, label %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIPPjS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPjS0_EvT_S2_RSaIT0_E.exit.i.i:     ; preds = %bb.ch
  store ptr %i.il, ptr %i.ib, align 8, !tbaa !63
  br label %_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit

_ZNSt6vectorIPjSaIS0_EE6resizeEm.exit:            ; preds = %_ZSt8_DestroyIPPjS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.ch, %bb.cg, %bb.cf
  %indvars.iv.next1305 = add nuw nsw i64 %indvars.iv1304, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1305, %i.gp
  br i1 %exitcond.not, label %._crit_edge, label %bb.ca, !llvm.loop !90

bb.ci:                                            ; preds = %.noexc266, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.im = shl nuw nsw i64 %.pre-phi, 1
  %i.in = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.im) #26
          to label %.noexc276 unwind label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit306.thread ; 5 uses

.noexc276:                                        ; preds = %bb.ci
  %i.io = getelementptr inbounds nuw [2 x i8], ptr %i.in, i64 %.pre-phi ; 2 uses
  store i16 0, ptr %i.in, align 2
  br i1 %i.hc, label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EEC2EmRKS2_.exit, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %.noexc276
  %i.ip = getelementptr i8, ptr %i.in, i64 2
  %.idx.i.i.i.i.i.i.i273 = shl nuw nsw i64 %i.hb, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.ip, i8 0, i64 %.idx.i.i.i.i.i.i.i273, i1 false), !tbaa !119
  br label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EEC2EmRKS2_.exit

_ZNSt6vectorIN9Imath_3_24halfESaIS1_EEC2EmRKS2_.exit: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i, %.noexc276, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0514 = phi ptr [ %i.ha, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ha, %.noexc276 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0413.0509 = phi ptr [ %i.gz, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.gz, %.noexc276 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.0407.0 = phi ptr [ %i.in, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.in, %.noexc276 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.io, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i ], [ %i.io, %.noexc276 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  store i32 0, ptr %i.dj, align 8, !tbaa !110
  store ptr null, ptr %i.dk, align 8, !tbaa !39
  store ptr %i.dj, ptr %i.dl, align 8, !tbaa !40
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !111
  store i64 0, ptr %i.dn, align 8, !tbaa !41
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %i.do, i32 noundef 1, ptr noundef null, i64 noundef 0, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit unwind label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EEC2EmRKS2_.exit
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(104) %11) #24
  br label %.body277

_ZN7Imf_3_415DeepFrameBufferC2Ev.exit:            ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EEC2EmRKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  %i.ir = sext i32 %i.ed to i64
  %i.is = sub nsw i64 0, %i.ir                    ; 3 uses
  %i.it = getelementptr inbounds i8, ptr %.sroa.0413.0509, i64 %i.is
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %12, i32 noundef 0, ptr noundef %i.it, i64 noundef 4, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.ck unwind label %bb.co

bb.ck:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  invoke void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull align 8 dereferenceable(50) %12)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.iu = invoke ptr @_ZNK7Imf_3_411ChannelList5beginEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eb)
          to label %.preheader548 unwind label %.loopexit.split-lp550.loopexit.split-lp

.preheader548:                                    ; preds = %bb.cl, %bb.cr
  %.sroa.0402.0 = phi ptr [ %i.je, %bb.cr ], [ %i.iu, %bb.cl ] ; 4 uses
  %.0154 = phi i32 [ %22, %bb.cr ], [ 0, %bb.cl ] ; 2 uses
  %i.iv = invoke ptr @_ZNK7Imf_3_411ChannelList3endEv(ptr noundef nonnull align 8 dereferenceable(48) %i.eb)
          to label %bb.cm unwind label %.loopexit.split-lp550.loopexit.split-lp

bb.cm:                                            ; preds = %.preheader548
  %.not535 = icmp eq ptr %.sroa.0402.0, %i.iv
  br i1 %.not535, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  invoke void @_ZN7Imf_3_421DeepScanLineInputPartC1ERNS_18MultiPartInputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef %.0161)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit553:                                     ; preds = %bb.cf, %bb.cb
  %lpad.loopexit555 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

.loopexit.split-lp554.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.bv
  %lpad.loopexit.split-lp2040.a = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit308

_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit306.thread: ; preds = %bb.ci
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.co:                                            ; preds = %bb.ck, %_ZN7Imf_3_415DeepFrameBufferC2Ev.exit
  %i.ix = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.fi

.loopexit.split-lp550.loopexit.split-lp:          ; preds = %.preheader548, %bb.cl
  %lpad.loopexit.split-lp2035 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.cp:                                            ; preds = %bb.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.0402.0, i64 288
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !116
  %21 = zext nneg i32 %.0154 to i64
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0421.01502, i64 %21
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !64
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 %i.is
  invoke void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56) %13, i32 noundef %i.iz, ptr noundef %i.jc, i64 noundef 8, i64 noundef 0, i64 noundef 4, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0402.0, i64 32
  invoke void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef nonnull %i.jd, ptr noundef nonnull align 8 dereferenceable(56) %13)
          to label %bb.cr unwind label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.je = call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0402.0) #23
  %22 = add nuw nsw i32 %.0154, 1
  br label %.preheader548, !llvm.loop !91

bb.cs:                                            ; preds = %bb.cq, %bb.cp
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.fi

bb.ct:                                            ; preds = %bb.cn
  invoke void @_ZN7Imf_3_421DeepScanLineInputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %bb.cu unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cu:                                            ; preds = %bb.ct
  br i1 %i.am, label %bb.cv, label %bb.de

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #24
  store i32 0, ptr %i.dp, align 8, !tbaa !110
  store ptr null, ptr %i.dq, align 8, !tbaa !39
  store ptr %i.dp, ptr %i.dr, align 8, !tbaa !40
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !111
  store i64 0, ptr %i.dt, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #24
  %i.jg = getelementptr inbounds i8, ptr %.sroa.0407.0, i64 %i.is
  invoke void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50) %16, i32 noundef 1, ptr noundef %i.jg, i64 noundef 2, i64 noundef 0, i32 noundef 1, i32 noundef 1, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.cw unwind label %bb.db

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN7Imf_3_411FrameBuffer6insertEPKcRKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str.23, ptr noundef nonnull align 8 dereferenceable(50) %16)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #24
  invoke void @_ZN7Imf_3_410OutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %.0161)
          to label %bb.cy unwind label %bb.dc

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZN7Imf_3_410OutputPart14setFrameBufferERKNS_11FrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  %i.jh = load ptr, ptr %i.dq, align 8, !tbaa !39
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_5SliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef %i.jh)
          to label %_ZN7Imf_3_411FrameBufferD2Ev.exit unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ji = landingpad { ptr, i32 }
          catch ptr null
  %i.jj = extractvalue { ptr, i32 } %i.ji, 0
  call void @__clang_call_terminate(ptr %i.jj) #28
  unreachable

_ZN7Imf_3_411FrameBufferD2Ev.exit:                ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %bb.di

bb.db:                                            ; preds = %bb.cw, %bb.cv
  %i.jk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #24
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy, %bb.cx
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #24
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn = phi { ptr, i32 } [ %i.jl, %bb.dc ], [ %i.jk, %bb.db ]
  call void @_ZN7Imf_3_411FrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %15) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #24
  br label %.loopexit.split-lp

bb.de:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24
  invoke void @_ZN7Imf_3_422DeepScanLineOutputPartC1ERNS_19MultiPartOutputFileEi(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(16) %6, i32 noundef %.0161)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN7Imf_3_422DeepScanLineOutputPart14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %bb.dg unwind label %bb.dh

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %bb.di

bb.dh:                                            ; preds = %bb.df, %bb.de
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  br label %.loopexit.split-lp

bb.di:                                            ; preds = %bb.dg, %_ZN7Imf_3_411FrameBufferD2Ev.exit
  %.not2081023 = icmp sgt i32 %i.ef, %i.ej
  br i1 %.not2081023, label %._crit_edge1027, label %.lr.ph1026

.lr.ph1026:                                       ; preds = %bb.di
  %i.jn = sext i32 %.0159 to i64
  %i.jo = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0430.04801494, i64 %i.jn ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.el, i32 1) ; 2 uses
  %brmerge = or i1 %.not.i.i.i.i256, %.not.i.i.i.i264
  %wide.trip.count1316 = zext nneg i32 %smax to i64
  %wide.trip.count1360 = zext nneg i32 %smax to i64
  %xtraiter = and i64 %i.gp, 1
  %i.jp = icmp eq i32 %.0156, 1
  %unroll_iter = and i64 %i.gp, 4294967294
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2341 = trunc i32 %.0156 to i1
  br label %bb.dt

._crit_edge1027:                                  ; preds = %bb.fh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  %i.jq = load ptr, ptr %i.dk, align 8, !tbaa !39
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef %i.jq)
          to label %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit unwind label %bb.dj

bb.dj:                                            ; preds = %._crit_edge1027
  %i.jr = landingpad { ptr, i32 }
          catch ptr null
  %i.js = extractvalue { ptr, i32 } %i.jr, 0
  call void @__clang_call_terminate(ptr %i.js) #28
  unreachable

_ZN7Imf_3_415DeepFrameBufferD2Ev.exit:            ; preds = %._crit_edge1027
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %.not.i.i.i279 = icmp eq ptr %.sroa.0407.0, null
  br i1 %.not.i.i.i279, label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit, label %bb.dk

bb.dk:                                            ; preds = %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit
  %i.jt = ptrtoint ptr %.sroa.11.0 to i64
  %i.ju = ptrtoint ptr %.sroa.0407.0 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0407.0, i64 noundef %i.jv) #27
  br label %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit

_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit:  ; preds = %_ZN7Imf_3_415DeepFrameBufferD2Ev.exit, %bb.dk
  %.not.i.i.i280 = icmp eq ptr %.sroa.0413.0509, null
  br i1 %.not.i.i.i280, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.dl

bb.dl:                                            ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit
  %i.jw = ptrtoint ptr %.sroa.13.0514 to i64
  %i.jx = ptrtoint ptr %.sroa.0413.0509 to i64
  %i.jy = sub i64 %i.jw, %i.jx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0413.0509, i64 noundef %i.jy) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt6vectorIN9Imath_3_24halfESaIS1_EED2Ev.exit, %bb.dl
  %.not4.i.i.i281 = icmp eq ptr %.sroa.0421.01502, %.0.lcssa.i.i.i.i.i2621518
  br i1 %.not4.i.i.i281, label %_ZSt8_DestroyIPSt6vectorIPjSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i282

.lr.ph.i.i.i282:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyISt6vectorIPjSaIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i283 = phi ptr [ %i.kf, %_ZSt8_DestroyISt6vectorIPjSaIS1_EEEvPT_.exit.i.i.i ], [ %.sroa.0421.01502, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.jz = load ptr, ptr %.05.i.i.i283, align 8, !tbaa !64 ; 3 uses
  %.not.i.i.i.i.i.i.i284 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i.i.i.i.i.i284, label %_ZSt8_DestroyISt6vectorIPjSaIS1_EEEvPT_.exit.i.i.i, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph.i.i.i282
  %i.ka = getelementptr inbounds nuw i8, ptr %.05.i.i.i283, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !65
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.jz to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.jz, i64 noundef %i.ke) #27
  br label %_ZSt8_DestroyISt6vectorIPjSaIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIPjSaIS1_EEEvPT_.exit.i.i.i: ; preds = %bb.dm, %.lr.ph.i.i.i282
  %i.kf = getelementptr inbounds nuw i8, ptr %.05.i.i.i283, i64 24 ; 2 uses
  %.not.i.i.i285 = icmp eq ptr %i.kf, %.0.lcssa.i.i.i.i.i2621518
  br i1 %.not.i.i.i285, label %_ZSt8_DestroyIPSt6vectorIPjSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i282, !llvm.loop !92

_ZSt8_DestroyIPSt6vectorIPjSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt6vectorIPjSaIS1_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.not.i.i1.i287 = icmp eq ptr %.sroa.0421.01502, null
  br i1 %.not.i.i1.i287, label %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EED2Ev.exit, label %bb.dn

bb.dn:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIPjSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i
  %i.kg = ptrtoint ptr %.sroa.0421.01502 to i64
  %i.kh = sub i64 %.sink.i2611510, %i.kg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0421.01502, i64 noundef %i.kh) #27
  br label %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EED2Ev.exit

_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EED2Ev.exit:      ; preds = %_ZSt8_DestroyIPSt6vectorIPjSaIS1_EES3_EvT_S5_RSaIT0_E.exit.i, %bb.dn
  %.not4.i.i.i288 = icmp eq ptr %.sroa.0430.04801494, %.0.lcssa.i.i.i.i.i5021478
  br i1 %.not4.i.i.i288, label %_ZSt8_DestroyIPSt6vectorIS0_IjSaIjEESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i289

.lr.ph.i.i.i289:                                  ; preds = %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIS0_IjSaIjEESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i290 = phi ptr [ %i.ky, %_ZSt8_DestroyISt6vectorIS0_IjSaIjEESaIS2_EEEvPT_.exit.i.i.i ], [ %.sroa.0430.04801494, %_ZNSt6vectorIS_IPjSaIS0_EESaIS2_EED2Ev.exit ] ; 5 uses
  %i.ki = load ptr, ptr %.05.i.i.i290, align 8, !tbaa !56 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.05.i.i.i290, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.ki, %i.kk
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i289, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.kr, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.ki, %.lr.ph.i.i.i289 ] ; 3 uses
  %i.kl = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i.i.i.i, label %bb.do
end_hunk_0
