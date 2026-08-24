Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/select3dobj?download=true
inline.NumInlined: 1420
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:._crit_edge.i.i
  %i.aqs = select i1 %i.aqr, i32 %.sroa.gep911.val, i32 %.val1000 ; 2 uses
  %.not.i696 = icmp eq i32 %i.aqg, 1
  br i1 %.not.i696, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw, %.thread.i691
  %i.aqt = phi i32 [ %i.aqq, %.thread.i691 ], [ %i.aqs, %bb.kw ]
  %i.aqu = icmp sgt i32 %i.aqg, -1
  %i.aqv = zext i1 %i.aqu to i32
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kw, %bb.kx
  %i.aqw = phi i32 [ %i.aqt, %bb.kx ], [ %i.aqs, %bb.kw ]
  %i.aqx = phi i32 [ %i.aqv, %bb.kx ], [ %.val1000, %bb.kw ]
  %.sroa.2.0.insert.ext.i692 = zext i32 %i.aqx to i64
  %.sroa.2.0.insert.shift.i693 = shl nuw i64 %.sroa.2.0.insert.ext.i692, 32
  %.sroa.0.0.insert.ext.i694 = zext i32 %i.aqw to i64
  %.sroa.0.0.insert.insert.i695 = or disjoint i64 %.sroa.2.0.insert.shift.i693, %.sroa.0.0.insert.ext.i694
  %i.aqy = load i32, ptr %148, align 8, !tbaa !64
  %i.aqz = and i32 %i.aqy, 4095
  invoke void @_ZN2cv3Mat5zerosENS_5Size_IiEEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %194, i64 %.sroa.0.0.insert.insert.i695, i32 noundef %i.aqz)
          to label %bb.kz unwind label %.loopexit

bb.kz:                                            ; preds = %bb.ky
  %i.ara = load ptr, ptr %194, align 8, !tbaa !112 ; 2 uses
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !118
  %i.arc = getelementptr inbounds nuw i8, ptr %i.arb, i64 24
  %i.ard = load ptr, ptr %i.arc, align 8
  invoke void %i.ard(ptr noundef nonnull align 8 dereferenceable(8) %i.ara, ptr noundef nonnull align 8 dereferenceable(688) %194, ptr noundef nonnull align 8 dereferenceable(208) %150, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit702 unwind label %bb.of, !inline_history !120

_ZN2cv3MataSERKNS_7MatExprE.exit702:              ; preds = %bb.kz
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.afp) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.afq) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.afr) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #23
  %or.cond = select i1 %i.aot, i1 %.0159, i1 false
  br i1 %or.cond, label %bb.la, label %._crit_edge.i.i769

bb.la:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit702
  %i.are = load ptr, ptr %158, align 8, !tbaa !132
  %i.arf = load ptr, ptr %i.wc, align 8, !tbaa !132
  %i.arg = icmp eq ptr %i.are, %i.arf
  br i1 %i.arg, label %._crit_edge.i.i703, label %.thread

._crit_edge.i.i703:                               ; preds = %bb.la
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #23
  store ptr %i.afs, ptr %195, align 8, !tbaa !9
  store i32 2003134806, ptr %i.afs, align 8
  store i64 4, ptr %i.aft, align 8, !tbaa !13
  store i8 0, ptr %i.aju, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #23
  store ptr %i.afu, ptr %196, align 8, !tbaa !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.afu, ptr noundef nonnull align 1 dereferenceable(15) @.str.22, i64 15, i1 false)
  store i64 15, ptr %i.afv, align 8, !tbaa !13
  store i8 0, ptr %i.ajv, align 1, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #23
  store <4 x i32> <i32 0, i32 0, i32 -1, i32 0>, ptr %46, align 16, !tbaa !49
  invoke void @_ZN2cv16setMouseCallbackERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPFviiiiPvES8_(ptr noundef nonnull align 8 dereferenceable(32) %195, ptr noundef nonnull @_ZL7onMouseiiiiPv, ptr noundef nonnull %46)
          to label %.noexc719.a unwind label %bb.og

.noexc719.a:                                      ; preds = %._crit_edge.i.i703
  %i.arh = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #28
          to label %.noexc720 unwind label %bb.og ; 7 uses

.noexc720:                                        ; preds = %.noexc719.a
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arh, i64 96 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %i.arh, i8 0, i64 96, i1 false), !tbaa !91
  %i.arj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %bb.lb unwind label %.thread347.i ; 13 uses

bb.lb:                                            ; preds = %.noexc720
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.arj, i8 0, i64 32, i1 false), !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #23
  %i.ark = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #28
          to label %bb.lc unwind label %.thread356.i ; 3 uses

bb.lc:                                            ; preds = %bb.lb
  store ptr %i.ark, ptr %47, align 8, !tbaa !130
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ark, i64 64 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.ark, i8 0, i64 64, i1 false), !tbaa !91
  store ptr %i.arl, ptr %i.afz, align 8, !tbaa !134
  store ptr %i.arl, ptr %i.afy, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %48) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %49) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %50) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %51) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #23
  store i32 0, ptr %i.aga, align 8, !tbaa !61
  store i32 0, ptr %i.agb, align 4, !tbaa !63
  store i32 16842752, ptr %52, align 8, !tbaa !109
  store ptr %180, ptr %i.agc, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  store i64 0, ptr %i.age, align 8
  store i32 33619968, ptr %53, align 8, !tbaa !109
  store ptr %48, ptr %i.agd, align 8, !tbaa !111
  %i.arm = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.ld unwind label %bb.lm

bb.ld:                                            ; preds = %bb.lc
  invoke void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %52, ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(24) %i.arm)
          to label %bb.le unwind label %bb.lm

bb.le:                                            ; preds = %bb.ld
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  %i.arn = load ptr, ptr %i.wc, align 8, !tbaa !135 ; 6 uses
  %i.aro = load ptr, ptr %158, align 8, !tbaa !137 ; 6 uses
  %i.arp = ptrtoint ptr %i.arn to i64             ; 2 uses
  %i.arq = ptrtoint ptr %i.aro to i64             ; 2 uses
  %i.arr = sub i64 %i.arp, %i.arq                 ; 5 uses
  %i.ars = sdiv exact i64 %i.arr, 12              ; 5 uses
  %i.art = icmp ult i64 %i.ars, 4
  br i1 %i.art, label %bb.lf, label %bb.lh

bb.lf:                                            ; preds = %bb.le
  %i.aru = sub nuw nsw i64 4, %i.ars              ; 3 uses
  %i.arv = load ptr, ptr %i.agf, align 8, !tbaa !138
  %i.arw = ptrtoint ptr %i.arv to i64
  %i.arx = sub i64 %i.arw, %i.arp
  %i.ary = sdiv exact i64 %i.arx, 12              ; 2 uses
  %i.arz = sub nuw nsw i64 768614336404564650, %i.ars
  %i.asa = icmp ule i64 %i.ary, %i.arz
  call void @llvm.assume(i1 %i.asa)
  %.not28.i = icmp ult i64 %i.ary, %i.aru
  br i1 %.not28.i, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i: ; preds = %bb.lf
  %i.asb = sub i64 48, %i.arr                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.arn, i8 0, i64 %i.asb, i1 false), !tbaa !91
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.arn, i64 %i.asb
  store ptr %scevgep.i.i.i.i, ptr %i.wc, align 8, !tbaa !135
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.lf
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ars, i64 %i.aru)
  %i.asc = add nuw nsw i64 %.sroa.speculated.i.i, %i.ars ; 2 uses
  %i.asd = mul nuw nsw i64 %i.asc, 12
  %i.ase = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.asd) #28
          to label %.noexc872 unwind label %bb.ln ; 4 uses

.noexc872:                                        ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 %i.arr ; 2 uses
  %i.asg = sub i64 48, %i.arr
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.asf, i8 0, i64 %i.asg, i1 false), !tbaa !91
  %.not10.i.i.i.i = icmp eq ptr %i.aro, %i.arn
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc872, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.asi, %.lr.ph.i.i.i.i ], [ %i.ase, %.noexc872 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ash, %.lr.ph.i.i.i.i ], [ %i.aro, %.noexc872 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !99, !alias.scope !139
  %i.ash = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.asi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.ash, %i.arn
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !104

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc872
  %.not.i36.i = icmp eq ptr %i.aro, null
  br i1 %.not.i36.i, label %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, label %bb.lg

bb.lg:                                            ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.asj = load ptr, ptr %i.agf, align 8, !tbaa !138
  %i.ask = ptrtoint ptr %i.asj to i64
  %i.asl = sub i64 %i.ask, %i.arq
  call void @_ZdlPvm(ptr noundef nonnull %i.aro, i64 noundef %i.asl) #25
  br label %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i

_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %bb.lg, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.ase, ptr %158, align 8, !tbaa !137
  %i.asm = getelementptr inbounds nuw [12 x i8], ptr %i.asf, i64 %i.aru
  store ptr %i.asm, ptr %i.wc, align 8, !tbaa !135
  %i.asn = getelementptr inbounds nuw [12 x i8], ptr %i.ase, i64 %i.asc
  store ptr %i.asn, ptr %i.agf, align 8, !tbaa !138
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i

bb.lh:                                            ; preds = %bb.le
  %.not363.i = icmp eq i64 %i.arr, 48
  br i1 %.not363.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.aso = getelementptr inbounds nuw i8, ptr %i.aro, i64 48 ; 2 uses
  %.not.i.i.i711 = icmp eq ptr %i.arn, %i.aso
  br i1 %.not.i.i.i711, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i, label %_ZSt8_DestroyIPN2cv7Point3_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i712

_ZSt8_DestroyIPN2cv7Point3_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i712: ; preds = %bb.li
  store ptr %i.aso, ptr %i.wc, align 8, !tbaa !135
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i: ; preds = %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i, %_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i, %_ZSt8_DestroyIPN2cv7Point3_IfEES2_EvT_S4_RSaIT0_E.exit.i.i.i712, %bb.li, %bb.lh
  %i.asp = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  br label %bb.lj

bb.lj:                                            ; preds = %.backedge, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i
  %.sroa.22.0.i = phi ptr [ %i.ari, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i ], [ %.sroa.22.3.i, %.backedge ] ; 7 uses
  %.sroa.14.0.i = phi ptr [ %i.ari, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i ], [ %.sroa.14.2.i, %.backedge ] ; 9 uses
  %.sroa.0326.0.i = phi ptr [ %i.arh, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i ], [ %.sroa.0326.3.i, %.backedge ] ; 10 uses
  %.0147.i = phi i32 [ 0, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit.split.i ], [ %spec.select.i, %.backedge ] ; 16 uses
  %i.asq = load i32, ptr %i.afx, align 4, !tbaa !143
  %i.asr = trunc i32 %i.asq to i1
  %i.ass = load i32, ptr %i.afw, align 8, !tbaa !146 ; 2 uses
  %i.ast = icmp eq i32 %i.ass, 1
  %i.asu = icmp eq i32 %i.ass, 4
  %or.cond.i = or i1 %i.ast, %i.asu
  %or.cond4.i = select i1 %or.cond.i, i1 true, i1 %i.asr
  %i.asv = icmp slt i32 %.0147.i, 4
  %or.cond6.i = select i1 %or.cond4.i, i1 %i.asv, i1 false
  br i1 %or.cond6.i, label %bb.lk, label %bb.nj

bb.lk:                                            ; preds = %bb.lj
  %i.asw = load <2 x i32>, ptr %46, align 16, !tbaa !49
  %i.asx = sitofp <2 x i32> %i.asw to <2 x float> ; 6 uses
  %i.asy = icmp slt i32 %.0147.i, 2
  br i1 %i.asy, label %bb.ll, label %bb.lp

bb.ll:                                            ; preds = %bb.lk
  %212 = sext i32 %.0147.i to i64                 ; 2 uses
  %i.asz = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %212
  store <2 x float> %i.asx, ptr %i.asz, align 4
  br label %bb.md

.thread347.i:                                     ; preds = %.noexc720
  %i.ata = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit264.i

.thread356.i:                                     ; preds = %bb.lb
  %i.atb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.arj, i64 noundef 32) #25
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EED2Ev.exit264.i

bb.lm:                                            ; preds = %bb.ld, %bb.lc
  %i.atc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.ln:                                            ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.atd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.lo:                                            ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.ate = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.lp:                                            ; preds = %bb.lk
  %i.atf = ptrtoint ptr %.sroa.14.0.i to i64      ; 2 uses
  %i.atg = ptrtoint ptr %.sroa.0326.0.i to i64    ; 2 uses
  %i.ath = sub i64 %i.atf, %i.atg                 ; 4 uses
  %i.ati = sdiv exact i64 %i.ath, 12              ; 4 uses
  %i.atj = icmp eq ptr %.sroa.14.0.i, %.sroa.0326.0.i
  br i1 %i.atj, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.atk = sub nuw nsw i64 1, %i.ati
  %i.atl = ptrtoint ptr %.sroa.22.0.i to i64      ; 2 uses
  %i.atm = sub i64 %i.atl, %i.atf
  %i.atn = sdiv exact i64 %i.atm, 12              ; 2 uses
  %i.ato = icmp samesign ult i64 %i.ati, 768614336404564651
  call void @llvm.assume(i1 %i.ato)
  %i.atp = sub nuw nsw i64 768614336404564650, %i.ati
  %i.atq = icmp ule i64 %i.atn, %i.atp
  call void @llvm.assume(i1 %i.atq)
  %.not28.i.i = icmp ult i64 %i.atn, %i.atk
  br i1 %.not28.i.i, label %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i.i

_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i.i: ; preds = %bb.lq
  %i.atr = sub nuw nsw i64 12, %i.ath             ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %.sroa.14.0.i, i8 0, i64 %i.atr, i1 false), !tbaa !91
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %.sroa.14.0.i, i64 %i.atr
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit226.i

_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.lq
  %i.ats = invoke noalias noundef nonnull dereferenceable(12) ptr @_Znwm(i64 noundef 12) #28
          to label %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i.i unwind label %bb.lo ; 3 uses

_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i.i: ; preds = %_ZNKSt6vectorIN2cv7Point3_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 %i.ath ; 2 uses
  %i.atu = sub nuw nsw i64 12, %i.ath
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.att, i8 0, i64 %i.atu, i1 false), !tbaa !91
  %i.atv = sub i64 %i.atl, %i.atg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0326.0.i, i64 noundef %i.atv) #25
  %i.atw = getelementptr inbounds nuw i8, ptr %i.att, i64 12
  %i.atx = getelementptr inbounds nuw i8, ptr %i.ats, i64 12
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit226.i

bb.lr:                                            ; preds = %bb.lp
  %i.aty = icmp ugt i64 %i.ati, 1
  br i1 %i.aty, label %bb.ls, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit226.i

bb.ls:                                            ; preds = %bb.lr
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.0326.0.i, i64 12 ; 2 uses
  %.not.i.i223.i = icmp eq ptr %.sroa.14.0.i, %i.atz
  %spec.select361.i = select i1 %.not.i.i223.i, ptr %.sroa.14.0.i, ptr %i.atz
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit226.i

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit226.i: ; preds = %bb.ls, %bb.lr, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i.i, %_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i.i
  %.sroa.22.7.i = phi ptr [ %.sroa.22.0.i, %bb.lr ], [ %.sroa.22.0.i, %bb.ls ], [ %i.atx, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i.i ], [ %.sroa.22.0.i, %_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i.i ] ; 3 uses
  %.sroa.14.3.i = phi ptr [ %.sroa.14.0.i, %bb.lr ], [ %spec.select361.i, %bb.ls ], [ %i.atw, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i.i ], [ %scevgep.i.i.i.i.i, %_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i.i ] ; 4 uses
  %.sroa.0326.7.i = phi ptr [ %.sroa.0326.0.i, %bb.lr ], [ %.sroa.0326.0.i, %bb.ls ], [ %i.ats, %_ZNSt12_Vector_baseIN2cv7Point3_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i.i ], [ %.sroa.0326.0.i, %_ZSt27__uninitialized_default_n_aIPN2cv7Point3_IfEEmS2_ET_S4_T0_RSaIT1_E.exit.i.i ] ; 10 uses
  %i.aua = icmp eq i32 %.0147.i, 3
  br i1 %i.aua, label %.preheader.preheader.i718, label %.thread.i713

.preheader.preheader.i718:                        ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit226.i
  %i.aub = load <4 x float>, ptr %i.arj, align 4, !tbaa !91 ; 2 uses
  %i.auc = shufflevector <2 x float> %i.asx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aud = shufflevector <4 x float> %i.aub, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.aue = fsub <2 x float> %i.auc, %i.aud
  %i.auf = shufflevector <2 x float> %i.asx, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.aug = shufflevector <4 x float> %i.aub, <4 x float> poison, <2 x i32> <i32 3, i32 1>
  %i.auh = fsub <2 x float> %i.auf, %i.aug
  %i.aui = fpext <2 x float> %i.aue to <2 x double> ; 2 uses
  %i.auj = fpext <2 x float> %i.auh to <2 x double> ; 2 uses
  %i.auk = fmul <2 x double> %i.auj, %i.auj
  %i.aul = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aui, <2 x double> %i.aui, <2 x double> %i.auk)
  %i.aum = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aul) ; 2 uses
  %i.aun = extractelement <2 x double> %i.aum, i64 0
  %i.auo = extractelement <2 x double> %i.aum, i64 1
  %i.aup = fcmp olt double %i.aun, %i.auo
  %i.auq = zext i1 %i.aup to i64                  ; 2 uses
  %i.aur = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %i.auq
  %i.aus = load <2 x float>, ptr %i.asp, align 4, !tbaa !91 ; 2 uses
  %i.aut = load <2 x float>, ptr %i.aur, align 4, !tbaa !91 ; 2 uses
  %i.auu = shufflevector <2 x float> %i.aus, <2 x float> %i.aut, <2 x i32> <i32 0, i32 2>
  %i.auv = fsub <2 x float> %i.auc, %i.auu
  %i.auw = shufflevector <2 x float> %i.aus, <2 x float> %i.aut, <2 x i32> <i32 1, i32 3>
  %i.aux = fsub <2 x float> %i.auf, %i.auw
  %i.auy = fpext <2 x float> %i.auv to <2 x double> ; 2 uses
  %i.auz = fpext <2 x float> %i.aux to <2 x double> ; 2 uses
  %i.ava = fmul <2 x double> %i.auz, %i.auz
  %i.avb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.auy, <2 x double> %i.auy, <2 x double> %i.ava)
  %i.avc = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.avb) ; 2 uses
  %i.avd = extractelement <2 x double> %i.avc, i64 0
  %i.ave = extractelement <2 x double> %i.avc, i64 1
  %i.avf = fcmp olt double %i.avd, %i.ave
  %i.avg = select i1 %i.avf, i64 2, i64 %i.auq    ; 2 uses
  %i.avh = load ptr, ptr %158, align 8, !tbaa !137
  %i.avi = getelementptr inbounds nuw [12 x i8], ptr %i.avh, i64 %i.avg
  %i.avj = load <2 x float>, ptr %i.avi, align 4, !tbaa !91
  br label %bb.lt

.thread.i713:                                     ; preds = %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE6resizeEm.exit226.i
  %i.avk = load ptr, ptr %158, align 8, !tbaa !137 ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 12
  %i.avm = load float, ptr %i.avk, align 4, !tbaa !147
  %i.avn = load <2 x float>, ptr %i.avl, align 4, !tbaa !91 ; 3 uses
  %i.avo = extractelement <2 x float> %i.avn, i64 0
  %i.avp = fsub float %i.avo, %i.avm              ; 3 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avk, i64 4
  %i.avr = load float, ptr %i.avq, align 4, !tbaa !149
  %i.avs = extractelement <2 x float> %i.avn, i64 1
  %i.avt = fsub float %i.avs, %i.avr              ; 3 uses
  %i.avu = fmul float %i.avt, %i.avt
  %i.avv = call float @llvm.fmuladd.f32(float %i.avp, float %i.avp, float %i.avu)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.avv)
  %i.avw = fdiv float 1.000000e+00, %sqrt.i
  %i.avx = fneg float %i.avp
  %i.avy = insertelement <2 x float> poison, float %i.avt, i64 0
  %i.avz = insertelement <2 x float> %i.avy, float %i.avx, i64 1
  %i.awa = insertelement <2 x float> poison, float %i.avw, i64 0
  %i.awb = shufflevector <2 x float> %i.awa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.awc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avz, <2 x float> %i.awb, <2 x float> %i.avn)
  br label %bb.lt

bb.lt:                                            ; preds = %.thread.i713, %.preheader.preheader.i718
  %.sink.i714 = phi float [ 1.000000e+00, %.preheader.preheader.i718 ], [ 0.000000e+00, %.thread.i713 ]
  %.2156342.i = phi i64 [ %i.avg, %.preheader.preheader.i718 ], [ 1, %.thread.i713 ]
  %i.awd = phi <2 x float> [ %i.avj, %.preheader.preheader.i718 ], [ %i.awc, %.thread.i713 ]
  store <2 x float> %i.awd, ptr %.sroa.0326.7.i, align 4, !tbaa !91
  %.sroa.5291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0326.7.i, i64 8
  store float %.sink.i714, ptr %.sroa.5291.0..sroa_idx.i, align 4, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  store i32 1124024389, ptr %55, align 8, !tbaa !64
  store i32 1, ptr %i.agg, align 4, !tbaa !107
  store i32 1, ptr %i.agh, align 8, !tbaa !121
  %i.awe = ptrtoint ptr %.sroa.14.3.i to i64
  %i.awf = ptrtoint ptr %.sroa.0326.7.i to i64
  %i.awg = sub i64 %i.awe, %i.awf
  %i.awh = sdiv exact i64 %i.awg, 12
  %i.awi = trunc i64 %i.awh to i32
  store i32 %i.awi, ptr %i.agi, align 4, !tbaa !122
  store i32 153, ptr %i.agj, align 8, !tbaa !123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.agk, i8 0, i64 48, i1 false)
  invoke void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.ago, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %.noexc232.i unwind label %bb.lz

.noexc232.i:                                      ; preds = %bb.lt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.agq, i8 0, i64 72, i1 false), !tbaa !28
  %i.awj = load i32, ptr %i.agi, align 4, !tbaa !122 ; 2 uses
  store i32 %i.awj, ptr %i.agr, align 4, !tbaa !49
  store i64 12, ptr %i.agp, align 8, !tbaa !28
  %i.awk = icmp eq ptr %.sroa.0326.7.i, %.sroa.14.3.i
  br i1 %i.awk, label %bb.lv, label %bb.lu

bb.lu:                                            ; preds = %.noexc232.i
  store ptr %.sroa.0326.7.i, ptr %i.agk, align 8, !tbaa !108
  store ptr %.sroa.0326.7.i, ptr %i.agl, align 8, !tbaa !124
  %i.awl = sext i32 %i.awj to i64
  %i.awm = mul nsw i64 %i.awl, 12
  %i.awn = getelementptr inbounds nuw i8, ptr %.sroa.0326.7.i, i64 %i.awm ; 2 uses
  store ptr %i.awn, ptr %i.agm, align 8, !tbaa !125
  store ptr %i.awn, ptr %i.agn, align 8, !tbaa !126
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %.noexc232.i
  store i32 0, ptr %i.ags, align 8, !tbaa !61
  store i32 0, ptr %i.agt, align 4, !tbaa !63
  store i32 16842752, ptr %54, align 8, !tbaa !109
  store ptr %55, ptr %i.agu, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  store i32 0, ptr %i.agv, align 8, !tbaa !61
  store i32 0, ptr %i.agw, align 4, !tbaa !63
  store i32 16842752, ptr %56, align 8, !tbaa !109
  store ptr %180, ptr %i.agx, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  store i32 0, ptr %i.agy, align 8, !tbaa !61
  store i32 0, ptr %i.agz, align 4, !tbaa !63
  store i32 16842752, ptr %57, align 8, !tbaa !109
  store ptr %181, ptr %i.aha, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  store i32 0, ptr %i.ahb, align 8, !tbaa !61
  store i32 0, ptr %i.ahc, align 4, !tbaa !63
  store i32 16842752, ptr %58, align 8, !tbaa !109
  store ptr %142, ptr %i.ahd, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %60) #23
  store i32 0, ptr %i.ahe, align 8, !tbaa !61
  store i32 0, ptr %i.ahf, align 4, !tbaa !63
  store i32 16842752, ptr %59, align 8, !tbaa !109
  store ptr %60, ptr %i.ahg, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  store i64 0, ptr %i.ahi, align 8
  store i32 -2113732571, ptr %61, align 8, !tbaa !109
  store ptr %47, ptr %i.ahh, align 8, !tbaa !111
  %i.awo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.lw unwind label %bb.ma

bb.lw:                                            ; preds = %bb.lv
  invoke void @_ZN2cv13projectPointsERKNS_11_InputArrayES2_S2_S2_S2_RKNS_12_OutputArrayES5_d(ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %56, ptr noundef nonnull align 8 dereferenceable(24) %57, ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef nonnull align 8 dereferenceable(24) %i.awo, double noundef 0.000000e+00)
          to label %bb.lx unwind label %bb.ma

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %.2156342.i
  %i.awq = load ptr, ptr %47, align 8, !tbaa !130
  %i.awr = load <2 x i32>, ptr %i.awp, align 4    ; 3 uses
  %i.aws = bitcast <2 x i32> %i.awr to <2 x float> ; 4 uses
  %i.awt = load <2 x float>, ptr %i.awq, align 4
  %i.awu = fsub <2 x float> %i.awt, %i.aws        ; 5 uses
  %foldExtExtBinop = fsub <2 x float> %i.asx, %i.aws ; 2 uses
  %foldExtExtBinop3648 = fsub <2 x float> %i.asx, %i.aws ; 2 uses
  %i.awv = shufflevector <2 x float> %i.awu, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.aww = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.awv, <2 x i32> <i32 0, i32 3>
  %i.awx = fpext <2 x float> %i.aww to <2 x double> ; 2 uses
  %i.awy = shufflevector <2 x float> %i.awu, <2 x float> %foldExtExtBinop3648, <2 x i32> <i32 3, i32 1>
  %i.awz = fpext <2 x float> %i.awy to <2 x double> ; 2 uses
  %i.axa = fmul <2 x double> %i.awz, %i.awz
  %i.axb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.awx, <2 x double> %i.awx, <2 x double> %i.axa)
  %i.axc = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.axb)
  %i.axd = fptrunc <2 x double> %i.axc to <2 x float> ; 2 uses
  %i.axe = extractelement <2 x float> %i.axd, i64 0
  %i.axf = extractelement <2 x float> %i.axd, i64 1 ; 3 uses
  %i.axg = fmul float %i.axe, %i.axf
  %i.axh = fcmp olt float %i.axg, 1.000000e-03
  br i1 %i.axh, label %bb.ly, label %bb.mc

bb.ly:                                            ; preds = %bb.lx
  %i.axi = zext nneg i32 %.0147.i to i64          ; 2 uses
  %i.axj = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %i.axi ; 3 uses
  %i.axk = extractelement <2 x i32> %i.awr, i64 0
  store i32 %i.axk, ptr %i.axj, align 4
  %.sroa_idx285.i = getelementptr inbounds nuw i8, ptr %i.axj, i64 4
  %i.axl = extractelement <2 x i32> %i.awr, i64 1
  store i32 %i.axl, ptr %.sroa_idx285.i, align 4
  %.sroa.035.0.copyload.pre.i = load <2 x float>, ptr %i.axj, align 4
  br label %bb.md

bb.lz:                                            ; preds = %bb.lt
  %i.axm = landingpad { ptr, i32 }
          cleanup
  br label %bb.mb

bb.ma:                                            ; preds = %bb.lw, %bb.lv
  %i.axn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %55) #23
  br label %bb.mb

bb.mb:                                            ; preds = %bb.ma, %bb.lz
  %.pn163.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.axn, %bb.ma ], [ %i.axm, %bb.lz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #23
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.mc:                                            ; preds = %bb.lx
  %i.axo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop3650 = fmul <2 x float> %foldExtExtBinop3648, %i.awu
  %i.axp = extractelement <2 x float> %foldExtExtBinop3650, i64 1
  %i.axq = extractelement <2 x float> %i.awu, i64 0
  %i.axr = call noundef float @llvm.fmuladd.f32(float %i.axq, float %i.axo, float %i.axp)
  %i.axs = fmul float %i.axf, %i.axf
  %i.axt = fdiv float %i.axr, %i.axs              ; 2 uses
  %i.axu = insertelement <2 x float> poison, float %i.axt, i64 0
  %i.axv = shufflevector <2 x float> %i.axu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axw = fmul <2 x float> %i.awu, %i.axv
  %i.axx = fadd <2 x float> %i.axw, %i.aws        ; 2 uses
  %i.axy = zext nneg i32 %.0147.i to i64          ; 2 uses
  %i.axz = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %i.axy
  store <2 x float> %i.axx, ptr %i.axz, align 4
  %i.aya = fpext float %i.axt to double
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.ly, %bb.ll
  %.pre-phi.i = phi i64 [ %i.axi, %bb.ly ], [ %i.axy, %bb.mc ], [ %212, %bb.ll ] ; 4 uses
  %.sroa.035.0.copyload.i = phi <2 x float> [ %.sroa.035.0.copyload.pre.i, %bb.ly ], [ %i.axx, %bb.mc ], [ %i.asx, %bb.ll ]
  %.sroa.22.1.i = phi ptr [ %.sroa.22.7.i, %bb.ly ], [ %.sroa.22.7.i, %bb.mc ], [ %.sroa.22.0.i, %bb.ll ] ; 3 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.14.3.i, %bb.ly ], [ %.sroa.14.3.i, %bb.mc ], [ %.sroa.14.0.i, %bb.ll ]
  %.sroa.0326.1.i = phi ptr [ %.sroa.0326.7.i, %bb.ly ], [ %.sroa.0326.7.i, %bb.mc ], [ %.sroa.0326.0.i, %bb.ll ] ; 3 uses
  %.1152.i = phi double [ 0.000000e+00, %bb.ly ], [ %i.aya, %bb.mc ], [ 0.000000e+00, %bb.ll ]
  %i.ayb = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %.pre-phi.i
  %i.ayc = icmp sgt i32 %.0147.i, 2               ; 2 uses
  %i.ayd = select i1 %i.ayc, double %.1152.i, double 0.000000e+00 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  invoke void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %36, ptr noundef nonnull align 8 dereferenceable(208) %48)
          to label %.noexc245.i unwind label %bb.ni

.noexc245.i:                                      ; preds = %bb.md
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #23, !noalias !150
  store i64 9223372034707292160, ptr %34, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #23, !noalias !150
  store i32 2, ptr %35, align 4, !tbaa !153, !noalias !150
  store i32 3, ptr %i.ahj, align 4, !tbaa !155, !noalias !150
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %39, ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 4 dereferenceable(8) %34, ptr noundef nonnull align 4 dereferenceable(8) %35)
          to label %bb.me unwind label %bb.mn

bb.me:                                            ; preds = %.noexc245.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #23, !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #23, !noalias !150
  invoke void @_ZN2cvmlERKNS_3MatEd(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %38, ptr noundef nonnull align 8 dereferenceable(208) %39, double noundef %i.ayd)
          to label %bb.mf unwind label %bb.mo

bb.mf:                                            ; preds = %bb.me
  invoke void @_ZN2cvplERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %37, ptr noundef nonnull align 8 dereferenceable(688) %38, ptr noundef nonnull align 8 dereferenceable(208) %181)
          to label %bb.mg unwind label %bb.mp

bb.mg:                                            ; preds = %bb.mf
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23, !noalias !156
  store i64 9223372034707292160, ptr %32, align 8, !noalias !156
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23, !noalias !156
  store i32 2, ptr %33, align 4, !tbaa !153, !noalias !156
  store i32 3, ptr %i.ahk, align 4, !tbaa !155, !noalias !156
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5RangeES5_(ptr noundef nonnull align 8 dereferenceable(208) %40, ptr noundef nonnull align 8 dereferenceable(208) %36, ptr noundef nonnull align 4 dereferenceable(8) %32, ptr noundef nonnull align 4 dereferenceable(8) %33)
          to label %bb.mh unwind label %bb.mq

bb.mh:                                            ; preds = %bb.mg
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23, !noalias !156
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23, !noalias !156
  %i.aye = load ptr, ptr %37, align 8, !tbaa !112 ; 2 uses
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !118
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 24
  %i.ayh = load ptr, ptr %i.ayg, align 8
  invoke void %i.ayh(ptr noundef nonnull align 8 dereferenceable(8) %i.aye, ptr noundef nonnull align 8 dereferenceable(688) %37, ptr noundef nonnull align 8 dereferenceable(208) %40, i32 noundef -1)
          to label %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i unwind label %bb.mr, !inline_history !120

_ZN2cv3MataSERKNS_7MatExprE.exit.i.i:             ; preds = %bb.mh
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahl) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahm) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahn) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aho) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahp) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahq) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  invoke void @_ZN2cvmlERKNS_3MatES2_(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %44, ptr noundef nonnull align 8 dereferenceable(208) %142, ptr noundef nonnull align 8 dereferenceable(208) %36)
          to label %bb.mi unwind label %bb.mw

bb.mi:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i
  invoke void @_ZNK2cv7MatExpr3invEi(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %43, ptr noundef nonnull align 8 dereferenceable(688) %44, i32 noundef 0)
          to label %bb.mj unwind label %bb.mx

bb.mj:                                            ; preds = %bb.mi
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 3, ptr %i.c, align 4, !tbaa !49
  store i32 1, ptr %i.ahr, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.ayi = fpext <2 x float> %.sroa.035.0.copyload.i to <2 x double>
  store <2 x double> %i.ayi, ptr %i.d, align 16, !tbaa !50
  store double 1.000000e+00, ptr %i.ahs, align 16, !tbaa !50
  invoke void @_ZN2cv3MatC2IdEESt16initializer_listIiES2_IT_E(ptr noundef nonnull align 8 dereferenceable(208) %45, ptr nonnull %i.c, i64 2, ptr nonnull %i.d, i64 3)
          to label %_ZN2cv4Mat_IdEC2ESt16initializer_listIiES2_IdE.exit.i.i unwind label %bb.my

_ZN2cv4Mat_IdEC2ESt16initializer_listIiES2_IdE.exit.i.i: ; preds = %bb.mj
  invoke void @_ZN2cvmlERKNS_7MatExprERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %42, ptr noundef nonnull align 8 dereferenceable(688) %43, ptr noundef nonnull align 8 dereferenceable(208) %45)
          to label %bb.mk unwind label %bb.mz

bb.mk:                                            ; preds = %_ZN2cv4Mat_IdEC2ESt16initializer_listIiES2_IdE.exit.i.i
  call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %41) #23
  %i.ayj = load i32, ptr %41, align 8, !tbaa !64
  %i.ayk = and i32 %i.ayj, -4096
  %i.ayl = or disjoint i32 %i.ayk, 6
  store i32 %i.ayl, ptr %41, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %31) #23
  %i.aym = load ptr, ptr %42, align 8, !tbaa !112, !noalias !159 ; 2 uses
  %i.ayn = load ptr, ptr %i.aym, align 8, !tbaa !118
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.ayn, i64 24
  %i.ayp = load ptr, ptr %i.ayo, align 8
  invoke void %i.ayp(ptr noundef nonnull align 8 dereferenceable(8) %i.aym, ptr noundef nonnull align 8 dereferenceable(688) %42, ptr noundef nonnull align 8 dereferenceable(208) %31, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i unwind label %bb.ml

bb.ml:                                            ; preds = %bb.mk
  %i.ayq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i:           ; preds = %bb.mk
  %i.ayr = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv4Mat_IdEaSEONS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %41, ptr noundef nonnull align 8 dereferenceable(208) %31)
          to label %bb.nf unwind label %bb.mm     ; 0 uses

bb.mm:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i
  %i.ays = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.mm, %bb.ml
  %.pn.i.i.i = phi { ptr, i32 } [ %i.ays, %bb.mm ], [ %i.ayq, %bb.ml ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #23
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %42) #23
  br label %bb.na

bb.mn:                                            ; preds = %.noexc245.i
  %i.ayt = landingpad { ptr, i32 }
          cleanup
  br label %bb.mv

bb.mo:                                            ; preds = %bb.me
  %i.ayu = landingpad { ptr, i32 }
          cleanup
  br label %bb.mu

bb.mp:                                            ; preds = %bb.mf
  %i.ayv = landingpad { ptr, i32 }
          cleanup
  br label %bb.mt

bb.mq:                                            ; preds = %bb.mg
  %i.ayw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ms

bb.mr:                                            ; preds = %bb.mh
  %i.ayx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %40) #23
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %bb.mq
  %.pn.i.i = phi { ptr, i32 } [ %i.ayx, %bb.mr ], [ %i.ayw, %bb.mq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #23
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %37) #23
  br label %bb.mt

bb.mt:                                            ; preds = %bb.ms, %bb.mp
  %.pn.pn.i.i = phi { ptr, i32 } [ %.pn.i.i, %bb.ms ], [ %i.ayv, %bb.mp ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %38) #23
  br label %bb.mu

bb.mu:                                            ; preds = %bb.mt, %bb.mo
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.mt ], [ %i.ayu, %bb.mo ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %39) #23
  br label %bb.mv

bb.mv:                                            ; preds = %bb.mu, %bb.mn
  %.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %bb.mu ], [ %i.ayt, %bb.mn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %bb.ne

bb.mw:                                            ; preds = %_ZN2cv3MataSERKNS_7MatExprE.exit.i.i
  %i.ayy = landingpad { ptr, i32 }
          cleanup
  br label %bb.nd

bb.mx:                                            ; preds = %bb.mi
  %i.ayz = landingpad { ptr, i32 }
          cleanup
  br label %bb.nc

bb.my:                                            ; preds = %bb.mj
  %i.aza = landingpad { ptr, i32 }
          cleanup
  br label %bb.nb

bb.mz:                                            ; preds = %_ZN2cv4Mat_IdEC2ESt16initializer_listIiES2_IdE.exit.i.i
  %i.azb = landingpad { ptr, i32 }
          cleanup
  br label %bb.na

bb.na:                                            ; preds = %bb.mz, %.body.i.i.i
  %.pn26.i.i = phi { ptr, i32 } [ %.pn.i.i.i, %.body.i.i.i ], [ %i.azb, %bb.mz ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #23
  br label %bb.nb

bb.nb:                                            ; preds = %bb.na, %bb.my
  %.pn26.pn.i.i = phi { ptr, i32 } [ %.pn26.i.i, %bb.na ], [ %i.aza, %bb.my ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %43) #23
  br label %bb.nc

bb.nc:                                            ; preds = %bb.nb, %bb.mx
  %.pn26.pn.pn.i.i = phi { ptr, i32 } [ %.pn26.pn.i.i, %bb.nb ], [ %i.ayz, %bb.mx ]
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %44) #23
  br label %bb.nd

bb.nd:                                            ; preds = %bb.nc, %bb.mw
  %.pn26.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn26.pn.pn.i.i, %bb.nc ], [ %i.ayy, %bb.mw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  br label %bb.ne

bb.ne:                                            ; preds = %bb.nd, %bb.mv
  %.pn26.pn.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn26.pn.pn.pn.i.i, %bb.nd ], [ %.pn.pn.pn.pn.i.i, %bb.mv ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.nf:                                            ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit.i.i.i
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %31) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aht) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahu) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahv) #23
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %45) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahw) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahx) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahy) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ahz) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aia) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.aib) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #23
  %i.azc = load i32, ptr %i.aic, align 4, !tbaa !107
  %i.azd = icmp slt i32 %i.azc, 2                 ; 2 uses
  %i.aze = load ptr, ptr %i.aid, align 8, !tbaa !108 ; 3 uses
  %i.azf = load i64, ptr %i.aie, align 8          ; 2 uses
  %i.azg = shl i64 %i.azf, 1
  %.sink.idx.i.i.i = select i1 %i.azd, i64 0, i64 %i.azg
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.aze, i64 %.sink.idx.i.i.i
  %i.azh = load double, ptr %.sink.i.i.i, align 8, !tbaa !50 ; 2 uses
  %i.azi = call double @llvm.fabs.f64(double %i.azh)
  %i.azj = fcmp ogt double %i.azi, f0x3CB0000000000000
  %i.azk = fdiv double 1.000000e+00, %i.azh
  %i.azl = select i1 %i.azj, double %i.azk, double 0.000000e+00
  %i.azm = load double, ptr %i.aze, align 8, !tbaa !50
  %.sink.idx.i37.i.i = select i1 %i.azd, i64 0, i64 %i.azf
  %.sink.i38.i.i = getelementptr inbounds nuw i8, ptr %i.aze, i64 %.sink.idx.i37.i.i
  %i.azn = load double, ptr %.sink.i38.i.i, align 8, !tbaa !50
  %i.azo = insertelement <2 x double> poison, double %i.azm, i64 0
  %i.azp = insertelement <2 x double> %i.azo, double %i.azn, i64 1
  %i.azq = insertelement <2 x double> poison, double %i.azl, i64 0
  %i.azr = shufflevector <2 x double> %i.azq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.azs = fmul <2 x double> %i.azp, %i.azr
  %i.azt = fptrunc <2 x double> %i.azs to <2 x float>
  %i.azu = fptrunc double %i.ayd to float
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %41) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %36) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  %i.azv = load ptr, ptr %158, align 8, !tbaa !137
  %i.azw = getelementptr inbounds nuw [12 x i8], ptr %i.azv, i64 %.pre-phi.i ; 2 uses
  store <2 x float> %i.azt, ptr %i.azw, align 4
  %.sroa.5.0..sroa_idx.i715 = getelementptr inbounds nuw i8, ptr %i.azw, i64 8
  store float %i.azu, ptr %.sroa.5.0..sroa_idx.i715, align 4, !tbaa !91
  %i.azx = icmp eq i32 %.0147.i, 0
  %i.azy = load i32, ptr %i.afw, align 8          ; 2 uses
  %i.azz = icmp eq i32 %i.azy, 1
  %or.cond9.i = select i1 %i.azx, i1 %i.azz, i1 false
  br i1 %or.cond9.i, label %..critedge.thread_crit_edge.i, label %bb.ng

..critedge.thread_crit_edge.i:                    ; preds = %bb.nf
  %.pre.i716 = load ptr, ptr %158, align 8, !tbaa !137
  br label %.critedge.thread.i

bb.ng:                                            ; preds = %bb.nf
  %i.baa = icmp sgt i32 %.0147.i, 0
  br i1 %i.baa, label %bb.nh, label %.critedge11.i

bb.nh:                                            ; preds = %bb.ng
  %i.bab = load ptr, ptr %158, align 8, !tbaa !137 ; 3 uses
  %213 = getelementptr inbounds nuw [12 x i8], ptr %i.bab, i64 %.pre-phi.i ; 2 uses
  %214 = zext nneg i32 %.0147.i to i64
  %i.bac = getelementptr [12 x i8], ptr %i.bab, i64 %214 ; 2 uses
  %i.bad = getelementptr i8, ptr %i.bac, i64 -12
  %i.bae = load float, ptr %213, align 4, !tbaa !147
  %i.baf = load float, ptr %i.bad, align 4, !tbaa !147
  %i.bag = fsub float %i.bae, %i.baf
  %i.bah = getelementptr inbounds nuw i8, ptr %213, i64 4
  %i.bai = getelementptr i8, ptr %i.bac, i64 -8
  %i.baj = load <2 x float>, ptr %i.bah, align 4, !tbaa !91
  %i.bak = load <2 x float>, ptr %i.bai, align 4, !tbaa !91
  %i.bal = fsub <2 x float> %i.baj, %i.bak        ; 2 uses
  %i.bam = fpext float %i.bag to double           ; 2 uses
  %i.ban = extractelement <2 x float> %i.bal, i64 0
  %i.bao = fpext float %i.ban to double           ; 2 uses
  %i.bap = fmul double %i.bao, %i.bao
  %i.baq = call double @llvm.fmuladd.f64(double %i.bam, double %i.bam, double %i.bap)
  %i.bar = extractelement <2 x float> %i.bal, i64 1
  %i.bas = fpext float %i.bar to double           ; 2 uses
  %i.bat = call double @llvm.fmuladd.f64(double %i.bas, double %i.bas, double %i.baq)
  %sqrt.i250.i = call noundef double @llvm.sqrt.f64(double %i.bat)
  %i.bau = fcmp ule double %sqrt.i250.i, f0x3F50624DE0000000
  %i.bav = icmp ne i32 %i.azy, 4
  %or.cond362.not366.i = select i1 %i.bau, i1 true, i1 %i.bav ; 2 uses
  %brmerge.i = select i1 %or.cond362.not366.i, i1 true, i1 %i.ayc
  %.0147.mux.i = select i1 %or.cond362.not366.i, i32 %.0147.i, i32 4
  br i1 %brmerge.i, label %.critedge11.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.nh, %..critedge.thread_crit_edge.i
  %i.baw = phi ptr [ %.pre.i716, %..critedge.thread_crit_edge.i ], [ %i.bab, %bb.nh ] ; 2 uses
  %i.bax = add nuw nsw i32 %.0147.i, 1            ; 2 uses
  %i.bay = zext nneg i32 %i.bax to i64            ; 2 uses
  %i.baz = getelementptr inbounds nuw [8 x i8], ptr %i.arj, i64 %i.bay
  %i.bba = load i64, ptr %i.ayb, align 4
  store i64 %i.bba, ptr %i.baz, align 4
  %i.bbb = getelementptr inbounds nuw [12 x i8], ptr %i.baw, i64 %.pre-phi.i
  %i.bbc = getelementptr inbounds nuw [12 x i8], ptr %i.baw, i64 %i.bay
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bbc, ptr noundef nonnull align 4 dereferenceable(12) %i.bbb, i64 12, i1 false), !tbaa.struct !99
  br label %.critedge11.i

bb.ni:                                            ; preds = %bb.md
  %i.bbd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

.critedge11.i:                                    ; preds = %.critedge.thread.i, %bb.nh, %bb.ng
  %.1148.i = phi i32 [ %i.bax, %.critedge.thread.i ], [ %.0147.i, %bb.ng ], [ %.0147.mux.i, %bb.nh ]
  store i32 -1, ptr %i.afw, align 8, !tbaa !146
  %i.bbe = add nsw i32 %.0147.i, 1
  br label %bb.nj

bb.nj:                                            ; preds = %.critedge11.i, %bb.lj
  %.sroa.22.3.i = phi ptr [ %.sroa.22.1.i, %.critedge11.i ], [ %.sroa.22.0.i, %bb.lj ] ; 7 uses
  %.sroa.14.2.i = phi ptr [ %.sroa.14.1.i, %.critedge11.i ], [ %.sroa.14.0.i, %bb.lj ]
  %.sroa.0326.3.i = phi ptr [ %.sroa.0326.1.i, %.critedge11.i ], [ %.sroa.0326.0.i, %bb.lj ] ; 8 uses
  %.0153.i = phi i32 [ %i.bbe, %.critedge11.i ], [ %.0147.i, %bb.lj ]
  %.2149.i = phi i32 [ %.1148.i, %.critedge11.i ], [ %.0147.i, %bb.lj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  store i64 0, ptr %i.aig, align 8
  store i32 33619968, ptr %62, align 8, !tbaa !109
  store ptr %51, ptr %i.aif, align 8, !tbaa !111
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %148, ptr noundef nonnull align 8 dereferenceable(24) %62)
          to label %bb.nk unwind label %bb.np

bb.nk:                                            ; preds = %bb.nj
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  %i.bbf = invoke fastcc { i64, i64 } @_ZL12extract3DBoxRKN2cv3MatERS0_S3_S2_S2_S2_RKSt6vectorINS_7Point3_IfEESaIS6_EEib(ptr noundef nonnull align 8 dereferenceable(208) %148, ptr noundef nonnull align 8 dereferenceable(208) %51, ptr noundef nonnull align 8 dereferenceable(208) %50, ptr noundef nonnull align 8 dereferenceable(208) %142, ptr noundef nonnull align 8 dereferenceable(208) %180, ptr noundef nonnull align 8 dereferenceable(208) %181, ptr noundef nonnull align 8 dereferenceable(24) %158, i32 noundef %.0153.i, i1 noundef zeroext false)
          to label %bb.nl unwind label %bb.nq     ; 0 uses

bb.nl:                                            ; preds = %bb.nk
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  store i32 0, ptr %i.aih, align 8, !tbaa !61
  store i32 0, ptr %i.aii, align 4, !tbaa !63
  store i32 16842752, ptr %63, align 8, !tbaa !109
  store ptr %51, ptr %i.aij, align 8, !tbaa !111
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %195, ptr noundef nonnull align 8 dereferenceable(24) %63)
          to label %bb.nm unwind label %bb.nr

bb.nm:                                            ; preds = %bb.nl
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #23
  store i32 0, ptr %i.aik, align 8, !tbaa !61
  store i32 0, ptr %i.ail, align 4, !tbaa !63
  store i32 16842752, ptr %64, align 8, !tbaa !109
  store ptr %50, ptr %i.aim, align 8, !tbaa !111
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %196, ptr noundef nonnull align 8 dereferenceable(24) %64)
          to label %bb.nn unwind label %bb.ns

bb.nn:                                            ; preds = %bb.nm
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  %i.bbg = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 30)
          to label %bb.no unwind label %bb.nt     ; 2 uses

bb.no:                                            ; preds = %bb.nn
  %sext.i = shl i32 %i.bbg, 24                    ; 4 uses
  %i.bbh = icmp eq i32 %sext.i, 452984832
  %spec.select.i = select i1 %i.bbh, i32 0, i32 %.2149.i ; 2 uses
  %i.bbi = and i32 %i.bbg, 223
  %or.cond14.i = icmp eq i32 %i.bbi, 81
  %i.bbj = icmp eq i32 %sext.i, 536870912         ; 2 uses
  %or.cond17.i = or i1 %or.cond14.i, %i.bbj
  br i1 %or.cond17.i, label %bb.nu, label %bb.nv

bb.np:                                            ; preds = %bb.nj
  %i.bbk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.nq:                                            ; preds = %bb.nk
  %i.bbl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.nr:                                            ; preds = %bb.nl
  %i.bbm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #23
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.ns:                                            ; preds = %bb.nm
  %i.bbn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #23
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.nt:                                            ; preds = %bb.nn
  %i.bbo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i

bb.nu:                                            ; preds = %bb.no
  %i.bbp = load ptr, ptr %158, align 8, !tbaa !137 ; 2 uses
  %i.bbq = load ptr, ptr %i.wc, align 8, !tbaa !135
  %.not.i.i251.i = icmp eq ptr %i.bbq, %i.bbp
  br i1 %.not.i.i251.i, label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE5clearEv.exit.i, label %_ZSt8_DestroyIPN2cv7Point3_IfEES2_EvT_S4_RSaIT0_E.exit.i.i252.i

_ZSt8_DestroyIPN2cv7Point3_IfEES2_EvT_S4_RSaIT0_E.exit.i.i252.i: ; preds = %bb.nu
  store ptr %i.bbp, ptr %i.wc, align 8, !tbaa !135
  br label %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE5clearEv.exit.i

_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPN2cv7Point3_IfEES2_EvT_S4_RSaIT0_E.exit.i.i252.i, %bb.nu
  %not. = xor i1 %i.bbj, true
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i

bb.nv:                                            ; preds = %bb.no
  %i.bbr = icmp eq i32 %sext.i, 218103808
  %i.bbs = icmp eq i32 %sext.i, 167772160
  %or.cond20.i = or i1 %i.bbr, %i.bbs
  %i.bbt = icmp eq i32 %spec.select.i, 4
  %or.cond22.i = select i1 %or.cond20.i, i1 %i.bbt, i1 false
  br i1 %or.cond22.i, label %bb.nw, label %.backedge

bb.nw:                                            ; preds = %bb.nv
  %i.bbu = load ptr, ptr %158, align 8, !tbaa !137
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 44
  %i.bbw = load float, ptr %i.bbv, align 4, !tbaa !162
  %i.bbx = fcmp une float %i.bbw, 0.000000e+00
  br i1 %i.bbx, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i, label %.backedge

.backedge:                                        ; preds = %bb.nw, %bb.nv
  br label %bb.lj, !llvm.loop !163

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i:  ; preds = %bb.nw, %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE5clearEv.exit.i
  %.1.ph.i = phi i1 [ %not., %_ZNSt6vectorIN2cv7Point3_IfEESaIS2_EE5clearEv.exit.i ], [ false, %bb.nw ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  %i.bby = load ptr, ptr %47, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i253.i = icmp eq ptr %i.bby, null
  br i1 %.not.i.i.i253.i, label %bb.oa, label %bb.nx

bb.nx:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit.i
  %i.bbz = load ptr, ptr %i.afz, align 8, !tbaa !134
  %i.bca = ptrtoint ptr %i.bbz to i64
  %i.bcb = ptrtoint ptr %i.bby to i64
  %i.bcc = sub i64 %i.bca, %i.bcb
  call void @_ZdlPvm(ptr noundef nonnull %i.bby, i64 noundef %i.bcc) #25
  br label %bb.oa

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i: ; preds = %bb.nt, %bb.ns, %bb.nr, %bb.nq, %bb.np, %bb.ni, %bb.ne, %bb.mb, %bb.lo, %bb.ln, %bb.lm
  %.sroa.22.4.i = phi ptr [ %.sroa.22.3.i, %bb.nt ], [ %.sroa.22.3.i, %bb.ns ], [ %.sroa.22.3.i, %bb.nr ], [ %.sroa.22.3.i, %bb.nq ], [ %.sroa.22.3.i, %bb.np ], [ %i.ari, %bb.lm ], [ %i.ari, %bb.ln ], [ %.sroa.22.1.i, %bb.ne ], [ %.sroa.22.7.i, %bb.mb ], [ %.sroa.22.0.i, %bb.lo ], [ %.sroa.22.1.i, %bb.ni ]
  %.sroa.0326.4.i = phi ptr [ %.sroa.0326.3.i, %bb.nt ], [ %.sroa.0326.3.i, %bb.ns ], [ %.sroa.0326.3.i, %bb.nr ], [ %.sroa.0326.3.i, %bb.nq ], [ %.sroa.0326.3.i, %bb.np ], [ %i.arh, %bb.lm ], [ %i.arh, %bb.ln ], [ %.sroa.0326.1.i, %bb.ne ], [ %.sroa.0326.7.i, %bb.mb ], [ %.sroa.0326.0.i, %bb.lo ], [ %.sroa.0326.1.i, %bb.ni ]
  %.pn185.pn.i = phi { ptr, i32 } [ %i.bbo, %bb.nt ], [ %i.bbn, %bb.ns ], [ %i.bbm, %bb.nr ], [ %i.bbl, %bb.nq ], [ %i.bbk, %bb.np ], [ %i.atc, %bb.lm ], [ %i.atd, %bb.ln ], [ %.pn26.pn.pn.pn.pn.i.i, %bb.ne ], [ %.pn163.pn.pn.pn.pn.pn.pn.i, %bb.mb ], [ %i.ate, %bb.lo ], [ %i.bbd, %bb.ni ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %50) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %49) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %48) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #23
  %i.bcd = load ptr, ptr %47, align 8, !tbaa !130 ; 3 uses
  %.not.i.i.i259.i = icmp eq ptr %i.bcd, null
  br i1 %.not.i.i.i259.i, label %bb.nz, label %bb.ny

bb.ny:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit258.i
  %i.bce = load ptr, ptr %i.afz, align 8, !tbaa !134
  %i.bcf = ptrtoint ptr %i.bce to i64
  %i.bcg = ptrtoint ptr %i.bcd to i64
  %i.bch = sub i64 %i.bcf, %i.bcg
  call void @_ZdlPvm(ptr noundef nonnull %i.bcd, i64 noundef %i.bch) #25
  br label %bb.nz
end_hunk_0
