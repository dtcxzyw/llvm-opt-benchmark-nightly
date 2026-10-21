Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_energy?download=true
inline.NumInlined: 676
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z10gmx_energyiPPc:bb.a
  %i.clr = load ptr, ptr %i.bqz, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clr)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.7.i:       ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.6.i
  %i.cls = load ptr, ptr %i.brb, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.cls)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.8.i:       ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.7.i
  %i.clt = load ptr, ptr %i.brd, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clt)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.9.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.9.i:       ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.8.i
  %i.clu = load ptr, ptr %i.brf, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clu)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.10.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.10.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.9.i
  %i.clv = load ptr, ptr %i.brh, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clv)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.11.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.11.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.10.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.140, i32 noundef 1269, ptr noundef nonnull %i.bpt)
          to label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i:        ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.11.i
  %i.clw = load ptr, ptr %i.bpp, align 8, !tbaa !23 ; 2 uses
  %i.clx = icmp eq ptr %i.clw, %i.bpq
  br i1 %i.clx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332.i: ; preds = %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i
  %i.cly = load i64, ptr %i.bpq, align 8, !tbaa !24
  %i.clz = add i64 %i.cly, 1
  call void @_ZdlPvm(ptr noundef %i.clw, i64 noundef %i.clz) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i: ; preds = %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332.i
  %i.cma = load ptr, ptr %20, align 8, !tbaa !23  ; 2 uses
  %i.cmb = icmp eq ptr %i.cma, %i.bpm
  br i1 %i.cmb, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i
  %i.cmc = load i64, ptr %i.bpm, align 8, !tbaa !24
  %i.cmd = add i64 %i.cmc, 1
  call void @_ZdlPvm(ptr noundef %i.cma, i64 noundef %i.cmd) #28
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.ni

.body.i:                                          ; preds = %bb.nf, %bb.mt, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i
  %.pn289.i = phi { ptr, i32 } [ %.pn285.pn.pn.i, %bb.nf ], [ %.pn143.i.i, %bb.mt ], [ %lpad.loopexit.split-lp87.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  br label %.body

bb.ni:                                            ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i, %bb.ku, %.noexc469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cme = load i8, ptr @_ZZ10gmx_energyiPPcE11bFluctProps, align 1, !tbaa !36, !range !37, !noundef !38
  %i.cmf = trunc nuw i8 %i.cme to i1
  br i1 %i.cmf, label %bb.nj, label %_ZL22calc_fluctuation_propsP8_IO_FILEbfiiN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEP10enerdata_tii.exit

bb.nj:                                            ; preds = %bb.ni
  %i.cmg = load ptr, ptr @stdout, align 8, !tbaa !61 ; 18 uses
  %i.cmh = load i8, ptr @_ZZ10gmx_energyiPPcE10bDriftCorr, align 1, !tbaa !36, !range !37, !noundef !38
  %i.cmi = trunc nuw i8 %i.cmh to i1
  %i.cmj = load i32, ptr %i.aj, align 4, !tbaa !11 ; 18 uses
  %i.cmk = load i32, ptr @_ZZ10gmx_energyiPPcE4nmol, align 4, !tbaa !11 ; 8 uses
  %i.cml = load ptr, ptr %37, align 8, !tbaa !41  ; 4 uses
  %i.cmm = load i32, ptr @_ZZ10gmx_energyiPPcE5nbmin, align 4, !tbaa !11 ; 6 uses
  %i.cmn = load i32, ptr @_ZZ10gmx_energyiPPcE5nbmax, align 4, !tbaa !11 ; 6 uses
  br i1 %i.cmi, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %fwrite.i484 = call i64 @fwrite(ptr nonnull @.str.278, i64 169, i64 1, ptr %i.cmg) ; 0 uses
  br label %_ZL12remove_driftiiifP10enerdata_t.exit.i

bb.nl:                                            ; preds = %bb.nj
  %i.cmo = fptrunc double %i.art to float
  %i.cmp = load i32, ptr %i.ni, align 8, !tbaa !58 ; 3 uses
  %i.cmq = sext i32 %i.cmp to i64                 ; 2 uses
  store i64 %i.cmq, ptr %i.nh, align 8, !tbaa !185
  store i64 %i.cmq, ptr %36, align 8, !tbaa !55
  %i.cmr = icmp sgt i32 %i.cmj, 0
  %i.cms = fpext float %i.cmo to double           ; 2 uses
  br i1 %i.cmr, label %.preheader.us.preheader.i.i, label %_ZL12remove_driftiiifP10enerdata_t.exit.thread.i

_ZL12remove_driftiiifP10enerdata_t.exit.thread.i: ; preds = %bb.nl
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cmj, ptr noundef nonnull %36, i32 noundef %i.cmm, i32 noundef %i.cmn)
          to label %.noexc499 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2604

.noexc499:                                        ; preds = %_ZL12remove_driftiiifP10enerdata_t.exit.thread.i
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cmj, ptr noundef nonnull %36, i32 noundef %i.cmm, i32 noundef %i.cmn)
          to label %.noexc500 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2604

.noexc500:                                        ; preds = %.noexc499
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cmj, ptr noundef nonnull %36, i32 noundef %i.cmm, i32 noundef %i.cmn)
          to label %.noexc501 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2604

.noexc501:                                        ; preds = %.noexc500
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cmj, ptr noundef nonnull %36, i32 noundef %i.cmm, i32 noundef %i.cmn)
          to label %.noexc502 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2604

.noexc502:                                        ; preds = %.noexc501
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cmj, ptr noundef nonnull %36, i32 noundef %i.cmm, i32 noundef %i.cmn)
          to label %.split233.us.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2604

.preheader.us.preheader.i.i:                      ; preds = %bb.nl
  %wide.trip.count55.i.i = zext nneg i32 %i.cmj to i64 ; 2 uses
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.noexc504, %.preheader.us.preheader.i.i
  %i.cmt = phi i32 [ %i.cur, %.noexc504 ], [ %i.cmp, %.preheader.us.preheader.i.i ] ; 9 uses
  %i.cmu = phi i32 [ %i.cus, %.noexc504 ], [ %i.cmp, %.preheader.us.preheader.i.i ]
  %.040.us.i.i = phi i32 [ %i.cut, %.noexc504 ], [ 0, %.preheader.us.preheader.i.i ]
  %i.cmv = load ptr, ptr @debug, align 8, !tbaa !61 ; 2 uses
  %i.cmw = icmp eq ptr %i.cmv, null
  %i.cmx = load ptr, ptr %i.nn, align 8, !tbaa !64 ; 3 uses
  br i1 %i.cmw, label %.lr.ph38.split.us.us.i.i, label %.lr.ph38.split.us41.i.i

.lr.ph38.split.us41.i.i:                          ; preds = %.preheader.us.i.i, %._crit_edge.us45.i.i
  %i.cmy = phi i32 [ %i.cnj, %._crit_edge.us45.i.i ], [ %i.cmt, %.preheader.us.i.i ]
  %i.cmz = phi i32 [ %i.cnk, %._crit_edge.us45.i.i ], [ %i.cmu, %.preheader.us.i.i ]
  %i.cna = phi ptr [ %i.cnl, %._crit_edge.us45.i.i ], [ %i.cmx, %.preheader.us.i.i ]
  %i.cnb = phi ptr [ %i.cnm, %._crit_edge.us45.i.i ], [ %i.cmv, %.preheader.us.i.i ] ; 2 uses
  %i.cnc = phi ptr [ %i.crc, %._crit_edge.us45.i.i ], [ %i.cmx, %.preheader.us.i.i ] ; 2 uses
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %._crit_edge.us45.i.i ], [ 0, %.preheader.us.i.i ] ; 4 uses
  %i.cnd = getelementptr inbounds nuw [56 x i8], ptr %i.cnc, i64 %indvars.iv52.i.i
  %i.cne = getelementptr inbounds nuw i8, ptr %i.cnd, i64 48
  %i.cnf = load double, ptr %i.cne, align 8, !tbaa !63 ; 2 uses
  %i.cng = fmul double %i.cnf, %i.cms             ; 7 uses
  %.not.us.i.i = icmp eq ptr %i.cnb, null
  br i1 %.not.us.i.i, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %.lr.ph38.split.us41.i.i
  %i.cnh = trunc nuw nsw i64 %indvars.iv52.i.i to i32
  %i.cni = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cnb, ptr noundef nonnull @.str.296, i32 noundef %i.cnh, double noundef %i.cnf) #27 ; 0 uses
  %.pre.i.i493 = load ptr, ptr %i.nn, align 8, !tbaa !64 ; 2 uses
  %.pre69.i.i = load ptr, ptr @debug, align 8, !tbaa !61
  %.pre1382 = load i32, ptr %i.ni, align 8, !tbaa !58 ; 2 uses
  br label %bb.nn

bb.nn:                                            ; preds = %bb.nm, %.lr.ph38.split.us41.i.i
  %i.cnj = phi i32 [ %.pre1382, %bb.nm ], [ %i.cmy, %.lr.ph38.split.us41.i.i ] ; 2 uses
  %i.cnk = phi i32 [ %.pre1382, %bb.nm ], [ %i.cmz, %.lr.ph38.split.us41.i.i ] ; 6 uses
  %i.cnl = phi ptr [ %.pre.i.i493, %bb.nm ], [ %i.cna, %.lr.ph38.split.us41.i.i ] ; 6 uses
  %i.cnm = phi ptr [ %.pre69.i.i, %bb.nm ], [ null, %.lr.ph38.split.us41.i.i ]
  %i.cnn = phi ptr [ %.pre.i.i493, %bb.nm ], [ %i.cnc, %.lr.ph38.split.us41.i.i ]
  %i.cno = icmp sgt i32 %i.cnk, 0
  br i1 %i.cno, label %iter.check2242, label %._crit_edge.us45.i.i

iter.check2242:                                   ; preds = %bb.nn
  %i.cnp = getelementptr inbounds nuw [56 x i8], ptr %i.cnl, i64 %indvars.iv52.i.i ; 2 uses
  %i.cnq = load ptr, ptr %i.cnp, align 8, !tbaa !56 ; 9 uses
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cnp, i64 8
  %i.cns = load ptr, ptr %i.cnr, align 8, !tbaa !48 ; 12 uses
  %wide.trip.count.i.i494 = zext nneg i32 %i.cnk to i64 ; 10 uses
  %min.iters.check2220 = icmp ult i32 %i.cnk, 4
  br i1 %min.iters.check2220, label %vec.epilog.scalar.ph2243.preheader, label %vector.memcheck2213

vector.memcheck2213:                              ; preds = %iter.check2242
  %i.cnt = shl nuw nsw i64 %wide.trip.count.i.i494, 2
  %scevgep2214 = getelementptr i8, ptr %i.cnq, i64 %i.cnt
  %i.cnu = shl nuw nsw i64 %wide.trip.count.i.i494, 3
  %scevgep2215 = getelementptr i8, ptr %i.cns, i64 %i.cnu
  %bound02216 = icmp ult ptr %i.cnq, %scevgep2215
  %bound12217 = icmp ult ptr %i.cns, %scevgep2214
  %found.conflict2218 = and i1 %bound02216, %bound12217
  br i1 %found.conflict2218, label %vec.epilog.scalar.ph2243.preheader, label %vector.main.loop.iter.check2221

vector.main.loop.iter.check2221:                  ; preds = %vector.memcheck2213
  %min.iters.check2222 = icmp ult i32 %i.cnk, 16
  br i1 %min.iters.check2222, label %vec.epilog.ph2246, label %vector.ph2223

vector.ph2223:                                    ; preds = %vector.main.loop.iter.check2221
  %i.cnv = and i64 %wide.trip.count.i.i494, 12
  %n.vec2224 = and i64 %wide.trip.count.i.i494, 2147483632 ; 4 uses
  %broadcast.splatinsert2225 = insertelement <4 x double> poison, double %i.cng, i64 0
  %broadcast.splat2226 = shufflevector <4 x double> %broadcast.splatinsert2225, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2227

vector.body2227:                                  ; preds = %vector.ph2223, %vector.body2227
  %index2228 = phi i64 [ 0, %vector.ph2223 ], [ %index.next2237, %vector.body2227 ] ; 6 uses
  %vec.ind2229 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph2223 ], [ %vec.ind.next2238, %vector.body2227 ] ; 5 uses
  %step.add2230 = add <4 x i32> %vec.ind2229, splat (i32 4)
  %step.add.22231 = add <4 x i32> %vec.ind2229, splat (i32 8)
  %step.add.32232 = add <4 x i32> %vec.ind2229, splat (i32 12)
  %i.cnw = uitofp nneg <4 x i32> %vec.ind2229 to <4 x double>
  %i.cnx = uitofp nneg <4 x i32> %step.add2230 to <4 x double>
  %i.cny = uitofp nneg <4 x i32> %step.add.22231 to <4 x double>
  %i.cnz = uitofp nneg <4 x i32> %step.add.32232 to <4 x double>
  %i.coa = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %index2228 ; 5 uses
  %i.cob = getelementptr inbounds nuw i8, ptr %i.coa, i64 16 ; 2 uses
  %i.coc = getelementptr inbounds nuw i8, ptr %i.coa, i64 32 ; 2 uses
  %i.cod = getelementptr inbounds nuw i8, ptr %i.coa, i64 48 ; 2 uses
  %wide.load2233 = load <4 x float>, ptr %i.coa, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %wide.load2234 = load <4 x float>, ptr %i.cob, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %wide.load2235 = load <4 x float>, ptr %i.coc, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %wide.load2236 = load <4 x float>, ptr %i.cod, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.coe = fpext <4 x float> %wide.load2233 to <4 x double>
  %i.cof = fpext <4 x float> %wide.load2234 to <4 x double>
  %i.cog = fpext <4 x float> %wide.load2235 to <4 x double>
  %i.coh = fpext <4 x float> %wide.load2236 to <4 x double>
  %i.coi = fneg <4 x double> %i.cnw
  %i.coj = fneg <4 x double> %i.cnx
  %i.cok = fneg <4 x double> %i.cny
  %i.col = fneg <4 x double> %i.cnz
  %i.com = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.coi, <4 x double> %broadcast.splat2226, <4 x double> %i.coe)
  %i.con = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.coj, <4 x double> %broadcast.splat2226, <4 x double> %i.cof)
  %i.coo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cok, <4 x double> %broadcast.splat2226, <4 x double> %i.cog)
  %i.cop = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.col, <4 x double> %broadcast.splat2226, <4 x double> %i.coh)
  %54 = fptrunc <4 x double> %i.com to <4 x float>
  %55 = fptrunc <4 x double> %i.con to <4 x float>
  %56 = fptrunc <4 x double> %i.coo to <4 x float>
  %57 = fptrunc <4 x double> %i.cop to <4 x float>
  store <4 x float> %54, ptr %i.coa, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  store <4 x float> %55, ptr %i.cob, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  store <4 x float> %56, ptr %i.coc, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  store <4 x float> %57, ptr %i.cod, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.coq = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %index2228
  %i.cor = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %index2228
  %i.cos = getelementptr inbounds nuw i8, ptr %i.cor, i64 32
  %i.cot = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %index2228
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 64
  %i.cov = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %index2228
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cov, i64 96
  store <8 x float> zeroinitializer, ptr %i.coq, align 4, !tbaa !54, !alias.scope !306
  store <8 x float> zeroinitializer, ptr %i.cos, align 4, !tbaa !54, !alias.scope !306
  store <8 x float> zeroinitializer, ptr %i.cou, align 4, !tbaa !54, !alias.scope !306
  store <8 x float> zeroinitializer, ptr %i.cow, align 4, !tbaa !54, !alias.scope !306
  %index.next2237 = add nuw i64 %index2228, 16    ; 2 uses
  %vec.ind.next2238 = add <4 x i32> %vec.ind2229, splat (i32 16)
  %i.cox = icmp eq i64 %index.next2237, %n.vec2224
  br i1 %i.cox, label %middle.block2239, label %vector.body2227, !llvm.loop !136

middle.block2239:                                 ; preds = %vector.body2227
  %cmp.n2240 = icmp eq i64 %n.vec2224, %wide.trip.count.i.i494
  br i1 %cmp.n2240, label %._crit_edge.us45.i.i, label %vec.epilog.iter.check2244

vec.epilog.iter.check2244:                        ; preds = %middle.block2239
  %min.epilog.iters.check2245 = icmp eq i64 %i.cnv, 0
  br i1 %min.epilog.iters.check2245, label %vec.epilog.scalar.ph2243.preheader, label %vec.epilog.ph2246, !prof !72

vec.epilog.ph2246:                                ; preds = %vector.main.loop.iter.check2221, %vec.epilog.iter.check2244
  %vec.epilog.resume.val2241 = phi i64 [ %n.vec2224, %vec.epilog.iter.check2244 ], [ 0, %vector.main.loop.iter.check2221 ] ; 2 uses
  %n.vec2247 = and i64 %wide.trip.count.i.i494, 2147483644 ; 3 uses
  %broadcast.splatinsert2248 = insertelement <4 x double> poison, double %i.cng, i64 0
  %broadcast.splat2249 = shufflevector <4 x double> %broadcast.splatinsert2248, <4 x double> poison, <4 x i32> zeroinitializer
  %i.coy = trunc nuw nsw i64 %vec.epilog.resume.val2241 to i32
  %broadcast.splatinsert2250 = insertelement <4 x i32> poison, i32 %i.coy, i64 0
  %broadcast.splat2251 = shufflevector <4 x i32> %broadcast.splatinsert2250, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2252 = or disjoint <4 x i32> %broadcast.splat2251, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2253

vec.epilog.vector.body2253:                       ; preds = %vec.epilog.vector.body2253, %vec.epilog.ph2246
  %index2254 = phi i64 [ %vec.epilog.resume.val2241, %vec.epilog.ph2246 ], [ %index.next2257, %vec.epilog.vector.body2253 ] ; 3 uses
  %vec.ind2255 = phi <4 x i32> [ %induction2252, %vec.epilog.ph2246 ], [ %vec.ind.next2258, %vec.epilog.vector.body2253 ] ; 2 uses
  %i.coz = uitofp nneg <4 x i32> %vec.ind2255 to <4 x double>
  %i.cpa = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %index2254 ; 2 uses
  %wide.load2256 = load <4 x float>, ptr %i.cpa, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.cpb = fpext <4 x float> %wide.load2256 to <4 x double>
  %i.cpc = fneg <4 x double> %i.coz
  %i.cpd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cpc, <4 x double> %broadcast.splat2249, <4 x double> %i.cpb)
  %i.cpe = fptrunc <4 x double> %i.cpd to <4 x float>
  store <4 x float> %i.cpe, ptr %i.cpa, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.cpf = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %index2254
  store <8 x float> zeroinitializer, ptr %i.cpf, align 4, !tbaa !54, !alias.scope !306
  %index.next2257 = add nuw i64 %index2254, 4     ; 2 uses
  %vec.ind.next2258 = add <4 x i32> %vec.ind2255, splat (i32 4)
  %i.cpg = icmp eq i64 %index.next2257, %n.vec2247
  br i1 %i.cpg, label %vec.epilog.middle.block2259, label %vec.epilog.vector.body2253, !llvm.loop !137

vec.epilog.middle.block2259:                      ; preds = %vec.epilog.vector.body2253
  %cmp.n2260 = icmp eq i64 %n.vec2247, %wide.trip.count.i.i494
  br i1 %cmp.n2260, label %._crit_edge.us45.i.i, label %vec.epilog.scalar.ph2243.preheader

vec.epilog.scalar.ph2243.preheader:               ; preds = %iter.check2242, %vector.memcheck2213, %vec.epilog.iter.check2244, %vec.epilog.middle.block2259
  %indvars.iv.i.i495.ph = phi i64 [ 0, %iter.check2242 ], [ 0, %vector.memcheck2213 ], [ %n.vec2224, %vec.epilog.iter.check2244 ], [ %n.vec2247, %vec.epilog.middle.block2259 ] ; 3 uses
  %xtraiter2672 = and i64 %wide.trip.count.i.i494, 3 ; 2 uses
  %lcmp.mod2673.not = icmp eq i64 %xtraiter2672, 0
  br i1 %lcmp.mod2673.not, label %vec.epilog.scalar.ph2243.prol.loopexit, label %vec.epilog.scalar.ph2243.prol

vec.epilog.scalar.ph2243.prol:                    ; preds = %vec.epilog.scalar.ph2243.preheader, %vec.epilog.scalar.ph2243.prol
  %indvars.iv.i.i495.prol = phi i64 [ %indvars.iv.next.i.i496.prol, %vec.epilog.scalar.ph2243.prol ], [ %indvars.iv.i.i495.ph, %vec.epilog.scalar.ph2243.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph2243.prol ], [ 0, %vec.epilog.scalar.ph2243.preheader ]
  %i.cph = trunc nuw nsw i64 %indvars.iv.i.i495.prol to i32
  %i.cpi = uitofp nneg i32 %i.cph to double
  %i.cpj = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %indvars.iv.i.i495.prol ; 2 uses
  %i.cpk = load float, ptr %i.cpj, align 4, !tbaa !54
  %i.cpl = fpext float %i.cpk to double
  %i.cpm = fneg double %i.cpi
  %i.cpn = call double @llvm.fmuladd.f64(double %i.cpm, double %i.cng, double %i.cpl)
  %i.cpo = fptrunc double %i.cpn to float
  store float %i.cpo, ptr %i.cpj, align 4, !tbaa !54
  %i.cpp = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %indvars.iv.i.i495.prol
  store <2 x float> zeroinitializer, ptr %i.cpp, align 4, !tbaa !54
  %indvars.iv.next.i.i496.prol = add nuw nsw i64 %indvars.iv.i.i495.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2672
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph2243.prol.loopexit, label %vec.epilog.scalar.ph2243.prol, !llvm.loop !138

vec.epilog.scalar.ph2243.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2243.prol, %vec.epilog.scalar.ph2243.preheader
  %indvars.iv.i.i495.unr = phi i64 [ %indvars.iv.i.i495.ph, %vec.epilog.scalar.ph2243.preheader ], [ %indvars.iv.next.i.i496.prol, %vec.epilog.scalar.ph2243.prol ]
  %i.cpq = sub nsw i64 %indvars.iv.i.i495.ph, %wide.trip.count.i.i494
  %i.cpr = icmp ugt i64 %i.cpq, -4
  br i1 %i.cpr, label %._crit_edge.us45.i.i, label %vec.epilog.scalar.ph2243

vec.epilog.scalar.ph2243:                         ; preds = %vec.epilog.scalar.ph2243.prol.loopexit, %vec.epilog.scalar.ph2243
  %indvars.iv.i.i495 = phi i64 [ %indvars.iv.next.i.i496.3, %vec.epilog.scalar.ph2243 ], [ %indvars.iv.i.i495.unr, %vec.epilog.scalar.ph2243.prol.loopexit ] ; 7 uses
  %i.cps = trunc nuw nsw i64 %indvars.iv.i.i495 to i32
  %i.cpt = uitofp nneg i32 %i.cps to double
  %i.cpu = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %indvars.iv.i.i495 ; 2 uses
  %i.cpv = load float, ptr %i.cpu, align 4, !tbaa !54
  %i.cpw = fpext float %i.cpv to double
  %i.cpx = fneg double %i.cpt
  %i.cpy = call double @llvm.fmuladd.f64(double %i.cpx, double %i.cng, double %i.cpw)
  %i.cpz = fptrunc double %i.cpy to float
  store float %i.cpz, ptr %i.cpu, align 4, !tbaa !54
  %i.cqa = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %indvars.iv.i.i495
  store <2 x float> zeroinitializer, ptr %i.cqa, align 4, !tbaa !54
  %indvars.iv.next.i.i496 = add nuw nsw i64 %indvars.iv.i.i495, 1 ; 3 uses
  %i.cqb = trunc nuw nsw i64 %indvars.iv.next.i.i496 to i32
  %i.cqc = uitofp nneg i32 %i.cqb to double
  %i.cqd = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %indvars.iv.next.i.i496 ; 2 uses
  %i.cqe = load float, ptr %i.cqd, align 4, !tbaa !54
  %i.cqf = fpext float %i.cqe to double
  %i.cqg = fneg double %i.cqc
  %i.cqh = call double @llvm.fmuladd.f64(double %i.cqg, double %i.cng, double %i.cqf)
  %i.cqi = fptrunc double %i.cqh to float
  store float %i.cqi, ptr %i.cqd, align 4, !tbaa !54
  %i.cqj = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %indvars.iv.next.i.i496
  store <2 x float> zeroinitializer, ptr %i.cqj, align 4, !tbaa !54
  %indvars.iv.next.i.i496.1 = add nuw nsw i64 %indvars.iv.i.i495, 2 ; 3 uses
  %i.cqk = trunc nuw nsw i64 %indvars.iv.next.i.i496.1 to i32
  %i.cql = uitofp nneg i32 %i.cqk to double
  %i.cqm = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %indvars.iv.next.i.i496.1 ; 2 uses
  %i.cqn = load float, ptr %i.cqm, align 4, !tbaa !54
  %i.cqo = fpext float %i.cqn to double
  %i.cqp = fneg double %i.cql
  %i.cqq = call double @llvm.fmuladd.f64(double %i.cqp, double %i.cng, double %i.cqo)
  %i.cqr = fptrunc double %i.cqq to float
  store float %i.cqr, ptr %i.cqm, align 4, !tbaa !54
  %i.cqs = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %indvars.iv.next.i.i496.1
  store <2 x float> zeroinitializer, ptr %i.cqs, align 4, !tbaa !54
  %indvars.iv.next.i.i496.2 = add nuw nsw i64 %indvars.iv.i.i495, 3 ; 3 uses
  %i.cqt = trunc nuw nsw i64 %indvars.iv.next.i.i496.2 to i32
  %i.cqu = uitofp nneg i32 %i.cqt to double
  %i.cqv = getelementptr inbounds nuw [4 x i8], ptr %i.cnq, i64 %indvars.iv.next.i.i496.2 ; 2 uses
  %i.cqw = load float, ptr %i.cqv, align 4, !tbaa !54
  %i.cqx = fpext float %i.cqw to double
  %i.cqy = fneg double %i.cqu
  %i.cqz = call double @llvm.fmuladd.f64(double %i.cqy, double %i.cng, double %i.cqx)
  %i.cra = fptrunc double %i.cqz to float
  store float %i.cra, ptr %i.cqv, align 4, !tbaa !54
  %i.crb = getelementptr inbounds nuw [8 x i8], ptr %i.cns, i64 %indvars.iv.next.i.i496.2
  store <2 x float> zeroinitializer, ptr %i.crb, align 4, !tbaa !54
  %indvars.iv.next.i.i496.3 = add nuw nsw i64 %indvars.iv.i.i495, 4 ; 2 uses
  %exitcond.not.i.i497.3 = icmp eq i64 %indvars.iv.next.i.i496.3, %wide.trip.count.i.i494
  br i1 %exitcond.not.i.i497.3, label %._crit_edge.us45.i.i, label %vec.epilog.scalar.ph2243, !llvm.loop !139

._crit_edge.us45.i.i:                             ; preds = %vec.epilog.scalar.ph2243.prol.loopexit, %vec.epilog.scalar.ph2243, %middle.block2239, %vec.epilog.middle.block2259, %bb.nn
  %i.crc = phi ptr [ %i.cnn, %bb.nn ], [ %i.cnl, %middle.block2239 ], [ %i.cnl, %vec.epilog.middle.block2259 ], [ %i.cnl, %vec.epilog.scalar.ph2243 ], [ %i.cnl, %vec.epilog.scalar.ph2243.prol.loopexit ]
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count55.i.i
  br i1 %exitcond56.not.i.i, label %._crit_edge39.us.i.i, label %.lr.ph38.split.us41.i.i, !llvm.loop !140

.lr.ph38.split.us.us.i.i:                         ; preds = %.preheader.us.i.i
  %i.crd = icmp sgt i32 %i.cmt, 0
  br i1 %i.crd, label %.lr.ph38.split.us.split.us.i.i, label %._crit_edge39.us.i.i

iter.check2194:                                   ; preds = %.lr.ph38.split.us.split.us.i.i, %._crit_edge.us.us.i.i498
  %indvars.iv62.i.i = phi i64 [ 0, %.lr.ph38.split.us.split.us.i.i ], [ %indvars.iv.next63.i.i, %._crit_edge.us.us.i.i498 ] ; 2 uses
  %i.cre = getelementptr inbounds nuw [56 x i8], ptr %i.cmx, i64 %indvars.iv62.i.i ; 3 uses
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cre, i64 48
  %i.crg = load double, ptr %i.crf, align 8, !tbaa !63
  %i.crh = fmul double %i.crg, %i.cms             ; 7 uses
  %i.cri = load ptr, ptr %i.cre, align 8, !tbaa !56 ; 9 uses
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cre, i64 8
  %i.crk = load ptr, ptr %i.crj, align 8, !tbaa !48 ; 12 uses
  br i1 %min.iters.check2175, label %vec.epilog.scalar.ph2195.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check2194
  %scevgep = getelementptr i8, ptr %i.cri, i64 %i.cuu
  %scevgep2173 = getelementptr i8, ptr %i.crk, i64 %i.cuv
  %bound0 = icmp ult ptr %i.cri, %scevgep2173
  %bound1 = icmp ult ptr %i.crk, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph2195.preheader, label %vector.main.loop.iter.check2176

vector.main.loop.iter.check2176:                  ; preds = %vector.memcheck
  br i1 %min.iters.check2177, label %vec.epilog.ph2198, label %vector.ph2178

vector.ph2178:                                    ; preds = %vector.main.loop.iter.check2176
  %broadcast.splatinsert2180 = insertelement <4 x double> poison, double %i.crh, i64 0
  %broadcast.splat2181 = shufflevector <4 x double> %broadcast.splatinsert2180, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2182

vector.body2182:                                  ; preds = %vector.ph2178, %vector.body2182
  %index2183 = phi i64 [ 0, %vector.ph2178 ], [ %index.next2189, %vector.body2182 ] ; 6 uses
  %vec.ind2184 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph2178 ], [ %vec.ind.next2190, %vector.body2182 ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind2184, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind2184, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind2184, splat (i32 12)
  %i.crl = uitofp nneg <4 x i32> %vec.ind2184 to <4 x double>
  %i.crm = uitofp nneg <4 x i32> %step.add to <4 x double>
  %i.crn = uitofp nneg <4 x i32> %step.add.2 to <4 x double>
  %i.cro = uitofp nneg <4 x i32> %step.add.3 to <4 x double>
  %i.crp = getelementptr inbounds nuw [4 x i8], ptr %i.cri, i64 %index2183 ; 5 uses
  %i.crq = getelementptr inbounds nuw i8, ptr %i.crp, i64 16 ; 2 uses
  %i.crr = getelementptr inbounds nuw i8, ptr %i.crp, i64 32 ; 2 uses
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crp, i64 48 ; 2 uses
  %wide.load2185 = load <4 x float>, ptr %i.crp, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %wide.load2186 = load <4 x float>, ptr %i.crq, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %wide.load2187 = load <4 x float>, ptr %i.crr, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %wide.load2188 = load <4 x float>, ptr %i.crs, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.crt = fpext <4 x float> %wide.load2185 to <4 x double>
  %i.cru = fpext <4 x float> %wide.load2186 to <4 x double>
  %i.crv = fpext <4 x float> %wide.load2187 to <4 x double>
  %i.crw = fpext <4 x float> %wide.load2188 to <4 x double>
  %i.crx = fneg <4 x double> %i.crl
  %i.cry = fneg <4 x double> %i.crm
  %i.crz = fneg <4 x double> %i.crn
  %i.csa = fneg <4 x double> %i.cro
  %i.csb = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.crx, <4 x double> %broadcast.splat2181, <4 x double> %i.crt)
  %i.csc = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cry, <4 x double> %broadcast.splat2181, <4 x double> %i.cru)
  %i.csd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.crz, <4 x double> %broadcast.splat2181, <4 x double> %i.crv)
  %i.cse = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.csa, <4 x double> %broadcast.splat2181, <4 x double> %i.crw)
  %58 = fptrunc <4 x double> %i.csb to <4 x float>
  %59 = fptrunc <4 x double> %i.csc to <4 x float>
  %60 = fptrunc <4 x double> %i.csd to <4 x float>
  %61 = fptrunc <4 x double> %i.cse to <4 x float>
  store <4 x float> %58, ptr %i.crp, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  store <4 x float> %59, ptr %i.crq, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  store <4 x float> %60, ptr %i.crr, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  store <4 x float> %61, ptr %i.crs, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.csf = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %index2183
  %i.csg = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %index2183
  %i.csh = getelementptr inbounds nuw i8, ptr %i.csg, i64 32
  %i.csi = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %index2183
  %i.csj = getelementptr inbounds nuw i8, ptr %i.csi, i64 64
  %i.csk = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %index2183
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csk, i64 96
  store <8 x float> zeroinitializer, ptr %i.csf, align 4, !tbaa !54, !alias.scope !309
  store <8 x float> zeroinitializer, ptr %i.csh, align 4, !tbaa !54, !alias.scope !309
  store <8 x float> zeroinitializer, ptr %i.csj, align 4, !tbaa !54, !alias.scope !309
  store <8 x float> zeroinitializer, ptr %i.csl, align 4, !tbaa !54, !alias.scope !309
  %index.next2189 = add nuw i64 %index2183, 16    ; 2 uses
  %vec.ind.next2190 = add <4 x i32> %vec.ind2184, splat (i32 16)
  %i.csm = icmp eq i64 %index.next2189, %n.vec2179
  br i1 %i.csm, label %middle.block2191, label %vector.body2182, !llvm.loop !144

middle.block2191:                                 ; preds = %vector.body2182
  br i1 %cmp.n2192, label %._crit_edge.us.us.i.i498, label %vec.epilog.iter.check2196

vec.epilog.iter.check2196:                        ; preds = %middle.block2191
  br i1 %min.epilog.iters.check2197, label %vec.epilog.scalar.ph2195.preheader, label %vec.epilog.ph2198, !prof !72

vec.epilog.ph2198:                                ; preds = %vector.main.loop.iter.check2176, %vec.epilog.iter.check2196
  %vec.epilog.resume.val2193 = phi i64 [ %n.vec2179, %vec.epilog.iter.check2196 ], [ 0, %vector.main.loop.iter.check2176 ] ; 2 uses
  %broadcast.splatinsert2200 = insertelement <4 x double> poison, double %i.crh, i64 0
  %broadcast.splat2201 = shufflevector <4 x double> %broadcast.splatinsert2200, <4 x double> poison, <4 x i32> zeroinitializer
  %i.csn = trunc nuw nsw i64 %vec.epilog.resume.val2193 to i32
  %broadcast.splatinsert2202 = insertelement <4 x i32> poison, i32 %i.csn, i64 0
  %broadcast.splat2203 = shufflevector <4 x i32> %broadcast.splatinsert2202, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat2203, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2204

vec.epilog.vector.body2204:                       ; preds = %vec.epilog.vector.body2204, %vec.epilog.ph2198
  %index2205 = phi i64 [ %vec.epilog.resume.val2193, %vec.epilog.ph2198 ], [ %index.next2208, %vec.epilog.vector.body2204 ] ; 3 uses
  %vec.ind2206 = phi <4 x i32> [ %induction, %vec.epilog.ph2198 ], [ %vec.ind.next2209, %vec.epilog.vector.body2204 ] ; 2 uses
  %i.cso = uitofp nneg <4 x i32> %vec.ind2206 to <4 x double>
  %i.csp = getelementptr inbounds nuw [4 x i8], ptr %i.cri, i64 %index2205 ; 2 uses
  %wide.load2207 = load <4 x float>, ptr %i.csp, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.csq = fpext <4 x float> %wide.load2207 to <4 x double>
  %i.csr = fneg <4 x double> %i.cso
  %i.css = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.csr, <4 x double> %broadcast.splat2201, <4 x double> %i.csq)
  %i.cst = fptrunc <4 x double> %i.css to <4 x float>
  store <4 x float> %i.cst, ptr %i.csp, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.csu = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %index2205
  store <8 x float> zeroinitializer, ptr %i.csu, align 4, !tbaa !54, !alias.scope !309
  %index.next2208 = add nuw i64 %index2205, 4     ; 2 uses
  %vec.ind.next2209 = add <4 x i32> %vec.ind2206, splat (i32 4)
  %i.csv = icmp eq i64 %index.next2208, %n.vec2199
  br i1 %i.csv, label %vec.epilog.middle.block2210, label %vec.epilog.vector.body2204, !llvm.loop !145

vec.epilog.middle.block2210:                      ; preds = %vec.epilog.vector.body2204
  br i1 %cmp.n2211, label %._crit_edge.us.us.i.i498, label %vec.epilog.scalar.ph2195.preheader

vec.epilog.scalar.ph2195.preheader:               ; preds = %iter.check2194, %vector.memcheck, %vec.epilog.iter.check2196, %vec.epilog.middle.block2210
  %indvars.iv57.i.i.ph = phi i64 [ 0, %iter.check2194 ], [ 0, %vector.memcheck ], [ %n.vec2179, %vec.epilog.iter.check2196 ], [ %n.vec2199, %vec.epilog.middle.block2210 ] ; 3 uses
  br i1 %lcmp.mod2675.not, label %vec.epilog.scalar.ph2195.prol.loopexit, label %vec.epilog.scalar.ph2195.prol

vec.epilog.scalar.ph2195.prol:                    ; preds = %vec.epilog.scalar.ph2195.preheader, %vec.epilog.scalar.ph2195.prol
  %indvars.iv57.i.i.prol = phi i64 [ %indvars.iv.next58.i.i.prol, %vec.epilog.scalar.ph2195.prol ], [ %indvars.iv57.i.i.ph, %vec.epilog.scalar.ph2195.preheader ] ; 4 uses
  %prol.iter2676 = phi i64 [ %prol.iter2676.next, %vec.epilog.scalar.ph2195.prol ], [ 0, %vec.epilog.scalar.ph2195.preheader ]
  %i.csw = trunc nuw nsw i64 %indvars.iv57.i.i.prol to i32
  %i.csx = uitofp nneg i32 %i.csw to double
  %i.csy = getelementptr inbounds nuw [4 x i8], ptr %i.cri, i64 %indvars.iv57.i.i.prol ; 2 uses
  %i.csz = load float, ptr %i.csy, align 4, !tbaa !54
  %i.cta = fpext float %i.csz to double
  %i.ctb = fneg double %i.csx
  %i.ctc = call double @llvm.fmuladd.f64(double %i.ctb, double %i.crh, double %i.cta)
  %i.ctd = fptrunc double %i.ctc to float
  store float %i.ctd, ptr %i.csy, align 4, !tbaa !54
  %i.cte = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %indvars.iv57.i.i.prol
  store <2 x float> zeroinitializer, ptr %i.cte, align 4, !tbaa !54
  %indvars.iv.next58.i.i.prol = add nuw nsw i64 %indvars.iv57.i.i.prol, 1 ; 2 uses
  %prol.iter2676.next = add i64 %prol.iter2676, 1 ; 2 uses
  %prol.iter2676.cmp.not = icmp eq i64 %prol.iter2676.next, %xtraiter2674
  br i1 %prol.iter2676.cmp.not, label %vec.epilog.scalar.ph2195.prol.loopexit, label %vec.epilog.scalar.ph2195.prol, !llvm.loop !146

vec.epilog.scalar.ph2195.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2195.prol, %vec.epilog.scalar.ph2195.preheader
  %indvars.iv57.i.i.unr = phi i64 [ %indvars.iv57.i.i.ph, %vec.epilog.scalar.ph2195.preheader ], [ %indvars.iv.next58.i.i.prol, %vec.epilog.scalar.ph2195.prol ]
  %i.ctf = sub nsw i64 %indvars.iv57.i.i.ph, %wide.trip.count60.i.i
  %i.ctg = icmp ugt i64 %i.ctf, -4
  br i1 %i.ctg, label %._crit_edge.us.us.i.i498, label %vec.epilog.scalar.ph2195

vec.epilog.scalar.ph2195:                         ; preds = %vec.epilog.scalar.ph2195.prol.loopexit, %vec.epilog.scalar.ph2195
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i.3, %vec.epilog.scalar.ph2195 ], [ %indvars.iv57.i.i.unr, %vec.epilog.scalar.ph2195.prol.loopexit ] ; 7 uses
  %i.cth = trunc nuw nsw i64 %indvars.iv57.i.i to i32
  %i.cti = uitofp nneg i32 %i.cth to double
  %i.ctj = getelementptr inbounds nuw [4 x i8], ptr %i.cri, i64 %indvars.iv57.i.i ; 2 uses
  %i.ctk = load float, ptr %i.ctj, align 4, !tbaa !54
  %i.ctl = fpext float %i.ctk to double
  %i.ctm = fneg double %i.cti
  %i.ctn = call double @llvm.fmuladd.f64(double %i.ctm, double %i.crh, double %i.ctl)
  %i.cto = fptrunc double %i.ctn to float
  store float %i.cto, ptr %i.ctj, align 4, !tbaa !54
  %i.ctp = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %indvars.iv57.i.i
  store <2 x float> zeroinitializer, ptr %i.ctp, align 4, !tbaa !54
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 3 uses
  %i.ctq = trunc nuw nsw i64 %indvars.iv.next58.i.i to i32
  %i.ctr = uitofp nneg i32 %i.ctq to double
  %i.cts = getelementptr inbounds nuw [4 x i8], ptr %i.cri, i64 %indvars.iv.next58.i.i ; 2 uses
  %i.ctt = load float, ptr %i.cts, align 4, !tbaa !54
  %i.ctu = fpext float %i.ctt to double
  %i.ctv = fneg double %i.ctr
  %i.ctw = call double @llvm.fmuladd.f64(double %i.ctv, double %i.crh, double %i.ctu)
  %i.ctx = fptrunc double %i.ctw to float
  store float %i.ctx, ptr %i.cts, align 4, !tbaa !54
  %i.cty = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %indvars.iv.next58.i.i
  store <2 x float> zeroinitializer, ptr %i.cty, align 4, !tbaa !54
  %indvars.iv.next58.i.i.1 = add nuw nsw i64 %indvars.iv57.i.i, 2 ; 3 uses
  %i.ctz = trunc nuw nsw i64 %indvars.iv.next58.i.i.1 to i32
  %i.cua = uitofp nneg i32 %i.ctz to double
  %i.cub = getelementptr inbounds nuw [4 x i8], ptr %i.cri, i64 %indvars.iv.next58.i.i.1 ; 2 uses
  %i.cuc = load float, ptr %i.cub, align 4, !tbaa !54
  %i.cud = fpext float %i.cuc to double
  %i.cue = fneg double %i.cua
  %i.cuf = call double @llvm.fmuladd.f64(double %i.cue, double %i.crh, double %i.cud)
  %i.cug = fptrunc double %i.cuf to float
  store float %i.cug, ptr %i.cub, align 4, !tbaa !54
  %i.cuh = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %indvars.iv.next58.i.i.1
  store <2 x float> zeroinitializer, ptr %i.cuh, align 4, !tbaa !54
  %indvars.iv.next58.i.i.2 = add nuw nsw i64 %indvars.iv57.i.i, 3 ; 3 uses
  %i.cui = trunc nuw nsw i64 %indvars.iv.next58.i.i.2 to i32
  %i.cuj = uitofp nneg i32 %i.cui to double
  %i.cuk = getelementptr inbounds nuw [4 x i8], ptr %i.cri, i64 %indvars.iv.next58.i.i.2 ; 2 uses
  %i.cul = load float, ptr %i.cuk, align 4, !tbaa !54
  %i.cum = fpext float %i.cul to double
  %i.cun = fneg double %i.cuj
  %i.cuo = call double @llvm.fmuladd.f64(double %i.cun, double %i.crh, double %i.cum)
  %i.cup = fptrunc double %i.cuo to float
  store float %i.cup, ptr %i.cuk, align 4, !tbaa !54
  %i.cuq = getelementptr inbounds nuw [8 x i8], ptr %i.crk, i64 %indvars.iv.next58.i.i.2
  store <2 x float> zeroinitializer, ptr %i.cuq, align 4, !tbaa !54
  %indvars.iv.next58.i.i.3 = add nuw nsw i64 %indvars.iv57.i.i, 4 ; 2 uses
  %exitcond61.not.i.i.3 = icmp eq i64 %indvars.iv.next58.i.i.3, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i.3, label %._crit_edge.us.us.i.i498, label %vec.epilog.scalar.ph2195, !llvm.loop !147

._crit_edge.us.us.i.i498:                         ; preds = %vec.epilog.scalar.ph2195.prol.loopexit, %vec.epilog.scalar.ph2195, %vec.epilog.middle.block2210, %middle.block2191
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 2 uses
  %exitcond66.not.i.i = icmp eq i64 %indvars.iv.next63.i.i, %wide.trip.count55.i.i
  br i1 %exitcond66.not.i.i, label %._crit_edge39.us.i.i, label %iter.check2194, !llvm.loop !148

._crit_edge39.us.i.i:                             ; preds = %._crit_edge.us45.i.i, %._crit_edge.us.us.i.i498, %.lr.ph38.split.us.us.i.i
  %i.cur = phi i32 [ %i.cmt, %._crit_edge.us.us.i.i498 ], [ %i.cmt, %.lr.ph38.split.us.us.i.i ], [ %i.cnj, %._crit_edge.us45.i.i ]
  %i.cus = phi i32 [ %i.cmt, %._crit_edge.us.us.i.i498 ], [ %i.cmt, %.lr.ph38.split.us.us.i.i ], [ %i.cnk, %._crit_edge.us45.i.i ]
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cmj, ptr noundef nonnull %36, i32 noundef %i.cmm, i32 noundef %i.cmn)
          to label %.noexc504 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2604

.noexc504:                                        ; preds = %._crit_edge39.us.i.i
  %i.cut = add nuw nsw i32 %.040.us.i.i, 1        ; 2 uses
  %exitcond67.not.i.i = icmp eq i32 %i.cut, 5
  br i1 %exitcond67.not.i.i, label %_ZL12remove_driftiiifP10enerdata_t.exit.i, label %.preheader.us.i.i, !llvm.loop !149

.lr.ph38.split.us.split.us.i.i:                   ; preds = %.lr.ph38.split.us.us.i.i
  %wide.trip.count60.i.i = zext nneg i32 %i.cmt to i64 ; 10 uses
  %i.cuu = shl nuw nsw i64 %wide.trip.count60.i.i, 2
  %i.cuv = shl nuw nsw i64 %wide.trip.count60.i.i, 3
  %min.iters.check2175 = icmp ult i32 %i.cmt, 4
  %min.iters.check2177 = icmp ult i32 %i.cmt, 16
  %i.cuw = and i64 %wide.trip.count60.i.i, 12
  %n.vec2179 = and i64 %wide.trip.count60.i.i, 2147483632 ; 4 uses
  %cmp.n2192 = icmp eq i64 %n.vec2179, %wide.trip.count60.i.i
  %min.epilog.iters.check2197 = icmp eq i64 %i.cuw, 0
  %n.vec2199 = and i64 %wide.trip.count60.i.i, 2147483644 ; 3 uses
  %cmp.n2211 = icmp eq i64 %n.vec2199, %wide.trip.count60.i.i
  %xtraiter2674 = and i64 %wide.trip.count60.i.i, 3 ; 2 uses
  %lcmp.mod2675.not = icmp eq i64 %xtraiter2674, 0
  br label %iter.check2194

_ZL12remove_driftiiifP10enerdata_t.exit.i:        ; preds = %.noexc504, %bb.nk
  %i.cux = icmp sgt i32 %i.cmj, 0
  br i1 %i.cux, label %.lr.ph.us.preheader.i, label %.split233.us.i

.lr.ph.us.preheader.i:                            ; preds = %_ZL12remove_driftiiifP10enerdata_t.exit.i
  %wide.trip.count.i489 = zext nneg i32 %i.cmj to i64 ; 4 uses
  br label %bb.no

bb.no:                                            ; preds = %bb.np, %.lr.ph.us.preheader.i
  %indvars.iv.i490 = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i491, %bb.np ] ; 3 uses
  %i.cuy = getelementptr inbounds nuw [32 x i8], ptr %i.cml, i64 %indvars.iv.i490
  %i.cuz = load ptr, ptr %i.cuy, align 8, !tbaa !23
  %i.cva = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cuz, ptr noundef nonnull @.str.116)
          to label %.noexc505 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.sp2604

.noexc505:                                        ; preds = %bb.no
  %.not.us.i = icmp eq i32 %i.cva, 0
  br i1 %.not.us.i, label %.critedge.us.split.loop.exit267.i, label %bb.np

bb.np:                                            ; preds = %.noexc505
  %indvars.iv.next.i491 = add nuw nsw i64 %indvars.iv.i490, 1 ; 2 uses
  %exitcond.not.i492 = icmp eq i64 %indvars.iv.next.i491, %wide.trip.count.i489
  br i1 %exitcond.not.i492, label %.critedge.us.i, label %bb.no, !llvm.loop !150

.critedge.us.split.loop.exit267.i:                ; preds = %.noexc505
  %i.cvb = trunc nuw nsw i64 %indvars.iv.i490 to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.np, %.critedge.us.split.loop.exit267.i
  %storemerge.lcssa.us.i = phi i32 [ %i.cvb, %.critedge.us.split.loop.exit267.i ], [ %i.cmj, %bb.np ] ; 2 uses
  br label %bb.nq

bb.nq:                                            ; preds = %bb.nr, %.critedge.us.i
end_hunk_0
