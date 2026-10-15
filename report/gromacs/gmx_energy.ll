Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_energy?download=true
inline.NumInlined: 676
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_Z10gmx_energyiPPc:bb.a
  %i.clt = load ptr, ptr %i.brb, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clt)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.7.i unwind label %.loopexit.i454

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.7.i:       ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.6.i
  %i.clu = load ptr, ptr %i.brd, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clu)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.8.i unwind label %.loopexit.i454

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.8.i:       ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.7.i
  %i.clv = load ptr, ptr %i.brf, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clv)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.9.i unwind label %.loopexit.i454

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.9.i:       ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.8.i
  %i.clw = load ptr, ptr %i.brh, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clw)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.10.i unwind label %.loopexit.i454

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.10.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.9.i
  %i.clx = load ptr, ptr %i.brj, align 8, !tbaa !180
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.248, ptr noundef nonnull @.str.140, i32 noundef 1267, ptr noundef %i.clx)
          to label %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.11.i unwind label %.loopexit.i454

_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.11.i:      ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.10.i
  invoke void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.140, i32 noundef 1269, ptr noundef nonnull %i.bpv)
          to label %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i:        ; preds = %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.11.i
  %i.cly = load ptr, ptr %i.bpr, align 8, !tbaa !23 ; 2 uses
  %i.clz = icmp eq ptr %i.cly, %i.bps
  br i1 %i.clz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332.i: ; preds = %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i
  %i.cma = load i64, ptr %i.bps, align 8, !tbaa !24
  %i.cmb = add i64 %i.cma, 1
  call void @_ZdlPvm(ptr noundef %i.cly, i64 noundef %i.cmb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i: ; preds = %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i332.i
  %i.cmc = load ptr, ptr %20, align 8, !tbaa !23  ; 2 uses
  %i.cmd = icmp eq ptr %i.cmc, %i.bpo
  br i1 %i.cmd, label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i
  %i.cme = load i64, ptr %i.bpo, align 8, !tbaa !24
  %i.cmf = add i64 %i.cme, 1
  call void @_ZdlPvm(ptr noundef %i.cmc, i64 noundef %i.cmf) #28
  br label %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i

_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i333.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %bb.nk

.body.i:                                          ; preds = %bb.nh, %bb.mv, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i454
  %.pn289.i = phi { ptr, i32 } [ %.pn285.pn.pn.i, %bb.nh ], [ %.pn143.i.i, %bb.mv ], [ %lpad.loopexit.i, %.loopexit.i454 ], [ %lpad.loopexit29.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp30.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  br label %.body

bb.nk:                                            ; preds = %_ZNSt5arrayINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELm2EED2Ev.exit.i, %bb.kw, %.noexc470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cmg = load i8, ptr @_ZZ10gmx_energyiPPcE11bFluctProps, align 1, !tbaa !36, !range !37, !noundef !38
  %i.cmh = trunc nuw i8 %i.cmg to i1
  br i1 %i.cmh, label %bb.nl, label %_ZL22calc_fluctuation_propsP8_IO_FILEbfiiN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEP10enerdata_tii.exit

bb.nl:                                            ; preds = %bb.nk
  %i.cmi = load ptr, ptr @stdout, align 8, !tbaa !61 ; 18 uses
  %i.cmj = load i8, ptr @_ZZ10gmx_energyiPPcE10bDriftCorr, align 1, !tbaa !36, !range !37, !noundef !38
  %i.cmk = trunc nuw i8 %i.cmj to i1
  %i.cml = load i32, ptr %i.aj, align 4, !tbaa !11 ; 18 uses
  %i.cmm = load i32, ptr @_ZZ10gmx_energyiPPcE4nmol, align 4, !tbaa !11 ; 8 uses
  %i.cmn = load ptr, ptr %37, align 8, !tbaa !41  ; 4 uses
  %i.cmo = load i32, ptr @_ZZ10gmx_energyiPPcE5nbmin, align 4, !tbaa !11 ; 6 uses
  %i.cmp = load i32, ptr @_ZZ10gmx_energyiPPcE5nbmax, align 4, !tbaa !11 ; 6 uses
  br i1 %i.cmk, label %bb.nn, label %bb.nm

bb.nm:                                            ; preds = %bb.nl
  %fwrite.i485 = call i64 @fwrite(ptr nonnull @.str.278, i64 169, i64 1, ptr %i.cmi) ; 0 uses
  br label %_ZL12remove_driftiiifP10enerdata_t.exit.i

bb.nn:                                            ; preds = %bb.nl
  %i.cmq = fptrunc double %i.arv to float
  %i.cmr = load i32, ptr %i.nk, align 8, !tbaa !58 ; 3 uses
  %i.cms = sext i32 %i.cmr to i64                 ; 2 uses
  store i64 %i.cms, ptr %i.nj, align 8, !tbaa !185
  store i64 %i.cms, ptr %36, align 8, !tbaa !55
  %i.cmt = icmp sgt i32 %i.cml, 0
  %i.cmu = fpext float %i.cmq to double           ; 2 uses
  br i1 %i.cmt, label %.preheader.us.preheader.i.i, label %_ZL12remove_driftiiifP10enerdata_t.exit.thread.i

_ZL12remove_driftiiifP10enerdata_t.exit.thread.i: ; preds = %bb.nn
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cml, ptr noundef nonnull %36, i32 noundef %i.cmo, i32 noundef %i.cmp)
          to label %.noexc500 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc500:                                        ; preds = %_ZL12remove_driftiiifP10enerdata_t.exit.thread.i
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cml, ptr noundef nonnull %36, i32 noundef %i.cmo, i32 noundef %i.cmp)
          to label %.noexc501 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc501:                                        ; preds = %.noexc500
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cml, ptr noundef nonnull %36, i32 noundef %i.cmo, i32 noundef %i.cmp)
          to label %.noexc502 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc502:                                        ; preds = %.noexc501
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cml, ptr noundef nonnull %36, i32 noundef %i.cmo, i32 noundef %i.cmp)
          to label %.noexc503 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc503:                                        ; preds = %.noexc502
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cml, ptr noundef nonnull %36, i32 noundef %i.cmo, i32 noundef %i.cmp)
          to label %.split233.us.i unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.us.preheader.i.i:                      ; preds = %bb.nn
  %wide.trip.count55.i.i = zext nneg i32 %i.cml to i64 ; 2 uses
  br label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %.noexc505, %.preheader.us.preheader.i.i
  %i.cmv = phi i32 [ %i.cut, %.noexc505 ], [ %i.cmr, %.preheader.us.preheader.i.i ] ; 9 uses
  %i.cmw = phi i32 [ %i.cuu, %.noexc505 ], [ %i.cmr, %.preheader.us.preheader.i.i ]
  %.040.us.i.i = phi i32 [ %i.cuv, %.noexc505 ], [ 0, %.preheader.us.preheader.i.i ]
  %i.cmx = load ptr, ptr @debug, align 8, !tbaa !61 ; 2 uses
  %i.cmy = icmp eq ptr %i.cmx, null
  %i.cmz = load ptr, ptr %i.np, align 8, !tbaa !64 ; 3 uses
  br i1 %i.cmy, label %.lr.ph38.split.us.us.i.i, label %.lr.ph38.split.us41.i.i

.lr.ph38.split.us41.i.i:                          ; preds = %.preheader.us.i.i, %._crit_edge.us45.i.i
  %i.cna = phi i32 [ %i.cnl, %._crit_edge.us45.i.i ], [ %i.cmv, %.preheader.us.i.i ]
  %i.cnb = phi i32 [ %i.cnm, %._crit_edge.us45.i.i ], [ %i.cmw, %.preheader.us.i.i ]
  %i.cnc = phi ptr [ %i.cnn, %._crit_edge.us45.i.i ], [ %i.cmz, %.preheader.us.i.i ]
  %i.cnd = phi ptr [ %i.cno, %._crit_edge.us45.i.i ], [ %i.cmx, %.preheader.us.i.i ] ; 2 uses
  %i.cne = phi ptr [ %i.cre, %._crit_edge.us45.i.i ], [ %i.cmz, %.preheader.us.i.i ] ; 2 uses
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %._crit_edge.us45.i.i ], [ 0, %.preheader.us.i.i ] ; 4 uses
  %i.cnf = getelementptr inbounds nuw [56 x i8], ptr %i.cne, i64 %indvars.iv52.i.i
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cnf, i64 48
  %i.cnh = load double, ptr %i.cng, align 8, !tbaa !63 ; 2 uses
  %i.cni = fmul double %i.cnh, %i.cmu             ; 7 uses
  %.not.us.i.i = icmp eq ptr %i.cnd, null
  br i1 %.not.us.i.i, label %bb.np, label %bb.no

bb.no:                                            ; preds = %.lr.ph38.split.us41.i.i
  %i.cnj = trunc nuw nsw i64 %indvars.iv52.i.i to i32
  %i.cnk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.cnd, ptr noundef nonnull @.str.296, i32 noundef %i.cnj, double noundef %i.cnh) #27 ; 0 uses
  %.pre.i.i494 = load ptr, ptr %i.np, align 8, !tbaa !64 ; 2 uses
  %.pre69.i.i = load ptr, ptr @debug, align 8, !tbaa !61
  %.pre1308 = load i32, ptr %i.nk, align 8, !tbaa !58 ; 2 uses
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %.lr.ph38.split.us41.i.i
  %i.cnl = phi i32 [ %.pre1308, %bb.no ], [ %i.cna, %.lr.ph38.split.us41.i.i ] ; 2 uses
  %i.cnm = phi i32 [ %.pre1308, %bb.no ], [ %i.cnb, %.lr.ph38.split.us41.i.i ] ; 6 uses
  %i.cnn = phi ptr [ %.pre.i.i494, %bb.no ], [ %i.cnc, %.lr.ph38.split.us41.i.i ] ; 6 uses
  %i.cno = phi ptr [ %.pre69.i.i, %bb.no ], [ null, %.lr.ph38.split.us41.i.i ]
  %i.cnp = phi ptr [ %.pre.i.i494, %bb.no ], [ %i.cne, %.lr.ph38.split.us41.i.i ]
  %i.cnq = icmp sgt i32 %i.cnm, 0
  br i1 %i.cnq, label %iter.check2091, label %._crit_edge.us45.i.i

iter.check2091:                                   ; preds = %bb.np
  %i.cnr = getelementptr inbounds nuw [56 x i8], ptr %i.cnn, i64 %indvars.iv52.i.i ; 2 uses
  %i.cns = load ptr, ptr %i.cnr, align 8, !tbaa !56 ; 9 uses
  %i.cnt = getelementptr inbounds nuw i8, ptr %i.cnr, i64 8
  %i.cnu = load ptr, ptr %i.cnt, align 8, !tbaa !48 ; 12 uses
  %wide.trip.count.i.i495 = zext nneg i32 %i.cnm to i64 ; 10 uses
  %min.iters.check2069 = icmp ult i32 %i.cnm, 4
  br i1 %min.iters.check2069, label %vec.epilog.scalar.ph2092.preheader, label %vector.memcheck2062

vector.memcheck2062:                              ; preds = %iter.check2091
  %i.cnv = shl nuw nsw i64 %wide.trip.count.i.i495, 2
  %scevgep2063 = getelementptr i8, ptr %i.cns, i64 %i.cnv
  %i.cnw = shl nuw nsw i64 %wide.trip.count.i.i495, 3
  %scevgep2064 = getelementptr i8, ptr %i.cnu, i64 %i.cnw
  %bound02065 = icmp ult ptr %i.cns, %scevgep2064
  %bound12066 = icmp ult ptr %i.cnu, %scevgep2063
  %found.conflict2067 = and i1 %bound02065, %bound12066
  br i1 %found.conflict2067, label %vec.epilog.scalar.ph2092.preheader, label %vector.main.loop.iter.check2070

vector.main.loop.iter.check2070:                  ; preds = %vector.memcheck2062
  %min.iters.check2071 = icmp ult i32 %i.cnm, 16
  br i1 %min.iters.check2071, label %vec.epilog.ph2095, label %vector.ph2072

vector.ph2072:                                    ; preds = %vector.main.loop.iter.check2070
  %i.cnx = and i64 %wide.trip.count.i.i495, 12
  %n.vec2073 = and i64 %wide.trip.count.i.i495, 2147483632 ; 4 uses
  %broadcast.splatinsert2074 = insertelement <4 x double> poison, double %i.cni, i64 0
  %broadcast.splat2075 = shufflevector <4 x double> %broadcast.splatinsert2074, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2076

vector.body2076:                                  ; preds = %vector.ph2072, %vector.body2076
  %index2077 = phi i64 [ 0, %vector.ph2072 ], [ %index.next2086, %vector.body2076 ] ; 6 uses
  %vec.ind2078 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph2072 ], [ %vec.ind.next2087, %vector.body2076 ] ; 5 uses
  %step.add2079 = add <4 x i32> %vec.ind2078, splat (i32 4)
  %step.add.22080 = add <4 x i32> %vec.ind2078, splat (i32 8)
  %step.add.32081 = add <4 x i32> %vec.ind2078, splat (i32 12)
  %i.cny = uitofp nneg <4 x i32> %vec.ind2078 to <4 x double>
  %i.cnz = uitofp nneg <4 x i32> %step.add2079 to <4 x double>
  %i.coa = uitofp nneg <4 x i32> %step.add.22080 to <4 x double>
  %i.cob = uitofp nneg <4 x i32> %step.add.32081 to <4 x double>
  %i.coc = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %index2077 ; 5 uses
  %i.cod = getelementptr inbounds nuw i8, ptr %i.coc, i64 16
  %i.coe = getelementptr inbounds nuw i8, ptr %i.coc, i64 32 ; 2 uses
  %i.cof = getelementptr inbounds nuw i8, ptr %i.coc, i64 48
  %wide.load2082 = load <4 x float>, ptr %i.coc, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %wide.load2083 = load <4 x float>, ptr %i.cod, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %wide.load2084 = load <4 x float>, ptr %i.coe, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %wide.load2085 = load <4 x float>, ptr %i.cof, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.cog = fpext <4 x float> %wide.load2082 to <4 x double>
  %i.coh = fpext <4 x float> %wide.load2083 to <4 x double>
  %i.coi = fpext <4 x float> %wide.load2084 to <4 x double>
  %i.coj = fpext <4 x float> %wide.load2085 to <4 x double>
  %i.cok = fneg <4 x double> %i.cny
  %i.col = fneg <4 x double> %i.cnz
  %i.com = fneg <4 x double> %i.coa
  %i.con = fneg <4 x double> %i.cob
  %i.coo = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cok, <4 x double> %broadcast.splat2075, <4 x double> %i.cog)
  %i.cop = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.col, <4 x double> %broadcast.splat2075, <4 x double> %i.coh)
  %i.coq = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.com, <4 x double> %broadcast.splat2075, <4 x double> %i.coi)
  %i.cor = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.con, <4 x double> %broadcast.splat2075, <4 x double> %i.coj)
  %54 = shufflevector <4 x double> %i.coo, <4 x double> %i.cop, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %55 = fptrunc <8 x double> %54 to <8 x float>
  store <8 x float> %55, ptr %i.coc, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %56 = shufflevector <4 x double> %i.coq, <4 x double> %i.cor, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %57 = fptrunc <8 x double> %56 to <8 x float>
  store <8 x float> %57, ptr %i.coe, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.cos = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %index2077
  %i.cot = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %index2077
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 32
  %i.cov = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %index2077
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cov, i64 64
  %i.cox = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %index2077
  %i.coy = getelementptr inbounds nuw i8, ptr %i.cox, i64 96
  store <8 x float> zeroinitializer, ptr %i.cos, align 4, !tbaa !54, !alias.scope !306
  store <8 x float> zeroinitializer, ptr %i.cou, align 4, !tbaa !54, !alias.scope !306
  store <8 x float> zeroinitializer, ptr %i.cow, align 4, !tbaa !54, !alias.scope !306
  store <8 x float> zeroinitializer, ptr %i.coy, align 4, !tbaa !54, !alias.scope !306
  %index.next2086 = add nuw i64 %index2077, 16    ; 2 uses
  %vec.ind.next2087 = add <4 x i32> %vec.ind2078, splat (i32 16)
  %i.coz = icmp eq i64 %index.next2086, %n.vec2073
  br i1 %i.coz, label %middle.block2088, label %vector.body2076, !llvm.loop !136

middle.block2088:                                 ; preds = %vector.body2076
  %cmp.n2089 = icmp eq i64 %n.vec2073, %wide.trip.count.i.i495
  br i1 %cmp.n2089, label %._crit_edge.us45.i.i, label %vec.epilog.iter.check2093

vec.epilog.iter.check2093:                        ; preds = %middle.block2088
  %min.epilog.iters.check2094 = icmp eq i64 %i.cnx, 0
  br i1 %min.epilog.iters.check2094, label %vec.epilog.scalar.ph2092.preheader, label %vec.epilog.ph2095, !prof !72

vec.epilog.ph2095:                                ; preds = %vector.main.loop.iter.check2070, %vec.epilog.iter.check2093
  %vec.epilog.resume.val2090 = phi i64 [ %n.vec2073, %vec.epilog.iter.check2093 ], [ 0, %vector.main.loop.iter.check2070 ] ; 2 uses
  %n.vec2096 = and i64 %wide.trip.count.i.i495, 2147483644 ; 3 uses
  %broadcast.splatinsert2097 = insertelement <4 x double> poison, double %i.cni, i64 0
  %broadcast.splat2098 = shufflevector <4 x double> %broadcast.splatinsert2097, <4 x double> poison, <4 x i32> zeroinitializer
  %i.cpa = trunc nuw nsw i64 %vec.epilog.resume.val2090 to i32
  %broadcast.splatinsert2099 = insertelement <4 x i32> poison, i32 %i.cpa, i64 0
  %broadcast.splat2100 = shufflevector <4 x i32> %broadcast.splatinsert2099, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction2101 = or disjoint <4 x i32> %broadcast.splat2100, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2102

vec.epilog.vector.body2102:                       ; preds = %vec.epilog.vector.body2102, %vec.epilog.ph2095
  %index2103 = phi i64 [ %vec.epilog.resume.val2090, %vec.epilog.ph2095 ], [ %index.next2106, %vec.epilog.vector.body2102 ] ; 3 uses
  %vec.ind2104 = phi <4 x i32> [ %induction2101, %vec.epilog.ph2095 ], [ %vec.ind.next2107, %vec.epilog.vector.body2102 ] ; 2 uses
  %i.cpb = uitofp nneg <4 x i32> %vec.ind2104 to <4 x double>
  %i.cpc = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %index2103 ; 2 uses
  %wide.load2105 = load <4 x float>, ptr %i.cpc, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.cpd = fpext <4 x float> %wide.load2105 to <4 x double>
  %i.cpe = fneg <4 x double> %i.cpb
  %i.cpf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cpe, <4 x double> %broadcast.splat2098, <4 x double> %i.cpd)
  %i.cpg = fptrunc <4 x double> %i.cpf to <4 x float>
  store <4 x float> %i.cpg, ptr %i.cpc, align 4, !tbaa !54, !alias.scope !305, !noalias !306
  %i.cph = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %index2103
  store <8 x float> zeroinitializer, ptr %i.cph, align 4, !tbaa !54, !alias.scope !306
  %index.next2106 = add nuw i64 %index2103, 4     ; 2 uses
  %vec.ind.next2107 = add <4 x i32> %vec.ind2104, splat (i32 4)
  %i.cpi = icmp eq i64 %index.next2106, %n.vec2096
  br i1 %i.cpi, label %vec.epilog.middle.block2108, label %vec.epilog.vector.body2102, !llvm.loop !137

vec.epilog.middle.block2108:                      ; preds = %vec.epilog.vector.body2102
  %cmp.n2109 = icmp eq i64 %n.vec2096, %wide.trip.count.i.i495
  br i1 %cmp.n2109, label %._crit_edge.us45.i.i, label %vec.epilog.scalar.ph2092.preheader

vec.epilog.scalar.ph2092.preheader:               ; preds = %iter.check2091, %vector.memcheck2062, %vec.epilog.iter.check2093, %vec.epilog.middle.block2108
  %indvars.iv.i.i496.ph = phi i64 [ 0, %iter.check2091 ], [ 0, %vector.memcheck2062 ], [ %n.vec2073, %vec.epilog.iter.check2093 ], [ %n.vec2096, %vec.epilog.middle.block2108 ] ; 3 uses
  %xtraiter2393 = and i64 %wide.trip.count.i.i495, 3 ; 2 uses
  %lcmp.mod2394.not = icmp eq i64 %xtraiter2393, 0
  br i1 %lcmp.mod2394.not, label %vec.epilog.scalar.ph2092.prol.loopexit, label %vec.epilog.scalar.ph2092.prol

vec.epilog.scalar.ph2092.prol:                    ; preds = %vec.epilog.scalar.ph2092.preheader, %vec.epilog.scalar.ph2092.prol
  %indvars.iv.i.i496.prol = phi i64 [ %indvars.iv.next.i.i497.prol, %vec.epilog.scalar.ph2092.prol ], [ %indvars.iv.i.i496.ph, %vec.epilog.scalar.ph2092.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph2092.prol ], [ 0, %vec.epilog.scalar.ph2092.preheader ]
  %i.cpj = trunc nuw nsw i64 %indvars.iv.i.i496.prol to i32
  %i.cpk = uitofp nneg i32 %i.cpj to double
  %i.cpl = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %indvars.iv.i.i496.prol ; 2 uses
  %i.cpm = load float, ptr %i.cpl, align 4, !tbaa !54
  %i.cpn = fpext float %i.cpm to double
  %i.cpo = fneg double %i.cpk
  %i.cpp = call double @llvm.fmuladd.f64(double %i.cpo, double %i.cni, double %i.cpn)
  %i.cpq = fptrunc double %i.cpp to float
  store float %i.cpq, ptr %i.cpl, align 4, !tbaa !54
  %i.cpr = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %indvars.iv.i.i496.prol
  store <2 x float> zeroinitializer, ptr %i.cpr, align 4, !tbaa !54
  %indvars.iv.next.i.i497.prol = add nuw nsw i64 %indvars.iv.i.i496.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter2393
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph2092.prol.loopexit, label %vec.epilog.scalar.ph2092.prol, !llvm.loop !138

vec.epilog.scalar.ph2092.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2092.prol, %vec.epilog.scalar.ph2092.preheader
  %indvars.iv.i.i496.unr = phi i64 [ %indvars.iv.i.i496.ph, %vec.epilog.scalar.ph2092.preheader ], [ %indvars.iv.next.i.i497.prol, %vec.epilog.scalar.ph2092.prol ]
  %i.cps = sub nsw i64 %indvars.iv.i.i496.ph, %wide.trip.count.i.i495
  %i.cpt = icmp ugt i64 %i.cps, -4
  br i1 %i.cpt, label %._crit_edge.us45.i.i, label %vec.epilog.scalar.ph2092

vec.epilog.scalar.ph2092:                         ; preds = %vec.epilog.scalar.ph2092.prol.loopexit, %vec.epilog.scalar.ph2092
  %indvars.iv.i.i496 = phi i64 [ %indvars.iv.next.i.i497.3, %vec.epilog.scalar.ph2092 ], [ %indvars.iv.i.i496.unr, %vec.epilog.scalar.ph2092.prol.loopexit ] ; 7 uses
  %i.cpu = trunc nuw nsw i64 %indvars.iv.i.i496 to i32
  %i.cpv = uitofp nneg i32 %i.cpu to double
  %i.cpw = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %indvars.iv.i.i496 ; 2 uses
  %i.cpx = load float, ptr %i.cpw, align 4, !tbaa !54
  %i.cpy = fpext float %i.cpx to double
  %i.cpz = fneg double %i.cpv
  %i.cqa = call double @llvm.fmuladd.f64(double %i.cpz, double %i.cni, double %i.cpy)
  %i.cqb = fptrunc double %i.cqa to float
  store float %i.cqb, ptr %i.cpw, align 4, !tbaa !54
  %i.cqc = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %indvars.iv.i.i496
  store <2 x float> zeroinitializer, ptr %i.cqc, align 4, !tbaa !54
  %indvars.iv.next.i.i497 = add nuw nsw i64 %indvars.iv.i.i496, 1 ; 3 uses
  %i.cqd = trunc nuw nsw i64 %indvars.iv.next.i.i497 to i32
  %i.cqe = uitofp nneg i32 %i.cqd to double
  %i.cqf = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %indvars.iv.next.i.i497 ; 2 uses
  %i.cqg = load float, ptr %i.cqf, align 4, !tbaa !54
  %i.cqh = fpext float %i.cqg to double
  %i.cqi = fneg double %i.cqe
  %i.cqj = call double @llvm.fmuladd.f64(double %i.cqi, double %i.cni, double %i.cqh)
  %i.cqk = fptrunc double %i.cqj to float
  store float %i.cqk, ptr %i.cqf, align 4, !tbaa !54
  %i.cql = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %indvars.iv.next.i.i497
  store <2 x float> zeroinitializer, ptr %i.cql, align 4, !tbaa !54
  %indvars.iv.next.i.i497.1 = add nuw nsw i64 %indvars.iv.i.i496, 2 ; 3 uses
  %i.cqm = trunc nuw nsw i64 %indvars.iv.next.i.i497.1 to i32
  %i.cqn = uitofp nneg i32 %i.cqm to double
  %i.cqo = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %indvars.iv.next.i.i497.1 ; 2 uses
  %i.cqp = load float, ptr %i.cqo, align 4, !tbaa !54
  %i.cqq = fpext float %i.cqp to double
  %i.cqr = fneg double %i.cqn
  %i.cqs = call double @llvm.fmuladd.f64(double %i.cqr, double %i.cni, double %i.cqq)
  %i.cqt = fptrunc double %i.cqs to float
  store float %i.cqt, ptr %i.cqo, align 4, !tbaa !54
  %i.cqu = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %indvars.iv.next.i.i497.1
  store <2 x float> zeroinitializer, ptr %i.cqu, align 4, !tbaa !54
  %indvars.iv.next.i.i497.2 = add nuw nsw i64 %indvars.iv.i.i496, 3 ; 3 uses
  %i.cqv = trunc nuw nsw i64 %indvars.iv.next.i.i497.2 to i32
  %i.cqw = uitofp nneg i32 %i.cqv to double
  %i.cqx = getelementptr inbounds nuw [4 x i8], ptr %i.cns, i64 %indvars.iv.next.i.i497.2 ; 2 uses
  %i.cqy = load float, ptr %i.cqx, align 4, !tbaa !54
  %i.cqz = fpext float %i.cqy to double
  %i.cra = fneg double %i.cqw
  %i.crb = call double @llvm.fmuladd.f64(double %i.cra, double %i.cni, double %i.cqz)
  %i.crc = fptrunc double %i.crb to float
  store float %i.crc, ptr %i.cqx, align 4, !tbaa !54
  %i.crd = getelementptr inbounds nuw [8 x i8], ptr %i.cnu, i64 %indvars.iv.next.i.i497.2
  store <2 x float> zeroinitializer, ptr %i.crd, align 4, !tbaa !54
  %indvars.iv.next.i.i497.3 = add nuw nsw i64 %indvars.iv.i.i496, 4 ; 2 uses
  %exitcond.not.i.i498.3 = icmp eq i64 %indvars.iv.next.i.i497.3, %wide.trip.count.i.i495
  br i1 %exitcond.not.i.i498.3, label %._crit_edge.us45.i.i, label %vec.epilog.scalar.ph2092, !llvm.loop !139

._crit_edge.us45.i.i:                             ; preds = %vec.epilog.scalar.ph2092.prol.loopexit, %vec.epilog.scalar.ph2092, %middle.block2088, %vec.epilog.middle.block2108, %bb.np
  %i.cre = phi ptr [ %i.cnp, %bb.np ], [ %i.cnn, %middle.block2088 ], [ %i.cnn, %vec.epilog.middle.block2108 ], [ %i.cnn, %vec.epilog.scalar.ph2092 ], [ %i.cnn, %vec.epilog.scalar.ph2092.prol.loopexit ]
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count55.i.i
  br i1 %exitcond56.not.i.i, label %._crit_edge39.us.i.i, label %.lr.ph38.split.us41.i.i, !llvm.loop !140

.lr.ph38.split.us.us.i.i:                         ; preds = %.preheader.us.i.i
  %i.crf = icmp sgt i32 %i.cmv, 0
  br i1 %i.crf, label %.lr.ph38.split.us.split.us.i.i, label %._crit_edge39.us.i.i

iter.check2043:                                   ; preds = %.lr.ph38.split.us.split.us.i.i, %._crit_edge.us.us.i.i499
  %indvars.iv62.i.i = phi i64 [ 0, %.lr.ph38.split.us.split.us.i.i ], [ %indvars.iv.next63.i.i, %._crit_edge.us.us.i.i499 ] ; 2 uses
  %i.crg = getelementptr inbounds nuw [56 x i8], ptr %i.cmz, i64 %indvars.iv62.i.i ; 3 uses
  %i.crh = getelementptr inbounds nuw i8, ptr %i.crg, i64 48
  %i.cri = load double, ptr %i.crh, align 8, !tbaa !63
  %i.crj = fmul double %i.cri, %i.cmu             ; 7 uses
  %i.crk = load ptr, ptr %i.crg, align 8, !tbaa !56 ; 9 uses
  %i.crl = getelementptr inbounds nuw i8, ptr %i.crg, i64 8
  %i.crm = load ptr, ptr %i.crl, align 8, !tbaa !48 ; 12 uses
  br i1 %min.iters.check2024, label %vec.epilog.scalar.ph2044.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check2043
  %scevgep = getelementptr i8, ptr %i.crk, i64 %i.cuw
  %scevgep2022 = getelementptr i8, ptr %i.crm, i64 %i.cux
  %bound0 = icmp ult ptr %i.crk, %scevgep2022
  %bound1 = icmp ult ptr %i.crm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph2044.preheader, label %vector.main.loop.iter.check2025

vector.main.loop.iter.check2025:                  ; preds = %vector.memcheck
  br i1 %min.iters.check2026, label %vec.epilog.ph2047, label %vector.ph2027

vector.ph2027:                                    ; preds = %vector.main.loop.iter.check2025
  %broadcast.splatinsert2029 = insertelement <4 x double> poison, double %i.crj, i64 0
  %broadcast.splat2030 = shufflevector <4 x double> %broadcast.splatinsert2029, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body2031

vector.body2031:                                  ; preds = %vector.ph2027, %vector.body2031
  %index2032 = phi i64 [ 0, %vector.ph2027 ], [ %index.next2038, %vector.body2031 ] ; 6 uses
  %vec.ind2033 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph2027 ], [ %vec.ind.next2039, %vector.body2031 ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind2033, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind2033, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind2033, splat (i32 12)
  %i.crn = uitofp nneg <4 x i32> %vec.ind2033 to <4 x double>
  %i.cro = uitofp nneg <4 x i32> %step.add to <4 x double>
  %i.crp = uitofp nneg <4 x i32> %step.add.2 to <4 x double>
  %i.crq = uitofp nneg <4 x i32> %step.add.3 to <4 x double>
  %i.crr = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %index2032 ; 5 uses
  %i.crs = getelementptr inbounds nuw i8, ptr %i.crr, i64 16
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crr, i64 32 ; 2 uses
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crr, i64 48
  %wide.load2034 = load <4 x float>, ptr %i.crr, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %wide.load2035 = load <4 x float>, ptr %i.crs, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %wide.load2036 = load <4 x float>, ptr %i.crt, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %wide.load2037 = load <4 x float>, ptr %i.cru, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.crv = fpext <4 x float> %wide.load2034 to <4 x double>
  %i.crw = fpext <4 x float> %wide.load2035 to <4 x double>
  %i.crx = fpext <4 x float> %wide.load2036 to <4 x double>
  %i.cry = fpext <4 x float> %wide.load2037 to <4 x double>
  %i.crz = fneg <4 x double> %i.crn
  %i.csa = fneg <4 x double> %i.cro
  %i.csb = fneg <4 x double> %i.crp
  %i.csc = fneg <4 x double> %i.crq
  %i.csd = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.crz, <4 x double> %broadcast.splat2030, <4 x double> %i.crv)
  %i.cse = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.csa, <4 x double> %broadcast.splat2030, <4 x double> %i.crw)
  %i.csf = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.csb, <4 x double> %broadcast.splat2030, <4 x double> %i.crx)
  %i.csg = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.csc, <4 x double> %broadcast.splat2030, <4 x double> %i.cry)
  %58 = shufflevector <4 x double> %i.csd, <4 x double> %i.cse, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %59 = fptrunc <8 x double> %58 to <8 x float>
  store <8 x float> %59, ptr %i.crr, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %60 = shufflevector <4 x double> %i.csf, <4 x double> %i.csg, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %61 = fptrunc <8 x double> %60 to <8 x float>
  store <8 x float> %61, ptr %i.crt, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.csh = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %index2032
  %i.csi = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %index2032
  %i.csj = getelementptr inbounds nuw i8, ptr %i.csi, i64 32
  %i.csk = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %index2032
  %i.csl = getelementptr inbounds nuw i8, ptr %i.csk, i64 64
  %i.csm = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %index2032
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 96
  store <8 x float> zeroinitializer, ptr %i.csh, align 4, !tbaa !54, !alias.scope !309
  store <8 x float> zeroinitializer, ptr %i.csj, align 4, !tbaa !54, !alias.scope !309
  store <8 x float> zeroinitializer, ptr %i.csl, align 4, !tbaa !54, !alias.scope !309
  store <8 x float> zeroinitializer, ptr %i.csn, align 4, !tbaa !54, !alias.scope !309
  %index.next2038 = add nuw i64 %index2032, 16    ; 2 uses
  %vec.ind.next2039 = add <4 x i32> %vec.ind2033, splat (i32 16)
  %i.cso = icmp eq i64 %index.next2038, %n.vec2028
  br i1 %i.cso, label %middle.block2040, label %vector.body2031, !llvm.loop !144

middle.block2040:                                 ; preds = %vector.body2031
  br i1 %cmp.n2041, label %._crit_edge.us.us.i.i499, label %vec.epilog.iter.check2045

vec.epilog.iter.check2045:                        ; preds = %middle.block2040
  br i1 %min.epilog.iters.check2046, label %vec.epilog.scalar.ph2044.preheader, label %vec.epilog.ph2047, !prof !72

vec.epilog.ph2047:                                ; preds = %vector.main.loop.iter.check2025, %vec.epilog.iter.check2045
  %vec.epilog.resume.val2042 = phi i64 [ %n.vec2028, %vec.epilog.iter.check2045 ], [ 0, %vector.main.loop.iter.check2025 ] ; 2 uses
  %broadcast.splatinsert2049 = insertelement <4 x double> poison, double %i.crj, i64 0
  %broadcast.splat2050 = shufflevector <4 x double> %broadcast.splatinsert2049, <4 x double> poison, <4 x i32> zeroinitializer
  %i.csp = trunc nuw nsw i64 %vec.epilog.resume.val2042 to i32
  %broadcast.splatinsert2051 = insertelement <4 x i32> poison, i32 %i.csp, i64 0
  %broadcast.splat2052 = shufflevector <4 x i32> %broadcast.splatinsert2051, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat2052, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body2053

vec.epilog.vector.body2053:                       ; preds = %vec.epilog.vector.body2053, %vec.epilog.ph2047
  %index2054 = phi i64 [ %vec.epilog.resume.val2042, %vec.epilog.ph2047 ], [ %index.next2057, %vec.epilog.vector.body2053 ] ; 3 uses
  %vec.ind2055 = phi <4 x i32> [ %induction, %vec.epilog.ph2047 ], [ %vec.ind.next2058, %vec.epilog.vector.body2053 ] ; 2 uses
  %i.csq = uitofp nneg <4 x i32> %vec.ind2055 to <4 x double>
  %i.csr = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %index2054 ; 2 uses
  %wide.load2056 = load <4 x float>, ptr %i.csr, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.css = fpext <4 x float> %wide.load2056 to <4 x double>
  %i.cst = fneg <4 x double> %i.csq
  %i.csu = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.cst, <4 x double> %broadcast.splat2050, <4 x double> %i.css)
  %i.csv = fptrunc <4 x double> %i.csu to <4 x float>
  store <4 x float> %i.csv, ptr %i.csr, align 4, !tbaa !54, !alias.scope !308, !noalias !309
  %i.csw = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %index2054
  store <8 x float> zeroinitializer, ptr %i.csw, align 4, !tbaa !54, !alias.scope !309
  %index.next2057 = add nuw i64 %index2054, 4     ; 2 uses
  %vec.ind.next2058 = add <4 x i32> %vec.ind2055, splat (i32 4)
  %i.csx = icmp eq i64 %index.next2057, %n.vec2048
  br i1 %i.csx, label %vec.epilog.middle.block2059, label %vec.epilog.vector.body2053, !llvm.loop !145

vec.epilog.middle.block2059:                      ; preds = %vec.epilog.vector.body2053
  br i1 %cmp.n2060, label %._crit_edge.us.us.i.i499, label %vec.epilog.scalar.ph2044.preheader

vec.epilog.scalar.ph2044.preheader:               ; preds = %iter.check2043, %vector.memcheck, %vec.epilog.iter.check2045, %vec.epilog.middle.block2059
  %indvars.iv57.i.i.ph = phi i64 [ 0, %iter.check2043 ], [ 0, %vector.memcheck ], [ %n.vec2028, %vec.epilog.iter.check2045 ], [ %n.vec2048, %vec.epilog.middle.block2059 ] ; 3 uses
  br i1 %lcmp.mod2396.not, label %vec.epilog.scalar.ph2044.prol.loopexit, label %vec.epilog.scalar.ph2044.prol

vec.epilog.scalar.ph2044.prol:                    ; preds = %vec.epilog.scalar.ph2044.preheader, %vec.epilog.scalar.ph2044.prol
  %indvars.iv57.i.i.prol = phi i64 [ %indvars.iv.next58.i.i.prol, %vec.epilog.scalar.ph2044.prol ], [ %indvars.iv57.i.i.ph, %vec.epilog.scalar.ph2044.preheader ] ; 4 uses
  %prol.iter2397 = phi i64 [ %prol.iter2397.next, %vec.epilog.scalar.ph2044.prol ], [ 0, %vec.epilog.scalar.ph2044.preheader ]
  %i.csy = trunc nuw nsw i64 %indvars.iv57.i.i.prol to i32
  %i.csz = uitofp nneg i32 %i.csy to double
  %i.cta = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %indvars.iv57.i.i.prol ; 2 uses
  %i.ctb = load float, ptr %i.cta, align 4, !tbaa !54
  %i.ctc = fpext float %i.ctb to double
  %i.ctd = fneg double %i.csz
  %i.cte = call double @llvm.fmuladd.f64(double %i.ctd, double %i.crj, double %i.ctc)
  %i.ctf = fptrunc double %i.cte to float
  store float %i.ctf, ptr %i.cta, align 4, !tbaa !54
  %i.ctg = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %indvars.iv57.i.i.prol
  store <2 x float> zeroinitializer, ptr %i.ctg, align 4, !tbaa !54
  %indvars.iv.next58.i.i.prol = add nuw nsw i64 %indvars.iv57.i.i.prol, 1 ; 2 uses
  %prol.iter2397.next = add i64 %prol.iter2397, 1 ; 2 uses
  %prol.iter2397.cmp.not = icmp eq i64 %prol.iter2397.next, %xtraiter2395
  br i1 %prol.iter2397.cmp.not, label %vec.epilog.scalar.ph2044.prol.loopexit, label %vec.epilog.scalar.ph2044.prol, !llvm.loop !146

vec.epilog.scalar.ph2044.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2044.prol, %vec.epilog.scalar.ph2044.preheader
  %indvars.iv57.i.i.unr = phi i64 [ %indvars.iv57.i.i.ph, %vec.epilog.scalar.ph2044.preheader ], [ %indvars.iv.next58.i.i.prol, %vec.epilog.scalar.ph2044.prol ]
  %i.cth = sub nsw i64 %indvars.iv57.i.i.ph, %wide.trip.count60.i.i
  %i.cti = icmp ugt i64 %i.cth, -4
  br i1 %i.cti, label %._crit_edge.us.us.i.i499, label %vec.epilog.scalar.ph2044

vec.epilog.scalar.ph2044:                         ; preds = %vec.epilog.scalar.ph2044.prol.loopexit, %vec.epilog.scalar.ph2044
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i.3, %vec.epilog.scalar.ph2044 ], [ %indvars.iv57.i.i.unr, %vec.epilog.scalar.ph2044.prol.loopexit ] ; 7 uses
  %i.ctj = trunc nuw nsw i64 %indvars.iv57.i.i to i32
  %i.ctk = uitofp nneg i32 %i.ctj to double
  %i.ctl = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %indvars.iv57.i.i ; 2 uses
  %i.ctm = load float, ptr %i.ctl, align 4, !tbaa !54
  %i.ctn = fpext float %i.ctm to double
  %i.cto = fneg double %i.ctk
  %i.ctp = call double @llvm.fmuladd.f64(double %i.cto, double %i.crj, double %i.ctn)
  %i.ctq = fptrunc double %i.ctp to float
  store float %i.ctq, ptr %i.ctl, align 4, !tbaa !54
  %i.ctr = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %indvars.iv57.i.i
  store <2 x float> zeroinitializer, ptr %i.ctr, align 4, !tbaa !54
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 3 uses
  %i.cts = trunc nuw nsw i64 %indvars.iv.next58.i.i to i32
  %i.ctt = uitofp nneg i32 %i.cts to double
  %i.ctu = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %indvars.iv.next58.i.i ; 2 uses
  %i.ctv = load float, ptr %i.ctu, align 4, !tbaa !54
  %i.ctw = fpext float %i.ctv to double
  %i.ctx = fneg double %i.ctt
  %i.cty = call double @llvm.fmuladd.f64(double %i.ctx, double %i.crj, double %i.ctw)
  %i.ctz = fptrunc double %i.cty to float
  store float %i.ctz, ptr %i.ctu, align 4, !tbaa !54
  %i.cua = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %indvars.iv.next58.i.i
  store <2 x float> zeroinitializer, ptr %i.cua, align 4, !tbaa !54
  %indvars.iv.next58.i.i.1 = add nuw nsw i64 %indvars.iv57.i.i, 2 ; 3 uses
  %i.cub = trunc nuw nsw i64 %indvars.iv.next58.i.i.1 to i32
  %i.cuc = uitofp nneg i32 %i.cub to double
  %i.cud = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %indvars.iv.next58.i.i.1 ; 2 uses
  %i.cue = load float, ptr %i.cud, align 4, !tbaa !54
  %i.cuf = fpext float %i.cue to double
  %i.cug = fneg double %i.cuc
  %i.cuh = call double @llvm.fmuladd.f64(double %i.cug, double %i.crj, double %i.cuf)
  %i.cui = fptrunc double %i.cuh to float
  store float %i.cui, ptr %i.cud, align 4, !tbaa !54
  %i.cuj = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %indvars.iv.next58.i.i.1
  store <2 x float> zeroinitializer, ptr %i.cuj, align 4, !tbaa !54
  %indvars.iv.next58.i.i.2 = add nuw nsw i64 %indvars.iv57.i.i, 3 ; 3 uses
  %i.cuk = trunc nuw nsw i64 %indvars.iv.next58.i.i.2 to i32
  %i.cul = uitofp nneg i32 %i.cuk to double
  %i.cum = getelementptr inbounds nuw [4 x i8], ptr %i.crk, i64 %indvars.iv.next58.i.i.2 ; 2 uses
  %i.cun = load float, ptr %i.cum, align 4, !tbaa !54
  %i.cuo = fpext float %i.cun to double
  %i.cup = fneg double %i.cul
  %i.cuq = call double @llvm.fmuladd.f64(double %i.cup, double %i.crj, double %i.cuo)
  %i.cur = fptrunc double %i.cuq to float
  store float %i.cur, ptr %i.cum, align 4, !tbaa !54
  %i.cus = getelementptr inbounds nuw [8 x i8], ptr %i.crm, i64 %indvars.iv.next58.i.i.2
  store <2 x float> zeroinitializer, ptr %i.cus, align 4, !tbaa !54
  %indvars.iv.next58.i.i.3 = add nuw nsw i64 %indvars.iv57.i.i, 4 ; 2 uses
  %exitcond61.not.i.i.3 = icmp eq i64 %indvars.iv.next58.i.i.3, %wide.trip.count60.i.i
  br i1 %exitcond61.not.i.i.3, label %._crit_edge.us.us.i.i499, label %vec.epilog.scalar.ph2044, !llvm.loop !147

._crit_edge.us.us.i.i499:                         ; preds = %vec.epilog.scalar.ph2044.prol.loopexit, %vec.epilog.scalar.ph2044, %vec.epilog.middle.block2059, %middle.block2040
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 2 uses
  %exitcond66.not.i.i = icmp eq i64 %indvars.iv.next63.i.i, %wide.trip.count55.i.i
  br i1 %exitcond66.not.i.i, label %._crit_edge39.us.i.i, label %iter.check2043, !llvm.loop !148

._crit_edge39.us.i.i:                             ; preds = %._crit_edge.us45.i.i, %._crit_edge.us.us.i.i499, %.lr.ph38.split.us.us.i.i
  %i.cut = phi i32 [ %i.cmv, %._crit_edge.us.us.i.i499 ], [ %i.cmv, %.lr.ph38.split.us.us.i.i ], [ %i.cnl, %._crit_edge.us45.i.i ]
  %i.cuu = phi i32 [ %i.cmv, %._crit_edge.us.us.i.i499 ], [ %i.cmv, %.lr.ph38.split.us.us.i.i ], [ %i.cnm, %._crit_edge.us45.i.i ]
  invoke fastcc void @_ZL13calc_averagesiP10enerdata_tii(i32 noundef %i.cml, ptr noundef nonnull %36, i32 noundef %i.cmo, i32 noundef %i.cmp)
          to label %.noexc505 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc505:                                        ; preds = %._crit_edge39.us.i.i
  %i.cuv = add nuw nsw i32 %.040.us.i.i, 1        ; 2 uses
  %exitcond67.not.i.i = icmp eq i32 %i.cuv, 5
  br i1 %exitcond67.not.i.i, label %_ZL12remove_driftiiifP10enerdata_t.exit.i, label %.preheader.us.i.i, !llvm.loop !149

.lr.ph38.split.us.split.us.i.i:                   ; preds = %.lr.ph38.split.us.us.i.i
  %wide.trip.count60.i.i = zext nneg i32 %i.cmv to i64 ; 10 uses
  %i.cuw = shl nuw nsw i64 %wide.trip.count60.i.i, 2
  %i.cux = shl nuw nsw i64 %wide.trip.count60.i.i, 3
  %min.iters.check2024 = icmp ult i32 %i.cmv, 4
  %min.iters.check2026 = icmp ult i32 %i.cmv, 16
  %i.cuy = and i64 %wide.trip.count60.i.i, 12
  %n.vec2028 = and i64 %wide.trip.count60.i.i, 2147483632 ; 4 uses
  %cmp.n2041 = icmp eq i64 %n.vec2028, %wide.trip.count60.i.i
  %min.epilog.iters.check2046 = icmp eq i64 %i.cuy, 0
  %n.vec2048 = and i64 %wide.trip.count60.i.i, 2147483644 ; 3 uses
  %cmp.n2060 = icmp eq i64 %n.vec2048, %wide.trip.count60.i.i
  %xtraiter2395 = and i64 %wide.trip.count60.i.i, 3 ; 2 uses
  %lcmp.mod2396.not = icmp eq i64 %xtraiter2395, 0
  br label %iter.check2043

_ZL12remove_driftiiifP10enerdata_t.exit.i:        ; preds = %.noexc505, %bb.nm
  %i.cuz = icmp sgt i32 %i.cml, 0
  br i1 %i.cuz, label %.lr.ph.us.preheader.i, label %.split233.us.i

.lr.ph.us.preheader.i:                            ; preds = %_ZL12remove_driftiiifP10enerdata_t.exit.i
  %wide.trip.count.i490 = zext nneg i32 %i.cml to i64 ; 4 uses
  br label %bb.nq

bb.nq:                                            ; preds = %bb.nr, %.lr.ph.us.preheader.i
  %indvars.iv.i491 = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i492, %bb.nr ] ; 3 uses
  %i.cva = getelementptr inbounds nuw [32 x i8], ptr %i.cmn, i64 %indvars.iv.i491
  %i.cvb = load ptr, ptr %i.cva, align 8, !tbaa !23
  %i.cvc = invoke noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.cvb, ptr noundef nonnull @.str.116)
          to label %.noexc506 unwind label %.loopexit.split-lp711.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc506:                                        ; preds = %bb.nq
  %.not.us.i = icmp eq i32 %i.cvc, 0
  br i1 %.not.us.i, label %.critedge.us.split.loop.exit267.i, label %bb.nr

bb.nr:                                            ; preds = %.noexc506
  %indvars.iv.next.i492 = add nuw nsw i64 %indvars.iv.i491, 1 ; 2 uses
  %exitcond.not.i493 = icmp eq i64 %indvars.iv.next.i492, %wide.trip.count.i490
  br i1 %exitcond.not.i493, label %.critedge.us.i, label %bb.nq, !llvm.loop !150

.critedge.us.split.loop.exit267.i:                ; preds = %.noexc506
  %i.cvd = trunc nuw nsw i64 %indvars.iv.i491 to i32
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.nr, %.critedge.us.split.loop.exit267.i
  %storemerge.lcssa.us.i = phi i32 [ %i.cvd, %.critedge.us.split.loop.exit267.i ], [ %i.cml, %bb.nr ] ; 2 uses
  br label %bb.ns

bb.ns:                                            ; preds = %bb.nt, %.critedge.us.i
end_hunk_0
