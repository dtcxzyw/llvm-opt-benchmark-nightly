Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.package-info?download=true
inline.NumInlined: 1145
inline.NumDeleted: 652
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5vcpkg29command_package_info_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EE12emplace_backIJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7TripletEEEERS1_DpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  %i.fb = load i8, ptr %i.bo, align 8, !tbaa !65, !range !48, !noundef !49
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.am, label %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINS_18PlatformExpression4ExprEEELb0EED2Ev.exit.i

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN5vcpkg18PlatformExpression4ExprD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #21
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINS_18PlatformExpression4ExprEEELb0EED2Ev.exit.i

_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINS_18PlatformExpression4ExprEEELb0EED2Ev.exit.i: ; preds = %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fd = load i8, ptr %i.be, align 8, !tbaa !63, !range !48, !noundef !49
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.an, label %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i

bb.an:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINS_18PlatformExpression4ExprEEELb0EED2Ev.exit.i
  %i.ff = load ptr, ptr %i.bi, align 8, !tbaa !54 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.bk
  br i1 %i.fg, label %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142: ; preds = %bb.an
  %i.fh = load i64, ptr %i.bk, align 8, !tbaa !56
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #25
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i

_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i142, %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINS_18PlatformExpression4ExprEEELb0EED2Ev.exit.i
  %i.fj = load i8, ptr %i.ax, align 8, !tbaa !58, !range !48, !noundef !49
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ao, label %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EELb0EED2Ev.exit.i

bb.ao:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i
  %i.fl = load ptr, ptr %i.az, align 8, !tbaa !71 ; 3 uses
  %i.fm = load ptr, ptr %i.bb, align 8, !tbaa !72 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.fl, %i.fm
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ao, %_ZSt8_DestroyIN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.ft, %_ZSt8_DestroyIN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i.i ], [ %i.fl, %bb.ao ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 72
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !54 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 88 ; 2 uses
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %_ZSt8_DestroyIN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !56
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fs) #25
  br label %_ZSt8_DestroyIN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ft, %i.fm
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.az, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.ao
  %i.fu = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.fl, %bb.ao ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.fu, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EELb0EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i
  %i.fv = load ptr, ptr %i.bc, align 8, !tbaa !61
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = sub i64 %i.fw, %i.fx
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fy) #25
  br label %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EELb0EED2Ev.exit.i

_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EELb0EED2Ev.exit.i: ; preds = %bb.ap, %_ZSt8_DestroyIPN5vcpkg7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES8_EvT_SA_RSaIT0_E.exit.i.i.i, %_ZN5vcpkg7details19OptionalStorageDtorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELb0EED2Ev.exit.i
  %i.fz = load ptr, ptr %i.ar, align 8, !tbaa !54 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.at
  br i1 %i.ga, label %_ZN5vcpkg24ParsedQualifiedSpecifierD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EELb0EED2Ev.exit.i
  %i.gb = load i64, ptr %i.at, align 8, !tbaa !56
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #25
  br label %_ZN5vcpkg24ParsedQualifiedSpecifierD2Ev.exit

_ZN5vcpkg24ParsedQualifiedSpecifierD2Ev.exit:     ; preds = %_ZN5vcpkg7details19OptionalStorageDtorISt6vectorINS_7LocatedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0292.0356, i64 32 ; 2 uses
  %.not319 = icmp eq ptr %i.gd, %i.am
  br i1 %.not319, label %._crit_edge359, label %bb.t

bb.aq:                                            ; preds = %bb.t
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.at

bb.ar:                                            ; preds = %.noexc.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

bb.as:                                            ; preds = %bb.al, %.noexc.i.i.i, %bb.ag
  %i.gg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gh = load ptr, ptr %14, align 8, !tbaa !54   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.bv
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.as
  %i.gj = load i64, ptr %i.bv, align 8, !tbaa !56
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143, %bb.ar
  %.pn109 = phi { ptr, i32 } [ %i.gf, %bb.ar ], [ %i.gg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143 ], [ %i.gg, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @_ZN5vcpkg24ParsedQualifiedSpecifierD2Ev(ptr noundef nonnull align 8 dead_on_return(336) dereferenceable(336) %9) #21
  br label %bb.at

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %bb.aq
  %.pn109.pn = phi { ptr, i32 } [ %.pn109, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145 ], [ %i.ge, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.cl

bb.au:                                            ; preds = %.lr.ph361, %_ZN5vcpkg11PackageSpecD2Ev.exit
  %i.gl = phi ptr [ %.pre372, %.lr.ph361 ], [ %i.jl, %_ZN5vcpkg11PackageSpecD2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #21
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -40 ; 2 uses
  store ptr %i.cb, ptr %18, align 8, !tbaa !52
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !54 ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %i.gl, i64 -24 ; 5 uses
  %i.gp = icmp eq ptr %i.gn, %i.go
  br i1 %i.gp, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146

bb.av:                                            ; preds = %bb.au
  %i.gq = getelementptr inbounds i8, ptr %i.gl, i64 -32
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !55 ; 2 uses
  %i.gs = icmp ult i64 %i.gr, 16
  call void @llvm.assume(i1 %i.gs)
  %i.gt = add nuw nsw i64 %i.gr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cb, ptr noundef nonnull align 8 dereferenceable(1) %i.go, i64 %i.gt, i1 false)
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146: ; preds = %bb.au
  store ptr %i.gn, ptr %18, align 8, !tbaa !54
  %i.gu = load i64, ptr %i.go, align 8, !tbaa !56
  store i64 %i.gu, ptr %i.cb, align 8, !tbaa !56
  br label %_ZN5vcpkg11PackageSpecC2EOS0_.exit

_ZN5vcpkg11PackageSpecC2EOS0_.exit:               ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i146
  %i.gv = getelementptr inbounds i8, ptr %i.gl, i64 -32 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !55
  store i64 %i.gw, ptr %i.cc, align 8, !tbaa !55
  store ptr %i.go, ptr %i.gm, align 8, !tbaa !54
  store i64 0, ptr %i.gv, align 8, !tbaa !55
  store i8 0, ptr %i.go, align 8, !tbaa !56
  %i.gx = getelementptr inbounds i8, ptr %i.gl, i64 -8
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !70
  store i64 %i.gy, ptr %i.cd, align 8, !tbaa !70
  %i.gz = load ptr, ptr %i.ca, align 8, !tbaa !67 ; 2 uses
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 -40 ; 2 uses
  store ptr %i.ha, ptr %i.ca, align 8, !tbaa !67
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !54 ; 2 uses
  %i.hc = getelementptr inbounds i8, ptr %i.gz, i64 -24 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i147: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !56
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #25
  br label %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EE8pop_backEv.exit

_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EE8pop_backEv.exit: ; preds = %_ZN5vcpkg11PackageSpecC2EOS0_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i147
  %i.hg = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN5vcpkg11PackageSpecES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE16_M_insert_uniqueIRKS1_EESt4pairISt17_Rb_tree_iteratorIS1_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %_ZNSt3setIN5vcpkg11PackageSpecESt4lessIS1_ESaIS1_EE6insertERKS1_.exit unwind label %bb.aw

_ZNSt3setIN5vcpkg11PackageSpecESt4lessIS1_ESaIS1_EE6insertERKS1_.exit: ; preds = %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EE8pop_backEv.exit
  %.fca.1.extract = extractvalue { ptr, i8 } %i.hg, 1
  %i.hh = trunc i8 %.fca.1.extract to i1
  br i1 %i.hh, label %bb.ax, label %bb.bu, !llvm.loop !160

bb.aw:                                            ; preds = %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EE8pop_backEv.exit
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.ax:                                            ; preds = %_ZNSt3setIN5vcpkg11PackageSpecESt4lessIS1_ESaIS1_EE6insertERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #21
  invoke void @_ZNK5vcpkg16StatusParagraphs26get_installed_package_viewERKNS_11PackageSpecE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional.111") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %bb.ay unwind label %bb.bj

bb.ay:                                            ; preds = %bb.ax
  %i.hj = load i8, ptr %19, align 8, !tbaa !176, !range !48, !noundef !49
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.az, label %bb.br

bb.az:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #21
  invoke void @_ZNK5vcpkg11PackageSpec9to_stringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %bb.ba unwind label %bb.bk

bb.ba:                                            ; preds = %bb.az
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(32) %21) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #21
  %i.hl = invoke noundef nonnull align 1 ptr @_ZNK5vcpkg10VcpkgPaths9installedEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.bb unwind label %bb.bl

bb.bb:                                            ; preds = %bb.ba
  %i.hm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK5vcpkg10VcpkgPaths14get_filesystemEv(ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.bc unwind label %bb.bl

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZN5vcpkg13serialize_ipvERKNS_20InstalledPackageViewERKNS_14InstalledPathsERKNS_18ReadOnlyFilesystemE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Json::Value") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 1 %i.hl, ptr noundef nonnull align 8 dereferenceable(8) %i.hm)
          to label %bb.bd unwind label %bb.bl

bb.bd:                                            ; preds = %bb.bc
  %i.hn = load ptr, ptr %20, align 8
  %i.ho = load i64, ptr %i.cf, align 8
  %i.hp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEONS0_5ValueE(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr %i.hn, i64 %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.be unwind label %bb.bm     ; 0 uses

bb.be:                                            ; preds = %bb.bd
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.hq = load ptr, ptr %21, align 8, !tbaa !54   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.cg
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %bb.be
  %i.hs = load i64, ptr %i.cg, align 8, !tbaa !56
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br i1 %.sroa.0.0.i.i.i138312, label %bb.bf, label %bb.br

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #21
  invoke void @_ZNK5vcpkg20InstalledPackageView12dependenciesEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.74") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %bb.bg unwind label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.hu = load ptr, ptr %i.ca, align 8, !tbaa !170
  %i.hv = load ptr, ptr %23, align 8, !tbaa !170
  %i.hw = load ptr, ptr %i.ch, align 8, !tbaa !170
  %i.hx = load ptr, ptr %8, align 8, !tbaa !170   ; 2 uses
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = ptrtoint ptr %i.hx to i64
  %i.ia = sub i64 %i.hy, %i.hz
  %i.ib = getelementptr inbounds i8, ptr %i.hx, i64 %i.ia
  invoke void @_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr %i.ib, ptr %i.hv, ptr %i.hw)
          to label %bb.bh unwind label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %i.ic = load ptr, ptr %23, align 8, !tbaa !73   ; 3 uses
  %i.id = load ptr, ptr %i.ch, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ic, %i.id
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bh, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ij, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i ], [ %i.ic, %bb.bh ] ; 3 uses
  %i.ie = load ptr, ptr %.05.i.i.i, align 8, !tbaa !54 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ig = icmp eq ptr %i.ie, %i.if
  br i1 %i.ig, label %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ih = load i64, ptr %i.if, align 8, !tbaa !56
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.ie, i64 noundef %i.ii) #25
  br label %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ij, %i.id
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %23, align 8, !tbaa !73
  br label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bh
  %i.ik = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ic, %bb.bh ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ik, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit, label %bb.bi

bb.bi:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i
  %i.il = load ptr, ptr %i.ci, align 8, !tbaa !68
  %i.im = ptrtoint ptr %i.il to i64
  %i.in = ptrtoint ptr %i.ik to i64
  %i.io = sub i64 %i.im, %i.in
  call void @_ZdlPvm(ptr noundef nonnull %i.ik, i64 noundef %i.io) #25
  br label %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit

_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.br

bb.bj:                                            ; preds = %bb.ax
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit160

bb.bk:                                            ; preds = %bb.az
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

bb.bl:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ir = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bd
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %22) #21
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn100 = phi { ptr, i32 } [ %i.is, %bb.bm ], [ %i.ir, %bb.bl ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #21
  %i.it = load ptr, ptr %21, align 8, !tbaa !54   ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.cg
  br i1 %i.iu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154: ; preds = %bb.bn
  %i.iv = load i64, ptr %i.cg, align 8, !tbaa !56
  %i.iw = add i64 %i.iv, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.iw) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154, %bb.bk
  %.pn100.pn = phi { ptr, i32 } [ %i.iq, %bb.bk ], [ %.pn100, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i154 ], [ %.pn100, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #21
  br label %bb.bv

bb.bo:                                            ; preds = %bb.bf
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bg
  %i.iy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %23) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn103 = phi { ptr, i32 } [ %i.iy, %bb.bp ], [ %i.ix, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #21
  br label %bb.bv

bb.br:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, %_ZNSt6vectorIN5vcpkg11PackageSpecESaIS1_EED2Ev.exit, %bb.ay
  %i.iz = load i8, ptr %19, align 8, !tbaa !176, !range !48, !noundef !49
  %i.ja = trunc nuw i8 %i.iz to i1
  br i1 %i.ja, label %bb.bs, label %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit

bb.bs:                                            ; preds = %bb.br
  %i.jb = load ptr, ptr %i.cj, align 8, !tbaa !180 ; 3 uses
  %.not.i.i.i.i.i157 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i.i.i.i157, label %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jc = load ptr, ptr %i.ck, align 8, !tbaa !181
  %i.jd = ptrtoint ptr %i.jc to i64
  %i.je = ptrtoint ptr %i.jb to i64
  %i.jf = sub i64 %i.jd, %i.je
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef %i.jf) #25
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit: ; preds = %bb.br, %bb.bs, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.bu

bb.bu:                                            ; preds = %_ZNSt3setIN5vcpkg11PackageSpecESt4lessIS1_ESaIS1_EE6insertERKS1_.exit, %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit
  %i.jg = load ptr, ptr %18, align 8, !tbaa !54   ; 2 uses
  %i.jh = icmp eq ptr %i.jg, %i.cb
  br i1 %i.jh, label %_ZN5vcpkg11PackageSpecD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158: ; preds = %bb.bu
  %i.ji = load i64, ptr %i.cb, align 8, !tbaa !56
  %i.jj = add i64 %i.ji, 1
  call void @_ZdlPvm(ptr noundef %i.jg, i64 noundef %i.jj) #25
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit

_ZN5vcpkg11PackageSpecD2Ev.exit:                  ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i158
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  %i.jk = load ptr, ptr %8, align 8, !tbaa !170
  %i.jl = load ptr, ptr %i.ca, align 8, !tbaa !170 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %._crit_edge362, label %bb.au

bb.bv:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156
  %.pn103.pn = phi { ptr, i32 } [ %.pn103, %bb.bq ], [ %.pn100.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit156 ] ; 3 uses
  %i.jn = load i8, ptr %19, align 8, !tbaa !176, !range !48, !noundef !49
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.bw, label %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit160

bb.bw:                                            ; preds = %bb.bv
  %i.jp = load ptr, ptr %i.cj, align 8, !tbaa !180 ; 3 uses
  %.not.i.i.i.i.i159 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i.i.i159, label %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit160, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jq = load ptr, ptr %i.ck, align 8, !tbaa !181
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %i.jp to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.jt) #25
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit160

_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit160: ; preds = %bb.bx, %bb.bw, %bb.bv, %bb.bj
  %.pn103.pn.pn = phi { ptr, i32 } [ %i.ip, %bb.bj ], [ %.pn103.pn, %bb.bv ], [ %.pn103.pn, %bb.bw ], [ %.pn103.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #21
  br label %bb.by

bb.by:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit160, %bb.aw
  %.pn103.pn.pn.pn = phi { ptr, i32 } [ %.pn103.pn.pn, %_ZN5vcpkg7details19OptionalStorageDtorINS_20InstalledPackageViewELb0EED2Ev.exit160 ], [ %i.hi, %bb.aw ]
  %i.ju = load ptr, ptr %18, align 8, !tbaa !54   ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.cb
  br i1 %i.jv, label %_ZN5vcpkg11PackageSpecD2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161: ; preds = %bb.by
  %i.jw = load i64, ptr %i.cb, align 8, !tbaa !56
  %i.jx = add i64 %i.jw, 1
  call void @_ZdlPvm(ptr noundef %i.ju, i64 noundef %i.jx) #25
  br label %_ZN5vcpkg11PackageSpecD2Ev.exit163

_ZN5vcpkg11PackageSpecD2Ev.exit163:               ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #21
  br label %bb.ck

._crit_edge362:                                   ; preds = %_ZN5vcpkg11PackageSpecD2Ev.exit, %._crit_edge359.thread, %._crit_edge359
  %i.jy = phi ptr [ %i.an, %._crit_edge359.thread ], [ %i.ca, %._crit_edge359 ], [ %i.ca, %_ZN5vcpkg11PackageSpecD2Ev.exit ]
  %i.jz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr nonnull @.str.3, i64 7, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %bb.bz unwind label %bb.ch     ; 0 uses

bb.bz:                                            ; preds = %._crit_edge362
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #21
  invoke void @_ZN5vcpkg4Json9stringifyB5cxx11ERKNS0_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.ca unwind label %bb.ci

bb.ca:                                            ; preds = %bb.bz
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull align 8 dereferenceable(32) %25) #21
  %i.ka = load ptr, ptr %24, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.kc = load i64, ptr %i.kb, align 8
  invoke void @_ZN5vcpkg3msg32write_unlocalized_text_to_stdoutENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.ka, i64 %i.kc)
          to label %bb.cb unwind label %bb.cj

bb.cb:                                            ; preds = %bb.ca
  %i.kd = load ptr, ptr %25, align 8, !tbaa !54   ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.cb
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !56
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #21
  %i.ki = load ptr, ptr %17, align 8, !tbaa !76   ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !77 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ki, %i.kk
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i167

.lr.ph.i.i.i.i167:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.kr, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.kl) #21
  %i.km = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !54 ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.ko = icmp eq ptr %i.km, %i.kn
  br i1 %i.ko, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i167
  %i.kp = load i64, ptr %i.kn, align 8, !tbaa !56
  %i.kq = add i64 %i.kp, 1
  call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kq) #25
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i167, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i168 = icmp eq ptr %i.kr, %i.kk
  br i1 %.not.i.i.i.i168, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i167, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %17, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.ks = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ki, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ks, null
  br i1 %.not.i.i1.i.i, label %_ZN5vcpkg4Json6ObjectD2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i
  %i.kt = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !78
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = ptrtoint ptr %i.ks to i64
  %i.kx = sub i64 %i.kv, %i.kw
  call void @_ZdlPvm(ptr noundef nonnull %i.ks, i64 noundef %i.kx) #25
  br label %_ZN5vcpkg4Json6ObjectD2Ev.exit

_ZN5vcpkg4Json6ObjectD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #21
  %i.ky = load ptr, ptr %16, align 8, !tbaa !76   ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !77 ; 2 uses
  %.not4.i.i.i.i169 = icmp eq ptr %i.ky, %i.la
  br i1 %.not4.i.i.i.i169, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i177, label %.lr.ph.i.i.i.i170

.lr.ph.i.i.i.i170:                                ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i173
  %.05.i.i.i.i171 = phi ptr [ %i.lh, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i173 ], [ %i.ky, %_ZN5vcpkg4Json6ObjectD2Ev.exit ] ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i171, i64 32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lb) #21
  %i.lc = load ptr, ptr %.05.i.i.i.i171, align 8, !tbaa !54 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i171, i64 16 ; 2 uses
  %i.le = icmp eq ptr %i.lc, %i.ld
  br i1 %i.le, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i172: ; preds = %.lr.ph.i.i.i.i170
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !56
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.lc, i64 noundef %i.lg) #25
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i173

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i173: ; preds = %.lr.ph.i.i.i.i170, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i172
  %i.lh = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i171, i64 40 ; 2 uses
  %.not.i.i.i.i174 = icmp eq ptr %i.lh, %i.la
  br i1 %.not.i.i.i.i174, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i175, label %.lr.ph.i.i.i.i170, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i175: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i173
  %.pr.i.i176 = load ptr, ptr %16, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i177

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i177: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i175, %_ZN5vcpkg4Json6ObjectD2Ev.exit
  %i.li = phi ptr [ %.pr.i.i176, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i175 ], [ %i.ky, %_ZN5vcpkg4Json6ObjectD2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i178 = icmp eq ptr %i.li, null
  br i1 %.not.i.i1.i.i178, label %_ZN5vcpkg4Json6ObjectD2Ev.exit180, label %bb.cd

bb.cd:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i177
  %i.lj = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !78
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #25
  br label %_ZN5vcpkg4Json6ObjectD2Ev.exit180

_ZN5vcpkg4Json6ObjectD2Ev.exit180:                ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i177, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  %i.lo = load ptr, ptr %8, align 8, !tbaa !73    ; 3 uses
  %i.lp = load ptr, ptr %i.jy, align 8, !tbaa !67 ; 2 uses
  %.not4.i.i.i181 = icmp eq ptr %i.lo, %i.lp
  br i1 %.not4.i.i.i181, label %_ZSt8_DestroyIPN5vcpkg11PackageSpecES1_EvT_S3_RSaIT0_E.exit.i189, label %.lr.ph.i.i.i182

.lr.ph.i.i.i182:                                  ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit180, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i185
  %.05.i.i.i183 = phi ptr [ %i.lv, %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i185 ], [ %i.lo, %_ZN5vcpkg4Json6ObjectD2Ev.exit180 ] ; 3 uses
  %i.lq = load ptr, ptr %.05.i.i.i183, align 8, !tbaa !54 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i183, i64 16 ; 2 uses
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %_ZSt8_DestroyIN5vcpkg11PackageSpecEEvPT_.exit.i.i.i185, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i184: ; preds = %.lr.ph.i.i.i182
  %i.lt = load i64, ptr %i.lr, align 8, !tbaa !56
  %i.lu = add i64 %i.lt, 1
end_hunk_0
begin_hunk_1_@_ZN5vcpkg29command_package_info_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #21
  invoke void @_ZNK5vcpkg10VcpkgPaths17make_registry_setEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.130") align 8 %28, ptr noundef nonnull align 8 dereferenceable(400) %1)
          to label %bb.cp unwind label %bb.cs

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #21
  %i.my = load ptr, ptr %28, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 336
  invoke void @_ZN5vcpkg21make_overlay_providerERKNS_18ReadOnlyFilesystemERKNS_16OverlayPortPathsE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.154") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(64) %i.mz)
          to label %bb.cq unwind label %bb.ct

bb.cq:                                            ; preds = %bb.cp
  invoke void @_ZN5vcpkg21PathsPortFileProviderC1ERKNS_11RegistrySetEOSt10unique_ptrINS_20IFullOverlayProviderESt14default_deleteIS5_EE(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.my, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.cr unwind label %bb.cu

bb.cr:                                            ; preds = %bb.cq
  %i.na = load ptr, ptr %30, align 8, !tbaa !89   ; 3 uses
  %.not.i202 = icmp eq ptr %i.na, null
  br i1 %.not.i202, label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i: ; preds = %bb.cr
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !91
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(8) %i.na) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cr, %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !169 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !169 ; 2 uses
  %.not353 = icmp eq ptr %i.nf, %i.nh
  br i1 %.not353, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit
  %i.ni = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.nj = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.nk = getelementptr inbounds nuw i8, ptr %31, i64 88
  %i.nl = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.nn = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.np = getelementptr inbounds nuw i8, ptr %37, i64 32 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %40, i64 16
  %i.nt = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %34, i64 24 ; 4 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.nw = getelementptr inbounds nuw i8, ptr %31, i64 16
  br label %bb.cv

._crit_edge:                                      ; preds = %_ZN5vcpkg10ParserBaseD2Ev.exit, %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit
  %i.nx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr nonnull @.str.3, i64 7, ptr noundef nonnull align 8 dereferenceable(24) %27)
          to label %bb.ec unwind label %bb.ei     ; 0 uses

bb.cs:                                            ; preds = %bb.co
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.en

bb.ct:                                            ; preds = %bb.cp
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit205

bb.cu:                                            ; preds = %bb.cq
  %i.oa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ob = load ptr, ptr %30, align 8, !tbaa !89   ; 3 uses
  %.not.i203 = icmp eq ptr %i.ob, null
  br i1 %.not.i203, label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit205, label %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i204

_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i204: ; preds = %bb.cu
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !91
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.oe = load ptr, ptr %i.od, align 8
  call void %i.oe(ptr noundef nonnull align 8 dereferenceable(8) %i.ob) #21, !inline_history !4
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit205

_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit205: ; preds = %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i204, %bb.cu, %bb.ct
  %.pn = phi { ptr, i32 } [ %i.nz, %bb.ct ], [ %i.oa, %bb.cu ], [ %i.oa, %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i204 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #21
  br label %bb.em

bb.cv:                                            ; preds = %.lr.ph, %_ZN5vcpkg10ParserBaseD2Ev.exit
  %.sroa.0284.0354 = phi ptr [ %i.nf, %.lr.ph ], [ %i.ro, %_ZN5vcpkg10ParserBaseD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #21
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0284.0354) #21
  store i8 0, ptr %33, align 8, !tbaa !183
  store i8 0, ptr %i.ni, align 8, !tbaa !56
  %i.of = load ptr, ptr %32, align 8
  %i.og = load i64, ptr %i.nj, align 8
  invoke void @_ZN5vcpkg10ParserBaseC1ENS_10StringViewENS_8OptionalIS1_EENS_10TextRowColE(ptr noundef nonnull align 8 dereferenceable(152) %31, ptr %i.of, i64 %i.og, ptr noundef nonnull align 8 dead_on_return %33, i64 0)
          to label %bb.cw unwind label %bb.db

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #21
  invoke void @_ZN5vcpkg18parse_package_nameB5cxx11ERNS_10ParserBaseE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Optional") align 8 %34, ptr noundef nonnull align 8 dereferenceable(152) %31)
          to label %bb.cx unwind label %bb.dc

bb.cx:                                            ; preds = %bb.cw
  %i.oh = load i32, ptr %i.nk, align 8, !tbaa !185
  %i.oi = icmp eq i32 %i.oh, -1
  %i.oj = load i8, ptr %34, align 8, !range !48
  %i.ok = trunc nuw i8 %i.oj to i1
  %or.cond314 = select i1 %i.oi, i1 %i.ok, i1 false
  br i1 %or.cond314, label %bb.dg, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #21
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg19msgExpectedPortNameE, align 8, !tbaa !34
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %35, i64 %.sroa.0.0.copyload)
          to label %bb.cz unwind label %bb.de

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5vcpkg10ParserBase9add_errorEONS_15LocalizedStringE(ptr noundef nonnull align 8 dereferenceable(152) %31, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %bb.cz
  %i.ol = load ptr, ptr %35, align 8, !tbaa !54   ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.nl
  br i1 %i.om, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206: ; preds = %bb.da
  %i.on = load i64, ptr %i.nl, align 8, !tbaa !56
  %i.oo = add i64 %i.on, 1
  call void @_ZdlPvm(ptr noundef %i.ol, i64 noundef %i.oo) #25
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.da, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.dg

bb.db:                                            ; preds = %bb.cv
  %i.op = landingpad { ptr, i32 }
          cleanup
  br label %bb.eb

bb.dc:                                            ; preds = %bb.cw
  %i.oq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit250

bb.dd:                                            ; preds = %bb.dh
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.de:                                            ; preds = %bb.cy
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit210

bb.df:                                            ; preds = %bb.cz
  %i.ot = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ou = load ptr, ptr %35, align 8, !tbaa !54   ; 2 uses
  %i.ov = icmp eq ptr %i.ou, %i.nl
  br i1 %i.ov, label %_ZN5vcpkg15LocalizedStringD2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208: ; preds = %bb.df
  %i.ow = load i64, ptr %i.nl, align 8, !tbaa !56
  %i.ox = add i64 %i.ow, 1
  call void @_ZdlPvm(ptr noundef %i.ou, i64 noundef %i.ox) #25
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit210

_ZN5vcpkg15LocalizedStringD2Ev.exit210:           ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208, %bb.de
  %.pn85 = phi { ptr, i32 } [ %i.os, %bb.de ], [ %i.ot, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208 ], [ %i.ot, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #21
  br label %bb.dz

bb.dg:                                            ; preds = %bb.cx, %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.oy = load i64, ptr %i.nm, align 8, !tbaa !190
  %.not316 = icmp eq i64 %i.oy, 0
  br i1 %.not316, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZNK5vcpkg13ParseMessages26exit_if_errors_or_warningsEv(ptr noundef nonnull align 8 dereferenceable(40) %31)
          to label %bb.di unwind label %bb.dd

bb.di:                                            ; preds = %bb.dh, %bb.dg
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(32) %i.nn) #21
  %i.oz = load ptr, ptr %36, align 8
  %i.pa = load i64, ptr %i.no, align 8
  %i.pb = call noundef ptr @_ZNK5vcpkg4Json6Object3getENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr %i.oz, i64 %i.pa) #21
  %.not317 = icmp eq ptr %i.pb, null
  br i1 %.not317, label %bb.dj, label %bb.dv

bb.dj:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #21
  invoke void @_ZNK5vcpkg21PathsPortFileProvider16get_control_fileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::ExpectedT.184") align 8 %37, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(32) %i.nn)
          to label %bb.dk unwind label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %38, i8 0, i64 24, i1 false)
  %i.pc = load i8, ptr %i.np, align 8, !tbaa !192, !range !48, !noundef !49
  %i.pd = trunc nuw i8 %i.pc to i1
  %i.pe = load ptr, ptr %37, align 8              ; 2 uses
  %.not87318 = icmp eq ptr %i.pe, null
  %.not87 = select i1 %i.pd, i1 true, i1 %.not87318
  br i1 %.not87, label %_ZN5vcpkg4Json6ObjectD2Ev.exit236, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %39, ptr noundef nonnull align 8 dereferenceable(32) %i.nn) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #21
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !194
  invoke void @_ZN5vcpkg18serialize_manifestERKNS_17SourceControlFileE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Json::Object") align 8 %40, ptr noundef nonnull align 8 dereferenceable(56) %i.pf)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.pg = load ptr, ptr %39, align 8
  %i.ph = load i64, ptr %i.nq, align 8
  %i.pi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN5vcpkg4Json6Object6insertENS_10StringViewEOS1_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr %i.pg, i64 %i.ph, ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %bb.dn unwind label %bb.dr     ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.pj = load ptr, ptr %40, align 8, !tbaa !76   ; 3 uses
  %i.pk = load ptr, ptr %i.nr, align 8, !tbaa !77 ; 2 uses
  %.not4.i.i.i.i211 = icmp eq ptr %i.pj, %i.pk
  br i1 %.not4.i.i.i.i211, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i219, label %.lr.ph.i.i.i.i212

.lr.ph.i.i.i.i212:                                ; preds = %bb.dn, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i215
  %.05.i.i.i.i213 = phi ptr [ %i.pr, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i215 ], [ %i.pj, %bb.dn ] ; 4 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i213, i64 32
  call void @_ZN5vcpkg4Json5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.pl) #21
  %i.pm = load ptr, ptr %.05.i.i.i.i213, align 8, !tbaa !54 ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i213, i64 16 ; 2 uses
  %i.po = icmp eq ptr %i.pm, %i.pn
  br i1 %i.po, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i214: ; preds = %.lr.ph.i.i.i.i212
  %i.pp = load i64, ptr %i.pn, align 8, !tbaa !56
  %i.pq = add i64 %i.pp, 1
  call void @_ZdlPvm(ptr noundef %i.pm, i64 noundef %i.pq) #25
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i215

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i215: ; preds = %.lr.ph.i.i.i.i212, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i214
  %i.pr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i213, i64 40 ; 2 uses
  %.not.i.i.i.i216 = icmp eq ptr %i.pr, %i.pk
  br i1 %.not.i.i.i.i216, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i217, label %.lr.ph.i.i.i.i212, !llvm.loop !2

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i217: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEEEvPT_.exit.i.i.i.i215
  %.pr.i.i218 = load ptr, ptr %40, align 8, !tbaa !76
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i219

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i219: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i217, %bb.dn
  %i.ps = phi ptr [ %.pr.i.i218, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exitthread-pre-split.i.i217 ], [ %i.pj, %bb.dn ] ; 3 uses
  %.not.i.i1.i.i220 = icmp eq ptr %i.ps, null
  br i1 %.not.i.i1.i.i220, label %_ZN5vcpkg4Json6ObjectD2Ev.exit222, label %bb.do

bb.do:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i219
  %i.pt = load ptr, ptr %i.ns, align 8, !tbaa !78
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.ps to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.ps, i64 noundef %i.pw) #25
  br label %_ZN5vcpkg4Json6ObjectD2Ev.exit222

_ZN5vcpkg4Json6ObjectD2Ev.exit222:                ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN5vcpkg4Json5ValueEESA_EvT_SC_RSaIT0_E.exit.i.i219, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %_ZN5vcpkg4Json6ObjectD2Ev.exit236

bb.dp:                                            ; preds = %bb.dj
  %i.px = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit

bb.dq:                                            ; preds = %bb.dl
  %i.py = landingpad { ptr, i32 }
          cleanup
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dm
  %i.pz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5vcpkg4Json6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #21
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.pn88 = phi { ptr, i32 } [ %i.pz, %bb.dr ], [ %i.py, %bb.dq ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  call void @_ZN5vcpkg4Json6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %38) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.qa = load i8, ptr %i.np, align 8, !tbaa !192, !range !48, !noundef !49
  %i.qb = trunc nuw i8 %i.qa to i1
  br i1 %i.qb, label %bb.dt, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit

bb.dt:                                            ; preds = %bb.ds
  %i.qc = load ptr, ptr %37, align 8, !tbaa !54   ; 2 uses
  %i.qd = icmp eq ptr %i.qc, %i.nt
  br i1 %i.qd, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223: ; preds = %bb.dt
  %i.qe = load i64, ptr %i.nt, align 8, !tbaa !56
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qc, i64 noundef %i.qf) #25
  br label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit

_ZN5vcpkg4Json6ObjectD2Ev.exit236:                ; preds = %bb.dk, %_ZN5vcpkg4Json6ObjectD2Ev.exit222
  %.pre = load i8, ptr %i.np, align 8, !tbaa !192, !range !48
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #21
  %i.qg = trunc nuw i8 %.pre to i1
  br i1 %i.qg, label %bb.du, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit239

bb.du:                                            ; preds = %_ZN5vcpkg4Json6ObjectD2Ev.exit236
  %i.qh = load ptr, ptr %37, align 8, !tbaa !54   ; 2 uses
  %i.qi = icmp eq ptr %i.qh, %i.nt
  br i1 %i.qi, label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit239, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i237: ; preds = %bb.du
  %i.qj = load i64, ptr %i.nt, align 8, !tbaa !56
  %i.qk = add i64 %i.qj, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qk) #25
  br label %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit239

_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit239: ; preds = %bb.du, %_ZN5vcpkg4Json6ObjectD2Ev.exit236, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i237
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br label %bb.dv

bb.dv:                                            ; preds = %bb.di, %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit239
  %i.ql = load i8, ptr %34, align 8, !tbaa !95, !range !48, !noundef !49
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.dw, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

bb.dw:                                            ; preds = %bb.dv
  %i.qn = load ptr, ptr %i.nn, align 8, !tbaa !54 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, %i.nu
  br i1 %i.qo, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240: ; preds = %bb.dw
  %i.qp = load i64, ptr %i.nu, align 8, !tbaa !56
  %i.qq = add i64 %i.qp, 1
  call void @_ZdlPvm(ptr noundef %i.qn, i64 noundef %i.qq) #25
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit: ; preds = %bb.dw, %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i240
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  %i.qr = load ptr, ptr %31, align 8, !tbaa !96   ; 3 uses
  %i.qs = load ptr, ptr %i.nv, align 8, !tbaa !97 ; 2 uses
  %.not4.i.i.i.i.i242 = icmp eq ptr %i.qr, %i.qs
  br i1 %.not4.i.i.i.i.i242, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i243

.lr.ph.i.i.i.i.i243:                              ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i244 = phi ptr [ %i.ri, %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i ], [ %i.qr, %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit ] ; 6 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i244, i64 56
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !54 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i244, i64 72 ; 2 uses
  %i.qw = icmp eq ptr %i.qu, %i.qv
  br i1 %i.qw, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i243
  %i.qx = load i64, ptr %i.qv, align 8, !tbaa !56
  %i.qy = add i64 %i.qx, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.qy) #25
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i

_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i243, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.qz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i244, i64 8
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !95, !range !48, !noundef !49
  %i.rb = trunc nuw i8 %i.ra to i1
  br i1 %i.rb, label %bb.dx, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i

bb.dx:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i244, i64 16
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !54 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i244, i64 32 ; 2 uses
  %i.rf = icmp eq ptr %i.rd, %i.re
  br i1 %i.rf, label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i: ; preds = %bb.dx
  %i.rg = load i64, ptr %i.re, align 8, !tbaa !56
  %i.rh = add i64 %i.rg, 1
  call void @_ZdlPvm(ptr noundef %i.rd, i64 noundef %i.rh) #25
  br label %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i: ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1.i.i.i.i.i.i.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i.i.i.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i244, i64 88 ; 2 uses
  %.not.i.i.i.i.i245 = icmp eq ptr %i.ri, %i.qs
  br i1 %.not.i.i.i.i.i245, label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i243, !llvm.loop !5

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN5vcpkg14DiagnosticLineEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i246 = load ptr, ptr %31, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit
  %i.rj = phi ptr [ %.pr.i.i.i246, %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.qr, %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i.i247 = icmp eq ptr %i.rj, null
  br i1 %.not.i.i1.i.i.i247, label %_ZN5vcpkg10ParserBaseD2Ev.exit, label %bb.dy

bb.dy:                                            ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.rk = load ptr, ptr %i.nw, align 8, !tbaa !98
  %i.rl = ptrtoint ptr %i.rk to i64
  %i.rm = ptrtoint ptr %i.rj to i64
  %i.rn = sub i64 %i.rl, %i.rm
  call void @_ZdlPvm(ptr noundef nonnull %i.rj, i64 noundef %i.rn) #25
  br label %_ZN5vcpkg10ParserBaseD2Ev.exit

_ZN5vcpkg10ParserBaseD2Ev.exit:                   ; preds = %_ZSt8_DestroyIPN5vcpkg14DiagnosticLineES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  %i.ro = getelementptr inbounds nuw i8, ptr %.sroa.0284.0354, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.ro, %i.nh
  br i1 %.not, label %._crit_edge, label %bb.cv

_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit: ; preds = %bb.dt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223, %bb.ds, %bb.dp
  %.pn88.pn = phi { ptr, i32 } [ %i.px, %bb.dp ], [ %.pn88, %bb.ds ], [ %.pn88, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i223 ], [ %.pn88, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #21
  br label %bb.dz

bb.dz:                                            ; preds = %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit, %_ZN5vcpkg15LocalizedStringD2Ev.exit210, %bb.dd
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %_ZN5vcpkg9ExpectedTIRKNS_28SourceControlFileAndLocationENS_15LocalizedStringEED2Ev.exit ], [ %i.or, %bb.dd ], [ %.pn85, %_ZN5vcpkg15LocalizedStringD2Ev.exit210 ] ; 3 uses
  %i.rp = load i8, ptr %34, align 8, !tbaa !95, !range !48, !noundef !49
  %i.rq = trunc nuw i8 %i.rp to i1
  br i1 %i.rq, label %bb.ea, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit250

bb.ea:                                            ; preds = %bb.dz
  %i.rr = load ptr, ptr %i.nn, align 8, !tbaa !54 ; 2 uses
  %i.rs = icmp eq ptr %i.rr, %i.nu
  br i1 %i.rs, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248: ; preds = %bb.ea
  %i.rt = load i64, ptr %i.nu, align 8, !tbaa !56
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rr, i64 noundef %i.ru) #25
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit250

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit250: ; preds = %bb.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248, %bb.dz, %bb.dc
  %.pn88.pn.pn.pn = phi { ptr, i32 } [ %i.oq, %bb.dc ], [ %.pn88.pn.pn, %bb.dz ], [ %.pn88.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248 ], [ %.pn88.pn.pn, %bb.ea ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #21
  call void @_ZN5vcpkg10ParserBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %31) #21
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit250, %bb.db
  %.pn88.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn88.pn.pn.pn, %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit250 ], [ %i.op, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #21
  br label %bb.el

bb.ec:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  invoke void @_ZN5vcpkg4Json9stringifyB5cxx11ERKNS0_6ObjectE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(24) %26)
          to label %bb.ed unwind label %bb.ej

bb.ed:                                            ; preds = %bb.ec
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(32) %42) #21
  %i.rv = load ptr, ptr %41, align 8
  %i.rw = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.rx = load i64, ptr %i.rw, align 8
  invoke void @_ZN5vcpkg3msg32write_unlocalized_text_to_stdoutENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.rv, i64 %i.rx)
          to label %bb.ee unwind label %bb.ek

bb.ee:                                            ; preds = %bb.ed
  %i.ry = load ptr, ptr %42, align 8, !tbaa !54   ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.sa = icmp eq ptr %i.ry, %i.rz
  br i1 %i.sa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %bb.ee
  %i.sb = load i64, ptr %i.rz, align 8, !tbaa !56
  %i.sc = add i64 %i.sb, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sc) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5vcpkg21PathsPortFileProviderE, i64 16), ptr %29, align 8, !tbaa !91
  %i.sd = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !89 ; 3 uses
  %.not.i.i = icmp eq ptr %i.se, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !91
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8
  call void %i.sh(ptr noundef nonnull align 8 dereferenceable(8) %i.se) #21, !inline_history !161
  br label %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg20IFullOverlayProviderEEclEPS1_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.si = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.sj = load ptr, ptr %i.si, align 8, !tbaa !100 ; 3 uses
  %.not.i1.i = icmp eq ptr %i.sj, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN5vcpkg30IFullVersionedPortfileProviderESt14default_deleteIS1_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN5vcpkg30IFullVersionedPortfileProviderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5vcpkg30IFullVersionedPortfileProviderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit.i
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !91
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(8) %i.sj) #21, !inline_history !162
  br label %_ZNSt10unique_ptrIN5vcpkg30IFullVersionedPortfileProviderESt14default_deleteIS1_EED2Ev.exit.i

_ZNSt10unique_ptrIN5vcpkg30IFullVersionedPortfileProviderESt14default_deleteIS1_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN5vcpkg30IFullVersionedPortfileProviderEEclEPS1_.exit.i.i, %_ZNSt10unique_ptrIN5vcpkg20IFullOverlayProviderESt14default_deleteIS1_EED2Ev.exit.i
  %i.sn = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !102 ; 3 uses
  %.not.i2.i = icmp eq ptr %i.so, null
  br i1 %.not.i2.i, label %_ZN5vcpkg21PathsPortFileProviderD2Ev.exit, label %_ZNKSt14default_deleteIN5vcpkg17IBaselineProviderEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN5vcpkg17IBaselineProviderEEclEPS1_.exit.i.i: ; preds = %_ZNSt10unique_ptrIN5vcpkg30IFullVersionedPortfileProviderESt14default_deleteIS1_EED2Ev.exit.i
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !91
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dereferenceable(8) %i.so) #21, !inline_history !163
end_hunk_1
