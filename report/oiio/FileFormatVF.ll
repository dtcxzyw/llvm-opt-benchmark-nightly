inline.NumInlined: 935
inline.NumDeleted: 375
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg ; 2 uses
  store ptr %i.lk, ptr %i.do, align 8, !tbaa !74
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.kx ; 3 uses
  store ptr %i.ll, ptr %i.dn, align 8, !tbaa !75
  br label %.outer.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237: ; preds = %bb.ae
  %i.lm = load ptr, ptr %i.gz, align 8, !tbaa !26
  %i.ln = load i128, ptr %i.lm, align 1
  %i.lo = icmp ne i128 %i.ln, 145480032846891600437022433906212695143
  %i.lp = zext i1 %i.lo to i32
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412, label %.outer.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237
  %i.lr = ptrtoint ptr %i.ha to i64
  %i.ls = ptrtoint ptr %i.gz to i64
  %i.lt = sub i64 %i.lr, %i.ls
  %.not106 = icmp eq i64 %i.lt, 544
  br i1 %.not106, label %bb.bh, label %.noexc.i239

.noexc.i239:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.lu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 4 uses
  store ptr %i.lu, ptr %21, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 51, ptr %i.d, align 8, !tbaa !36
  %i.lv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc240 unwind label %bb.bf ; 3 uses

.noexc240:                                        ; preds = %.noexc.i239
  store ptr %i.lv, ptr %21, align 8, !tbaa !26
  %i.lw = load i64, ptr %i.d, align 8, !tbaa !36  ; 3 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(51) %i.lv, ptr noundef nonnull align 1 dereferenceable(51) @.str.13, i64 51, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 %i.lw, ptr %i.lx, align 8, !tbaa !13
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lv, i64 %i.lw
  store i8 0, ptr %i.ly, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable421 unwind label %bb.bg

.unreachable421:                                  ; preds = %.noexc240
  unreachable

bb.bf:                                            ; preds = %.noexc.i239
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

bb.bg:                                            ; preds = %.noexc240
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = load ptr, ptr %21, align 8, !tbaa !26   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lu
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.bg
  %i.md = load i64, ptr %i.lu, align 8, !tbaa !16
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245, %bb.bf
  %.pn107 = phi { ptr, i32 } [ %i.lz, %bb.bf ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245 ], [ %i.ma, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.loopexit

bb.bh:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237.thread412
  %i.mf = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr nonnull %i.gz)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit unwind label %bb.bk ; 0 uses

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit: ; preds = %bb.bh
  %i.mg = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bi unwind label %.loopexit.loopexit.split-lp

bb.bi:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EE.exit
  br i1 %i.mg, label %bb.bj, label %.noexc.i250

bb.bj:                                            ; preds = %bb.bi
  %i.mh = load ptr, ptr %i.dk, align 8, !tbaa !74
  %i.mi = load ptr, ptr %11, align 8, !tbaa !71
  %i.mj = ptrtoint ptr %i.mh to i64
  %i.mk = ptrtoint ptr %i.mi to i64
  %i.ml = sub i64 %i.mj, %i.mk
  %.not109 = icmp eq i64 %i.ml, 64
  br i1 %.not109, label %.outer.backedge, label %.noexc.i250

.noexc.i250:                                      ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  %i.mm = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  store ptr %i.mm, ptr %22, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 65, ptr %i.c, align 8, !tbaa !36
  %i.mn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc251 unwind label %bb.bl ; 3 uses

.noexc251:                                        ; preds = %.noexc.i250
  store ptr %i.mn, ptr %22, align 8, !tbaa !26
  %i.mo = load i64, ptr %i.c, align 8, !tbaa !36  ; 3 uses
  store i64 %i.mo, ptr %i.mm, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(65) %i.mn, ptr noundef nonnull align 1 dereferenceable(65) @.str.14, i64 65, i1 false)
  %i.mp = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 %i.mo, ptr %i.mp, align 8, !tbaa !13
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mn, i64 %i.mo
  store i8 0, ptr %i.mq, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke fastcc void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat17ThrowErrorMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_iS9_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %i.dw, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %.unreachable422 unwind label %bb.bm

.unreachable422:                                  ; preds = %.noexc251
  unreachable

bb.bk:                                            ; preds = %bb.bh
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.bl:                                            ; preds = %.noexc.i250
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

bb.bm:                                            ; preds = %.noexc251
  %i.mt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mu = load ptr, ptr %22, align 8, !tbaa !26   ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.mm
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256: ; preds = %bb.bm
  %i.mw = load i64, ptr %i.mm, align 8, !tbaa !16
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit258: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256, %bb.bl
  %.pn110 = phi { ptr, i32 } [ %i.ms, %bb.bl ], [ %i.mt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i256 ], [ %i.mt, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %.loopexit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260: ; preds = %bb.ae
  %i.my = load ptr, ptr %i.gz, align 8, !tbaa !26
  %i.mz = load i32, ptr %i.my, align 1
  %i.na = icmp ne i32 %i.mz, 1635017060
  %i.nb = zext i1 %i.na to i32
  %bcmp.i259.fr = freeze i32 %i.nb
  %i.nc = icmp eq i32 %bcmp.i259.fr, 0
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.ae, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281, %bb.bz, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i, %bb.bc, %bb.bo, %bb.bp, %bb.bj
  %.be = phi ptr [ %i.py, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281 ], [ %i.dq, %bb.bp ], [ %i.dq, %bb.bo ], [ %i.ll, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %i.dq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.dq, %bb.bj ], [ %i.dq, %bb.bc ], [ %i.dq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237 ], [ %i.dq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260 ], [ %i.pb, %bb.bz ], [ %i.dq, %bb.ae ]
  %.be703.a = phi ptr [ %i.pt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281 ], [ %i.dr, %bb.bp ], [ %i.dr, %bb.bo ], [ %i.li, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %i.dr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.dr, %bb.bj ], [ %i.dr, %bb.bc ], [ %i.dr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237 ], [ %i.dr, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260 ], [ %i.pe, %bb.bz ], [ %i.dr, %bb.ae ]
  %.be704 = phi ptr [ %i.py, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281 ], [ %i.ds, %bb.bp ], [ %i.ds, %bb.bo ], [ %i.ll, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %i.ds, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ds, %bb.bj ], [ %i.ds, %bb.bc ], [ %i.ds, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237 ], [ %i.ds, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260 ], [ %i.pb, %bb.bz ], [ %i.ds, %bb.ae ]
  %.be705 = phi ptr [ %i.pt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281 ], [ %i.dt, %bb.bp ], [ %i.dt, %bb.bo ], [ %i.li, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %i.dt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.dt, %bb.bj ], [ %i.dr, %bb.bc ], [ %i.dt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237 ], [ %i.dt, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260 ], [ %i.pf, %bb.bz ], [ %i.dt, %bb.ae ]
  %.be706 = phi ptr [ %i.px, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281 ], [ %i.du, %bb.bp ], [ %i.du, %bb.bo ], [ %i.lk, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ %i.du, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.du, %bb.bj ], [ %i.du, %bb.bc ], [ %i.du, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237 ], [ %i.du, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260 ], [ %i.pi, %bb.bz ], [ %i.du, %bb.ae ]
  %.048.ph.be = phi i1 [ true, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281 ], [ true, %bb.bp ], [ true, %bb.bo ], [ false, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.bj ], [ false, %bb.bc ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit237 ], [ %i.nc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit260 ], [ true, %bb.bz ], [ false, %bb.ae ]
  br label %.outer, !llvm.loop !60

bb.bn:                                            ; preds = %_ZN11StringUtils10StartsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc.exit.thread
  %i.nd = invoke noundef zeroext i1 @_ZN16OpenColorIO_v2_519StringVecToFloatVecERSt6vectorIfSaIfEERKS0_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.bo unwind label %.loopexit.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  br i1 %i.nd, label %bb.bp, label %.outer.backedge

bb.bp:                                            ; preds = %bb.bo
  %i.ne = load ptr, ptr %i.dp, align 8, !tbaa !74
  %i.nf = load ptr, ptr %13, align 8, !tbaa !71   ; 5 uses
  %i.ng = ptrtoint ptr %i.ne to i64
  %i.nh = ptrtoint ptr %i.nf to i64
  %i.ni = sub i64 %i.ng, %i.nh
  %i.nj = icmp eq i64 %i.ni, 12
  br i1 %i.nj, label %bb.bq, label %.outer.backedge

bb.bq:                                            ; preds = %bb.bp
  %.not.i261 = icmp eq ptr %i.du, %i.ds
  br i1 %.not.i261, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nk = load float, ptr %i.nf, align 4, !tbaa !76
  store float %i.nk, ptr %i.du, align 4, !tbaa !76
  %i.nl = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  store ptr %i.nl, ptr %i.do, align 8, !tbaa !74
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.bs:                                            ; preds = %bb.bq
  %i.nm = ptrtoint ptr %i.ds to i64
  %i.nn = ptrtoint ptr %i.dr to i64
  %i.no = sub i64 %i.nm, %i.nn                    ; 6 uses
  %i.np = icmp eq i64 %i.no, 9223372036854775804
  br i1 %i.np, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bs
  %i.nq = ashr exact i64 %i.no, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.nq, i64 1)
  %i.nr = add nsw i64 %.sroa.speculated.i.i.i, %i.nq ; 2 uses
  %i.ns = icmp ult i64 %i.nr, %i.nq
  %i.nt = call i64 @llvm.umin.i64(i64 %i.nr, i64 2305843009213693951)
  %i.nu = select i1 %i.ns, i64 2305843009213693951, i64 %i.nt ; 3 uses
  %.not.i.i.i262 = icmp ne i64 %i.nu, 0
  call void @llvm.assume(i1 %.not.i.i.i262)
  %i.nv = shl nuw nsw i64 %i.nu, 2
  %i.nw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nv) #22
          to label %.noexc264 unwind label %.loopexit.loopexit.split-lp ; 6 uses

.noexc264:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.nx = getelementptr inbounds i8, ptr %i.nw, i64 %i.no ; 2 uses
  %i.ny = load float, ptr %i.nf, align 4, !tbaa !76
  store float %i.ny, ptr %i.nx, align 4, !tbaa !76
  %i.nz = icmp sgt i64 %i.no, 0
  br i1 %i.nz, label %bb.bt, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.bt:                                            ; preds = %.noexc264
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nw, ptr align 4 %i.dr, i64 %i.no, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.bt, %.noexc264
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nx, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.no) #24
  %.pre479.pre = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.bu, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  %.pre479 = phi ptr [ %.pre479.pre, %bb.bu ], [ %i.nf, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i ]
  store ptr %i.nw, ptr %10, align 8, !tbaa !71
  store ptr %i.oa, ptr %i.do, align 8, !tbaa !74
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.nw, i64 %i.nu ; 3 uses
  store ptr %i.ob, ptr %i.dn, align 8, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, %bb.br
  %i.oc = phi ptr [ %i.ob, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.dq, %bb.br ]
  %i.od = phi ptr [ %i.ob, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.ds, %bb.br ] ; 2 uses
  %i.oe = phi ptr [ %i.oa, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.nl, %bb.br ] ; 3 uses
  %i.of = phi ptr [ %.pre479, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.nf, %bb.br ] ; 3 uses
  %i.og = phi ptr [ %i.nw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.dr, %bb.br ] ; 5 uses
  %i.oh = phi ptr [ %i.nw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ], [ %i.dt, %bb.br ]
  %i.oi = getelementptr inbounds nuw i8, ptr %i.of, i64 4 ; 2 uses
  %.not.i265 = icmp eq ptr %i.oe, %i.od
  br i1 %.not.i265, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.oj = load float, ptr %i.oi, align 4, !tbaa !76
  store float %i.oj, ptr %i.oe, align 4, !tbaa !76
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oe, i64 4 ; 2 uses
  store ptr %i.ok, ptr %i.do, align 8, !tbaa !74
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit274

bb.bw:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ol = ptrtoint ptr %i.od to i64
  %i.om = ptrtoint ptr %i.og to i64
  %i.on = sub i64 %i.ol, %i.om                    ; 6 uses
  %i.oo = icmp eq i64 %i.on, 9223372036854775804
  br i1 %i.oo, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i266

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i266: ; preds = %bb.bw
  %i.op = ashr exact i64 %i.on, 2                 ; 3 uses
  %.sroa.speculated.i.i.i267 = call i64 @llvm.umax.i64(i64 %i.op, i64 1)
  %i.oq = add nsw i64 %.sroa.speculated.i.i.i267, %i.op ; 2 uses
  %i.or = icmp ult i64 %i.oq, %i.op
  %i.os = call i64 @llvm.umin.i64(i64 %i.oq, i64 2305843009213693951)
  %i.ot = select i1 %i.or, i64 2305843009213693951, i64 %i.os ; 3 uses
  %.not.i.i.i268 = icmp ne i64 %i.ot, 0
  call void @llvm.assume(i1 %.not.i.i.i268)
  %i.ou = shl nuw nsw i64 %i.ot, 2
  %i.ov = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ou) #22
          to label %.noexc273 unwind label %.loopexit.loopexit.split-lp ; 6 uses

.noexc273:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i266
  %i.ow = getelementptr inbounds i8, ptr %i.ov, i64 %i.on ; 2 uses
  %i.ox = load float, ptr %i.oi, align 4, !tbaa !76
  store float %i.ox, ptr %i.ow, align 4, !tbaa !76
  %i.oy = icmp sgt i64 %i.on, 0
  br i1 %i.oy, label %bb.bx, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269

bb.bx:                                            ; preds = %.noexc273
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ov, ptr align 4 %i.og, i64 %i.on, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269: ; preds = %bb.bx, %.noexc273
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ow, i64 4 ; 2 uses
  %.not.i17.i.i270 = icmp eq ptr %i.og, null
  br i1 %.not.i17.i.i270, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef %i.on) #24
  %.pre480.pre = load ptr, ptr %13, align 8, !tbaa !71
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271: ; preds = %bb.by, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269
  %.pre480 = phi ptr [ %.pre480.pre, %bb.by ], [ %i.of, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i269 ]
  store ptr %i.ov, ptr %10, align 8, !tbaa !71
  store ptr %i.oz, ptr %i.do, align 8, !tbaa !74
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.ot ; 2 uses
  store ptr %i.pa, ptr %i.dn, align 8, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit274

_ZNSt6vectorIfSaIfEE9push_backERKf.exit274:       ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271, %bb.bv
  %i.pb = phi ptr [ %i.pa, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.oc, %bb.bv ] ; 4 uses
  %i.pc = phi ptr [ %i.oz, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.ok, %bb.bv ] ; 3 uses
  %i.pd = phi ptr [ %.pre480, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.of, %bb.bv ]
  %i.pe = phi ptr [ %i.ov, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.og, %bb.bv ] ; 5 uses
  %i.pf = phi ptr [ %i.ov, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i271 ], [ %i.oh, %bb.bv ]
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pd, i64 8 ; 2 uses
  %.not.i275 = icmp eq ptr %i.pc, %i.pb
  br i1 %.not.i275, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit274
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !76
  store float %i.ph, ptr %i.pc, align 4, !tbaa !76
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pc, i64 4 ; 2 uses
  store ptr %i.pi, ptr %i.do, align 8, !tbaa !74
  br label %.outer.backedge

bb.ca:                                            ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit274
  %i.pj = ptrtoint ptr %i.pb to i64
  %i.pk = ptrtoint ptr %i.pe to i64
  %i.pl = sub i64 %i.pj, %i.pk                    ; 6 uses
  %i.pm = icmp eq i64 %i.pl, 9223372036854775804
  br i1 %i.pm, label %.invoke, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i276

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i276: ; preds = %bb.ca
  %i.pn = ashr exact i64 %i.pl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i277 = call i64 @llvm.umax.i64(i64 %i.pn, i64 1)
  %i.po = add nsw i64 %.sroa.speculated.i.i.i277, %i.pn ; 2 uses
  %i.pp = icmp ult i64 %i.po, %i.pn
  %i.pq = call i64 @llvm.umin.i64(i64 %i.po, i64 2305843009213693951)
  %i.pr = select i1 %i.pp, i64 2305843009213693951, i64 %i.pq ; 3 uses
  %.not.i.i.i278 = icmp ne i64 %i.pr, 0
  call void @llvm.assume(i1 %.not.i.i.i278)
  %i.ps = shl nuw nsw i64 %i.pr, 2
  %i.pt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ps) #22
          to label %.noexc283 unwind label %.loopexit.loopexit.split-lp ; 6 uses

.noexc283:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i276
  %i.pu = getelementptr inbounds i8, ptr %i.pt, i64 %i.pl ; 2 uses
  %i.pv = load float, ptr %i.pg, align 4, !tbaa !76
  store float %i.pv, ptr %i.pu, align 4, !tbaa !76
  %i.pw = icmp sgt i64 %i.pl, 0
  br i1 %i.pw, label %bb.cb, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279

bb.cb:                                            ; preds = %.noexc283
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pt, ptr align 4 %i.pe, i64 %i.pl, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279: ; preds = %bb.cb, %.noexc283
  %i.px = getelementptr inbounds nuw i8, ptr %i.pu, i64 4 ; 2 uses
  %.not.i17.i.i280 = icmp eq ptr %i.pe, null
  br i1 %.not.i17.i.i280, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279
  call void @_ZdlPvm(ptr noundef nonnull %i.pe, i64 noundef %i.pl) #24
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i281: ; preds = %bb.cc, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i279
  store ptr %i.pt, ptr %10, align 8, !tbaa !71
  store ptr %i.px, ptr %i.do, align 8, !tbaa !74
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %i.pr ; 3 uses
  store ptr %i.py, ptr %i.dn, align 8, !tbaa !75
  br label %.outer.backedge

bb.cd:                                            ; preds = %bb.p
  %i.pz = load ptr, ptr %13, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i285 = icmp eq ptr %i.pz, null
  br i1 %.not.i.i.i285, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qa = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !75
  %i.qc = ptrtoint ptr %i.qb to i64
  %i.qd = ptrtoint ptr %i.pz to i64
  %i.qe = sub i64 %i.qc, %i.qd
  call void @_ZdlPvm(ptr noundef nonnull %i.pz, i64 noundef %i.qe) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.qf = load ptr, ptr %12, align 16, !tbaa !53  ; 3 uses
  %i.qg = load ptr, ptr %i.dg, align 8, !tbaa !56 ; 2 uses
  %.not4.i.i.i286 = icmp eq ptr %i.qf, %i.qg
  br i1 %.not4.i.i.i286, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294, label %.lr.ph.i.i.i287

.lr.ph.i.i.i287:                                  ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290
  %.05.i.i.i288 = phi ptr [ %i.qm, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290 ], [ %i.qf, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %i.qh = load ptr, ptr %.05.i.i.i288, align 8, !tbaa !26 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.05.i.i.i288, i64 16 ; 2 uses
  %i.qj = icmp eq ptr %i.qh, %i.qi
  br i1 %i.qj, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289: ; preds = %.lr.ph.i.i.i287
  %i.qk = load i64, ptr %i.qi, align 8, !tbaa !16
  %i.ql = add i64 %i.qk, 1
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.ql) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290: ; preds = %.lr.ph.i.i.i287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i289
  %i.qm = getelementptr inbounds nuw i8, ptr %.05.i.i.i288, i64 32 ; 2 uses
  %.not.i.i.i291 = icmp eq ptr %i.qm, %i.qg
  br i1 %.not.i.i.i291, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292, label %.lr.ph.i.i.i287, !llvm.loop !59

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i290
  %.pr.i293 = load ptr, ptr %12, align 16, !tbaa !53
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.qn = phi ptr [ %.pr.i293, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i292 ], [ %i.qf, %_ZNSt6vectorIfSaIfEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i295 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i1.i295, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297, label %bb.cf

bb.cf:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294
  %i.qo = load ptr, ptr %i.dh, align 16, !tbaa !57
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = ptrtoint ptr %i.qn to i64
  %i.qr = sub i64 %i.qp, %i.qq
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef %i.qr) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i294, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.qs = load <2 x i32>, ptr %i.i, align 8, !tbaa !3 ; 3 uses
  %i.qt = extractelement <2 x i32> %i.qs, i64 0
  %i.qu = extractelement <2 x i32> %i.qs, i64 1
  %i.qv = mul nsw i32 %i.qu, %i.qt
  %i.qw = load i32, ptr %i.dm, align 8, !tbaa !3  ; 2 uses
  %i.qx = mul nsw i32 %i.qv, %i.qw                ; 2 uses
  %i.qy = ptrtoint ptr %i.du to i64
  %i.qz = ptrtoint ptr %i.dt to i64
  %i.ra = sub i64 %i.qy, %i.qz
  %i.rb = ashr exact i64 %i.ra, 2
  %i.rc = udiv i64 %i.rb, 3                       ; 2 uses
  %i.rd = trunc i64 %i.rc to i32
  %.not = icmp eq i32 %i.qx, %i.rd
  br i1 %.not, label %bb.cx, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit297
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %23)
          to label %bb.ch unwind label %bb.cr

bb.ch:                                            ; preds = %bb.cg
  %i.re = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.16, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299: ; preds = %bb.ch
  %i.rf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.17, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.a unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.a: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit299
  %i.rg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %i.rc)
          to label %_ZNSolsEm.exit unwind label %bb.cs ; 2 uses

_ZNSolsEm.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit301.a
  %i.rh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, ptr noundef nonnull @.str.18, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304: ; preds = %_ZNSolsEm.exit
  %i.ri = load i32, ptr %i.i, align 8, !tbaa !3
  %i.rj = load i32, ptr %i.dl, align 4, !tbaa !3
  %i.rk = mul nsw i32 %i.rj, %i.ri
  %i.rl = load i32, ptr %i.dm, align 8, !tbaa !3
  %i.rm = mul nsw i32 %i.rk, %i.rl
  %i.rn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.rg, i32 noundef %i.rm)
          to label %bb.ci unwind label %bb.cs

bb.ci:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit304
  %i.ro = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rn, ptr noundef nonnull @.str.11, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306 unwind label %bb.cs ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306: ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.rp = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  store ptr %i.rp, ptr %25, align 8, !tbaa !9, !alias.scope !84
  %i.rq = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 0, ptr %i.rq, align 8, !tbaa !13, !alias.scope !84
  store i8 0, ptr %i.rp, align 8, !tbaa !16, !alias.scope !84
  %i.rr = getelementptr inbounds nuw i8, ptr %23, i64 48
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !68, !noalias !84 ; 3 uses
  %.not.i.not.i.i307 = icmp eq ptr %i.rs, null
  %i.rt = getelementptr inbounds nuw i8, ptr %23, i64 32
  %i.ru = load ptr, ptr %i.rt, align 8, !noalias !84 ; 2 uses
  %i.rv = icmp ugt ptr %i.rs, %i.ru
  %.08.i.i.i308 = select i1 %i.rv, ptr %i.rs, ptr %i.ru ; 2 uses
  %.not5.i.i309 = icmp eq ptr %.08.i.i.i308, null
  %.not.i.i310 = select i1 %.not.i.not.i.i307, i1 true, i1 %.not5.i.i309
  br i1 %.not.i.i310, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.rw = getelementptr inbounds nuw i8, ptr %23, i64 40
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !70, !noalias !84 ; 2 uses
  %i.ry = ptrtoint ptr %.08.i.i.i308 to i64
  %i.rz = ptrtoint ptr %i.rx to i64
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef 0, ptr noundef %i.rx, i64 noundef %i.sa)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316 unwind label %bb.ck ; 0 uses

bb.ck:                                            ; preds = %bb.cl, %bb.cj
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sd = load ptr, ptr %25, align 8, !tbaa !26, !alias.scope !84 ; 2 uses
  %i.se = icmp eq ptr %i.sd, %i.rp
  br i1 %i.se, label %.body314, label %.body314.sink.split

bb.cl:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit306
  %i.sf = getelementptr inbounds nuw i8, ptr %23, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %i.sf)
          to label %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316 unwind label %bb.ck

_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316: ; preds = %bb.cl, %bb.cj
  %i.sg = load ptr, ptr %25, align 8, !tbaa !26   ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 5 uses
  store ptr %i.sh, ptr %24, align 8, !tbaa !9
  %i.si = icmp eq ptr %i.sg, null
  br i1 %i.si, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.23) #25
          to label %.noexc319 unwind label %bb.ct

.noexc319:                                        ; preds = %bb.cm
  unreachable

bb.cn:                                            ; preds = %_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv.exit316
  %i.sj = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.sg) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 %i.sj, ptr %i.b, align 8, !tbaa !36
  %i.sk = icmp ugt i64 %i.sj, 15
  br i1 %i.sk, label %.noexc.i318, label %._crit_edge.i.i317
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat12buildFileOpsERNS_10OpRcPtrVecERKNS_6ConfigERKSt10shared_ptrIKNS_7ContextEES7_INS_10CachedFileEERKNS_13FileTransformENS_18TransformDirectionE:bb.a

bb.ay:                                            ; preds = %bb.ax
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8 ; 4 uses
  %i.cg = load atomic i64, ptr %i.cf acquire, align 8 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, 4294967297
  %i.ci = trunc i64 %i.cg to i32                  ; 2 uses
  br i1 %i.ch, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.cf, align 8, !tbaa !86
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 0, ptr %i.cj, align 4, !tbaa !88
  %i.ck = load ptr, ptr %i.ce, align 8, !tbaa !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #23, !inline_history !147
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !7
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #23, !inline_history !147
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54

bb.ba:                                            ; preds = %bb.ay
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i51 = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i51, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cr = add nsw i32 %i.ci, -1
  store i32 %i.cr, ptr %i.cf, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

bb.bc:                                            ; preds = %bb.ba
  %i.cs = atomicrmw volatile add ptr %i.cf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i53 = phi i32 [ %i.ci, %bb.bb ], [ %i.cs, %bb.bc ]
  %i.ct = icmp eq i32 %.0.i.i.i.i53, 1
  br i1 %i.ct, label %bb.bd, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54, !prof !109

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ce) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54

_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54: ; preds = %bb.ax, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i52, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54
  %i.cu = getelementptr inbounds nuw i8, ptr %.val39, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.cu, align 8, !tbaa !86
  %i.cy = getelementptr inbounds nuw i8, ptr %.val39, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !88
  %i.cz = load ptr, ptr %.val39, align 8, !tbaa !7
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %.val39) #23, !inline_history !150
  %i.dc = load ptr, ptr %.val39, align 8, !tbaa !7
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(16) %.val39) #23, !inline_history !150
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.df = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i56 = icmp eq i8 %i.df, 0
  br i1 %.not.i.i.i56, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dg = add nsw i32 %i.cx, -1
  store i32 %i.dg, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

bb.bi:                                            ; preds = %bb.bg
  %i.dh = atomicrmw volatile add ptr %i.cu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i58 = phi i32 [ %i.cx, %bb.bh ], [ %i.dh, %bb.bi ]
  %i.di = icmp eq i32 %.0.i.i.i.i58, 1
  br i1 %i.di, label %bb.bj, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !109

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val39) #23
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit54, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i57, %bb.bj
  ret void

bb.bk:                                            ; preds = %bb.aq, %bb.am
  %.pn34 = phi { ptr, i32 } [ %i.bw, %bb.aq ], [ %.pn32, %bb.am ]
  call void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.ah, %bb.bk, %bb.ai, %bb.o
  %.sroa.12.063 = phi ptr [ null, %bb.o ], [ %.val39, %bb.ah ], [ %.val39, %bb.bk ], [ %.val39, %bb.ai ]
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.o ], [ %i.bo, %bb.ah ], [ %.pn34, %bb.bk ], [ %i.bp, %bb.ai ]
  call fastcc void @_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.sroa.12.063) #23
  resume { ptr, i32 } %.pn34.pn.pn.pn

bb.bm:                                            ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK16OpenColorIO_v2_510FileFormat8isBinaryEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_510FormatInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !16
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !16
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !151    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72                 ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  invoke void @_ZN16OpenColorIO_v2_510FormatInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit unwind label %bb.i

_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE12_M_check_lenEmPKc.exit
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.av, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 9 uses
  %.0911.i.i.i = phi ptr [ %i.au, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.r, ptr %.012.i.i.i, align 8, !tbaa !9, !alias.scope !152, !noalias !155
  %i.s = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !155, !noalias !152 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !13, !alias.scope !155, !noalias !152 ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false), !alias.scope !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.s, ptr %.012.i.i.i, align 8, !tbaa !26, !alias.scope !152, !noalias !155
  %i.z = load i64, ptr %i.t, align 8, !tbaa !16, !alias.scope !155, !noalias !152
  store i64 %i.z, ptr %i.r, align 8, !tbaa !16, !alias.scope !152, !noalias !155
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !13, !alias.scope !155, !noalias !152
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.c
  %i.aa = phi i64 [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ %i.w, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !13, !alias.scope !152, !noalias !155
  store ptr %i.t, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !155, !noalias !152
  store i64 0, ptr %i.ab, align 8, !tbaa !13, !alias.scope !155, !noalias !152
  store i8 0, ptr %i.t, align 8, !tbaa !16, !alias.scope !155, !noalias !152
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !9, !alias.scope !152, !noalias !155
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !26, !alias.scope !155, !noalias !152 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !13, !alias.scope !155, !noalias !152 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !157
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !26, !alias.scope !152, !noalias !155
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !16, !alias.scope !155, !noalias !152
  store i64 %i.an, ptr %i.af, align 8, !tbaa !16, !alias.scope !152, !noalias !155
  %.phi.trans.insert5.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %.pre6.i.i.i.i = load i64, ptr %.phi.trans.insert5.i.i.i.i, align 8, !tbaa !13, !alias.scope !155, !noalias !152
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre6.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !13, !alias.scope !152, !noalias !155
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !26, !alias.scope !155, !noalias !152
  store i64 0, ptr %i.ap, align 8, !tbaa !13, !alias.scope !155, !noalias !152
  store i8 0, ptr %i.ah, align 8, !tbaa !16, !alias.scope !155, !noalias !152
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 64
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !155, !noalias !152
  store i64 %i.at, ptr %i.ar, align 8, !alias.scope !152, !noalias !155
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.au, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !158

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN16OpenColorIO_v2_510FormatInfoEEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_.exit ], [ %i.av, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37
  %.012.i.i.i28 = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %i.aw, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  %.0911.i.i.i29 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ], [ %1, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ax, ptr %.012.i.i.i28, align 8, !tbaa !9, !alias.scope !159, !noalias !162
  %i.ay = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !162, !noalias !159 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30

bb.e:                                             ; preds = %.lr.ph.i.i.i27
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !13, !alias.scope !162, !noalias !159 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false), !alias.scope !164
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.ay, ptr %.012.i.i.i28, align 8, !tbaa !26, !alias.scope !159, !noalias !162
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !16, !alias.scope !162, !noalias !159
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !16, !alias.scope !159, !noalias !162
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !13, !alias.scope !162, !noalias !159
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30, %bb.e
  %i.bg = phi i64 [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i30 ], [ %i.bc, %bb.e ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !13, !alias.scope !159, !noalias !162
  store ptr %i.az, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !162, !noalias !159
  store i64 0, ptr %i.bh, align 8, !tbaa !13, !alias.scope !162, !noalias !159
  store i8 0, ptr %i.az, align 8, !tbaa !16, !alias.scope !162, !noalias !159
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 48 ; 3 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !9, !alias.scope !159, !noalias !162
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !26, !alias.scope !162, !noalias !159 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 48 ; 5 uses
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !13, !alias.scope !162, !noalias !159 ; 3 uses
  %i.br = icmp ult i64 %i.bq, 16
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = add nuw nsw i64 %i.bq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bn, i64 %i.bs, i1 false), !alias.scope !164
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i33
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !26, !alias.scope !159, !noalias !162
  %i.bt = load i64, ptr %i.bn, align 8, !tbaa !16, !alias.scope !162, !noalias !159
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !16, !alias.scope !159, !noalias !162
  %.phi.trans.insert5.i.i.i.i35 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %.pre6.i.i.i.i36 = load i64, ptr %.phi.trans.insert5.i.i.i.i35, align 8, !tbaa !13, !alias.scope !162, !noalias !159
  br label %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37

_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34, %bb.f
  %i.bu = phi i64 [ %i.bq, %bb.f ], [ %.pre6.i.i.i.i36, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i34 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 40
  %i.bw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 40
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !13, !alias.scope !159, !noalias !162
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !26, !alias.scope !162, !noalias !159
  store i64 0, ptr %i.bv, align 8, !tbaa !13, !alias.scope !162, !noalias !159
  store i8 0, ptr %i.bn, align 8, !tbaa !16, !alias.scope !162, !noalias !159
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 64
  %i.by = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 64
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !162, !noalias !159
  store i64 %i.bz, ptr %i.bx, align 8, !alias.scope !159, !noalias !162
  %i.ca = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 72 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 72 ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.ca, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, label %.lr.ph.i.i.i27, !llvm.loop !158

_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40: ; preds = %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i39 = phi ptr [ %i.aw, %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.cb, %_ZSt19__relocate_object_aIN16OpenColorIO_v2_510FormatInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i37 ]
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i41 = icmp eq ptr %i.c, null
  br i1 %.not.i41, label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !25
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.cf) #24
  br label %_ZNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN16OpenColorIO_v2_510FormatInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN16OpenColorIO_v2_510FormatInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit40, %bb.g
  store ptr %i.p, ptr %0, align 8, !tbaa !151
  store ptr %.0.lcssa.i.i.i39, ptr %i.a, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.cg, ptr %i.cc, align 8, !tbaa !25
  ret void

bb.h:                                             ; preds = %bb.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
end_hunk_1
begin_hunk_2_@_ZNSt8ios_baseD2Ev
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeISt16istream_iteratorIS5_cS3_lEEEvT_SB_St18input_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit

_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit: ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge, %bb.a
  %i.h = load i8, ptr %i.b, align 8, !tbaa !175, !range !148, !noundef !149 ; 2 uses
  %i.i = load i8, ptr %i.c, align 8, !tbaa !175, !range !148, !noundef !149
  %i.j = icmp eq i8 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread

bb.b:                                             ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit
  %i.k = trunc nuw i8 %i.h to i1
  br i1 %i.k, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread5

_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !172
  %i.m = load ptr, ptr %2, align 8, !tbaa !172
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread5, label %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread

_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread: ; preds = %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit, %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !56   ; 8 uses
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !57
  %.not.i = icmp eq ptr %i.n, %i.o
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store ptr %i.p, ptr %i.n, align 8, !tbaa !9
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !26   ; 2 uses
  %i.r = load i64, ptr %i.g, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.r, ptr %i.a, align 8, !tbaa !36
  %i.s = icmp ugt i64 %i.r, 15
  br i1 %i.s, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.t, ptr %i.n, align 8, !tbaa !26
  %i.u = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.u, ptr %i.p, align 8, !tbaa !16
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.c
  %i.v = phi ptr [ %i.t, %.noexc ], [ %i.p, %bb.c ] ; 2 uses
  switch i64 %i.r, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.w = load i8, ptr %i.q, align 1, !tbaa !16
  store i8 %i.w, ptr %i.v, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.q, i64 %i.r, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i
  %i.x = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %i.x, ptr %i.y, align 8, !tbaa !13
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.x
  store i8 0, ptr %i.aa, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ab = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store ptr %i.ac, ptr %i.e, align 8, !tbaa !56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit

bb.f:                                             ; preds = %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit unwind label %bb.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ad = load ptr, ptr %1, align 8, !tbaa !172   ; 2 uses
  %.not.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i, label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge, label %bb.g

_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit, %.noexc4, %bb.h
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit

bb.g:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRKS5_EEERS5_DpOT_.exit
  %i.ae = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.noexc4 unwind label %bb.i    ; 2 uses

.noexc4:                                          ; preds = %bb.g
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !7
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !27
  %i.al = and i32 %i.ak, 5
  %.not1.i.i = icmp eq i32 %i.al, 0
  br i1 %.not1.i.i, label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge, label %bb.h

bb.h:                                             ; preds = %.noexc4
  store ptr null, ptr %1, align 8, !tbaa !172
  store i8 0, ptr %i.b, align 8, !tbaa !175
  br label %_ZNSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lEppEv.exit.backedge

bb.i:                                             ; preds = %bb.g, %bb.f, %.noexc.i.i
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  %i.ao = call ptr @__cxa_begin_catch(ptr %i.an) #23 ; 0 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  invoke void @__cxa_rethrow() #25
          to label %bb.m unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit.thread5: ; preds = %bb.b, %_ZStneRKSt16istream_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEcS3_lES8_.exit
  ret void

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ap

bb.l:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #26
  unreachable

bb.m:                                             ; preds = %bb.i
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %.not.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !26 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !16
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !59

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  store ptr %i.a, ptr %i.b, align 8, !tbaa !56
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_erase_at_endEPS5_.exit: ; preds = %bb.a, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !53     ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %3 = ashr exact i64 %i.g, 5                     ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %3, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i, %3        ; 2 uses
  %5 = icmp ult i64 %4, %3
  %6 = tail call i64 @llvm.umin.i64(i64 %4, i64 288230376151711743)
  %7 = select i1 %5, i64 288230376151711743, i64 %6 ; 4 uses
  %8 = ptrtoint ptr %1 to i64
  %9 = sub i64 %8, %i.f
  %.not.i = icmp eq i64 %7, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %10

10:                                               ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %11 = shl nuw nsw i64 %7, 5
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #22
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %10
  %13 = phi ptr [ %12, %10 ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 %9 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !9
  %i.k = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.m, ptr %i.a, align 8, !tbaa !36
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %i.i, align 8, !tbaa !26
  %i.p = load i64, ptr %i.a, align 8, !tbaa !36
  store i64 %i.p, ptr %i.j, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.j, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.m, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.k, align 1, !tbaa !16
  store i8 %i.r, ptr %i.q, align 1, !tbaa !16
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.k, i64 %i.m, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %13, %bb.e ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ai, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.e ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.w, ptr %.012.i.i.i, align 8, !tbaa !9, !alias.scope !198, !noalias !201
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !201, !noalias !198 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !13, !alias.scope !201, !noalias !198 ; 3 uses
  %i.ac = icmp ult i64 %i.ab, 16
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %i.y, i64 %i.ad, i1 false), !alias.scope !203
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !26, !alias.scope !198, !noalias !201
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !16, !alias.scope !201, !noalias !198
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !16, !alias.scope !198, !noalias !201
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !13, !alias.scope !201, !noalias !198
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.f
  %i.af = phi i64 [ %i.ab, %bb.f ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.af, ptr %i.ah, align 8, !tbaa !13, !alias.scope !198, !noalias !201
  store ptr %i.y, ptr %.0911.i.i.i, align 8, !tbaa !26, !alias.scope !201, !noalias !198
  store i64 0, ptr %i.ag, align 8, !tbaa !13, !alias.scope !201, !noalias !198
  store i8 0, ptr %i.y, align 8, !tbaa !16, !alias.scope !201, !noalias !198
  %i.ai = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ai, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !204

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.e
  %.0.lcssa.i.i.i = phi ptr [ %13, %bb.e ], [ %i.aj, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.ax, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.al, ptr %.012.i.i.i28, align 8, !tbaa !9, !alias.scope !205, !noalias !208
  %i.am = load ptr, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !208, !noalias !205 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.g:                                             ; preds = %.lr.ph.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !13, !alias.scope !208, !noalias !205 ; 3 uses
  %i.ar = icmp ult i64 %i.aq, 16
  call void @llvm.assume(i1 %i.ar)
  %i.as = add nuw nsw i64 %i.aq, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.al, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.as, i1 false), !alias.scope !210
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.am, ptr %.012.i.i.i28, align 8, !tbaa !26, !alias.scope !205, !noalias !208
  %i.at = load i64, ptr %i.an, align 8, !tbaa !16, !alias.scope !208, !noalias !205
  store i64 %i.at, ptr %i.al, align 8, !tbaa !16, !alias.scope !205, !noalias !208
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !tbaa !13, !alias.scope !208, !noalias !205
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.g
  %i.au = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.au, ptr %i.aw, align 8, !tbaa !13, !alias.scope !205, !noalias !208
  store ptr %i.an, ptr %.0911.i.i.i29, align 8, !tbaa !26, !alias.scope !208, !noalias !205
  store i64 0, ptr %i.av, align 8, !tbaa !13, !alias.scope !208, !noalias !205
  store i8 0, ptr %i.an, align 8, !tbaa !16, !alias.scope !208, !noalias !205
  %i.ax = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.ax, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !204

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.ak, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.ay, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !57
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bc) #24
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.h
  store ptr %13, ptr %0, align 8, !tbaa !53
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8, !tbaa !56
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %13, i64 %7
  store ptr %i.bd, ptr %i.az, align 8, !tbaa !57
  ret void

bb.i:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %.noexc.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  %i.bh = call ptr @__cxa_begin_catch(ptr %i.bg) #23 ; 0 uses
  %14 = shl nuw nsw i64 %7, 5
  call void @_ZdlPvm(ptr noundef nonnull %13, i64 noundef %14) #24
  invoke void @__cxa_rethrow() #25
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.be

bb.l:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #26
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 4 uses
  %.not = icmp eq ptr %i.a, %i.c
  br i1 %.not, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.013.i.i.i.i.i = phi i64 [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %1, %bb.b ] ; 9 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.a, %bb.b ] ; 10 uses
  %i.i = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !26 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16 ; 4 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !26 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 16 ; 6 uses
  %i.n = icmp eq ptr %i.l, %i.m                   ; 2 uses
  br i1 %i.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.n, label %bb.c, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.n, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  tail call void @llvm.assume(i1 %i.q)
  switch i64 %i.p, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.l, align 1, !tbaa !16
  store i8 %i.r, ptr %i.i, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.s = load i64, ptr %i.o, align 8, !tbaa !13   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !13
  %i.u = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !16
  %.pre.i.i.i.i.i.i = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.l, ptr %.0811.i.i.i.i.i, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !13
  store i64 %i.y, ptr %i.w, align 8, !tbaa !13
  %i.z = load i64, ptr %i.m, align 8, !tbaa !16
  store i64 %i.z, ptr %i.j, align 8, !tbaa !16
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.aa = load i64, ptr %i.j, align 8, !tbaa !16
  store ptr %i.l, ptr %.0811.i.i.i.i.i, align 8, !tbaa !26
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !13
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !16
  store i64 %i.ae, ptr %i.j, align 8, !tbaa !16
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.i, ptr %.0910.i.i.i.i.i, align 8, !tbaa !26
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.m, ptr %.0910.i.i.i.i.i, align 8, !tbaa !26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.af = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.i, %bb.f ], [ %i.m, %bb.g ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !13
  store i8 0, ptr %i.af, align 1, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.aj = add nsw i64 %.013.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.013.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit, !llvm.loop !211

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !56
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit, %bb.b, %bb.a
  %i.al = phi ptr [ %.pre, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.loopexit ], [ %i.c, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -32 ; 2 uses
  store ptr %i.am, ptr %i.b, align 8, !tbaa !56
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.al, i64 -16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !16
  %i.ar = add i64 %i.aq, 1
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret ptr %1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(153) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_512_GLOBAL__N_115LocalCachedFileE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !88
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !147
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !147
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_511Lut3DOpDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
end_hunk_2
