Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/commands.add-version?download=true
inline.NumInlined: 1594
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5vcpkg28command_add_version_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE:bb.a
  store i64 %i.qm, ptr %i.id, align 8, !tbaa !31
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc201.i, %bb.dh
  %i.qn = phi ptr [ %i.ql, %.noexc201.i ], [ %i.id, %bb.dh ] ; 2 uses
  switch i64 %i.qj, label %bb.dj [
    i64 1, label %bb.di
    i64 0, label %bb.dk
  ]

bb.di:                                            ; preds = %._crit_edge.i.i.i
  %i.qo = load i8, ptr %i.qh, align 1, !tbaa !31
  store i8 %i.qo, ptr %i.qn, align 1, !tbaa !31
  br label %bb.dk

bb.dj:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qn, ptr align 1 %i.qh, i64 %i.qj, i1 false)
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di, %._crit_edge.i.i.i
  %i.qp = load i64, ptr %i.c, align 8, !tbaa !18  ; 2 uses
  store i64 %i.qp, ptr %i.ie, align 8, !tbaa !50
  %i.qq = load ptr, ptr %i.ic, align 8, !tbaa !28
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qp
  store i8 0, ptr %i.qr, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  %i.qs = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #23
          to label %.noexc315.i unwind label %.body316.thread.i ; 10 uses

.noexc315.i:                                      ; preds = %bb.dk
  store ptr %i.qs, ptr %40, align 8, !tbaa !141
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 80 ; 3 uses
  store ptr %i.qt, ptr %i.if, align 8, !tbaa !144
  invoke void @_ZN5vcpkg17GitVersionDbEntryC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %i.qs, ptr noundef nonnull align 8 dereferenceable(80) %41)
          to label %_ZSt10_ConstructIN5vcpkg17GitVersionDbEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i unwind label %bb.dl

_ZSt10_ConstructIN5vcpkg17GitVersionDbEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %.noexc315.i
  store ptr %i.qt, ptr %i.ig, align 8, !tbaa !145
  %i.qu = load ptr, ptr %i.ic, align 8, !tbaa !28 ; 2 uses
  %i.qv = icmp eq ptr %i.qu, %i.id
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284

bb.dl:                                            ; preds = %.noexc315.i
  %i.qw = landingpad { ptr, i32 }
          catch ptr null
  %i.qx = extractvalue { ptr, i32 } %i.qw, 0
  %i.qy = call ptr @__cxa_begin_catch(ptr %i.qx) #21 ; 0 uses
  invoke void @__cxa_rethrow() #24
          to label %bb.do unwind label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qz = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body316.i unwind label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ra = landingpad { ptr, i32 }
          catch ptr null
  %i.rb = extractvalue { ptr, i32 } %i.ra, 0
  call void @__clang_call_terminate(ptr %i.rb) #25
  unreachable

bb.do:                                            ; preds = %bb.dl
  unreachable

.body316.thread.i:                                ; preds = %bb.dk
  %i.rc = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body316.i:                                       ; preds = %bb.dm
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef 80) #22
  br label %.body.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284: ; preds = %_ZSt10_ConstructIN5vcpkg17GitVersionDbEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.rd = load i64, ptr %i.id, align 8, !tbaa !31
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.qu, i64 noundef %i.re) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZSt10_ConstructIN5vcpkg17GitVersionDbEntryEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i284
  %i.rf = load ptr, ptr %i.hx, align 8, !tbaa !28 ; 2 uses
  %i.rg = icmp eq ptr %i.rf, %i.hy
  br i1 %i.rg, label %_ZN5vcpkg17GitVersionDbEntryD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.rh = load i64, ptr %i.hy, align 8, !tbaa !31
  %i.ri = add i64 %i.rh, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.ri) #22
  br label %_ZN5vcpkg17GitVersionDbEntryD2Ev.exit.i

_ZN5vcpkg17GitVersionDbEntryD2Ev.exit.i:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  invoke fastcc void @_ZN12_GLOBAL__N_119write_versions_fileERKN5vcpkg10FilesystemERKSt6vectorINS0_17GitVersionDbEntryESaIS5_EERKNS0_4PathE(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, ptr nonnull %i.qs, ptr nonnull %i.qt, ptr noundef nonnull align 8 dereferenceable(32) %i.ih)
          to label %bb.dp unwind label %bb.dv

bb.dp:                                            ; preds = %_ZN5vcpkg17GitVersionDbEntryD2Ev.exit.i
  br i1 %i.ad, label %bb.dq, label %.lr.ph.i.i.i.preheader.i

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #21
  %.sroa.074.0.copyload.i = load i64, ptr @_ZN5vcpkg31msgAddVersionAddedVersionToFileE, align 8, !tbaa !18
  %i.rj = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ih) #21 ; 2 uses
  %i.rk = extractvalue { ptr, i64 } %i.rj, 0
  %i.rl = extractvalue { ptr, i64 } %i.rj, 1
  invoke void @_ZN5vcpkg3msg6formatIJNS0_9version_tENS0_6path_tEEJNS_7VersionENS_10StringViewEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS8_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %42, i64 %.sroa.074.0.copyload.i, ptr nonnull %i.hw, ptr %i.rk, i64 %i.rl)
          to label %bb.dr unwind label %bb.dw

bb.dr:                                            ; preds = %bb.dq
  %i.rm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawEc(ptr noundef nonnull align 8 dereferenceable(32) %42, i8 noundef signext 32)
          to label %bb.ds unwind label %bb.dx     ; 2 uses

bb.ds:                                            ; preds = %bb.dr
  %.sroa.070.0.copyload.i = load i64, ptr @_ZN5vcpkg20msgAddVersionNewFileE, align 8, !tbaa !18
  invoke void @_ZN5vcpkg3msg9format_toIJEJEEEvRNS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS5_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.rm, i64 %.sroa.070.0.copyload.i)
          to label %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit.i unwind label %bb.dx

_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit.i: ; preds = %bb.ds
  %i.rn = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.rm) #21 ; 2 uses
  %i.ro = extractvalue { ptr, i64 } %i.rn, 0
  %i.rp = extractvalue { ptr, i64 } %i.rn, 1
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 50, ptr %i.ro, i64 %i.rp)
          to label %.noexc203.i unwind label %bb.dx

.noexc203.i:                                      ; preds = %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit.i
  invoke void @_ZN5vcpkg3msg22write_unlocalized_textENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr nonnull @.str.18, i64 1)
          to label %_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit.i unwind label %bb.dx

_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit.i: ; preds = %.noexc203.i
  %i.rq = load ptr, ptr %42, align 8, !tbaa !28   ; 2 uses
  %i.rr = icmp eq ptr %i.rq, %i.ii
  br i1 %i.rr, label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i: ; preds = %_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit.i
  %i.rs = load i64, ptr %i.ii, align 8, !tbaa !31
  %i.rt = add i64 %i.rs, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.rt) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit.i

_ZN5vcpkg15LocalizedStringD2Ev.exit.i:            ; preds = %_ZN5vcpkg3msg7printlnENS_5ColorERKNS_15LocalizedStringE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %.lr.ph.i.i.i.preheader.i

bb.dt:                                            ; preds = %.noexc.i.i.i.i
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg14SchemedVersionD2Ev.exit.i

bb.du:                                            ; preds = %.noexc.i.i
  %i.rv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rw = load ptr, ptr %i.hx, align 8, !tbaa !28 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.hy
  br i1 %i.rx, label %_ZN5vcpkg14SchemedVersionD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.du
  %i.ry = load i64, ptr %i.hy, align 8, !tbaa !31
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #22
  br label %_ZN5vcpkg14SchemedVersionD2Ev.exit.i

.body.i:                                          ; preds = %.body316.i, %.body316.thread.i
  %eh.lpad-body317405.i = phi { ptr, i32 } [ %i.rc, %.body316.thread.i ], [ %i.qz, %.body316.i ]
  call void @_ZN5vcpkg17GitVersionDbEntryD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %41) #21
  br label %_ZN5vcpkg14SchemedVersionD2Ev.exit.i

_ZN5vcpkg14SchemedVersionD2Ev.exit.i:             ; preds = %bb.du, %.body.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.dt
  %.pn171.i = phi { ptr, i32 } [ %i.rv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ru, %bb.dt ], [ %eh.lpad-body317405.i, %.body.i ], [ %i.rv, %bb.du ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #21
  br label %bb.dz

bb.dv:                                            ; preds = %_ZN5vcpkg17GitVersionDbEntryD2Ev.exit.i
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dw:                                            ; preds = %bb.dq
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit211.i

bb.dx:                                            ; preds = %.noexc203.i, %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit.i, %bb.ds, %bb.dr
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sd = load ptr, ptr %42, align 8, !tbaa !28   ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.ii
  br i1 %i.se, label %_ZN5vcpkg15LocalizedStringD2Ev.exit211.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i: ; preds = %bb.dx
  %i.sf = load i64, ptr %i.ii, align 8, !tbaa !31
  %i.sg = add i64 %i.sf, 1
  call void @_ZdlPvm(ptr noundef %i.sd, i64 noundef %i.sg) #22
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit211.i

_ZN5vcpkg15LocalizedStringD2Ev.exit211.i:         ; preds = %bb.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i, %bb.dw
  %.pn173.i = phi { ptr, i32 } [ %i.sb, %bb.dw ], [ %i.sc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i208.i ], [ %i.sc, %bb.dx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #21
  br label %bb.dy

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.dp, %_ZN5vcpkg15LocalizedStringD2Ev.exit.i
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qs, i64 48
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !28 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qs, i64 64 ; 2 uses
  %i.sk = icmp eq ptr %i.si, %i.sj
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i287: ; preds = %.lr.ph.i.i.i.preheader.i
  %i.sl = load i64, ptr %i.sj, align 8, !tbaa !31
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.preheader.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i287
  %i.sn = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !28 ; 2 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qs, i64 24 ; 2 uses
  %i.sq = icmp eq ptr %i.so, %i.sp
  br i1 %i.sq, label %_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.sr = load i64, ptr %i.sp, align 8, !tbaa !31
  %i.ss = add i64 %i.sr, 1
  call void @_ZdlPvm(ptr noundef %i.so, i64 noundef %i.ss) #22
  br label %_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5vcpkg17GitVersionDbEntryEEvPT_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qs, i64 noundef 80) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.hd

bb.dy:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit211.i, %bb.dv
  %.pn173.pn.i = phi { ptr, i32 } [ %.pn173.i, %_ZN5vcpkg15LocalizedStringD2Ev.exit211.i ], [ %i.sa, %bb.dv ]
  call void @_ZNSt6vectorIN5vcpkg17GitVersionDbEntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %40) #21
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %_ZN5vcpkg14SchemedVersionD2Ev.exit.i
  %.pn173.pn.pn.i = phi { ptr, i32 } [ %.pn173.pn.i, %bb.dy ], [ %.pn171.i, %_ZN5vcpkg14SchemedVersionD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #21
  br label %bb.hi

bb.ea:                                            ; preds = %bb.cp
  %i.st = load ptr, ptr %.sroa.gep.i, align 8, !tbaa !146 ; 3 uses
  %i.su = load ptr, ptr %spec.select.i.sroa.sel.sroa.gep339.i, align 8, !tbaa !146 ; 2 uses
  %.not346.i = icmp eq ptr %i.st, %i.su
  br i1 %.not346.i, label %.thread.i, label %.lr.ph.i290

.lr.ph.i290:                                      ; preds = %bb.ea
  %i.sv = load i64, ptr %i.hz, align 8, !tbaa !50 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %.sroa.0362.0537, i64 40
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !50 ; 3 uses
  %i.sy = icmp eq i64 %i.sv, 0
  %i.sz = icmp eq i64 %i.sx, 0
  %i.ta = load ptr, ptr %i.hw, align 8
  %i.tb = load i32, ptr %i.hv, align 8
  br label %bb.eb

._crit_edge.i:                                    ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i
  %.not177.i = icmp eq ptr %i.tv, null
  br i1 %.not177.i, label %bb.ez, label %bb.eg

bb.eb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i, %.lr.ph.i290
  %.0158350.i = phi ptr [ null, %.lr.ph.i290 ], [ %i.tv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i ] ; 2 uses
  %.0160349.i = phi ptr [ null, %.lr.ph.i290 ], [ %.2162.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i ] ; 3 uses
  %.0163348.i = phi ptr [ null, %.lr.ph.i290 ], [ %.1164.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i ] ; 5 uses
  %.sroa.0335.0347.i = phi ptr [ %i.st, %.lr.ph.i290 ], [ %i.tw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i ] ; 9 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0335.0347.i, i64 8
  %i.td = getelementptr inbounds nuw i8, ptr %.sroa.0335.0347.i, i64 16
  %i.te = load i64, ptr %i.td, align 8, !tbaa !50
  %i.tf = icmp eq i64 %i.te, %i.sv
  br i1 %i.tf, label %bb.ec, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i

bb.ec:                                            ; preds = %bb.eb
  br i1 %i.sy, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.ec
  %i.tg = load ptr, ptr %i.tc, align 8, !tbaa !28
  %bcmp.i.i292 = call i32 @bcmp(ptr %i.tg, ptr %i.ta, i64 %i.sv)
  %i.th = icmp eq i32 %bcmp.i.i292, 0
  br i1 %i.th, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.ec
  %i.ti = getelementptr inbounds nuw i8, ptr %.sroa.0335.0347.i, i64 40
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !147 ; 2 uses
  %i.tk = icmp eq i32 %i.tj, %i.tb
  %spec.select.i293 = select i1 %i.tk, ptr %.sroa.0335.0347.i, ptr %.0160349.i ; 2 uses
  %.not191.i = icmp eq ptr %.0163348.i, null
  br i1 %.not191.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.tl = getelementptr inbounds nuw i8, ptr %.0163348.i, i64 40
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !147
  %i.tn = icmp slt i32 %i.tm, %i.tj
  br i1 %i.tn, label %bb.ee, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i

bb.ee:                                            ; preds = %bb.ed, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i: ; preds = %bb.ee, %bb.ed, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.eb
  %.1164.i = phi ptr [ %.sroa.0335.0347.i, %bb.ee ], [ %.0163348.i, %bb.ed ], [ %.0163348.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.0163348.i, %bb.eb ] ; 2 uses
  %.2162.i = phi ptr [ %spec.select.i293, %bb.ee ], [ %spec.select.i293, %bb.ed ], [ %.0160349.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %.0160349.i, %bb.eb ] ; 5 uses
  %i.to = getelementptr inbounds nuw i8, ptr %.sroa.0335.0347.i, i64 48
  %i.tp = getelementptr inbounds nuw i8, ptr %.sroa.0335.0347.i, i64 56
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !50
  %i.tr = icmp eq i64 %i.tq, %i.sx
  br i1 %i.tr, label %bb.ef, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i

bb.ef:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i
  br i1 %i.sz, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.i: ; preds = %bb.ef
  %i.ts = load ptr, ptr %i.oz, align 8, !tbaa !28
  %i.tt = load ptr, ptr %i.to, align 8, !tbaa !28
  %bcmp.i214.i = call i32 @bcmp(ptr %i.tt, ptr %i.ts, i64 %i.sx)
  %bcmp.i214.fr.i = freeze i32 %bcmp.i214.i
  %i.tu = icmp eq i32 %bcmp.i214.fr.i, 0
  br i1 %i.tu, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.i, %bb.ef
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread343.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i
  %i.tv = phi ptr [ %.sroa.0335.0347.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.thread.i ], [ %.0158350.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit215.i ], [ %.0158350.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread341.i ] ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0335.0347.i, i64 80 ; 2 uses
  %.not.i291 = icmp eq ptr %i.tw, %i.su
  br i1 %.not.i291, label %._crit_edge.i, label %bb.eb

bb.eg:                                            ; preds = %._crit_edge.i
  %i.tx = icmp eq ptr %.2162.i, %i.tv
  br i1 %i.tx, label %bb.eh, label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  br i1 %i.ad, label %bb.ei, label %bb.hd

bb.ei:                                            ; preds = %bb.eh
  %.sroa.049.0.copyload.i = load i64, ptr @_ZN5vcpkg33msgAddVersionVersionAlreadyInFileE, align 8, !tbaa !18
  %i.ty = call { ptr, i64 } @_ZNK5vcpkg4PathcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ih) #21 ; 2 uses
  %i.tz = extractvalue { ptr, i64 } %i.ty, 0
  %i.ua = extractvalue { ptr, i64 } %i.ty, 1
  invoke void @_ZN5vcpkg3msg7printlnIJNS0_9version_tENS0_6path_tEEJNS_7VersionENS_10StringViewEEEEvNS_5ColorENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS8_E4typeET0_EE(i8 noundef signext 50, i64 %.sroa.049.0.copyload.i, ptr nonnull %i.hw, ptr %i.tz, i64 %i.ua)
          to label %bb.hd unwind label %bb.ej

bb.ej:                                            ; preds = %bb.hc, %bb.ha, %bb.gu, %bb.fy, %bb.fw, %bb.ei
  %i.ub = landingpad { ptr, i32 }
          cleanup
  br label %bb.hi

bb.ek:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #21
  %.sroa.045.0.copyload.i = load i64, ptr @_ZN5vcpkg34msgAddVersionPortFilesShaUnchangedE, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0362.0537) #21
  %.fca.0.load.i216.i = load ptr, ptr %32, align 8
  %.fca.1.load.i219.i = load i64, ptr %.fca.1.gep.i218.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  invoke void @_ZN5vcpkg3msg6formatIJNS0_14package_name_tENS0_9version_tEEJNS_10StringViewENS_7VersionEEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS8_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %43, i64 %.sroa.045.0.copyload.i, ptr %.fca.0.load.i216.i, i64 %.fca.1.load.i219.i, ptr nonnull %i.hw)
          to label %bb.el unwind label %bb.eu

bb.el:                                            ; preds = %bb.ek
  %i.uc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr nonnull @.str.24, i64 9)
          to label %bb.em unwind label %bb.ev

bb.em:                                            ; preds = %bb.el
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(32) %i.oz) #21
  %i.ud = load ptr, ptr %44, align 8
  %i.ue = load i64, ptr %i.ij, align 8
  %i.uf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.uc, ptr %i.ud, i64 %i.ue)
          to label %bb.en unwind label %bb.ev

bb.en:                                            ; preds = %bb.em
  %i.ug = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.uf, ptr nonnull @.str.25, i64 4)
          to label %bb.eo unwind label %bb.ev     ; 2 uses

bb.eo:                                            ; preds = %bb.en
  %.sroa.041.0.copyload.i = load i64, ptr @_ZN5vcpkg34msgAddVersionCommitChangesReminderE, align 8, !tbaa !18
  invoke void @_ZN5vcpkg3msg9format_toIJEJEEEvRNS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS5_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.ug, i64 %.sroa.041.0.copyload.i)
          to label %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit222.i unwind label %bb.ev

_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit222.i: ; preds = %bb.eo
  %i.uh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.ug, ptr nonnull @.str.26, i64 5)
          to label %bb.ep unwind label %bb.ev     ; 2 uses

bb.ep:                                            ; preds = %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit222.i
  %.sroa.040.0.copyload.i = load i64, ptr @_ZN5vcpkg27msgAddVersionNoFilesUpdatedE, align 8, !tbaa !18
  invoke void @_ZN5vcpkg3msg9format_toIJEJEEEvRNS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS5_E4typeET0_EE(ptr noundef nonnull align 8 dereferenceable(32) %i.uh, i64 %.sroa.040.0.copyload.i)
          to label %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit224.i unwind label %bb.ev

_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit224.i: ; preds = %bb.ep
  %i.ui = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNO5vcpkg15LocalizedString10append_rawENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %i.uh, ptr nonnull @.str.26, i64 5)
          to label %bb.eq unwind label %bb.ev     ; 2 uses

bb.eq:                                            ; preds = %_ZNO5vcpkg15LocalizedString6appendIJEJEEEOS0_NS_3msg8MessageTIJDpT_EEEDpNS3_6TagArgINS_8identityIS5_E4typeET0_EE.exit224.i
  %.sroa.039.0.copyload.i = load i64, ptr @_ZN5vcpkg9msgSeeURLE, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  store ptr @.str.16, ptr %31, align 8
  store i64 83, ptr %i.ik, align 8
  %i.uj = load ptr, ptr @_ZN5vcpkg3msg5url_t4nameE, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #21
  store ptr %i.il, ptr %30, align 16, !tbaa !68
  store i64 1, ptr %i.im, align 8, !tbaa !71
  store ptr %31, ptr %i.in, align 16, !tbaa !31
end_hunk_0
