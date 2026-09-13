Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/networkfilemanager?download=true
inline.NumInlined: 2372
inline.NumDeleted: 867
begin_hunk_0_@proj_download_file:bb.a
  ]

bb.ai:                                            ; preds = %._crit_edge.i.i189
  %i.ee = load i8, ptr %i.ay, align 1, !tbaa !38
  store i8 %i.ee, ptr %i.ed, align 1, !tbaa !38
  br label %bb.ak

bb.aj:                                            ; preds = %._crit_edge.i.i189
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ed, ptr nonnull align 1 %i.ay, i64 %i.dz, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %._crit_edge.i.i189
  %i.ef = load i64, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !69
  %i.eh = load ptr, ptr %11, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef
  store i8 0, ptr %i.ei, align 1, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  invoke void @_ZN5osgeo4proj2io15DatabaseContext18invalidateGridInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %i.du, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.ej = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.ek = icmp eq ptr %i.ej, %i.dy
  br i1 %i.ek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193: ; preds = %bb.al
  %i.el = load i64, ptr %i.dy, align 8, !tbaa !38
  %i.em = add i64 %i.el, 1
  call void @_ZdlPvm(ptr noundef %i.ej, i64 noundef %i.em) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  br label %bb.ap

bb.am:                                            ; preds = %bb.ae
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %.noexc.i190
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

bb.ao:                                            ; preds = %bb.ak
  %i.ep = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eq = load ptr, ptr %11, align 8, !tbaa !37   ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.dy
  br i1 %i.er, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.ao
  %i.es = load i64, ptr %i.dy, align 8, !tbaa !38
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.et) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196, %bb.an
  %.pn140 = phi { ptr, i32 } [ %i.eo, %bb.an ], [ %i.ep, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196 ], [ %i.ep, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #29
  call void @_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #29
  br label %.body

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit195, %_ZL16nfm_getDBcontextP6pj_ctx.exit
  %.not.i.i = icmp eq ptr %i.dx, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dx, i64 8 ; 4 uses
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 4294967297
  %i.ex = trunc i64 %i.ev to i32                  ; 2 uses
  br i1 %i.ew, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 0, ptr %i.eu, align 8, !tbaa !106
  %i.ey = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  store i32 0, ptr %i.ey, align 4, !tbaa !107
  %i.ez = load ptr, ptr %i.dx, align 8, !tbaa !21
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #29, !inline_history !285
  %i.fc = load ptr, ptr %i.dx, align 8, !tbaa !21
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #29, !inline_history !285
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.as:                                            ; preds = %bb.aq
  %i.ff = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i199 = icmp eq i8 %i.ff, 0
  br i1 %.not.i.i.i199, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fg = add nsw i32 %i.ex, -1
  store i32 %i.fg, ptr %i.eu, align 8, !tbaa !87
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.fh = atomicrmw volatile add ptr %i.eu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.au, %bb.at
  %.0.i.i.i.i = phi i32 [ %i.ex, %bb.at ], [ %i.fh, %bb.au ]
  %i.fi = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fi, label %bb.av, label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !84

bb.av:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dx) #29
  br label %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ae, %bb.ap, %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.fj = call i32 @getpid() #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.fk = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.74, i32 noundef %i.fj, ptr noundef nonnull %6) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  %i.fl = load ptr, ptr %7, align 8, !tbaa !37, !noalias !296
  %i.fm = load i64, ptr %i.at, align 8, !tbaa !69, !noalias !296 ; 3 uses
  %i.fn = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #29, !noalias !296 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.fo, ptr %12, align 8, !tbaa !81, !alias.scope !297
  %i.fp = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  store i64 0, ptr %i.fp, align 8, !tbaa !69, !alias.scope !297
  store i8 0, ptr %i.fo, align 8, !tbaa !38, !alias.scope !297
  %i.fq = add i64 %i.fn, %i.fm
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef %i.fq)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fr = load i64, ptr %i.fp, align 8, !tbaa !69, !alias.scope !297
  %i.fs = sub i64 4611686018427387903, %i.fr
  %i.ft = icmp ult i64 %i.fs, %i.fm
  br i1 %i.ft, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.aw
  %i.fu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %i.fl, i64 noundef %i.fm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.ax ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.fv = load i64, ptr %i.fp, align 8, !tbaa !69, !alias.scope !297
  %i.fw = sub i64 4611686018427387903, %i.fv
  %i.fx = icmp ult i64 %i.fw, %i.fn
  br i1 %i.fx, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.92) #32
          to label %.cont.i.i unwind label %bb.ax

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.fy = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %i.d, i64 noundef %i.fn)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.ax ; 0 uses

bb.ax:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZNSt12__shared_ptrIN5osgeo4proj2io15DatabaseContextELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %12, align 8, !tbaa !37, !alias.scope !297 ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.fo
  br i1 %i.gb, label %.body200, label %.body200.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29
  %i.gc = load ptr, ptr %12, align 8, !tbaa !37
  invoke void @_ZN5osgeo4proj11FileManager4openEP6pj_ctxPKcNS0_10FileAccessE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.71") align 8 %13, ptr noundef nonnull %.096349, ptr noundef %i.gc, i32 noundef 2)
          to label %bb.ay unwind label %bb.ba

bb.ay:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.gd = load ptr, ptr %13, align 8, !tbaa !173
  %.not362 = icmp eq ptr %i.gd, null
  br i1 %.not362, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ge = load ptr, ptr %12, align 8, !tbaa !37
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.096349, i32 noundef 1, ptr noundef nonnull @.str.75, ptr noundef %i.ge)
          to label %bb.fc unwind label %bb.bb

.body:                                            ; preds = %bb.am, %bb.af, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %.pn140.pn = phi { ptr, i32 } [ %.pn140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198 ], [ %i.en, %bb.am ], [ %i.dh, %bb.ac ], [ %i.dr, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  br label %bb.fd

bb.ba:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EED2Ev.exit286

bb.bb:                                            ; preds = %bb.az
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit277

bb.bc:                                            ; preds = %bb.ay
  %i.gh = invoke noalias noundef nonnull dereferenceable(1048576) ptr @_Znwm(i64 noundef 1048576) #31
          to label %bb.bd unwind label %bb.bk     ; 9 uses

bb.bd:                                            ; preds = %bb.bc
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1048576 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1048576) %i.gh, i8 0, i64 1048576, i1 false)
  %i.gj = call ptr @getenv(ptr noundef nonnull @.str.76) #29 ; 3 uses
  %.not144 = icmp eq ptr %i.gj, null
  br i1 %.not144, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !38
  %.not145 = icmp eq i8 %i.gk, 0
  br i1 %.not145, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gl = call i64 @__isoc23_strtol(ptr noundef nonnull %i.gj, ptr noundef null, i32 noundef 10) #29, !inline_history !1
  %sext = shl i64 %i.gl, 32                       ; 2 uses
  %i.gm = ashr exact i64 %sext, 32                ; 6 uses
  %i.gn = icmp ugt i64 %i.gm, 1048576
  br i1 %i.gn, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %i.go = icmp slt i64 %i.gm, 1048576
  br i1 %i.go, label %bb.bh, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.100) #32
          to label %.noexc301 unwind label %.thread350

.noexc301:                                        ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bg
  %20 = add nsw i64 %i.gm, -1048576
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %20, i64 1048576)
  %i.gp = add nuw nsw i64 %.sroa.speculated.i.i, 1048576 ; 2 uses
  %i.gq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gp) #31
          to label %.noexc302 unwind label %.thread350 ; 6 uses

.noexc302:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1048576
  store i8 0, ptr %i.gr, align 1, !tbaa !38
  %i.gs = add nsw i64 %i.gm, -1048577             ; 2 uses
  %i.gt = icmp eq i64 %i.gs, 0
  br i1 %i.gt, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.bi

bb.bi:                                            ; preds = %.noexc302
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 1048577
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.gu, i8 0, i64 %i.gs, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.bi, %.noexc302
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1048576) %i.gq, ptr noundef nonnull align 1 dereferenceable(1048576) %i.gh, i64 1048576, i1 false)
  call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef 1048576) #30
  %i.gv = getelementptr i8, ptr %i.gq, i64 %i.gm
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gp
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.bj:                                            ; preds = %bb.bf
  %.not363 = icmp eq i64 %sext, 4503599627370496
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gm
  %spec.select = select i1 %.not363, ptr %i.gi, ptr %i.gx
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.bk:                                            ; preds = %bb.bc
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit277

.thread350:                                       ; preds = %bb.bh, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.bj, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %bb.be, %bb.bd
  %.sroa.0317.0 = phi ptr [ %i.gh, %bb.bd ], [ %i.gh, %bb.be ], [ %i.gh, %bb.bj ], [ %i.gq, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i ] ; 10 uses
  %.sroa.21.0 = phi ptr [ %i.gi, %bb.bd ], [ %i.gi, %bb.be ], [ %spec.select, %bb.bj ], [ %i.gv, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i ] ; 2 uses
  %.sroa.36.0 = phi ptr [ %i.gi, %bb.bd ], [ %i.gi, %bb.be ], [ %i.gi, %bb.bj ], [ %i.gw, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  store i64 0, ptr %i.e, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #29
  %i.ha = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  store ptr %i.ha, ptr %14, align 8, !tbaa !81
  %i.hb = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store i64 0, ptr %i.hb, align 8, !tbaa !69
  store i8 0, ptr %i.ha, align 8, !tbaa !38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 1024, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.bo

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %.096349, i64 424
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !174
  %i.he = load ptr, ptr %6, align 8, !tbaa !37
  %i.hf = ptrtoint ptr %.sroa.21.0 to i64
  %i.hg = ptrtoint ptr %.sroa.0317.0 to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = load i64, ptr %i.hb, align 8, !tbaa !69
  %i.hj = load ptr, ptr %14, align 8, !tbaa !37
  %i.hk = getelementptr inbounds nuw i8, ptr %.096349, i64 456 ; 9 uses
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !171
  %i.hm = invoke noundef ptr %i.hd(ptr noundef nonnull %.096349, ptr noundef %i.he, i64 noundef 0, i64 noundef %i.hh, ptr noundef nonnull %.sroa.0317.0, ptr noundef nonnull %i.e, i64 noundef %i.hi, ptr noundef nonnull %i.hj, ptr noundef %i.hl)
          to label %bb.bl unwind label %bb.bp     ; 10 uses

bb.bl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %.not146 = icmp eq ptr %i.hm, null
  br i1 %.not146, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.hn = load ptr, ptr %14, align 8, !tbaa !37
  %i.ho = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hn) #35
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.ho, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit208 unwind label %bb.bp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit208: ; preds = %bb.bm
  %i.hp = load ptr, ptr %6, align 8, !tbaa !37
  %i.hq = load ptr, ptr %14, align 8, !tbaa !37
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.096349, i32 noundef 1, ptr noundef nonnull @.str.59, ptr noundef %i.hp, ptr noundef %i.hq)
          to label %bb.bn unwind label %bb.bp

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit208
  %i.hr = load ptr, ptr %13, align 8, !tbaa !173  ; 3 uses
  store ptr null, ptr %13, align 8, !tbaa !173
  %.not.i.i209 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i209, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i: ; preds = %bb.bn
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !21
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = load ptr, ptr %i.ht, align 8
  call void %i.hu(ptr noundef nonnull align 8 dereferenceable(73) %i.hr) #29, !inline_history !6
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.bn, %_ZNKSt14default_deleteIN5osgeo4proj4FileEEclEPS2_.exit.i.i
  %i.hv = load ptr, ptr %12, align 8, !tbaa !37
  %i.hw = invoke noundef zeroext i1 @_ZN5osgeo4proj11FileManager6unlinkEP6pj_ctxPKc(ptr noundef nonnull %.096349, ptr noundef %i.hv)
          to label %bb.ez unwind label %bb.bp     ; 0 uses

bb.bo:                                            ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.bp:                                            ; preds = %bb.bm, %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit208, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.bq:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.hz = call i64 @time(ptr noundef nonnull %i.f) #29 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %15, i64 32 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %15, i8 0, i64 16, i1 false)
  store ptr %i.ib, ptr %i.ia, align 8, !tbaa !81
  %i.ic = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  store i64 0, ptr %i.ic, align 8, !tbaa !69
  store i8 0, ptr %i.ib, align 8, !tbaa !38
  %i.id = getelementptr inbounds nuw i8, ptr %15, i64 48 ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %15, i64 64 ; 4 uses
  store ptr %i.ie, ptr %i.id, align 8, !tbaa !81
  %i.if = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 3 uses
  store i64 0, ptr %i.if, align 8, !tbaa !69
  store i8 0, ptr %i.ie, align 8, !tbaa !38
  %i.ig = invoke noundef zeroext i1 @_ZN5osgeo4proj11NetworkFile22get_props_from_headersEP6pj_ctxP19PROJ_NETWORK_HANDLERNS0_14FilePropertiesE(ptr noundef nonnull %.096349, ptr noundef nonnull %i.hm, ptr noundef nonnull align 8 dereferenceable(80) %15)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  br i1 %i.ig, label %bb.bv, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ih = getelementptr inbounds nuw i8, ptr %.096349, i64 432
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !175
  %i.ij = load ptr, ptr %i.hk, align 8, !tbaa !171
  invoke void %i.ii(ptr noundef nonnull %.096349, ptr noundef nonnull %i.hm, ptr noundef %i.ij)
          to label %bb.bt unwind label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ik = load ptr, ptr %13, align 8, !tbaa !173  ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !173
  %.not.i.i210 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i210, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke.sink.split

bb.bu:                                            ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke, %bb.cc, %bb.cb, %bb.bz, %bb.bx, %bb.bw, %bb.bs, %bb.bq
  %i.il = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.bv:                                            ; preds = %bb.br
  %i.im = load i64, ptr %i.e, align 8, !tbaa !82  ; 2 uses
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.096349, i32 noundef 1, ptr noundef nonnull @.str.77)
          to label %bb.bx unwind label %bb.bu

bb.bx:                                            ; preds = %bb.bw
  %i.io = getelementptr inbounds nuw i8, ptr %.096349, i64 432
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !175
  %i.iq = load ptr, ptr %i.hk, align 8, !tbaa !171
  invoke void %i.ip(ptr noundef nonnull %.096349, ptr noundef nonnull %i.hm, ptr noundef %i.iq)
          to label %bb.by unwind label %bb.bu

bb.by:                                            ; preds = %bb.bx
  %i.ir = load ptr, ptr %13, align 8, !tbaa !173  ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !173
  %.not.i.i213 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i213, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke.sink.split

bb.bz:                                            ; preds = %bb.bv
  %i.is = load ptr, ptr %13, align 8, !tbaa !173  ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !21
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iv = load ptr, ptr %i.iu, align 8
  %i.iw = invoke noundef i64 %i.iv(ptr noundef nonnull align 8 dereferenceable(73) %i.is, ptr noundef nonnull %.sroa.0317.0, i64 noundef %i.im)
          to label %bb.ca unwind label %bb.bu     ; 3 uses

bb.ca:                                            ; preds = %bb.bz
  %i.ix = load i64, ptr %i.e, align 8, !tbaa !82
  %.not147 = icmp eq i64 %i.iw, %i.ix
  br i1 %.not147, label %.preheader, label %bb.cb

.preheader:                                       ; preds = %bb.ca
  %i.iy = load i64, ptr %15, align 8, !tbaa !152  ; 2 uses
  %i.iz = icmp ult i64 %i.iw, %i.iy
  br i1 %i.iz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ja = getelementptr inbounds nuw i8, ptr %.096349, i64 448
  %.not156 = icmp eq ptr %3, null
  br label %bb.ce

bb.cb:                                            ; preds = %bb.ca
  invoke void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef nonnull %.096349, i32 noundef 1, ptr noundef nonnull @.str.78)
          to label %bb.cc unwind label %bb.bu

bb.cc:                                            ; preds = %bb.cb
  %i.jb = getelementptr inbounds nuw i8, ptr %.096349, i64 432
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !175
  %i.jd = load ptr, ptr %i.hk, align 8, !tbaa !171
  invoke void %i.jc(ptr noundef nonnull %.096349, ptr noundef nonnull %i.hm, ptr noundef %i.jd)
          to label %bb.cd unwind label %bb.bu

bb.cd:                                            ; preds = %bb.cc
  %i.je = load ptr, ptr %13, align 8, !tbaa !173  ; 2 uses
  store ptr null, ptr %13, align 8, !tbaa !173
  %.not.i.i216 = icmp eq ptr %i.je, null
  br i1 %.not.i.i216, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke, label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke.sink.split

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke.sink.split: ; preds = %bb.cd, %bb.by, %bb.bt
  %.sink517 = phi ptr [ %i.ir, %bb.by ], [ %i.ik, %bb.bt ], [ %i.je, %bb.cd ] ; 2 uses
  %i.jf = load ptr, ptr %.sink517, align 8, !tbaa !21
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(73) %.sink517) #29
  br label %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke

_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke: ; preds = %_ZNSt10unique_ptrIN5osgeo4proj4FileESt14default_deleteIS2_EE5resetEPS2_.exit218.invoke.sink.split, %bb.cd, %bb.by, %bb.bt
  %i.ji = load ptr, ptr %12, align 8, !tbaa !37
  %i.jj = invoke noundef zeroext i1 @_ZN5osgeo4proj11FileManager6unlinkEP6pj_ctxPKc(ptr noundef nonnull %.096349, ptr noundef %i.ji)
          to label %bb.ex unwind label %bb.bu     ; 0 uses

bb.ce:                                            ; preds = %.lr.ph, %bb.dd
  %i.jk = phi i64 [ %i.iy, %.lr.ph ], [ %i.mb, %bb.dd ] ; 2 uses
  %.0389 = phi i64 [ %i.iw, %.lr.ph ], [ %i.lr, %bb.dd ] ; 4 uses
  %.sroa.36.1388 = phi ptr [ %.sroa.36.0, %.lr.ph ], [ %.sroa.36.3, %bb.dd ] ; 8 uses
  %.sroa.21.1387 = phi ptr [ %.sroa.21.0, %.lr.ph ], [ %.sroa.21.2, %bb.dd ] ; 9 uses
  %.sroa.0317.1386 = phi ptr [ %.sroa.0317.0, %.lr.ph ], [ %.sroa.0317.3, %bb.dd ] ; 12 uses
  %i.jl = ptrtoint ptr %.sroa.21.1387 to i64      ; 2 uses
  %i.jm = ptrtoint ptr %.sroa.0317.1386 to i64    ; 2 uses
  %i.jn = sub i64 %i.jl, %i.jm                    ; 10 uses
  %i.jo = add i64 %.0389, %i.jn
  %i.jp = icmp ugt i64 %i.jo, %i.jk
  br i1 %i.jp, label %bb.cf, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit222

bb.cf:                                            ; preds = %bb.ce
  %i.jq = sub nuw i64 %i.jk, %.0389               ; 5 uses
end_hunk_0
