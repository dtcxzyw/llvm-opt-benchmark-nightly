inline.NumInlined: 2494
inline.NumDeleted: 1209
begin_hunk_0_@_ZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.fp = load i64, ptr %i.eq, align 8
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %.pre590, i64 noundef %i.fq) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i157, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i156
  %i.fr = load ptr, ptr %19, align 8              ; 2 uses
  %i.fs = icmp eq ptr %i.fr, %i.en
  br i1 %i.fs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158
  %i.ft = load i64, ptr %i.en, align 8
  %i.fu = add i64 %i.ft, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fu) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit158, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i159
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br i1 %i.fm, label %bb.bw, label %bb.az

bb.av:                                            ; preds = %bb.by, %.thread431, %bb.am
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body176

bb.aw:                                            ; preds = %bb.ao
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.ax:                                            ; preds = %.noexc.i153
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

bb.ay:                                            ; preds = %bb.as
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %19, align 8              ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.en
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162: ; preds = %bb.ay
  %i.gb = load i64, ptr %i.en, align 8
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162, %bb.ax
  %.pn95 = phi { ptr, i32 } [ %i.fx, %bb.ax ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i162 ], [ %i.fy, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.body169

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  %i.gd = getelementptr inbounds nuw i8, ptr %17, i64 56 ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ge) #29
          to label %bb.ba unwind label %bb.bd     ; 3 uses

bb.ba:                                            ; preds = %bb.az
  %i.gg = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc165 unwind label %bb.bd

.noexc165:                                        ; preds = %bb.ba
  br i1 %i.gg, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJRA26_KcEEEvDpOT_.exit, label %bb.bb

bb.bb:                                            ; preds = %.noexc165
  %i.gh = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc166 unwind label %bb.bd

.noexc166:                                        ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #28
  store ptr @.str, ptr %i.r, align 8
  invoke void @_ZN6Assimp6Logger4infoIJPKcRA26_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.gh, ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 1 dereferenceable(26) @.str.11)
          to label %.noexc167 unwind label %bb.bd

.noexc167:                                        ; preds = %.noexc166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJRA26_KcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJRA26_KcEEEvDpOT_.exit: ; preds = %.noexc167, %.noexc165
  %i.gi = invoke i32 @unzOpenCurrentFile(ptr noundef nonnull %i.cf)
          to label %.preheader unwind label %bb.bd ; 0 uses

.preheader:                                       ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJRA26_KcEEEvDpOT_.exit, %bb.bf
  %.087 = phi i64 [ %i.gt, %bb.bf ], [ 0, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJRA26_KcEEEvDpOT_.exit ] ; 4 uses
  %i.gj = load i64, ptr %i.gd, align 8
  %i.gk = call i64 @llvm.umin.i64(i64 %i.gj, i64 32767) ; 2 uses
  %i.gl = trunc nuw nsw i64 %i.gk to i32
  %i.gm = call noalias ptr @malloc(i64 noundef %i.gk) #33 ; 4 uses
  %i.gn = invoke i32 @unzReadCurrentFile(ptr noundef nonnull %i.cf, ptr noundef %i.gm, i32 noundef %i.gl)
          to label %bb.bc unwind label %bb.be     ; 2 uses

bb.bc:                                            ; preds = %.preheader
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %bb.bf, label %bb.bg

bb.bd:                                            ; preds = %.noexc166, %bb.bb, %bb.ba, %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogInfoIJRA26_KcEEEvDpOT_.exit, %bb.az
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.be:                                            ; preds = %.preheader
  %i.gq = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.bf:                                            ; preds = %bb.bc
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.087
  %i.gs = zext nneg i32 %i.gn to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gr, ptr align 1 %i.gm, i64 %i.gs, i1 false)
  %i.gt = add i64 %.087, %i.gs
  call void @free(ptr noundef %i.gm) #28
  br label %.preheader, !llvm.loop !11

bb.bg:                                            ; preds = %bb.bc
  call void @free(ptr noundef %i.gm) #28
  %i.gu = icmp ne i64 %.087, 0
  %i.gv = load i64, ptr %i.gd, align 8
  %.not97 = icmp eq i64 %.087, %i.gv
  %or.cond = select i1 %i.gu, i1 %.not97, i1 false
  br i1 %or.cond, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.gf) #32
  %i.gw = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #28
  store ptr @.str, ptr %i.q, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA34_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.gw, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 1 dereferenceable(34) @.str.12)
          to label %.invoke unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #28
  call void @__cxa_free_exception(ptr nonnull %i.gw) #28
  br label %.body169

bb.bj:                                            ; preds = %.invoke, %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.bk
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.body169

bb.bk:                                            ; preds = %bb.bg
  %i.gz = invoke i32 @unzCloseCurrentFile(ptr noundef nonnull %i.cf)
          to label %bb.bl unwind label %bb.bj     ; 0 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ha = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #29
          to label %bb.bm unwind label %bb.bv     ; 9 uses

bb.bm:                                            ; preds = %bb.bl
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store i32 1, ptr %i.hb, align 8, !noalias !13
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 1, ptr %i.hc, align 4, !noalias !13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ha, align 8, !noalias !13
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 16 ; 2 uses
  %i.he = load i64, ptr %i.gd, align 8, !noalias !13
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %i.hd, align 8, !noalias !13
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %i.gf, ptr %i.hf, align 8, !noalias !13
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store i64 %i.he, ptr %i.hg, align 8, !noalias !13
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store i64 0, ptr %i.hh, align 8, !noalias !13
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store i8 1, ptr %i.hi, align 8, !noalias !13
  store ptr %i.hd, ptr %12, align 8
  store ptr %i.ha, ptr %i.ak, align 8
  %i.hj = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 4294967297
  %i.hl = trunc i64 %i.hj to i32                  ; 2 uses
  br i1 %i.hk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %i.aw, align 8
  store i32 0, ptr %i.ax, align 4
  %i.hm = load ptr, ptr %i.al, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !16
  %i.hp = load ptr, ptr %i.al, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28, !inline_history !16
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bo:                                            ; preds = %bb.bm
  %i.hs = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.hs, 0
  br i1 %.not.i.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ht = add nsw i32 %i.hl, -1
  store i32 %i.ht, ptr %i.aw, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.hu = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i = phi i32 [ %i.hl, %bb.bp ], [ %i.hu, %bb.bq ]
  %i.hv = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.hv, label %bb.br, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.br:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al) #28
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.br, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bn
  %i.hw = invoke i32 @unzGoToNextFile(ptr noundef nonnull %i.cf)
          to label %bb.bs unwind label %bb.bj

bb.bs:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.hx = icmp eq i32 %i.hw, -100
  br i1 %i.hx, label %bb.bt, label %.thread431

bb.bt:                                            ; preds = %bb.bs
  %i.hy = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #28
  store ptr @.str, ptr %i.p, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA44_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 1 dereferenceable(44) @.str.13)
          to label %.invoke unwind label %bb.bu

.invoke:                                          ; preds = %bb.bh, %bb.bt
  %i.hz = phi ptr [ %i.hy, %bb.bt ], [ %i.gw, %bb.bh ]
  invoke void @__cxa_throw(ptr nonnull %i.hz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.cont unwind label %bb.bj

.cont:                                            ; preds = %.invoke
  unreachable

bb.bu:                                            ; preds = %bb.bt
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #28
  call void @__cxa_free_exception(ptr nonnull %i.hy) #28
  br label %.body169

bb.bv:                                            ; preds = %bb.bl
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body169

.thread431:                                       ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  %i.ic = invoke i32 @unzClose(ptr noundef nonnull %i.cf)
          to label %bb.ca unwind label %bb.av     ; 0 uses

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %bb.ao

.body169:                                         ; preds = %bb.bd, %bb.bv, %bb.be, %bb.bj, %bb.bu, %bb.bi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164, %bb.aw
  %.pn98.pn.pn.pn = phi { ptr, i32 } [ %i.fw, %bb.aw ], [ %.pn95, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit164 ], [ %i.gp, %bb.bd ], [ %i.gq, %bb.be ], [ %i.ib, %bb.bv ], [ %i.gx, %bb.bi ], [ %i.gy, %bb.bj ], [ %i.ia, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body176

bb.bx:                                            ; preds = %bb.an
  %i.id = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #28
  store ptr @.str, ptr %i.o, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcRA44_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 1 dereferenceable(44) @.str.14)
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %bb.bx
  invoke void @__cxa_throw(ptr nonnull %i.id, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.noexc175 unwind label %bb.av

.noexc175:                                        ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #28
  call void @__cxa_free_exception(ptr nonnull %i.id) #28
  br label %.body176

bb.ca:                                            ; preds = %.thread431
  %i.if = load ptr, ptr %15, align 8              ; 2 uses
  %i.ig = icmp eq ptr %i.if, %i.co
  br i1 %i.ig, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179: ; preds = %bb.ca
  %i.ih = load i64, ptr %i.co, align 8
  %i.ii = add i64 %i.ih, 1
  call void @_ZdlPvm(ptr noundef %i.if, i64 noundef %i.ii) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i179
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %.pre591 = load ptr, ptr %12, align 8
  %.pre592 = load ptr, ptr %i.ak, align 8
  br label %bb.cb

.body176:                                         ; preds = %bb.av, %bb.bz, %.body169, %bb.al
  %.pn103 = phi { ptr, i32 } [ %i.ek, %bb.al ], [ %.pn98.pn.pn.pn, %.body169 ], [ %i.fv, %bb.av ], [ %i.ie, %bb.bz ] ; 2 uses
  %i.ij = load ptr, ptr %15, align 8              ; 2 uses
  %i.ik = icmp eq ptr %i.ij, %i.co
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182: ; preds = %.body176
  %i.il = load i64, ptr %i.co, align 8
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ij, i64 noundef %i.im) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184: ; preds = %.body176, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182, %bb.aa
  %.pn103.pn = phi { ptr, i32 } [ %i.db, %bb.aa ], [ %.pn103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i182 ], [ %.pn103, %.body176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %.body131

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.in = phi ptr [ %.pre592, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  %i.io = phi ptr [ %.pre591, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit181 ], [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  store ptr %i.io, ptr %21, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr null, ptr %i.ak, align 8
  store ptr %i.in, ptr %i.ip, align 8
  store ptr null, ptr %12, align 8
  %i.iq = invoke noundef ptr @_ZN6Assimp4STEP14ReadFileHeaderESt10shared_ptrINS_8IOStreamEE(ptr noundef nonnull %21)
          to label %bb.cc unwind label %bb.cp

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.iq, ptr %20, align 8
  %i.ir = load ptr, ptr %i.ip, align 8            ; 8 uses
  %.not.i.i185 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i185, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8 ; 4 uses
  %i.it = load atomic i64, ptr %i.is acquire, align 8 ; 2 uses
  %i.iu = icmp eq i64 %i.it, 4294967297
  %i.iv = trunc i64 %i.it to i32                  ; 2 uses
  br i1 %i.iu, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  store i32 0, ptr %i.is, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  store i32 0, ptr %i.iw, align 4
  %i.ix = load ptr, ptr %i.ir, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  call void %i.iz(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !18
  %i.ja = load ptr, ptr %i.ir, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28, !inline_history !18
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.cf:                                            ; preds = %bb.cd
  %i.jd = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i186 = icmp eq i8 %i.jd, 0
  br i1 %.not.i.i.i186, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.je = add nsw i32 %i.iv, -1
  store i32 %i.je, ptr %i.is, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187

bb.ch:                                            ; preds = %bb.cf
  %i.jf = atomicrmw volatile add ptr %i.is, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187: ; preds = %bb.ch, %bb.cg
  %.0.i.i.i.i188 = phi i32 [ %i.iv, %bb.cg ], [ %i.jf, %bb.ch ]
  %i.jg = icmp eq i32 %.0.i.i.i.i188, 1
  br i1 %i.jg, label %bb.ci, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.ci:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ir) #28
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.cc, %bb.ce, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i187, %bb.ci
  %i.jh = load ptr, ptr %20, align 8              ; 10 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 64 ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jh, i64 72 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8            ; 4 uses
  %.not107.not = icmp eq i64 %i.jk, 0
  %.pre595 = load ptr, ptr %i.ji, align 8, !noalias !19 ; 2 uses
  br i1 %.not107.not, label %.critedge.thread, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  %i.jl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  %spec.select.i.i.i190 = call noundef i64 @llvm.umin.i64(i64 %i.jk, i64 4) ; 4 uses
  %cond = icmp eq i64 %i.jk, 1
  br i1 %cond, label %.critedge.thread708, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jl, ptr align 1 %.pre595, i64 %spec.select.i.i.i190, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %spec.select.i.i.i190, ptr %i.jm, align 8, !alias.scope !20
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 %spec.select.i.i.i190
  store i8 0, ptr %i.jn, align 1
  %i.jo = icmp ugt i64 %i.jk, 3
  br i1 %i.jo, label %.critedge, label %.critedge.thread708

.critedge.thread708:                              ; preds = %bb.cj, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.critedge..critedge.thread_crit_edge

.critedge:                                        ; preds = %bb.ck
  %bcmp.i.i194 = call i32 @bcmp(ptr nonnull %i.jl, ptr nonnull @.str.15, i64 %spec.select.i.i.i190)
  %.not785 = icmp eq i32 %bcmp.i.i194, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br i1 %.not785, label %bb.cs, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.critedge.thread708, %.critedge
  %.pre594 = load ptr, ptr %i.ji, align 8, !noalias !23
  %.pre596 = load i64, ptr %i.jj, align 8, !noalias !23
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge..critedge.thread_crit_edge, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.jp = phi i64 [ %.pre596, %.critedge..critedge.thread_crit_edge ], [ 0, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.jq = phi ptr [ %.pre594, %.critedge..critedge.thread_crit_edge ], [ %.pre595, %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.jr = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 5 uses
  store ptr %i.jr, ptr %23, align 8, !alias.scope !26
  %i.js = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  store i64 0, ptr %i.js, align 8, !alias.scope !26
  store i8 0, ptr %i.jr, align 8, !alias.scope !26
  %i.jt = add i64 %i.jp, 26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.jt)
          to label %bb.cl unwind label %bb.cm

bb.cl:                                            ; preds = %.critedge.thread
  %i.ju = load i64, ptr %i.js, align 8, !alias.scope !26
  %i.jv = add i64 %i.ju, -4611686018427387878
  %i.jw = icmp ult i64 %i.jv, 26
  br i1 %i.jw, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.cl
  %i.jx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.16, i64 noundef 26)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.cm ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.jy = load i64, ptr %i.js, align 8, !alias.scope !26
  %i.jz = sub i64 4611686018427387903, %i.jy
  %i.ka = icmp ult i64 %i.jz, %i.jp
  br i1 %i.ka, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.cont.i.i unwind label %bb.cm

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.kb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %i.jq, i64 noundef %i.jp)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.cm ; 0 uses

bb.cm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %.critedge.thread
  %i.kc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.kd = load ptr, ptr %23, align 8, !alias.scope !26 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, %i.jr
  br i1 %i.ke, label %.body199, label %.body199.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  %i.kf = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28
  store ptr @.str, ptr %i.n, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.kf, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  invoke void @__cxa_throw(ptr nonnull %i.kf, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %.noexc201 unwind label %bb.cr

.noexc201:                                        ; preds = %bb.cn
  unreachable

bb.co:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28
  call void @__cxa_free_exception(ptr nonnull %i.kf) #28
  br label %.body202

bb.cp:                                            ; preds = %bb.cb
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %21) #28
  br label %bb.hp

bb.cq:                                            ; preds = %bb.cs
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %bb.ho

bb.cr:                                            ; preds = %bb.cn
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %.body202

.body202:                                         ; preds = %bb.co, %bb.cr
  %eh.lpad-body203 = phi { ptr, i32 } [ %i.kj, %bb.cr ], [ %i.kg, %bb.co ] ; 2 uses
  %i.kk = load ptr, ptr %23, align 8              ; 2 uses
  %i.kl = icmp eq ptr %i.kk, %i.jr
  br i1 %i.kl, label %.body199, label %.body199.sink.split

.body199.sink.split:                              ; preds = %.body202, %bb.cm
  %.sink = phi ptr [ %i.kd, %bb.cm ], [ %i.kk, %.body202 ]
  %.pn108.ph = phi { ptr, i32 } [ %i.kc, %bb.cm ], [ %eh.lpad-body203, %.body202 ]
  %i.km = load i64, ptr %i.jr, align 8
  %i.kn = add i64 %i.km, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.kn) #32
  br label %.body199

.body199:                                         ; preds = %.body199.sink.split, %.body202, %bb.cm
  %.pn108 = phi { ptr, i32 } [ %i.kc, %bb.cm ], [ %eh.lpad-body203, %.body202 ], [ %.pn108.ph, %.body199.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  br label %bb.ho

bb.cs:                                            ; preds = %.critedge
  %i.ko = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.ct unwind label %bb.cq

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.ko, label %bb.de, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #28
  store i8 39, ptr %i.y, align 1
  %i.kp = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc210 unwind label %bb.cy

.noexc210:                                        ; preds = %bb.cu
  br i1 %i.kp, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit, label %bb.cv

bb.cv:                                            ; preds = %.noexc210
  %i.kq = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc211 unwind label %bb.cy

.noexc211:                                        ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #28
  store ptr @.str, ptr %i.m, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA17_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.kq, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 1 dereferenceable(17) @.str.17, ptr noundef nonnull align 8 dereferenceable(32) %i.ji, ptr noundef nonnull align 1 dereferenceable(1) %i.y)
          to label %.noexc212 unwind label %bb.cy

.noexc212:                                        ; preds = %.noexc211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit: ; preds = %.noexc212, %.noexc210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #28
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.ks = load i64, ptr %i.kr, align 8
  %.not110 = icmp eq i64 %i.ks, 0
  br i1 %.not110, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcEEEvDpOT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #28
  store i8 39, ptr %i.z, align 1
  %i.kt = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
end_hunk_0
begin_hunk_1_@_ZN6Assimp11IFCImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.ahp = fmul float %i.aeu, %i.afr
  %i.ahq = call float @llvm.fmuladd.f32(float %i.afh, float %i.aeq, float %i.ahp)
  %i.ahr = call float @llvm.fmuladd.f32(float %i.agb, float %i.aeo, float %i.ahq)
  %i.ahs = call float @llvm.fmuladd.f32(float %i.agm, float 0.000000e+00, float %i.ahr)
  %i.aht = fmul float %i.aev, %i.afk
  %i.ahu = call float @llvm.fmuladd.f32(float %i.aez, float %i.aeq, float %i.aht)
  %i.ahv = call float @llvm.fmuladd.f32(float %i.afu, float %i.aex, float %i.ahu)
  %i.ahw = call float @llvm.fmuladd.f32(float %i.age, float 0.000000e+00, float %i.ahv)
  %i.ahx = fmul float %i.aev, %i.afm
  %i.ahy = call float @llvm.fmuladd.f32(float %i.afb, float %i.aeq, float %i.ahx)
  %i.ahz = call float @llvm.fmuladd.f32(float %i.afx, float %i.aex, float %i.ahy)
  %i.aia = call float @llvm.fmuladd.f32(float %i.agh, float 0.000000e+00, float %i.ahz)
  %i.aib = fmul float %i.aev, %i.afo
  %i.aic = call float @llvm.fmuladd.f32(float %i.afe, float %i.aeq, float %i.aib)
  %i.aid = call float @llvm.fmuladd.f32(float %i.afz, float %i.aex, float %i.aic)
  %i.aie = call float @llvm.fmuladd.f32(float %i.agk, float 0.000000e+00, float %i.aid)
  %i.aif = fmul float %i.aev, %i.afr
  %i.aig = call float @llvm.fmuladd.f32(float %i.afh, float %i.aeq, float %i.aif)
  %i.aih = call float @llvm.fmuladd.f32(float %i.agb, float %i.aex, float %i.aig)
  %i.aii = call float @llvm.fmuladd.f32(float %i.agm, float 0.000000e+00, float %i.aih)
  %i.aij = call float @llvm.fmuladd.f32(float %i.aez, float %i.aes, float %i.agn)
  %i.aik = call float @llvm.fmuladd.f32(float %i.afu, float %i.aes, float %i.aij)
  %i.ail = fadd float %i.aik, %i.age
  %i.aim = call float @llvm.fmuladd.f32(float %i.afb, float %i.aes, float %i.agr)
  %i.ain = call float @llvm.fmuladd.f32(float %i.afx, float %i.aes, float %i.aim)
  %i.aio = fadd float %i.ain, %i.agh
  %i.aip = call float @llvm.fmuladd.f32(float %i.afe, float %i.aes, float %i.agv)
  %i.aiq = call float @llvm.fmuladd.f32(float %i.afz, float %i.aes, float %i.aip)
  %i.air = fadd float %i.aiq, %i.agk
  %i.ais = call float @llvm.fmuladd.f32(float %i.afh, float %i.aes, float %i.agz)
  %i.ait = call float @llvm.fmuladd.f32(float %i.agb, float %i.aes, float %i.ais)
  %i.aiu = fadd float %i.ait, %i.agm
  %i.aiv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aiw = load ptr, ptr %i.aiv, align 8          ; 4 uses
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 1028 ; 2 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 1044 ; 2 uses
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiw, i64 1060 ; 2 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %i.aiw, i64 1076 ; 2 uses
  %i.ajb = load <4 x float>, ptr %i.aix, align 4  ; 4 uses
  %i.ajc = load <4 x float>, ptr %i.aiy, align 4  ; 4 uses
  %i.ajd = insertelement <4 x float> poison, float %i.agu, i64 0
  %i.aje = shufflevector <4 x float> %i.ajd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajf = fmul <4 x float> %i.aje, %i.ajc
  %i.ajg = insertelement <4 x float> poison, float %i.agq, i64 0
  %i.ajh = shufflevector <4 x float> %i.ajg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aji = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajb, <4 x float> %i.ajh, <4 x float> %i.ajf)
  %i.ajj = load <4 x float>, ptr %i.aiz, align 4  ; 4 uses
  %i.ajk = insertelement <4 x float> poison, float %i.agy, i64 0
  %i.ajl = shufflevector <4 x float> %i.ajk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajj, <4 x float> %i.ajl, <4 x float> %i.aji)
  %i.ajn = load <4 x float>, ptr %i.aja, align 4  ; 4 uses
  %i.ajo = insertelement <4 x float> poison, float %i.ahc, i64 0
  %i.ajp = shufflevector <4 x float> %i.ajo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.ajp, <4 x float> %i.ajm)
  store <4 x float> %i.ajq, ptr %i.aix, align 4
  %i.ajr = insertelement <4 x float> poison, float %i.ahk, i64 0
  %i.ajs = shufflevector <4 x float> %i.ajr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajt = fmul <4 x float> %i.ajs, %i.ajc
  %i.aju = insertelement <4 x float> poison, float %i.ahg, i64 0
  %i.ajv = shufflevector <4 x float> %i.aju, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajb, <4 x float> %i.ajv, <4 x float> %i.ajt)
  %i.ajx = insertelement <4 x float> poison, float %i.aho, i64 0
  %i.ajy = shufflevector <4 x float> %i.ajx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajj, <4 x float> %i.ajy, <4 x float> %i.ajw)
  %i.aka = insertelement <4 x float> poison, float %i.ahs, i64 0
  %i.akb = shufflevector <4 x float> %i.aka, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.akb, <4 x float> %i.ajz)
  store <4 x float> %i.akc, ptr %i.aiy, align 4
  %i.akd = insertelement <4 x float> poison, float %i.aia, i64 0
  %i.ake = shufflevector <4 x float> %i.akd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akf = fmul <4 x float> %i.ake, %i.ajc
  %i.akg = insertelement <4 x float> poison, float %i.ahw, i64 0
  %i.akh = shufflevector <4 x float> %i.akg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aki = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajb, <4 x float> %i.akh, <4 x float> %i.akf)
  %i.akj = insertelement <4 x float> poison, float %i.aie, i64 0
  %i.akk = shufflevector <4 x float> %i.akj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajj, <4 x float> %i.akk, <4 x float> %i.aki)
  %i.akm = insertelement <4 x float> poison, float %i.aii, i64 0
  %i.akn = shufflevector <4 x float> %i.akm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ako = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.akn, <4 x float> %i.akl)
  store <4 x float> %i.ako, ptr %i.aiz, align 4
  %i.akp = insertelement <4 x float> poison, float %i.aio, i64 0
  %i.akq = shufflevector <4 x float> %i.akp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akr = fmul <4 x float> %i.akq, %i.ajc
  %i.aks = insertelement <4 x float> poison, float %i.ail, i64 0
  %i.akt = shufflevector <4 x float> %i.aks, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aku = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajb, <4 x float> %i.akt, <4 x float> %i.akr)
  %i.akv = insertelement <4 x float> poison, float %i.air, i64 0
  %i.akw = shufflevector <4 x float> %i.akv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajj, <4 x float> %i.akw, <4 x float> %i.aku)
  %i.aky = insertelement <4 x float> poison, float %i.aiu, i64 0
  %i.akz = shufflevector <4 x float> %i.aky, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ala = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajn, <4 x float> %i.akz, <4 x float> %i.akx)
  store <4 x float> %i.ala, ptr %i.aja, align 4
  %i.alb = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %bb.ha unwind label %bb.hd

bb.ha:                                            ; preds = %bb.gz
  br i1 %i.alb, label %bb.hf, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #28
  %i.alc = load ptr, ptr %20, align 8
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alc, i64 376
  %i.ale = load i64, ptr %i.ald, align 8
  store i64 %i.ale, ptr %i.ab, align 8
  %i.alf = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc310 unwind label %bb.he

.noexc310:                                        ; preds = %bb.hb
  br i1 %i.alf, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit, label %bb.hc

bb.hc:                                            ; preds = %.noexc310
  %i.alg = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc311 unwind label %bb.he

.noexc311:                                        ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger5debugIJPKcRA17_S2_mRA16_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.alg, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(17) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 1 dereferenceable(16) @.str.31)
          to label %.noexc312 unwind label %bb.he

.noexc312:                                        ; preds = %.noexc311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit: ; preds = %.noexc312, %.noexc310
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #28
  br label %bb.hf

bb.hd:                                            ; preds = %bb.gz
  %i.alh = landingpad { ptr, i32 }
          cleanup
  br label %.body294

bb.he:                                            ; preds = %.noexc311, %bb.hc, %bb.hb
  %i.ali = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #28
  br label %.body294

bb.hf:                                            ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE8LogDebugIJRA17_KcmRA16_S4_EEEvDpOT_.exit, %bb.ha
  call void @_ZN6Assimp3IFC14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  %i.alj = load ptr, ptr %i.le, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PFPN6Assimp4STEP6ObjectERKNS9_2DBERKNS9_7EXPRESS4LISTEEESt10_Select1stISL_ESt4lessIS5_ESaISL_EE8_M_eraseEPSt13_Rb_tree_nodeISL_E(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %i.alj)
          to label %_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit unwind label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.alk = landingpad { ptr, i32 }
          catch ptr null
  %i.all = extractvalue { ptr, i32 } %i.alk, 0
  call void @__clang_call_terminate(ptr %i.all) #31
  unreachable

_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit: ; preds = %bb.hf
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.alm = load ptr, ptr %20, align 8             ; 3 uses
  %.not.i313 = icmp eq ptr %i.alm, null
  br i1 %.not.i313, label %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN6Assimp4STEP2DBEEclEPS2_.exit.i

_ZNKSt14default_deleteIN6Assimp4STEP2DBEEclEPS2_.exit.i: ; preds = %_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit
  call void @_ZN6Assimp4STEP2DBD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %i.alm) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.alm, i64 noundef 392) #32
  br label %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev.exit, %_ZNKSt14default_deleteIN6Assimp4STEP2DBEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.aln = load ptr, ptr %i.ak, align 8           ; 8 uses
  %.not.i.i314 = icmp eq ptr %i.aln, null
  br i1 %.not.i.i314, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318, label %bb.hh

bb.hh:                                            ; preds = %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit
  %i.alo = getelementptr inbounds nuw i8, ptr %i.aln, i64 8 ; 4 uses
  %i.alp = load atomic i64, ptr %i.alo acquire, align 8 ; 2 uses
  %i.alq = icmp eq i64 %i.alp, 4294967297
  %i.alr = trunc i64 %i.alp to i32                ; 2 uses
  br i1 %i.alq, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %bb.hh
  store i32 0, ptr %i.alo, align 8
  %i.als = getelementptr inbounds nuw i8, ptr %i.aln, i64 12
  store i32 0, ptr %i.als, align 4
  %i.alt = load ptr, ptr %i.aln, align 8
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 16
  %i.alv = load ptr, ptr %i.alu, align 8
  call void %i.alv(ptr noundef nonnull align 8 dereferenceable(16) %i.aln) #28, !inline_history !18
  %i.alw = load ptr, ptr %i.aln, align 8
  %i.alx = getelementptr inbounds nuw i8, ptr %i.alw, i64 24
  %i.aly = load ptr, ptr %i.alx, align 8
  call void %i.aly(ptr noundef nonnull align 8 dereferenceable(16) %i.aln) #28, !inline_history !18
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318

bb.hj:                                            ; preds = %bb.hh
  %i.alz = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i315 = icmp eq i8 %i.alz, 0
  br i1 %.not.i.i.i315, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ama = add nsw i32 %i.alr, -1
  store i32 %i.ama, ptr %i.alo, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316

bb.hl:                                            ; preds = %bb.hj
  %i.amb = atomicrmw volatile add ptr %i.alo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316: ; preds = %bb.hl, %bb.hk
  %.0.i.i.i.i317 = phi i32 [ %i.alr, %bb.hk ], [ %i.amb, %bb.hl ]
  %i.amc = icmp eq i32 %.0.i.i.i.i317, 1
  br i1 %i.amc, label %bb.hm, label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318, !prof !17

bb.hm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aln) #28
  br label %_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318

_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit318: ; preds = %_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev.exit, %bb.hi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i316, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  ret void

.body294:                                         ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.hd, %bb.he, %.body207.thread.i, %.body207.i, %bb.dz
  %.pn119.pn = phi { ptr, i32 } [ %.pn114.pn.pn.pn.pn.i, %.body207.i ], [ %i.alh, %bb.hd ], [ %i.sg, %bb.dz ], [ %.pn114.pn.pn.pn.pn.i, %.body207.thread.i ], [ %i.ali, %bb.he ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit438, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp439, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6Assimp3IFC14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %26) #28
  br label %bb.hn

bb.hn:                                            ; preds = %.body294, %bb.gt
  %.pn119.pn.pn = phi { ptr, i32 } [ %.pn119.pn, %.body294 ], [ %i.adv, %bb.gt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %.body231

.body231:                                         ; preds = %bb.dm, %bb.dk, %bb.hn, %bb.dl
  %.pn119.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mn, %bb.dl ], [ %.pn119.pn.pn, %bb.hn ], [ %i.mm, %bb.dk ], [ %i.mo, %bb.dm ]
  call void @_ZN6Assimp4STEP7EXPRESS16ConversionSchemaD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %24) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %bb.ho

bb.ho:                                            ; preds = %.body231, %bb.dd, %bb.cz, %bb.cy, %.body199, %bb.cq
  %.pn119.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn, %.body231 ], [ %i.lc, %bb.dd ], [ %i.kw, %bb.cz ], [ %i.kv, %bb.cy ], [ %i.ki, %bb.cq ], [ %.pn108, %.body199 ]
  call void @_ZNSt10unique_ptrIN6Assimp4STEP2DBESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #28
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.cp
  %.pn119.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn.pn, %bb.ho ], [ %i.kh, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.body131

.body131:                                         ; preds = %bb.v, %bb.t, %bb.l, %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184, %bb.hp, %bb.u
  %.pn119.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn.pn.pn, %bb.hp ], [ %i.be, %bb.j ], [ %i.cj, %bb.u ], [ %.pn103.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit184 ], [ %i.bk, %bb.l ], [ %i.ck, %bb.v ], [ %i.ci, %bb.t ]
  call void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #28
  br label %bb.hq

bb.hq:                                            ; preds = %.body131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %.pn119.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn119.pn.pn.pn.pn.pn.pn.pn, %.body131 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  resume { ptr, i32 } %.pn119.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6Assimp12BaseImporter12GetExtensionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare ptr @unzOpen(ptr noundef) local_unnamed_addr #2

declare i32 @unzGoToFirstFile(ptr noundef) local_unnamed_addr #2

declare i32 @unzGetCurrentFileInfo(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

declare i32 @unzOpenCurrentFile(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare i32 @unzReadCurrentFile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #8

declare i32 @unzCloseCurrentFile(ptr noundef) local_unnamed_addr #2

declare i32 @unzGoToNextFile(ptr noundef) local_unnamed_addr #2

declare i32 @unzClose(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6Assimp4STEP14ReadFileHeaderESt10shared_ptrINS_8IOStreamEE(ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv() local_unnamed_addr #2

declare void @_ZN6Assimp3IFC10Schema_2x39GetSchemaERNS_4STEP7EXPRESS16ConversionSchemaE(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3IFC14ConversionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEEN6Assimp3IFC10delete_funIS2_EEET0_T_SE_SD_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZN6Assimp3IFC10delete_funI6aiMeshEclEPS2_.exit.i
  %.sroa.01.05.i = phi ptr [ %i.g, %_ZN6Assimp3IFC10delete_funI6aiMeshEclEPS2_.exit.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.sroa.01.05.i, align 8    ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6Assimp3IFC10delete_funI6aiMeshEclEPS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  tail call void @_ZN6aiMeshD2Ev(ptr noundef nonnull align 8 dead_on_return(1320) dereferenceable(1320) %i.e) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 1320) #32
  br label %_ZN6Assimp3IFC10delete_funI6aiMeshEclEPS2_.exit.i

_ZN6Assimp3IFC10delete_funI6aiMeshEclEPS2_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEEN6Assimp3IFC10delete_funIS2_EEET0_T_SE_SD_.exit, label %.lr.ph.i, !llvm.loop !52

_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEEN6Assimp3IFC10delete_funIS2_EEET0_T_SE_SD_.exit: ; preds = %_ZN6Assimp3IFC10delete_funI6aiMeshEclEPS2_.exit.i, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i4 = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i4, label %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP10aiMaterialSt6vectorIS3_SaIS3_EEEEN6Assimp3IFC10delete_funIS2_EEET0_T_SE_SD_.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEEN6Assimp3IFC10delete_funIS2_EEET0_T_SE_SD_.exit, %_ZN6Assimp3IFC10delete_funI10aiMaterialEclEPS2_.exit.i
  %.sroa.01.05.i6 = phi ptr [ %i.n, %_ZN6Assimp3IFC10delete_funI10aiMaterialEclEPS2_.exit.i ], [ %i.i, %_ZSt8for_eachIN9__gnu_cxx17__normal_iteratorIPP6aiMeshSt6vectorIS3_SaIS3_EEEEN6Assimp3IFC10delete_funIS2_EEET0_T_SE_SD_.exit ] ; 2 uses
  %i.l = load ptr, ptr %.sroa.01.05.i6, align 8   ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6Assimp3IFC10delete_funI10aiMaterialEclEPS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i5
  tail call void @_ZN10aiMaterialD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.l) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 16) #32
  br label %_ZN6Assimp3IFC10delete_funI10aiMaterialEclEPS2_.exit.i

_ZN6Assimp3IFC10delete_funI10aiMaterialEclEPS2_.exit.i: ; preds = %bb.c, %.lr.ph.i5
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191, %bb.x
  %i.dm = phi i64 [ %i.di, %bb.x ], [ %.pre.i193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191 ]
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 %i.dm, ptr %i.do, align 8, !alias.scope !178
  store ptr %i.df, ptr %i.dc, align 8
  store i64 0, ptr %i.dn, align 8
  store i8 0, ptr %i.df, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !181 ; 2 uses
  %i.dr = load i64, ptr %i.do, align 8, !noalias !181
  %i.ds = sub i64 4611686018427387903, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dq
  br i1 %i.dt, label %bb.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197

bb.z:                                             ; preds = %bb.y
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.66) #30
          to label %.noexc201 unwind label %bb.aw

.noexc201:                                        ; preds = %bb.z
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197: ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !181
  %i.dw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %i.dv, i64 noundef %i.dq)
          to label %.noexc202 unwind label %bb.aw ; 6 uses

.noexc202:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197
  %i.dx = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 5 uses
  store ptr %i.dx, ptr %27, align 8, !alias.scope !181
  %i.dy = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16 ; 5 uses
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %bb.aa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

bb.aa:                                            ; preds = %.noexc202
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ec = load i64, ptr %i.eb, align 8            ; 3 uses
  %i.ed = icmp ult i64 %i.ec, 16
  call void @llvm.assume(i1 %i.ed)
  %i.ee = add nuw nsw i64 %i.ec, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dx, ptr noundef nonnull align 8 dereferenceable(1) %i.dz, i64 %i.ee, i1 false)
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %.noexc202
  store ptr %i.dy, ptr %27, align 8, !alias.scope !181
  %i.ef = load i64, ptr %i.dz, align 8
  store i64 %i.ef, ptr %i.dx, align 8, !alias.scope !181
  %.phi.trans.insert.i199 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.pre.i200 = load i64, ptr %.phi.trans.insert.i199, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.aa
  %i.eg = phi i64 [ %i.ec, %bb.aa ], [ %.pre.i200, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ei = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  store i64 %i.eg, ptr %i.ei, align 8, !alias.scope !181
  store ptr %i.dz, ptr %i.dw, align 8
  store i64 0, ptr %i.eh, align 8
  store i8 0, ptr %i.dz, align 8
  %i.ej = load i64, ptr %i.ei, align 8            ; 5 uses
  %i.ek = icmp ugt i64 %i.ej, 1023
  %.pre1391 = load ptr, ptr %27, align 8          ; 3 uses
  br i1 %i.ek, label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = trunc nuw nsw i64 %i.ej to i32
  store i32 %i.el, ptr %i.ag, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.em, ptr align 1 %.pre1391, i64 %i.ej, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.ej
  store i8 0, ptr %i.en, align 1
  br label %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.ab, %bb.ac
  %i.eo = icmp eq ptr %.pre1391, %i.dx
  br i1 %i.eo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ep = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.ep)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204: ; preds = %_ZN8aiString3SetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.eq = load i64, ptr %i.dx, align 8
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %.pre1391, i64 noundef %i.er) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i204
  %i.es = load ptr, ptr %28, align 8              ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.dd
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.eu = load i64, ptr %i.dd, align 8
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
  %i.ew = load ptr, ptr %29, align 8              ; 2 uses
  %i.ex = icmp eq ptr %i.ew, %i.co
  br i1 %i.ex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
  %i.ey = load i64, ptr %i.co, align 8
  %i.ez = add i64 %i.ey, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.ez) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i208
  %i.fa = load ptr, ptr %32, align 8              ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.fc = icmp eq ptr %i.fa, %i.fb
  br i1 %i.fc, label %.critedge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210
  %i.fd = load i64, ptr %i.fb, align 8
  %i.fe = add i64 %i.fd, 1
  call void @_ZdlPvm(ptr noundef %i.fa, i64 noundef %i.fe) #32
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.ff = load ptr, ptr %30, align 8              ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.bc
  br i1 %i.fg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214: ; preds = %.critedge
  %i.fh = load i64, ptr %i.bc, align 8
  %i.fi = add i64 %i.fh, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fi) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
  %i.fj = load ptr, ptr %31, align 8              ; 2 uses
  %i.fk = icmp eq ptr %i.fj, %i.an
  br i1 %i.fk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
  %i.fl = load i64, ptr %i.an, align 8
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fm) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ag, i64 1096
  store ptr %0, ptr %i.fn, align 8
  %i.fo = load ptr, ptr %1, align 8
  %i.fp = getelementptr i8, ptr %i.fo, i64 -24
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds i8, ptr %1, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i64, ptr %i.fs, align 8            ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 360 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 13 uses
  %.02022.i.i.i = load ptr, ptr %i.fu, align 8    ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.02022.i.i.i, null
  br i1 %.not23.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219, %.lr.ph.i.i.i
  %.02024.i.i.i = phi ptr [ %.020.i.i.i, %.lr.ph.i.i.i ], [ %.02022.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ] ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 32
  %i.fx = load i64, ptr %i.fw, align 8            ; 2 uses
  %i.fy = icmp ult i64 %i.ft, %i.fx               ; 2 uses
  %.in.v.i.i.i = select i1 %i.fy, i64 16, i64 24
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i.i, i64 %.in.v.i.i.i
  %.020.i.i.i = load ptr, ptr %.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.020.i.i.i, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i220, label %.lr.ph.i.i.i, !llvm.loop !184

._crit_edge.i.i.i220:                             ; preds = %.lr.ph.i.i.i
  br i1 %i.fy, label %._crit_edge.thread.i.i.i, label %bb.ae

._crit_edge.thread.i.i.i:                         ; preds = %._crit_edge.i.i.i220, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
  %.019.lcssa29.i.i.i = phi ptr [ %.02024.i.i.i, %._crit_edge.i.i.i220 ], [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219 ] ; 4 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = icmp eq ptr %.019.lcssa29.i.i.i, %i.ga
  br i1 %i.gb, label %select.unfold.i.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.thread.i.i.i
  %i.gc = call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i.i.i) #34
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i.i.i220
  %i.gd = phi i64 [ %.pre.i.i, %bb.ad ], [ %i.fx, %._crit_edge.i.i.i220 ]
  %.019.lcssa28.i.i.i = phi ptr [ %.019.lcssa29.i.i.i, %bb.ad ], [ %.02024.i.i.i, %._crit_edge.i.i.i220 ]
  %i.ge = icmp ult i64 %i.gd, %i.ft
  %cond.fr.i.i = freeze i1 %i.ge
  br i1 %cond.fr.i.i, label %select.unfold.i.i, label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

select.unfold.i.i:                                ; preds = %bb.ae, %._crit_edge.thread.i.i.i
  %.sroa.4.0.i.ph.i.i = phi ptr [ %.019.lcssa29.i.i.i, %._crit_edge.thread.i.i.i ], [ %.019.lcssa28.i.i.i, %bb.ae ] ; 3 uses
  %i.gf = icmp eq ptr %.sroa.4.0.i.ph.i.i, %i.fv
  br i1 %i.gf, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %select.unfold.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph.i.i, i64 32
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = icmp ult i64 %i.ft, %i.gh
  br label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i: ; preds = %bb.af, %select.unfold.i.i
  %i.gj = phi i1 [ %i.gi, %bb.af ], [ true, %select.unfold.i.i ]
  %i.gk = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  store i64 %i.ft, ptr %i.gl, align 8
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.gj, ptr noundef nonnull %i.gk, ptr noundef nonnull %.sroa.4.0.i.ph.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.fv) #28
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 384 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = add i64 %i.gn, 1
  store i64 %i.go, ptr %i.gm, align 8
  %.pre1392 = load ptr, ptr %1, align 8
  %.phi.trans.insert1393 = getelementptr i8, ptr %.pre1392, i64 -24
  %.pre1394 = load i64, ptr %.phi.trans.insert1393, align 8
  %.phi.trans.insert1395 = getelementptr inbounds i8, ptr %1, i64 %.pre1394
  %.phi.trans.insert1396 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert1395, i64 8
  %.pre1397 = load i64, ptr %.phi.trans.insert1396, align 8
  br label %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit

_ZNSt3setImSt4lessImESaImEE6insertEOm.exit:       ; preds = %bb.ae, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i
  %i.gp = phi i64 [ %i.ft, %bb.ae ], [ %.pre1397, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_M_insert_ImNS5_11_Alloc_nodeEEESt17_Rb_tree_iteratorImEPSt18_Rb_tree_node_baseSB_OT_RT0_.exit.i.i ] ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 216 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8
  %.not.not.i.i.i = icmp eq i64 %i.gr, 0
  br i1 %.not.not.i.i.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %bb.ag
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.gs, %bb.ag ], [ %.sroa.06.0.i.i.i, %bb.ai ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8 ; 4 uses
  %.not.i.i.i224 = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %.not.i.i.i224, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.gu = load i64, ptr %i.gt, align 8
  %i.gv = icmp eq i64 %i.gp, %i.gu
  br i1 %i.gv, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %bb.ah, !llvm.loop !39

bb.aj:                                            ; preds = %_ZNSt3setImSt4lessImESaImEE6insertEOm.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = urem i64 %i.gp, %i.gx                   ; 2 uses
  %i.gz = load ptr, ptr %i.j, align 8
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gy
  %i.hb = load ptr, ptr %i.ha, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hc = load ptr, ptr %i.hb, align 8            ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.he = load i64, ptr %i.hd, align 8
  %i.hf = icmp eq i64 %i.gp, %i.he
  br i1 %i.hf, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i

bb.al:                                            ; preds = %bb.am
  %i.hg = icmp eq i64 %i.gp, %i.hj
  br i1 %i.hg, label %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !40

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %bb.al
  %.020.i.i.i.i.i = phi ptr [ %i.hh, %bb.al ], [ %i.hc, %bb.ak ]
  %i.hh = load ptr, ptr %.020.i.i.i.i.i, align 8  ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not18.i.i.i.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hk = urem i64 %i.hj, %i.gx
  %.not19.i.i.i.i.i = icmp eq i64 %i.hk, %i.gy
  br i1 %.not19.i.i.i.i.i, label %bb.al, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !40

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.am
  br label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, !llvm.loop !40

_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i: ; preds = %bb.al, %bb.ai, %bb.ak
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ai ], [ %i.hc, %bb.ak ], [ %i.hh, %bb.al ] ; 5 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i
  %.sroa.03.0.in.i.i = phi ptr [ %.sroa.06.1.i.i.i, %_ZNKSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS1_.exit.i.i ], [ %.sroa.03.0.i.i, %bb.ao ]
  %.sroa.03.0.i.i = load ptr, ptr %.sroa.03.0.in.i.i, align 8 ; 5 uses
  %.not2.i.i = icmp eq ptr %.sroa.03.0.i.i, null
  br i1 %.not2.i.i, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = icmp eq i64 %i.gp, %i.hm
  br i1 %i.hn, label %bb.an, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit, !llvm.loop !41

_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit: ; preds = %bb.an, %bb.ao
  %.not505 = icmp eq ptr %.sroa.06.1.i.i.i, null
  br i1 %.not505, label %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEE11equal_rangeERS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.ho = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 5 uses
  store i32 0, ptr %i.ho, align 8
  %i.hp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  store ptr null, ptr %i.hp, align 8
  %i.hq = getelementptr inbounds nuw i8, ptr %33, i64 24 ; 2 uses
  store ptr %i.ho, ptr %i.hq, align 8
  %i.hr = getelementptr inbounds nuw i8, ptr %33, i64 32
  store ptr %i.ho, ptr %i.hr, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %33, i64 40 ; 2 uses
  store i64 0, ptr %i.hs, align 8
  %i.ht = icmp eq ptr %.sroa.06.1.i.i.i, %.sroa.03.0.i.i
  br i1 %i.ht, label %bb.aq, label %.preheader545

bb.aq:                                            ; preds = %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16
  %i.hv = load i64, ptr %i.hu, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_115ProcessMetadataEmRN6Assimp3IFC14ConversionDataERSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4lessISA_ESaISt4pairIKSA_SA_EEE(i64 noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(392) %2, ptr noundef nonnull align 8 dereferenceable(48) %33)
          to label %.loopexit546 unwind label %bb.ax

bb.ar:                                            ; preds = %bb.h
  %i.hw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 1144) #32
  br label %bb.kg

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.m
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit236

bb.at:                                            ; preds = %.noexc.i180
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %.critedge178

bb.au:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.t
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i190, %bb.w
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i197, %bb.z
  %i.ib = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ic = load ptr, ptr %28, align 8              ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.dd
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225: ; preds = %bb.aw
  %i.ie = load i64, ptr %i.dd, align 8
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ic, i64 noundef %i.if) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225, %bb.av
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.av ], [ %i.ib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i225 ], [ %i.ib, %bb.aw ] ; 2 uses
  %i.ig = load ptr, ptr %29, align 8              ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.co
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227
  %i.ii = load i64, ptr %i.co, align 8
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228, %bb.au
  %.pn.pn = phi { ptr, i32 } [ %i.hz, %bb.au ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i228 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit227 ] ; 2 uses
  %i.ik = load ptr, ptr %32, align 8              ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.im = icmp eq ptr %i.ik, %i.il
  br i1 %i.im, label %.critedge178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230
  %i.in = load i64, ptr %i.il, align 8
  %i.io = add i64 %i.in, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.io) #32
  br label %.critedge178

.critedge178:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231, %bb.at
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231 ], [ %i.hy, %bb.at ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit230 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.ip = load ptr, ptr %30, align 8              ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.bc
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_123ProcessSpatialStructureEP6aiNodeRKN6Assimp3IFC10Schema_2x310IfcProductERNS3_14ConversionDataEPSt6vectorINS3_11TempOpeningESaISB_EE:bb.a
  unreachable

bb.iq:                                            ; preds = %bb.ik
  unreachable

_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit83.i: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i.i71.i
  %i.amg = invoke noundef zeroext i1 @_ZN6Assimp3IFC25ProcessRepresentationItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(9) %i.ame, i32 noundef %i.akg, ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.ir unwind label %.loopexit.i

bb.ir:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit83.i
  br i1 %i.amg, label %.thread.i, label %bb.is

bb.is:                                            ; preds = %bb.ir
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  %i.amh = load ptr, ptr %i.ame, align 8
  %i.ami = getelementptr i8, ptr %i.amh, i64 -24
  %i.amj = load i64, ptr %i.ami, align 8
  %i.amk = getelementptr inbounds i8, ptr %i.ame, i64 %i.amj
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 16
  %i.amm = load ptr, ptr %i.aml, align 8, !noalias !201 ; 4 uses
  store ptr %i.aer, ptr %19, align 8, !alias.scope !201
  %i.amn = icmp eq ptr %i.amm, null
  br i1 %i.amn, label %.noexc.i71.i.i, label %bb.it

.noexc.i71.i.i:                                   ; preds = %bb.is
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.85) #30
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.i.i

.noexc72.i.i:                                     ; preds = %.noexc.i71.i.i
  unreachable

bb.it:                                            ; preds = %bb.is
  %i.amo = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.amm) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !201
  store i64 %i.amo, ptr %i.b, align 8, !noalias !201
  %i.amp = icmp ugt i64 %i.amo, 15
  br i1 %i.amp, label %.noexc.i.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.it
  %i.amq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc73.i.i unwind label %.loopexit191.i.i ; 2 uses

.noexc73.i.i:                                     ; preds = %.noexc.i.i.i.i
  store ptr %i.amq, ptr %19, align 8, !alias.scope !201
  %i.amr = load i64, ptr %i.b, align 8, !noalias !201
  store i64 %i.amr, ptr %i.aer, align 8, !alias.scope !201
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc73.i.i, %bb.it
  %i.ams = phi ptr [ %i.amq, %.noexc73.i.i ], [ %i.aer, %bb.it ] ; 2 uses
  switch i64 %i.amo, label %bb.iv [
    i64 1, label %bb.iu
    i64 0, label %bb.iw
  ]

bb.iu:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.amt = load i8, ptr %i.amm, align 1
  store i8 %i.amt, ptr %i.ams, align 1
  br label %bb.iw

bb.iv:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ams, ptr nonnull align 1 %i.amm, i64 %i.amo, i1 false)
  br label %bb.iw

bb.iw:                                            ; preds = %bb.iv, %bb.iu, %._crit_edge.i.i.i.i.i
  %i.amu = load i64, ptr %i.b, align 8, !noalias !201 ; 2 uses
  store i64 %i.amu, ptr %i.aes, align 8, !alias.scope !201
  %i.amv = load ptr, ptr %19, align 8, !alias.scope !201
  %i.amw = getelementptr inbounds nuw i8, ptr %i.amv, i64 %i.amu
  store i8 0, ptr %i.amw, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !201
  %i.amx = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc74.i.i unwind label %bb.iy

.noexc74.i.i:                                     ; preds = %bb.iw
  br i1 %i.amx, label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i, label %bb.ix

bb.ix:                                            ; preds = %.noexc74.i.i
  %i.amy = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc75.i.i unwind label %bb.iy

.noexc75.i.i:                                     ; preds = %bb.ix
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr @.str, ptr %i.a, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA32_S2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.amy, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(32) @.str.83, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 1 dereferenceable(40) @.str.84)
          to label %.noexc76.i.i unwind label %bb.iy

.noexc76.i.i:                                     ; preds = %.noexc75.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i

_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i: ; preds = %.noexc76.i.i, %.noexc74.i.i
  %i.amz = load ptr, ptr %19, align 8             ; 2 uses
  %i.ana = icmp eq ptr %i.amz, %i.aer
  br i1 %i.ana, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i
  %i.anb = load i64, ptr %i.aer, align 8
  %i.anc = add i64 %i.anb, 1
  call void @_ZdlPvm(ptr noundef %i.amz, i64 noundef %i.anc) #32
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78.i.i

.loopexit.i:                                      ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit83.i, %bb.io
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit.split-lp.i:                             ; preds = %bb.ip
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit191.i.i:                                 ; preds = %.noexc.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i

.loopexit.split-lp.i.i:                           ; preds = %.noexc.i71.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i

bb.iy:                                            ; preds = %.noexc75.i.i, %bb.ix, %bb.iw
  %i.and = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ane = load ptr, ptr %19, align 8             ; 2 uses
  %i.anf = icmp eq ptr %i.ane, %i.aer
  br i1 %i.anf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i: ; preds = %bb.iy
  %i.ang = load i64, ptr %i.aer, align 8
  %i.anh = add i64 %i.ang, 1
  call void @_ZdlPvm(ptr noundef %i.ane, i64 noundef %i.anh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i: ; preds = %bb.iy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i, %.loopexit.split-lp.i.i, %.loopexit191.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.and, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i80.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %lpad.loopexit.i.i, %.loopexit191.i.i ], [ %i.and, %bb.iy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %.body95.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i78.i.i: ; preds = %_ZN6Assimp12LogFunctionsINS_11IFCImporterEE7LogWarnIJRA32_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA40_S4_EEEvDpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ani = getelementptr inbounds nuw i8, ptr %.sroa.0134.0202.i.i, i64 8 ; 2 uses
  %.not190.i.i = icmp eq ptr %i.ani, %i.alp
  br i1 %.not190.i.i, label %._crit_edge206.i.i, label %bb.ih

.thread.i:                                        ; preds = %bb.ir
  %i.anj = getelementptr inbounds nuw i8, ptr %.sroa.0134.0202.i.i, i64 8 ; 2 uses
  %.not190.i153.i = icmp eq ptr %i.anj, %i.alp
  br i1 %.not190.i153.i, label %._crit_edge206.i.thread.i, label %.outer.i

._crit_edge206.i.thread.i:                        ; preds = %.thread.i, %._crit_edge206.i.i
  %i.ank = load ptr, ptr %14, align 8
  invoke void @_ZN6Assimp3IFC17AssignAddedMeshesERSt3setIjSt4lessIjESaIjEEP6aiNodeRNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.ank, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.iz unwind label %bb.jb

bb.iz:                                            ; preds = %._crit_edge206.i.thread.i
  %i.anl = load ptr, ptr %i.abi, align 8          ; 3 uses
  %.not56.i.i = icmp eq ptr %i.anl, null
  br i1 %.not56.i.i, label %.loopexit.i.i, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8
  %i.ano = load ptr, ptr %i.anl, align 8
  %i.anp = ptrtoint ptr %i.ann to i64
  %i.anq = ptrtoint ptr %i.ano to i64
  %i.anr = sub i64 %i.anp, %i.anq
  %i.ans = sdiv exact i64 %i.anr, 88              ; 2 uses
  %i.ant = sub nsw i64 %i.ans, %i.ajp
  %.not209.i.i = icmp eq i64 %i.ans, %i.ajp
  br i1 %.not209.i.i, label %.loopexit.i.i, label %.lr.ph208.i.i

bb.jb:                                            ; preds = %._crit_edge206.i.thread.i
  %i.anu = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.lr.ph208.i.i:                                    ; preds = %bb.ja, %bb.jc
  %.0207.i.i = phi i64 [ %i.anz, %bb.jc ], [ 0, %bb.ja ] ; 2 uses
  %i.anv = load ptr, ptr %i.abi, align 8
  %i.anw = load ptr, ptr %i.anv, align 8
  %i.anx = getelementptr [88 x i8], ptr %i.anw, i64 %i.ajp
  %i.any = getelementptr [88 x i8], ptr %i.anx, i64 %.0207.i.i
  invoke void @_ZN6Assimp3IFC11TempOpening9TransformERK12aiMatrix4x4tIdE(ptr noundef nonnull align 8 dereferenceable(88) %i.any, ptr noundef nonnull align 8 dereferenceable(128) %16)
          to label %bb.jc unwind label %bb.jd

bb.jc:                                            ; preds = %.lr.ph208.i.i
  %i.anz = add nuw i64 %.0207.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.anz, %i.ant
  br i1 %exitcond.not.i.i, label %.loopexit.i.i, label %.lr.ph208.i.i, !llvm.loop !204

bb.jd:                                            ; preds = %.lr.ph208.i.i
  %i.aoa = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit.i.i:                                    ; preds = %bb.jc, %bb.ja, %bb.iz
  %i.aob = load <4 x float>, ptr %i.aet, align 4
  %i.aoc = load <4 x float>, ptr %.sroa.789.0..sroa_idx90.i.i, align 8
  %i.aod = load <4 x float>, ptr %.sroa.992.0..sroa_idx93.i.i, align 4
  %i.aoe = load <4 x float>, ptr %.sroa.1195.0..sroa_idx96.i.i, align 8
  %i.aof = load <4 x float>, ptr %.sroa.1398.0..sroa_idx99.i.i, align 4
  %i.aog = load <4 x float>, ptr %.sroa.15101.0..sroa_idx102.i.i, align 8
  %i.aoh = load <4 x float>, ptr %.sroa.17104.0..sroa_idx105.i.i, align 4
  %i.aoi = load <4 x float>, ptr %.sroa.19107.0..sroa_idx108.i.i, align 8
  %i.aoj = load <4 x float>, ptr %.sroa.21110.0..sroa_idx111.i.i, align 4
  %i.aok = load <4 x float>, ptr %.sroa.23113.0..sroa_idx114.i.i, align 8
  %i.aol = load <4 x float>, ptr %.sroa.25116.0..sroa_idx117.i.i, align 4
  %i.aom = load <4 x float>, ptr %.sroa.27119.0..sroa_idx120.i.i, align 8
  %i.aon = load <4 x float>, ptr %.sroa.29122.0..sroa_idx123.i.i, align 4
  %i.aoo = load <4 x float>, ptr %.sroa.31125.0..sroa_idx126.i.i, align 8
  %i.aop = load <4 x float>, ptr %.sroa.33128.0..sroa_idx129.i.i, align 4
  %i.aoq = load <4 x float>, ptr %.sroa.35.0..sroa_idx131.i.i, align 8
  %i.aor = load ptr, ptr %14, align 8             ; 6 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 1028
  %i.aot = load <4 x double>, ptr %16, align 8, !noalias !205
  %i.aou = fptrunc <4 x double> %i.aot to <4 x float> ; 4 uses
  %i.aov = load <4 x double>, ptr %i.aei, align 8, !noalias !205
  %i.aow = fptrunc <4 x double> %i.aov to <4 x float> ; 4 uses
  %i.aox = load <4 x double>, ptr %i.aej, align 8, !noalias !205
  %i.aoy = fptrunc <4 x double> %i.aox to <4 x float> ; 4 uses
  %i.aoz = load <4 x double>, ptr %i.aek, align 8, !noalias !205
  %i.apa = fptrunc <4 x double> %i.aoz to <4 x float> ; 4 uses
  %i.apb = shufflevector <4 x float> %i.aoc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apc = fmul <4 x float> %i.apb, %i.aow
  %i.apd = shufflevector <4 x float> %i.aob, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ape = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aou, <4 x float> %i.apd, <4 x float> %i.apc)
  %i.apf = shufflevector <4 x float> %i.aod, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoy, <4 x float> %i.apf, <4 x float> %i.ape)
  %i.aph = shufflevector <4 x float> %i.aoe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.api = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apa, <4 x float> %i.aph, <4 x float> %i.apg)
  store <4 x float> %i.api, ptr %i.aos, align 4
  %.sroa.1398.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aor, i64 1044
  %i.apj = shufflevector <4 x float> %i.aog, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apk = fmul <4 x float> %i.apj, %i.aow
  %i.apl = shufflevector <4 x float> %i.aof, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aou, <4 x float> %i.apl, <4 x float> %i.apk)
  %i.apn = shufflevector <4 x float> %i.aoh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoy, <4 x float> %i.apn, <4 x float> %i.apm)
  %i.app = shufflevector <4 x float> %i.aoi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apa, <4 x float> %i.app, <4 x float> %i.apo)
  store <4 x float> %i.apq, ptr %.sroa.1398.0..sroa_idx.i.i, align 4
  %.sroa.21110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aor, i64 1060
  %i.apr = shufflevector <4 x float> %i.aok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aps = fmul <4 x float> %i.apr, %i.aow
  %i.apt = shufflevector <4 x float> %i.aoj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aou, <4 x float> %i.apt, <4 x float> %i.aps)
  %i.apv = shufflevector <4 x float> %i.aol, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoy, <4 x float> %i.apv, <4 x float> %i.apu)
  %i.apx = shufflevector <4 x float> %i.aom, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apa, <4 x float> %i.apx, <4 x float> %i.apw)
  store <4 x float> %i.apy, ptr %.sroa.21110.0..sroa_idx.i.i, align 4
  %.sroa.29122.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aor, i64 1076
  %i.apz = shufflevector <4 x float> %i.aoo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqa = fmul <4 x float> %i.apz, %i.aow
  %i.aqb = shufflevector <4 x float> %i.aon, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aou, <4 x float> %i.aqb, <4 x float> %i.aqa)
  %i.aqd = shufflevector <4 x float> %i.aop, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aoy, <4 x float> %i.aqd, <4 x float> %i.aqc)
  %i.aqf = shufflevector <4 x float> %i.aoq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aqg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apa, <4 x float> %i.aqf, <4 x float> %i.aqe)
  store <4 x float> %i.aqg, ptr %.sroa.29122.0..sroa_idx.i.i, align 4
  store ptr null, ptr %14, align 8
  %.not.i.i.i63.i = icmp eq ptr %.sroa.18449.19, %.sroa.38.19
  br i1 %.not.i.i.i63.i, label %bb.jf, label %bb.je

bb.je:                                            ; preds = %.loopexit.i.i
  store ptr %i.aor, ptr %.sroa.18449.19, align 8
  %i.aqh = getelementptr inbounds nuw i8, ptr %.sroa.18449.19, i64 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i

bb.jf:                                            ; preds = %.loopexit.i.i
  %i.aqi = ptrtoint ptr %.sroa.38.19 to i64
  %i.aqj = ptrtoint ptr %.sroa.0439.19 to i64
  %i.aqk = sub i64 %i.aqi, %i.aqj                 ; 6 uses
  %i.aql = icmp eq i64 %i.aqk, 9223372036854775800
  br i1 %i.aql, label %bb.jg, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.jg:                                            ; preds = %bb.jf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #30
          to label %.noexc84.i.i unwind label %.loopexit.split-lp179.i

.noexc84.i.i:                                     ; preds = %bb.jg
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.jf
  %i.aqm = ashr exact i64 %i.aqk, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aqm, i64 1)
  %i.aqn = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.aqm ; 2 uses
  %i.aqo = icmp ult i64 %i.aqn, %i.aqm
  %i.aqp = call i64 @llvm.umin.i64(i64 %i.aqn, i64 1152921504606846975)
  %i.aqq = select i1 %i.aqo, i64 1152921504606846975, i64 %i.aqp ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.aqq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.aqr = shl nuw nsw i64 %i.aqq, 3
  %i.aqs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aqr) #29
          to label %.noexc85.i.i unwind label %.loopexit178.i ; 4 uses

.noexc85.i.i:                                     ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.aqt = getelementptr inbounds i8, ptr %i.aqs, i64 %i.aqk ; 2 uses
  store ptr %i.aor, ptr %i.aqt, align 8
  %i.aqu = icmp sgt i64 %i.aqk, 0
  br i1 %i.aqu, label %bb.jh, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i

bb.jh:                                            ; preds = %.noexc85.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aqs, ptr align 8 %.sroa.0439.19, i64 %i.aqk, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i: ; preds = %bb.jh, %.noexc85.i.i
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqt, i64 8
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.0439.19, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, label %bb.ji

bb.ji:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0439.19, i64 noundef %i.aqk) #32
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ji, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i.i.i.i
  %i.aqw = getelementptr inbounds nuw [8 x i8], ptr %i.aqs, i64 %i.aqq
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i

.loopexit178.i:                                   ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit180.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

.loopexit.split-lp179.i:                          ; preds = %bb.jg
  %lpad.loopexit.split-lp181.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body95.i

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i, %bb.je, %._crit_edge206.i.i, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i
  %.sroa.38.20 = phi ptr [ %.sroa.38.19, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ %i.aqw, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ %.sroa.38.19, %bb.je ], [ %.sroa.38.19, %._crit_edge206.i.i ]
  %.sroa.18449.20 = phi ptr [ %.sroa.18449.19, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ %i.aqv, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ %i.aqh, %bb.je ], [ %.sroa.18449.19, %._crit_edge206.i.i ]
  %.sroa.0439.20 = phi ptr [ %.sroa.0439.19, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ %i.aqs, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ %.sroa.0439.19, %bb.je ], [ %.sroa.0439.19, %._crit_edge206.i.i ]
  %.050.lcssa229.i.i = phi i1 [ %.041287.i, %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvRKS4_Ev.exit.i ], [ true, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.i ], [ true, %bb.je ], [ %.041287.i, %._crit_edge206.i.i ]
  %i.aqx = load ptr, ptr %i.aem, align 8
  invoke void @_ZNSt8_Rb_treeIjjSt9_IdentityIjESt4lessIjESaIjEE8_M_eraseEPSt13_Rb_tree_nodeIjE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %i.aqx)
          to label %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i unwind label %bb.jj

bb.jj:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i
  %i.aqy = landingpad { ptr, i32 }
          catch ptr null
  %i.aqz = extractvalue { ptr, i32 } %i.aqy, 0
  call void @__clang_call_terminate(ptr %i.aqz) #31
  unreachable

_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i:         ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backEOS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  %i.ara = load ptr, ptr %14, align 8             ; 3 uses
  %.not.i.i62.i = icmp eq ptr %i.ara, null
  br i1 %.not.i.i62.i, label %bb.jl, label %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i

_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i: ; preds = %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i
  call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %i.ara) #28
  call void @_ZdlPvm(ptr noundef nonnull %i.ara, i64 noundef 1144) #32
  br label %bb.jl

.body95.i:                                        ; preds = %.loopexit.split-lp179.i, %.loopexit178.i, %bb.jd, %bb.jb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i, %.loopexit.split-lp.i, %.loopexit.i, %bb.im, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i, %.loopexit.split-lp174.i, %.loopexit173.i, %bb.ig, %bb.ic, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i, %bb.hu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i, %bb.hn
  %.pn63.pn.i.i = phi { ptr, i32 } [ %.pn63.i.i, %bb.hn ], [ %i.alq, %bb.ig ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit82.i.i ], [ %i.anu, %bb.jb ], [ %i.aoa, %bb.jd ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %i.akl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i104.i ], [ %i.alb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i91.i ], [ %i.alb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i92.i ], [ %.pn10.i88.i, %bb.ic ], [ %i.alv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77.i ], [ %i.akl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i105.i ], [ %.pn10.i101.i, %bb.hu ], [ %lpad.loopexit.split-lp176.i, %.loopexit.split-lp174.i ], [ %i.alv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78.i ], [ %.pn10.i74.i, %bb.im ], [ %lpad.loopexit175.i, %.loopexit173.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit180.i, %.loopexit178.i ], [ %lpad.loopexit.split-lp181.i, %.loopexit.split-lp179.i ]
  call void @_ZNSt3setIjSt4lessIjESaIjEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.body121.i

.body121.i:                                       ; preds = %.body95.i, %.loopexit.split-lp169.i, %.loopexit168.i, %bb.gz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i
  %.pn63.pn.pn.i.i = phi { ptr, i32 } [ %.pn63.pn.i.i, %.body95.i ], [ %i.agu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i117.i ], [ %i.agu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i118.i ], [ %.pn10.i114.i, %bb.gz ], [ %lpad.loopexit170.i, %.loopexit168.i ], [ %lpad.loopexit.split-lp171.i, %.loopexit.split-lp169.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.body135.i

.body135.i:                                       ; preds = %.body121.i, %.loopexit.split-lp164.i, %.loopexit163.i, %bb.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i
  %.pn63.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn63.pn.pn.i.i, %.body121.i ], [ %i.age, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131.i ], [ %i.age, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i132.i ], [ %.pn10.i128.i, %bb.gp ], [ %lpad.loopexit165.i, %.loopexit163.i ], [ %lpad.loopexit.split-lp166.i, %.loopexit.split-lp164.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @_ZNSt10unique_ptrI6aiNodeSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #28
  br label %bb.jk

bb.jk:                                            ; preds = %.body135.i, %bb.hj
  %.pn63.pn.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn63.pn.pn.pn.i.i, %.body135.i ], [ %i.ajw, %bb.hj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.body.i

bb.jl:                                            ; preds = %_ZNKSt14default_deleteI6aiNodeEclEPS0_.exit.i.i.i, %_ZNSt3setIjSt4lessIjESaIjEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.jp

.loopexit158.i:                                   ; preds = %bb.gh
  %lpad.loopexit160.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

.loopexit.split-lp159.i:                          ; preds = %bb.gi
  %lpad.loopexit.split-lp161.i = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

bb.jm:                                            ; preds = %bb.jn, %bb.gk
  %i.arb = landingpad { ptr, i32 }
          catch ptr null
  br label %.body.i

bb.jn:                                            ; preds = %_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x321IfcRepresentationItemEEcvRKS4_Ev.exit.i
  %i.arc = invoke noundef zeroext i1 @_ZN6Assimp3IFC25ProcessRepresentationItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(9) %i.afp, i32 noundef %i.abt, ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull align 8 dereferenceable(392) %2)
          to label %bb.jo unwind label %bb.jm

bb.jo:                                            ; preds = %bb.jn
  %i.ard = select i1 %i.arc, i1 true, i1 %.041287.i
  br label %bb.jp

bb.jp:                                            ; preds = %bb.jo, %bb.jl
  %.sroa.38.21 = phi ptr [ %.sroa.38.19, %bb.jo ], [ %.sroa.38.20, %bb.jl ] ; 3 uses
  %.sroa.18449.21 = phi ptr [ %.sroa.18449.19, %bb.jo ], [ %.sroa.18449.20, %bb.jl ] ; 3 uses
  %.sroa.0439.21 = phi ptr [ %.sroa.0439.19, %bb.jo ], [ %.sroa.0439.20, %bb.jl ] ; 3 uses
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = sub i64 %i.aw, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ax) #32
  br label %_ZNSt12_Vector_baseIN6Assimp3IFC11TempOpeningESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN6Assimp3IFC11TempOpeningESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit32, %bb.c
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i31, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw [88 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ay, ptr %i.au, align 8
  ret void

bb.d:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.e:                                             ; preds = %_ZNKSt6vectorIN6Assimp3IFC11TempOpeningESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  %i.bc = tail call ptr @__cxa_begin_catch(ptr %i.bb) #28 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #32
  invoke void @__cxa_rethrow() #30
          to label %bb.h unwind label %bb.d

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.az

bb.g:                                             ; preds = %bb.d
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  tail call void @__clang_call_terminate(ptr %i.be) #31
  unreachable

bb.h:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp3IFC11TempOpeningC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #21 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  store ptr %i.q, ptr %i.o, align 8
  %.not.i.i.i6 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i6, label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit8, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i7 = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.r, align 4
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit8

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit8

_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit8: ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit, %bb.f, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %.not.i.i.i.i9 = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i9, label %.noexc10, label %bb.h

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit8
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.af, label %.noexc.i.i, label %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i, !prof !17

.noexc.i.i:                                       ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.h
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #29
          to label %.noexc10 unwind label %bb.i

.noexc10:                                         ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i, %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit8
  %i.ah = phi ptr [ null, %_ZNSt10shared_ptrIN6Assimp3IFC8TempMeshEEC2ERKS3_.exit8 ], [ %i.ag, %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.ah, ptr %i.w, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc10, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %i.ah, %.noexc10 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i ], [ %i.al, %.noexc10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.09.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.04.08.i.i.i.i.i, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 24 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !326

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc10
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ah, %.noexc10 ], [ %i.ao, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8
  ret void

bb.i:                                             ; preds = %_ZNSt15__new_allocatorI10aiVector3tIdEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  tail call void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #28
  resume { ptr, i32 } %i.ap
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !327
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !327
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3IFC11TempOpeningD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #32
  br label %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit

_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !328
  %i.r = load ptr, ptr %i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28, !inline_history !328
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i1 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #28
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8              ; 8 uses
  %.not.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i2, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %i.ab = load atomic i64, ptr %i.aa acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.aa, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 0, ptr %i.ae, align 4
  %i.af = load ptr, ptr %i.z, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #28, !inline_history !328
  %i.ai = load ptr, ptr %i.z, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #28, !inline_history !328
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6

bb.k:                                             ; preds = %bb.i
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i3 = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = add nsw i32 %i.ad, -1
  store i32 %i.am, ptr %i.aa, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

bb.m:                                             ; preds = %bb.k
  %i.an = atomicrmw volatile add ptr %i.aa, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i5 = phi i32 [ %i.ad, %bb.l ], [ %i.an, %bb.m ]
  %i.ao = icmp eq i32 %.0.i.i.i.i5, 1
  br i1 %i.ao, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6, !prof !17

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) #28
  br label %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6

_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit6: ; preds = %_ZNSt12__shared_ptrIN6Assimp3IFC8TempMeshELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4, %bb.n
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #17

declare noundef i32 @_ZN6Assimp3IFC16ProcessMaterialsEmjRNS0_14ConversionDataEb(i64 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(392), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x324IfcProductRepresentationEEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.k unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i

_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i:          ; preds = %bb.h, %bb.g
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x324IfcProductRepresentationE, i64 -1) #28 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.i, label %_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x324IfcProductRepresentationEEERKT_v.exit

bb.i:                                             ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  tail call void @__cxa_bad_cast() #30
  unreachable

_ZNK6Assimp4STEP10LazyObject2ToINS_3IFC10Schema_2x324IfcProductRepresentationEEERKT_v.exit: ; preds = %_ZNK6Assimp4STEP10LazyObjectdeEv.exit.i
  ret ptr %i.n

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.k:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6Assimp3IFC25ProcessRepresentationItemERKNS0_10Schema_2x321IfcRepresentationItemEjRSt3setIjSt4lessIjESaIjEERNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(9), i32 noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #2

declare void @_ZN6Assimp3IFC17AssignAddedMeshesERSt3setIjSt4lessIjESaIjEEP6aiNodeRNS0_14ConversionDataE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(392)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK6Assimp4STEP4LazyINS_3IFC10Schema_2x317IfcRepresentationEEcvPKS4_Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6Assimp4STEP9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmm(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef -1, i64 noundef 1152921504606846975)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6Assimp4STEP9TypeErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #28
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.h, label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcRepresentationEEEPKT_v.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6Assimp4STEP10LazyObject8LazyInitEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a)
  %.pre.i.i = load ptr, ptr %i.k, align 8
  br label %_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcRepresentationEEEPKT_v.exit

_ZNK6Assimp4STEP10LazyObject5ToPtrINS_3IFC10Schema_2x317IfcRepresentationEEEPKT_v.exit: ; preds = %bb.g, %bb.h
  %i.m = phi ptr [ %.pre.i.i, %bb.h ], [ %i.l, %bb.g ]
  %i.n = tail call noundef ptr @__dynamic_cast(ptr nonnull %i.m, ptr nonnull @_ZTIN6Assimp4STEP6ObjectE, ptr nonnull @_ZTIN6Assimp3IFC10Schema_2x317IfcRepresentationE, i64 -1) #28
  ret ptr %i.n

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.j:                                             ; preds = %bb.d
  unreachable
}

end_hunk_4
begin_hunk_5_@_ZNSt23_Sp_counted_ptr_inplaceIN6Assimp14MemoryIOStreamESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !32, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStreamD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !32, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN6Assimp14MemoryIOStreamD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6Assimp14MemoryIOStreamD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #32, !inline_history !366
  br label %_ZN6Assimp14MemoryIOStreamD2Ev.exit

_ZN6Assimp14MemoryIOStreamD2Ev.exit:              ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp14MemoryIOStream4ReadEPvmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = sub i64 %i.b, %i.d
  %i.f = udiv i64 %i.e, %2
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %3) ; 2 uses
  %i.g = mul i64 %.sroa.speculated, %2            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.j, i64 %i.g, i1 false)
  %i.k = load i64, ptr %i.c, align 8
  %i.l = add i64 %i.k, %i.g
  store i64 %i.l, ptr %i.c, align 8
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp14MemoryIOStream5WriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6Assimp14MemoryIOStream4SeekEm8aiOrigin(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #10 comdat align 2 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 0, label %bb.b
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.d, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = sub nuw i64 %i.f, %1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.h, ptr %i.i, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = add i64 %i.k, %1                         ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ugt i64 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i64 %i.l, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g, %bb.e, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp14MemoryIOStream4TellEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp14MemoryIOStream8FileSizeEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp14MemoryIOStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !327
  %i.k = load ptr, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !327
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJPKcRA44_S1_EEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(44) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA44_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(44) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #28
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #28
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA44_KcEPS1_EEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(44) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #28
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA44_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 1 dereferenceable(44) %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %4, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %4, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #28
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #28
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA44_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(44) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(44) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(44) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #32
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4STEP2DBD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %.not9 = icmp eq ptr %i.c, %i.d
  br i1 %.not9, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN6Assimp12LineSplitterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  %i.i = load i64, ptr %i.g, align 8
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #32
  br label %_ZN6Assimp12LineSplitterD2Ev.exit

_ZN6Assimp12LineSplitterD2Ev.exit:                ; preds = %._crit_edge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = load ptr, ptr %i.k, align 8              ; 8 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN6Assimp12LineSplitterD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !367
  %i.u = load ptr, ptr %i.l, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28, !inline_history !367
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.x = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.p, %bb.e ], [ %i.z, %bb.f ]
  %i.aa = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aa, label %bb.g, label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !17

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #28
  br label %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6Assimp12LineSplitterD2Ev.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %i.ab, ptr noundef %i.ad)
          to label %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EED2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #31
  unreachable

_ZNSt3setIPKcSt4lessIS1_ESaIS1_EED2Ev.exit:       ; preds = %_ZNSt12__shared_ptrIN6Assimp12StreamReaderILb0ELb0EEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ai, %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EED2Ev.exit ] ; 2 uses
  %i.aj = load ptr, ptr %.06.i.i.i.i, align 8     ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #32
  %.not.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !368

_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt3setIPKcSt4lessIS1_ESaIS1_EED2Ev.exit
  %i.ak = load ptr, ptr %i.ag, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = shl i64 %i.am, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ak, i8 0, i64 %i.an, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ao = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i
  %i.ar = load i64, ptr %i.al, align 8
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #32
  br label %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit

_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb0EEEE5clearEv.exit.i.i, %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = load ptr, ptr %i.au, align 8
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %i.at, ptr noundef %i.av)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #31
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEED2Ev.exit: ; preds = %_ZNSt18unordered_multimapImmSt4hashImESt8equal_toImESaISt4pairIKmmEEED2Ev.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmPKN6Assimp4STEP10LazyObjectEESt10_Select1stIS7_ESt4lessImESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.az)
          to label %_ZNSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEED2Ev.exit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #31
  unreachable

_ZNSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt3setIPKN6Assimp4STEP10LazyObjectESt4lessISB_ESaISB_EESC_IS5_ESaISt4pairIKS5_SF_EEED2Ev.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = load ptr, ptr %i.bc, align 8            ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZNSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8
  %i.bh = add i64 %i.bg, 1
  tail call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt3mapImPKN6Assimp4STEP10LazyObjectESt4lessImESaISt4pairIKmS4_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bm = load i64, ptr %i.bk, align 8
  %i.bn = add i64 %i.bm, 1
  tail call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bo = load ptr, ptr %0, align 8               ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN6Assimp4STEP10HeaderInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.br = load i64, ptr %i.bp, align 8
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #32
  br label %_ZN6Assimp4STEP10HeaderInfoD2Ev.exit

_ZN6Assimp4STEP10HeaderInfoD2Ev.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.m
  %.sroa.06.010 = phi ptr [ %i.bw, %bb.m ], [ %i.c, %bb.a ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.010, i64 40
  %i.bu = load ptr, ptr %i.bt, align 8            ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  tail call void @_ZN6Assimp4STEP10LazyObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bu) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 40) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph
  %i.bw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.06.010) #34 ; 2 uses
  %.not = icmp eq ptr %i.bw, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind
declare void @_ZN6Assimp4STEP10LazyObjectD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeIPKcS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 40) #32
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !369

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISI_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St3setIPKN6Assimp4STEP10LazyObjectESt4lessISD_ESaISD_EEESt10_Select1stISI_ESE_IS5_ESaISI_EE8_M_eraseEPSt13_Rb_tree_nodeISI_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  invoke void @_ZNSt8_Rb_treeIPKN6Assimp4STEP10LazyObjectES4_St9_IdentityIS4_ESt4lessIS4_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef %i.g)
          to label %_ZNSt3setIPKN6Assimp4STEP10LazyObjectESt4lessIS4_ESaIS4_EED2Ev.exit.i.i.i unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #31
  unreachable

_ZNSt3setIPKN6Assimp4STEP10LazyObjectESt4lessIS4_ESaIS4_EED2Ev.exit.i.i.i: ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
end_hunk_5
