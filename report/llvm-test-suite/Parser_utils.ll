Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Parser_utils?download=true
inline.NumInlined: 230
inline.NumDeleted: 93
begin_hunk_0_@_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE:bb.a
bb.ao:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kn = ptrtoint ptr %.sroa.0276.0 to i64
  %i.ko = sub i64 %.sroa.17.0, %i.kn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0276.0, i64 noundef %i.ko) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit223

_ZNSt6vectorIiSaIiEED2Ev.exit223:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.ao
  %.not.i.i.i224 = icmp eq ptr %.sroa.0289.0, null
  br i1 %.not.i.i.i224, label %_ZNSt6vectorIiSaIiEED2Ev.exit225, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit223
  %i.kp = ptrtoint ptr %.sroa.0289.0 to i64
  %i.kq = sub i64 %.sroa.15298.0, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.0, i64 noundef %i.kq) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit225

_ZNSt6vectorIiSaIiEED2Ev.exit225:                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit223, %bb.ap
  ret void

bb.aq:                                            ; preds = %.lr.ph384, %_ZNSolsEPFRSoS_E.exit231
  %indvars.iv428 = phi i64 [ 0, %.lr.ph384 ], [ %indvars.iv.next429, %_ZNSolsEPFRSoS_E.exit231 ] ; 6 uses
  %i.kr = icmp eq i64 %indvars.iv428, %i.kl
  br i1 %i.kr, label %.preheader305, label %_ZNSolsEPFRSoS_E.exit

.preheader305:                                    ; preds = %bb.aq
  br i1 %i.bt, label %.preheader304, label %._crit_edge365

.preheader304:                                    ; preds = %.preheader305, %._crit_edge363
  %indvars.iv416 = phi i64 [ %indvars.iv.next417, %._crit_edge363 ], [ 0, %.preheader305 ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv416 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !8
  %i.ku = icmp sgt i32 %i.kt, 0
  br i1 %i.ku, label %.lr.ph359, label %.preheader303

._crit_edge365:                                   ; preds = %._crit_edge363, %.preheader305
  %i.kv = load ptr, ptr %i.kh, align 8, !tbaa !70
  %i.kw = getelementptr i8, ptr %i.kv, i64 -24
  %i.kx = load i64, ptr %i.kw, align 8
  %i.ky = getelementptr inbounds i8, ptr %i.kh, i64 %i.kx
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 240
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !86 ; 6 uses
  %.not.i.i.i249 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i249, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %._crit_edge365, %._crit_edge381
  invoke void @_ZSt16__throw_bad_castv() #13
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %._crit_edge365
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 56
  %i.lc = load i8, ptr %i.lb, align 8, !tbaa !91
  %.not.i1.i.i = icmp eq i8 %i.lc, 0
  br i1 %.not.i1.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.la, i64 67
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !65
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.as:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.la)
          to label %.noexc251 unwind label %.loopexit

.noexc251:                                        ; preds = %bb.as
  %i.lf = load ptr, ptr %i.la, align 8, !tbaa !70
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8
  %i.li = invoke noundef signext i8 %i.lh(ptr noundef nonnull align 8 dereferenceable(570) %i.la, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit, !inline_history !40

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc251, %bb.ar
  %.0.i.i.i = phi i8 [ %i.le, %bb.ar ], [ %i.li, %.noexc251 ]
  %i.lj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, i8 noundef signext %.0.i.i.i)
          to label %.noexc253 unwind label %.loopexit

.noexc253:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.lk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.lj)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %.loopexit ; 0 uses

.preheader303:                                    ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %.preheader304
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %indvars.iv416 ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !8
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph362, label %._crit_edge363

.lr.ph359:                                        ; preds = %.preheader304, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %.0131358 = phi i32 [ %i.lp, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit ], [ 0, %.preheader304 ]
  %i.lo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.at ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %.lr.ph359
  %i.lp = add nuw nsw i32 %.0131358, 1            ; 2 uses
  %i.lq = load i32, ptr %i.ks, align 4, !tbaa !8
  %i.lr = icmp slt i32 %i.lp, %i.lq
  br i1 %i.lr, label %.lr.ph359, label %.preheader303, !llvm.loop !41

bb.at:                                            ; preds = %.lr.ph359
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

._crit_edge363:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229, %.preheader303
  %indvars.iv.next417 = add nuw nsw i64 %indvars.iv416, 1 ; 2 uses
  %exitcond420.not.a = icmp eq i64 %indvars.iv.next417, %wide.trip.count419
  br i1 %exitcond420.not.a, label %._crit_edge365, label %.preheader304, !llvm.loop !42

.lr.ph362:                                        ; preds = %.preheader303, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229
  %.0130361 = phi i32 [ %i.lu, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229 ], [ 0, %.preheader303 ]
  %i.lt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.2, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229 unwind label %bb.au ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit229: ; preds = %.lr.ph362
  %i.lu = add nuw nsw i32 %.0130361, 1            ; 2 uses
  %i.lv = load i32, ptr %i.ll, align 4, !tbaa !8
  %i.lw = icmp slt i32 %i.lu, %i.lv
  br i1 %i.lw, label %.lr.ph362, label %._crit_edge363, !llvm.loop !43

bb.au:                                            ; preds = %.lr.ph362
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

.loopexit:                                        ; preds = %bb.as, %.noexc251, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc253, %bb.aw, %.noexc261, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258, %.noexc263
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

_ZNSolsEPFRSoS_E.exit:                            ; preds = %.noexc253, %bb.aq
  br i1 %i.bt, label %.lr.ph380, label %._crit_edge381

.lr.ph380:                                        ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.ly = icmp slt i64 %indvars.iv428, %i.km      ; 2 uses
  br label %bb.ax

._crit_edge381:                                   ; preds = %._crit_edge374, %_ZNSolsEPFRSoS_E.exit
  %i.lz = load ptr, ptr %i.kh, align 8, !tbaa !70
  %i.ma = getelementptr i8, ptr %i.lz, i64 -24
  %i.mb = load i64, ptr %i.ma, align 8
  %i.mc = getelementptr inbounds i8, ptr %i.kh, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 240
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !86 ; 6 uses
  %.not.i.i.i255 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i255, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256: ; preds = %._crit_edge381
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 56
  %i.mg = load i8, ptr %i.mf, align 8, !tbaa !91
  %.not.i1.i.i257 = icmp eq i8 %i.mg, 0
  br i1 %.not.i1.i.i257, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 67
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !65
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258

bb.aw:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i256
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.me)
          to label %.noexc261 unwind label %.loopexit

.noexc261:                                        ; preds = %bb.aw
  %i.mj = load ptr, ptr %i.me, align 8, !tbaa !70
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 48
  %i.ml = load ptr, ptr %i.mk, align 8
  %i.mm = invoke noundef signext i8 %i.ml(ptr noundef nonnull align 8 dereferenceable(570) %i.me, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258 unwind label %.loopexit, !inline_history !40

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258: ; preds = %.noexc261, %bb.av
  %.0.i.i.i259 = phi i8 [ %i.mi, %bb.av ], [ %i.mm, %.noexc261 ]
  %i.mn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, i8 noundef signext %.0.i.i.i259)
          to label %.noexc263 unwind label %.loopexit

.noexc263:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i258
  %i.mo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.mn)
          to label %_ZNSolsEPFRSoS_E.exit231 unwind label %.loopexit ; 0 uses

bb.ax:                                            ; preds = %.lr.ph380, %._crit_edge374
  %indvars.iv423 = phi i64 [ 0, %.lr.ph380 ], [ %indvars.iv.next424, %._crit_edge374 ] ; 9 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0289.0, i64 %indvars.iv423 ; 2 uses
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !8
  br i1 %i.ly, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.mr = load ptr, ptr %1, align 8, !tbaa !51
  %i.ms = getelementptr inbounds nuw [24 x i8], ptr %i.mr, i64 %indvars.iv428
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !55
  %i.mu = getelementptr inbounds nuw [32 x i8], ptr %i.mt, i64 %indvars.iv423
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !63
  %i.mx = trunc i64 %i.mw to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0128 = phi i32 [ %i.mx, %bb.ay ], [ %i.mq, %bb.ax ] ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0276.0, i64 %indvars.iv423
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !8  ; 2 uses
  %i.na = sub nsw i32 %i.mz, %.0128
  %.fr385 = freeze i32 %i.na                      ; 2 uses
  %i.nb = icmp sgt i32 %.fr385, 0                 ; 2 uses
  %i.nc = lshr i32 %.fr385, 1                     ; 3 uses
  %11 = add i32 %.0128, %i.nc
  %i.nd = sub i32 %i.mz, %11                      ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv423 ; 2 uses
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !8
  %i.ng = icmp sgt i32 %i.nf, 0
  br i1 %i.ng, label %.lr.ph368, label %.preheader

.preheader:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233, %bb.az
  %i.nh = icmp ne i32 %i.nc, 0
  %i.ni = and i1 %i.nb, %i.nh
  br i1 %i.ni, label %.lr.ph370.split, label %._crit_edge371

.lr.ph368:                                        ; preds = %bb.az, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233
  %.0125366 = phi i32 [ %i.nk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233 ], [ 0, %bb.az ]
  %i.nj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233 unwind label %bb.ba ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit233: ; preds = %.lr.ph368
  %i.nk = add nuw nsw i32 %.0125366, 1            ; 2 uses
  %i.nl = load i32, ptr %i.ne, align 4, !tbaa !8
  %i.nm = icmp slt i32 %i.nk, %i.nl
  br i1 %i.nm, label %.lr.ph368, label %.preheader, !llvm.loop !44

bb.ba:                                            ; preds = %.lr.ph368
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

._crit_edge371:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235, %.preheader
  br i1 %i.ly, label %.invoke495, label %bb.bb

.lr.ph370.split:                                  ; preds = %.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235
  %.0124369 = phi i32 [ %i.np, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 ], [ 0, %.preheader ]
  %i.no = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235 unwind label %.split ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit235: ; preds = %.lr.ph370.split
  %i.np = add nuw nsw i32 %.0124369, 1            ; 2 uses
  %exitcond421.not.a = icmp eq i32 %i.np, %i.nc
  br i1 %exitcond421.not.a, label %._crit_edge371, label %.lr.ph370.split, !llvm.loop !45

.split:                                           ; preds = %.lr.ph370.split
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

bb.bb:                                            ; preds = %._crit_edge371
  %i.nr = icmp slt i64 %indvars.iv423, %i.kj
  br i1 %i.nr, label %bb.bc, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ns = load i32, ptr %i.mp, align 4, !tbaa !8
  %i.nt = load ptr, ptr %i.kh, align 8, !tbaa !70
  %i.nu = getelementptr i8, ptr %i.nt, i64 -24
  %i.nv = load i64, ptr %i.nu, align 8
  %i.nw = getelementptr inbounds i8, ptr %i.kh, i64 %i.nv
  %i.nx = sext i32 %i.ns to i64
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i64 %i.nx, ptr %i.ny, align 8, !tbaa !92
  %i.nz = load ptr, ptr %1, align 8, !tbaa !51
  %i.oa = getelementptr inbounds nuw [24 x i8], ptr %i.nz, i64 %indvars.iv428
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !55
  %i.oc = getelementptr inbounds nuw [32 x i8], ptr %i.ob, i64 %indvars.iv423 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !62
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !63
  %i.og = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef %i.od, i64 noundef %i.of)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.bd ; 0 uses

bb.bd:                                            ; preds = %.invoke495, %bb.bc
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.bc, %bb.bb
  %i.oi = icmp eq i64 %indvars.iv423, %i.kk
  br i1 %i.oi, label %.invoke495, label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238

.invoke495:                                       ; preds = %._crit_edge371, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.sink498 = phi i64 [ %i.kk, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ %indvars.iv423, %._crit_edge371 ]
  %i.oj = load ptr, ptr %1, align 8, !tbaa !51
  %i.ok = getelementptr inbounds nuw [24 x i8], ptr %i.oj, i64 %indvars.iv428
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !55
  %i.om = getelementptr inbounds nuw [32 x i8], ptr %i.ol, i64 %.sink498 ; 2 uses
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !62
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 8
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !63
  %i.oq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef %i.on, i64 noundef %i.op)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238 unwind label %bb.bd ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238: ; preds = %.invoke495, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.or = icmp sgt i32 %i.nd, 0
  %12 = select i1 %i.nb, i1 %i.or, i1 false
  br i1 %12, label %.lr.ph373.split, label %._crit_edge374

._crit_edge374:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238
  %indvars.iv.next424 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i64 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %._crit_edge381, label %bb.ax, !llvm.loop !46

.lr.ph373.split:                                  ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242
  %.0372 = phi i32 [ %i.ot, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 ], [ 0, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit238 ]
  %i.os = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.kh, ptr noundef nonnull @.str.1, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242 unwind label %.split376 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit242: ; preds = %.lr.ph373.split
  %i.ot = add nuw nsw i32 %.0372, 1               ; 2 uses
  %exitcond422.not = icmp eq i32 %i.ot, %i.nd
  br i1 %exitcond422.not, label %._crit_edge374, label %.lr.ph373.split, !llvm.loop !47

.split376:                                        ; preds = %.lr.ph373.split
  %i.ou = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit244

_ZNSolsEPFRSoS_E.exit231:                         ; preds = %.noexc263
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %i.ov = load ptr, ptr %i.u, align 8, !tbaa !56
  %i.ow = load ptr, ptr %1, align 8, !tbaa !51
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %i.pa = sdiv exact i64 %i.oz, 24
  %i.pb = shl i64 %i.pa, 32
  %i.pc = ashr exact i64 %i.pb, 32
  %i.pd = icmp slt i64 %indvars.iv.next429, %i.pc
  br i1 %i.pd, label %bb.aq, label %_ZNSt6vectorIiSaIiEED2Ev.exit, !llvm.loop !48

_ZNSt6vectorIiSaIiEED2Ev.exit244:                 ; preds = %.split376, %.split, %.loopexit, %.loopexit.split-lp, %bb.au, %bb.at, %bb.bd, %bb.ba, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221
  %.pn170.pn = phi { ptr, i32 } [ %.pn167.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221 ], [ %i.gg, %bb.s ], [ %i.oh, %bb.bd ], [ %i.lx, %bb.au ], [ %i.ls, %bb.at ], [ %i.nn, %bb.ba ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.ou, %.split376 ], [ %lpad.loopexit, %.loopexit ], [ %i.nq, %.split ]
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.df) #16
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit244, %bb.m
  %.pn170.pn.pn = phi { ptr, i32 } [ %.pn170.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit244 ], [ %i.ek, %bb.m ] ; 2 uses
  %.not.i.i.i245 = icmp eq ptr %.sroa.0276.0, null
  br i1 %.not.i.i.i245, label %_ZNSt6vectorIiSaIiEED2Ev.exit246, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.pe = ptrtoint ptr %.sroa.0276.0 to i64
  %i.pf = sub i64 %.sroa.17.0, %i.pe
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0276.0, i64 noundef %i.pf) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit246

_ZNSt6vectorIiSaIiEED2Ev.exit246:                 ; preds = %bb.j, %bb.be, %bb.bf, %bb.h
  %.pn175 = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %i.dr, %bb.j ], [ %.pn170.pn.pn, %bb.be ], [ %.pn170.pn.pn, %bb.bf ]
  %.not.i.i.i247 = icmp eq ptr %.sroa.0289.0, null
  br i1 %.not.i.i.i247, label %_ZNSt6vectorIiSaIiEED2Ev.exit248, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit246
  %i.pg = ptrtoint ptr %.sroa.0289.0 to i64
  %i.ph = sub i64 %.sroa.15298.0, %i.pg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0289.0, i64 noundef %i.ph) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit248

_ZNSt6vectorIiSaIiEED2Ev.exit248:                 ; preds = %bb.bg, %_ZNSt6vectorIiSaIiEED2Ev.exit246
  resume { ptr, i32 } %.pn175
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !14}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!7, !7, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 8}
!13 = !{!11, !10, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !15, !16}
!18 = distinct !{!18, !14, !16, !15}
!19 = distinct !{!19, !14, !15, !16}
!20 = distinct !{!20, !14, !15, !16}
!21 = distinct !{!21, !14, !16, !15}
!22 = distinct !{!22, !14, !15, !16}
!23 = distinct !{!23, !14, !16, !15}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14, !16, !15}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14, !15, !16}
!29 = distinct !{!29, !14, !15, !16}
!30 = distinct !{!30, !14, !16, !15}
!31 = distinct !{!31, !14, !16, !15}
!32 = distinct !{!32, !14, !15, !16}
!33 = distinct !{!33, !14, !16, !15}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, i1 false, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!36 = distinct !{!36, !35, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!37 = distinct !{!37, i1 false, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!38 = distinct !{!38, !37, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!39 = distinct !{!39, !14}
!40 = distinct !{null, null}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !9, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESaIS8_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!51 = !{!50, !49, i64 0}
!52 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !9, i64 0}
end_hunk_0
