inline.NumInlined: 4892
inline.NumDeleted: 1491
begin_hunk_0_@_ZNK6google8protobuf8compiler3php9Generator11GenerateAllERKSt6vectorIPKNS0_14FileDescriptorESaIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSH_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #26
  %i.ri = load i64, ptr %i.cr, align 8, !tbaa !40 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.rj = icmp ult i64 %i.ri, 10
  br i1 %i.rj, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge135.i, %bb.da
  %.02229.i.i.i = phi i64 [ %i.rq, %bb.da ], [ %i.ri, %.critedge135.i ] ; 5 uses
  %.02328.i.i.i = phi i32 [ %i.rr, %bb.da ], [ 1, %.critedge135.i ] ; 4 uses
  %i.rk = icmp ult i64 %.02229.i.i.i, 100
  br i1 %i.rk, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.lr.ph.i.i.i
  %i.rl = add i32 %.02328.i.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.cw:                                            ; preds = %.lr.ph.i.i.i
  %i.rm = icmp ult i64 %.02229.i.i.i, 1000
  br i1 %i.rm, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.rn = add i32 %.02328.i.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.cy:                                            ; preds = %bb.cw
  %i.ro = icmp ult i64 %.02229.i.i.i, 10000
  br i1 %i.ro, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.rp = add i32 %.02328.i.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i

bb.da:                                            ; preds = %bb.cy
  %i.rq = udiv i64 %.02229.i.i.i, 10000
  %i.rr = add i32 %.02328.i.i.i, 4                ; 2 uses
  %i.rs = icmp ult i64 %.02229.i.i.i, 100000
  br i1 %i.rs, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !326

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i:  ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cv, %.critedge135.i
  %.0.i.i.i = phi i32 [ %i.rp, %bb.cz ], [ %i.rl, %bb.cv ], [ %i.rn, %bb.cx ], [ 1, %.critedge135.i ], [ %i.rr, %bb.da ]
  %i.rt = zext i32 %.0.i.i.i to i64
  store ptr %i.ct, ptr %51, align 8, !tbaa !50, !alias.scope !323
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %51, i64 noundef %i.rt, i8 noundef signext 0)
          to label %.noexc171.i unwind label %bb.df

.noexc171.i:                                      ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.ru = load ptr, ptr %51, align 8, !tbaa !44, !alias.scope !323 ; 4 uses
  %i.rv = icmp ugt i64 %i.ri, 99
  br i1 %i.rv, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i170.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc171.i
  %i.rw = load i64, ptr %i.cu, align 8, !tbaa !40, !alias.scope !323
  %i.rx = trunc i64 %i.rw to i32
  %i.ry = add i32 %i.rx, -1
  br label %.lr.ph.i4.i.i

.lr.ph.i4.i.i:                                    ; preds = %.lr.ph.i4.i.i, %.lr.ph.preheader.i.i.i
  %.020.i.i.i = phi i64 [ %i.sb, %.lr.ph.i4.i.i ], [ %i.ri, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.01819.i.i.i = phi i32 [ %i.sl, %.lr.ph.i4.i.i ], [ %i.ry, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.rz = urem i64 %.020.i.i.i, 100
  %i.sa = shl nuw nsw i64 %i.rz, 1
  %i.sb = udiv i64 %.020.i.i.i, 100               ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.sa ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 1
  %i.se = load i8, ptr %i.sd, align 1, !tbaa !52, !noalias !323
  %i.sf = zext i32 %.01819.i.i.i to i64
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.sf
  store i8 %i.se, ptr %i.sg, align 1, !tbaa !52
  %i.sh = load i8, ptr %i.sc, align 2, !tbaa !52, !noalias !323
  %i.si = add i32 %.01819.i.i.i, -1
  %i.sj = zext i32 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.sj
  store i8 %i.sh, ptr %i.sk, align 1, !tbaa !52
  %i.sl = add i32 %.01819.i.i.i, -2
  %i.sm = icmp ugt i64 %.020.i.i.i, 9999
  br i1 %i.sm, label %.lr.ph.i4.i.i, label %._crit_edge.i.i170.i, !llvm.loop !327

._crit_edge.i.i170.i:                             ; preds = %.lr.ph.i4.i.i, %.noexc171.i
  %.0.lcssa.i.i.i = phi i64 [ %i.ri, %.noexc171.i ], [ %i.sb, %.lr.ph.i4.i.i ] ; 3 uses
  %i.sn = icmp samesign ugt i64 %.0.lcssa.i.i.i, 9
  br i1 %i.sn, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %._crit_edge.i.i170.i
  %i.so = shl nuw nsw i64 %.0.lcssa.i.i.i, 1
  %i.sp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.so ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 1
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !52, !noalias !323
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ru, i64 1
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !52
  %i.st = load i8, ptr %i.sp, align 2, !tbaa !52, !noalias !323
  br label %bb.dd

bb.dc:                                            ; preds = %._crit_edge.i.i170.i
  %i.su = trunc nuw nsw i64 %.0.lcssa.i.i.i to i8
  %i.sv = or disjoint i8 %i.su, 48
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %storemerge.i.i.i = phi i8 [ %i.sv, %bb.dc ], [ %i.st, %bb.db ]
  store i8 %storemerge.i.i.i, ptr %i.ru, align 1, !tbaa !52
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA9_cSt17basic_string_viewIcSt11char_traitsIcEEA7_cNSt7__cxx1112basic_stringIcS7_SaIcEEEA16_cSD_A5_cSD_EEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 103, ptr nonnull @.str.234, ptr noundef nonnull align 1 dereferenceable(9) @.str.24, ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 1 dereferenceable(7) @.str.230, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 1 dereferenceable(16) @.str.235, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 1 dereferenceable(5) @.str.236, ptr noundef nonnull align 8 dereferenceable(32) %51)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.sw = load ptr, ptr %51, align 8, !tbaa !44   ; 2 uses
  %i.sx = icmp eq ptr %i.sw, %i.ct
  br i1 %i.sx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i: ; preds = %bb.de
  %i.sy = load i64, ptr %i.ct, align 8, !tbaa !52
  %i.sz = add i64 %i.sy, 1
  call void @_ZdlPvm(ptr noundef %i.sw, i64 noundef %i.sz) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i172.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  %i.ta = load i64, ptr %i.cr, align 8, !tbaa !40
  %.not749.i = icmp eq i64 %i.ta, 0
  br i1 %.not749.i, label %._crit_edge723.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i

._crit_edge723.i:                                 ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit183.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #26
  %i.tb = load ptr, ptr %i.oq, align 8, !tbaa !20 ; 2 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !44
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.te = load i64, ptr %i.td, align 8, !tbaa !40
  store i64 %i.te, ptr %54, align 8
  store ptr %i.tc, ptr %i.do, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA9_cSt17basic_string_viewIcSt11char_traitsIcEEA7_cNSt7__cxx1112basic_stringIcS7_SaIcEEEA16_cSD_EEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 95, ptr nonnull @.str.239, ptr noundef nonnull align 1 dereferenceable(9) @.str.24, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 1 dereferenceable(7) @.str.230, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 1 dereferenceable(16) @.str.235, ptr noundef nonnull align 8 dereferenceable(32) %43)
          to label %bb.eo unwind label %bb.ep

bb.df:                                            ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i
  %i.tf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i

bb.dg:                                            ; preds = %bb.dd
  %i.tg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.th = load ptr, ptr %51, align 8, !tbaa !44   ; 2 uses
  %i.ti = icmp eq ptr %i.th, %i.ct
  br i1 %i.ti, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.i: ; preds = %bb.dg
  %i.tj = load i64, ptr %i.ct, align 8, !tbaa !52
  %i.tk = add i64 %i.tj, 1
  call void @_ZdlPvm(ptr noundef %i.th, i64 noundef %i.tk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit179.i: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.i, %bb.df
  %.pn114.i = phi { ptr, i32 } [ %i.tf, %bb.df ], [ %i.tg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i177.i ], [ %i.tg, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #26
  br label %.body181.i

.critedge.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %29, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i180.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !328)
  %i.tl = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !328 ; 7 uses
  %i.tm = load ptr, ptr %i.bs, align 8, !tbaa !304, !noalias !328
  %.not.i.i.i.i = icmp eq ptr %i.tl, %i.tm
  br i1 %.not.i.i.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.critedge.i
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tl, i64 16
  %i.to = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  store i64 0, ptr %i.to, align 8, !noalias !328
  store i64 %i.dl, ptr %i.tl, align 8, !tbaa !305, !noalias !328
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.tn, align 8, !tbaa !193, !noalias !328
  %i.tp = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !328
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 32
  store ptr %i.tq, ptr %i.br, align 16, !tbaa !303, !noalias !328
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i.i

bb.di:                                            ; preds = %.critedge.i
  %i.tr = load ptr, ptr %i.bu, align 8, !tbaa !331 ; 5 uses
  %i.ts = ptrtoint ptr %i.tl to i64
  %i.tt = ptrtoint ptr %i.tr to i64               ; 2 uses
  %i.tu = sub i64 %i.ts, %i.tt                    ; 3 uses
  %i.tv = icmp eq i64 %i.tu, 9223372036854775776
  br i1 %i.tv, label %bb.dj, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i.i

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc352.i unwind label %.loopexit.split-lp503.i

.noexc352.i:                                      ; preds = %bb.dj
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.di
  %i.tw = ashr exact i64 %i.tu, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.tw, i64 1)
  %i.tx = add nsw i64 %.sroa.speculated.i.i.i, %i.tw ; 2 uses
  %i.ty = icmp ult i64 %i.tx, %i.tw
  %i.tz = call i64 @llvm.umin.i64(i64 %i.tx, i64 288230376151711743)
  %i.ua = select i1 %i.ty, i64 288230376151711743, i64 %i.tz ; 2 uses
  %i.ub = shl nuw nsw i64 %i.ua, 5
  %i.uc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ub) #32
          to label %.noexc353.i unwind label %.loopexit502.i ; 5 uses

.noexc353.i:                                      ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 %i.tu ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 16
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  store i64 0, ptr %i.uf, align 8
  store i64 %i.dl, ptr %i.ud, align 8, !tbaa !305
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.ue, align 8, !tbaa !193
  %.not10.i.i.i.i.i = icmp eq ptr %i.tr, %i.tl
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc353.i, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.un, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.uc, %.noexc353.i ] ; 5 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.um, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i ], [ %i.tr, %.noexc353.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.ug = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.uh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !332, !noalias !335
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !337, !alias.scope !335, !noalias !332
  store ptr %i.ui, ptr %i.ug, align 8, !tbaa !337, !alias.scope !332, !noalias !335
  %i.uj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !313, !alias.scope !335, !noalias !332 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i = icmp eq ptr %i.uk, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ul = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !340
  store ptr %i.uk, ptr %i.ul, align 8, !tbaa !313, !alias.scope !332, !noalias !335
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uj, i8 0, i64 16, i1 false), !alias.scope !335, !noalias !332
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.um = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 32 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.um, %i.tl
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i, %.noexc353.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.uc, %.noexc353.i ], [ %i.un, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i.i ]
  %i.uo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32
  %.not.i26.i.i = icmp eq ptr %i.tr, null
  br i1 %.not.i26.i.i, label %.noexc288.i, label %bb.dk

bb.dk:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i.i
  %i.up = load ptr, ptr %i.bs, align 8, !tbaa !304
  %i.uq = ptrtoint ptr %i.up to i64
  %i.ur = sub i64 %i.uq, %i.tt
  call void @_ZdlPvm(ptr noundef nonnull %i.tr, i64 noundef %i.ur) #27
  br label %.noexc288.i

.noexc288.i:                                      ; preds = %bb.dk, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i.i
  store ptr %i.uc, ptr %i.bu, align 8, !tbaa !331
  store ptr %i.uo, ptr %i.br, align 16, !tbaa !303
  %i.us = getelementptr inbounds nuw [32 x i8], ptr %i.uc, i64 %i.ua
  store ptr %i.us, ptr %i.bs, align 8, !tbaa !304
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i.i: ; preds = %.noexc288.i, %bb.dh
  store ptr %37, ptr %i.dm, align 8, !tbaa !306, !alias.scope !342
  store i8 1, ptr %20, align 8, !tbaa !311, !alias.scope !342
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i.i, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 1, ptr nonnull @.str.64, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %21)
          to label %bb.dl unwind label %bb.do

bb.dl:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i.i
  %i.ut = load ptr, ptr %i.br, align 16, !tbaa !303 ; 2 uses
  %i.uu = getelementptr inbounds i8, ptr %i.ut, i64 -32 ; 3 uses
  store ptr %i.uu, ptr %i.br, align 16, !tbaa !303
  %i.uv = getelementptr inbounds i8, ptr %i.ut, i64 -16
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ux = invoke noundef zeroext i1 %i.uw(ptr noundef nonnull align 8 dereferenceable(32) %i.uu, ptr noundef nonnull align 8 dereferenceable(32) %i.uu, i32 noundef 3)
          to label %bb.dp unwind label %bb.dn     ; 0 uses

bb.dn:                                            ; preds = %bb.dm
  %i.uy = landingpad { ptr, i32 }
          catch ptr null
  %i.uz = extractvalue { ptr, i32 } %i.uy, 0
  call void @__clang_call_terminate(ptr %i.uz) #29
  unreachable

bb.do:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i.i
  %i.va = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  br label %.body289.i

.loopexit502.i:                                   ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit504.i = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i

.loopexit.split-lp503.i:                          ; preds = %bb.dj
  %lpad.loopexit.split-lp505.i = landingpad { ptr, i32 }
          cleanup
  br label %.body289.i

.body289.i:                                       ; preds = %.loopexit.split-lp503.i, %.loopexit502.i, %bb.do
  %eh.lpad-body290.i = phi { ptr, i32 } [ %i.va, %bb.do ], [ %lpad.loopexit504.i, %.loopexit502.i ], [ %lpad.loopexit.split-lp505.i, %.loopexit.split-lp503.i ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  br label %.body181.i

bb.dp:                                            ; preds = %bb.dm, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.vb = load i64, ptr %29, align 8, !tbaa !93   ; 2 uses
  %i.vc = icmp eq i64 %i.vb, 0
  br i1 %i.vc, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit183.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.vd = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i180.i, align 8, !tbaa !52
  %i.ve = load i64, ptr %i.dn, align 8, !tbaa !94
  %i.vf = and i64 %i.ve, 65536
  %i.vg = icmp ne i64 %i.vf, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %i.vb, ptr noundef %i.vd, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.vg)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit183.i unwind label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.vh = landingpad { ptr, i32 }
          catch ptr null
  %i.vi = extractvalue { ptr, i32 } %i.vh, 0
  call void @__clang_call_terminate(ptr %i.vi) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit183.i: ; preds = %bb.dq, %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #26
  %i.vj = load i64, ptr %i.cr, align 8, !tbaa !40
  %i.vk = icmp ult i64 %i.zv, %i.vj
  br i1 %i.vk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.backedge, label %._crit_edge723.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.backedge
  %.199721.i = phi i64 [ %i.zv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.backedge ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i ] ; 2 uses
  %.0100720.i = phi i64 [ %.0100720.i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.backedge ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  store ptr %i.cv, ptr %53, align 8, !tbaa !50, !alias.scope !345
  %i.vl = load ptr, ptr %48, align 8, !tbaa !44, !noalias !345
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 %.199721.i
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !52
  store i8 %i.vn, ptr %i.cv, align 8, !tbaa !52
  store i64 1, ptr %i.cw, align 8, !tbaa !40, !alias.scope !345
  store i8 0, ptr %i.cx, align 1, !tbaa !52
  invoke void @_ZN4absl12lts_202505127CEscapeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %52, i64 1, ptr nonnull %i.cv)
          to label %bb.ds unwind label %bb.en

bb.ds:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i
  %i.vo = load ptr, ptr %52, align 8, !tbaa !44
  %i.vp = load i64, ptr %i.cy, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i187.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i.i unwind label %.loopexit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i.i: ; preds = %bb.ds
  %i.vq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i187.i, align 8, !tbaa !52, !noalias !348 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.vq, i32 0, i32 1, i32 1), !noalias !348
  %i.vr = load i64, ptr %i.dc, align 8, !tbaa !94, !noalias !351
  %i.vs = and i64 %i.vr, 65535
  %i.vt = load i64, ptr %28, align 8, !tbaa !93, !noalias !351 ; 3 uses
  %i.vu = xor i64 %i.vs, %i.dd
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.dg, align 8, !tbaa !52, !noalias !348 ; 2 uses
  br label %bb.dt

bb.dt:                                            ; preds = %bb.du, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i.i
  %.pn.i303.i = phi i64 [ %i.vu, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i.i ], [ %i.wu, %bb.du ]
  %.sroa.15.0.i.i = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i.i ], [ %i.wt, %bb.du ] ; 2 uses
  %.sroa.7.0.i.i = and i64 %.pn.i303.i, %i.vt     ; 5 uses
  %i.vv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.7.0.i.i
  call void @llvm.prefetch.p0(ptr %i.vv, i32 0, i32 3, i32 1), !noalias !348
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 %.sroa.7.0.i.i
  %i.vx = load <16 x i8>, ptr %i.vw, align 1, !tbaa !52, !noalias !348 ; 2 uses
  %i.vy = icmp eq <16 x i8> %i.di, %i.vx
  %i.vz = bitcast <16 x i1> %i.vy to i16          ; 2 uses
  %.not59.i.i = icmp eq i16 %i.vz, 0
  br i1 %.not59.i.i, label %.critedge18.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.dt, %.critedge.i.i
  %.sroa.034.060.i.i = phi i16 [ %i.wl, %.critedge.i.i ], [ %i.vz, %bb.dt ] ; 3 uses
  %i.wa = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i.i, i1 true)
  %i.wb = zext nneg i16 %i.wa to i64
  %i.wc = add i64 %.sroa.7.0.i.i, %i.wb
  %i.wd = and i64 %i.wc, %i.vt
  %i.we = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %i.wd ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.we, align 8, !tbaa !51, !noalias !348
  %i.wf = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i, 2
  br i1 %i.wf, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, label %.critedge.i.i, !prof !296

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !225, !noalias !348
  %i.wg = load i16, ptr %.sroa.22.0.copyload.i.i.i.i.i.i.i, align 1
  %i.wh = icmp ne i16 %i.wg, 26723
  %i.wi = zext i1 %i.wh to i32
  %i.wj = icmp eq i32 %i.wi, 0
  br i1 %i.wj, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i
  %i.wk = add i16 %.sroa.034.060.i.i, -1
  %i.wl = and i16 %i.wk, %.sroa.034.060.i.i       ; 2 uses
  %.not.i304.i = icmp eq i16 %i.wl, 0
  br i1 %.not.i304.i, label %.critedge18.i.i, label %.lr.ph.i.i

.critedge18.i.i:                                  ; preds = %.critedge.i.i, %bb.dt
  %i.wm = icmp eq <16 x i8> %i.vx, splat (i8 -128)
  %i.wn = bitcast <16 x i1> %i.wm to i16          ; 2 uses
  %.not52.i.i = icmp eq i16 %i.wn, 0
  br i1 %.not52.i.i, label %bb.du, label %.thread.i305.i, !prof !118

.thread.i305.i:                                   ; preds = %.critedge18.i.i
  %i.wo = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.wn, i1 true)
  %i.wp = zext nneg i16 %i.wo to i64
  %i.wq = add i64 %.sroa.7.0.i.i, %i.wp
  %i.wr = and i64 %i.wq, %i.vt
  %i.ws = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.db, i64 %i.wr, i64 %.sroa.15.0.i.i)
          to label %bb.dv unwind label %bb.eg

bb.du:                                            ; preds = %.critedge18.i.i
  %i.wt = add i64 %.sroa.15.0.i.i, 16             ; 2 uses
  %i.wu = add i64 %i.wt, %.sroa.7.0.i.i
  br label %bb.dt

.loopexit.i:                                      ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i354.i, %bb.ds
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body300.i

.loopexit.split-lp.i:                             ; preds = %bb.dy
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body300.i

bb.dv:                                            ; preds = %.thread.i305.i
  %.sroa.0.0.copyload.i.i.i.i23.i.i = load ptr, ptr %i.dg, align 8, !tbaa !52, !noalias !348
  %i.wv = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i.i, i64 %i.ws ; 4 uses
  store i64 2, ptr %i.wv, align 8, !tbaa !51
  %.sroa.7.0..sroa.4.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wv, i64 8
  store ptr @.str.238, ptr %.sroa.7.0..sroa.4.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx.i, align 8, !tbaa !225
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 16
  store i64 %i.vp, ptr %i.ww, align 8, !tbaa !51
  %.sroa.12.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  store ptr %i.vo, ptr %.sroa.12.16..sroa_idx.i, align 8, !tbaa !225
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i, %bb.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  %i.wx = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !354 ; 7 uses
  %i.wy = load ptr, ptr %i.bs, align 8, !tbaa !304, !noalias !354
  %.not.i.i.i291.i = icmp eq ptr %i.wx, %i.wy
  br i1 %.not.i.i.i291.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i.i
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wx, i64 16
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wx, i64 8
  store i64 0, ptr %i.xa, align 8, !noalias !354
  store i64 %i.dj, ptr %i.wx, align 8, !tbaa !305, !noalias !354
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.wz, align 8, !tbaa !193, !noalias !354
  %i.xb = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !354
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 32
  store ptr %i.xc, ptr %i.br, align 16, !tbaa !303, !noalias !354
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i292.i

bb.dx:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i.i
  %i.xd = load ptr, ptr %i.bu, align 8, !tbaa !331 ; 5 uses
  %i.xe = ptrtoint ptr %i.wx to i64
  %i.xf = ptrtoint ptr %i.xd to i64               ; 2 uses
  %i.xg = sub i64 %i.xe, %i.xf                    ; 3 uses
  %i.xh = icmp eq i64 %i.xg, 9223372036854775776
  br i1 %i.xh, label %bb.dy, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i354.i

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc378.i.a unwind label %.loopexit.split-lp.i

.noexc378.i.a:                                    ; preds = %bb.dy
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i354.i: ; preds = %bb.dx
  %i.xi = ashr exact i64 %i.xg, 5                 ; 3 uses
  %.sroa.speculated.i.i355.i = call i64 @llvm.umax.i64(i64 %i.xi, i64 1)
  %i.xj = add nsw i64 %.sroa.speculated.i.i355.i, %i.xi ; 2 uses
  %i.xk = icmp ult i64 %i.xj, %i.xi
  %i.xl = call i64 @llvm.umin.i64(i64 %i.xj, i64 288230376151711743)
  %i.xm = select i1 %i.xk, i64 288230376151711743, i64 %i.xl ; 2 uses
  %i.xn = shl nuw nsw i64 %i.xm, 5
  %i.xo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xn) #32
          to label %.noexc379.i unwind label %.loopexit.i ; 5 uses

.noexc379.i:                                      ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i354.i
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 %i.xg ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  store i64 0, ptr %i.xr, align 8
  store i64 %i.dj, ptr %i.xp, align 8, !tbaa !305
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.xq, align 8, !tbaa !193
  %.not10.i.i.i.i357.i = icmp eq ptr %i.xd, %i.wx
  br i1 %.not10.i.i.i.i357.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i375.i, label %.lr.ph.i.i.i.i358.i

.lr.ph.i.i.i.i358.i:                              ; preds = %.noexc379.i, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i
  %.012.i.i.i.i359.i = phi ptr [ %i.xz, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i ], [ %i.xo, %.noexc379.i ] ; 5 uses
  %.0911.i.i.i.i360.i = phi ptr [ %i.xy, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i ], [ %i.xd, %.noexc379.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.xs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i359.i, i64 24
  %i.xt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i360.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i359.i, i8 0, i64 24, i1 false), !alias.scope !357, !noalias !360
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !337, !alias.scope !360, !noalias !357
  store ptr %i.xu, ptr %i.xs, align 8, !tbaa !337, !alias.scope !357, !noalias !360
  %i.xv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i360.i, i64 16 ; 2 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !313, !alias.scope !360, !noalias !357 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i361.i = icmp eq ptr %i.xw, null
  br i1 %.not.i.i.not.i.i.i.i.i.i361.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i362.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i362.i: ; preds = %.lr.ph.i.i.i.i358.i
  %i.xx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i359.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i359.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i360.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !362
  store ptr %i.xw, ptr %i.xx, align 8, !tbaa !313, !alias.scope !357, !noalias !360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xv, i8 0, i64 16, i1 false), !alias.scope !360, !noalias !357
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i362.i, %.lr.ph.i.i.i.i358.i
  %i.xy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i360.i, i64 32 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i359.i, i64 32 ; 2 uses
  %.not.i.i.i.i364.i = icmp eq ptr %i.xy, %i.wx
  br i1 %.not.i.i.i.i364.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i375.i, label %.lr.ph.i.i.i.i358.i, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i375.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i, %.noexc379.i
  %.0.lcssa.i.i.i.i366.i = phi ptr [ %i.xo, %.noexc379.i ], [ %i.xz, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i363.i ]
  %i.ya = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i366.i, i64 32
  %.not.i26.i377.i = icmp eq ptr %i.xd, null
  br i1 %.not.i26.i377.i, label %.noexc299.i, label %bb.dz

bb.dz:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i375.i
  %i.yb = load ptr, ptr %i.bs, align 8, !tbaa !304
  %i.yc = ptrtoint ptr %i.yb to i64
  %i.yd = sub i64 %i.yc, %i.xf
  call void @_ZdlPvm(ptr noundef nonnull %i.xd, i64 noundef %i.yd) #27
  br label %.noexc299.i

.noexc299.i:                                      ; preds = %bb.dz, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i375.i
  store ptr %i.xo, ptr %i.bu, align 8, !tbaa !331
  store ptr %i.ya, ptr %i.br, align 16, !tbaa !303
  %i.ye = getelementptr inbounds nuw [32 x i8], ptr %i.xo, i64 %i.xm
  store ptr %i.ye, ptr %i.bs, align 8, !tbaa !304
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i292.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i292.i: ; preds = %.noexc299.i, %bb.dw
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i293.i, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i294.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 8, ptr nonnull @.str.237, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %19)
          to label %bb.ea unwind label %bb.ed

bb.ea:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i292.i
  %i.yf = load ptr, ptr %i.br, align 16, !tbaa !303 ; 2 uses
  %i.yg = getelementptr inbounds i8, ptr %i.yf, i64 -32 ; 3 uses
  store ptr %i.yg, ptr %i.br, align 16, !tbaa !303
  %i.yh = getelementptr inbounds i8, ptr %i.yf, i64 -16
  %i.yi = load ptr, ptr %i.yh, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i.i.i298.i = icmp eq ptr %i.yi, null
  br i1 %.not.i.i.i.i.i.i298.i, label %bb.eh, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.yj = invoke noundef zeroext i1 %i.yi(ptr noundef nonnull align 8 dereferenceable(32) %i.yg, ptr noundef nonnull align 8 dereferenceable(32) %i.yg, i32 noundef 3)
          to label %bb.eh unwind label %bb.ec     ; 0 uses

bb.ec:                                            ; preds = %bb.eb
  %i.yk = landingpad { ptr, i32 }
          catch ptr null
  %i.yl = extractvalue { ptr, i32 } %i.yk, 0
  call void @__clang_call_terminate(ptr %i.yl) #29
  unreachable

bb.ed:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i292.i
  %i.ym = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yn = load ptr, ptr %i.br, align 16, !tbaa !303 ; 2 uses
  %i.yo = getelementptr inbounds i8, ptr %i.yn, i64 -32 ; 3 uses
  store ptr %i.yo, ptr %i.br, align 16, !tbaa !303
  %i.yp = getelementptr inbounds i8, ptr %i.yn, i64 -16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i.i120 = icmp eq ptr %i.yq, null
  br i1 %.not.i.i.i.i.i120, label %.body300.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.yr = invoke noundef zeroext i1 %i.yq(ptr noundef nonnull align 8 dereferenceable(32) %i.yo, ptr noundef nonnull align 8 dereferenceable(32) %i.yo, i32 noundef 3)
          to label %.body300.i unwind label %bb.ef ; 0 uses

bb.ef:                                            ; preds = %bb.ee
  %i.ys = landingpad { ptr, i32 }
          catch ptr null
  %i.yt = extractvalue { ptr, i32 } %i.ys, 0
  call void @__clang_call_terminate(ptr %i.yt) #29
  unreachable

bb.eg:                                            ; preds = %.thread.i305.i
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %.body300.i

bb.eh:                                            ; preds = %bb.eb, %bb.ea
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  %i.yv = load i64, ptr %28, align 8, !tbaa !93   ; 2 uses
  %i.yw = icmp eq i64 %i.yv, 0
  br i1 %i.yw, label %bb.em, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.yx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i187.i, align 8, !tbaa !52
  %i.yy = load i64, ptr %i.dc, align 8, !tbaa !94
  %i.yz = and i64 %i.yy, 65536
  %i.za = icmp ne i64 %i.yz, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef %i.yv, ptr noundef %i.yx, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.za)
          to label %bb.em unwind label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.zb = landingpad { ptr, i32 }
          catch ptr null
  %i.zc = extractvalue { ptr, i32 } %i.zb, 0
  call void @__clang_call_terminate(ptr %i.zc) #29
  unreachable

.body300.i:                                       ; preds = %bb.ee, %bb.ed, %bb.eg, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i.i = phi { ptr, i32 } [ %i.yu, %bb.eg ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %i.ym, %bb.ed ], [ %i.ym, %bb.ee ] ; 2 uses
  %i.zd = load i64, ptr %28, align 8, !tbaa !93   ; 2 uses
  %i.ze = icmp eq i64 %i.zd, 0
  br i1 %i.ze, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit.i, label %bb.ek

bb.ek:                                            ; preds = %.body300.i
  %i.zf = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i187.i, align 8, !tbaa !52
  %i.zg = load i64, ptr %i.dc, align 8, !tbaa !94
  %i.zh = and i64 %i.zg, 65536
  %i.zi = icmp ne i64 %i.zh, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %28, i64 noundef %i.zd, ptr noundef %i.zf, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.zi)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit.i unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.zj = landingpad { ptr, i32 }
          catch ptr null
  %i.zk = extractvalue { ptr, i32 } %i.zj, 0
  call void @__clang_call_terminate(ptr %i.zk) #29
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev.exit.i: ; preds = %bb.ek, %.body300.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.zl = load ptr, ptr %52, align 8, !tbaa !44   ; 2 uses
  %i.zm = icmp eq ptr %i.zl, %i.dk
  br i1 %i.zm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i197.i

bb.em:                                            ; preds = %bb.ei, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #26
  %i.zn = load ptr, ptr %52, align 8, !tbaa !44   ; 2 uses
  %i.zo = icmp eq ptr %i.zn, %i.dk
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191.i: ; preds = %bb.em
  %i.zp = load i64, ptr %i.dk, align 8, !tbaa !52
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zn, i64 noundef %i.zq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.i: ; preds = %bb.em, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i191.i
  %i.zr = load ptr, ptr %53, align 8, !tbaa !44   ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.cv
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.i
  %i.zt = load i64, ptr %i.cv, align 8, !tbaa !52
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit193.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  %i.zv = add nuw i64 %.199721.i, 1               ; 3 uses
  %i.zw = add nuw nsw i64 %.0100720.i, 1
  %i.zx = icmp samesign ult i64 %.0100720.i, 24
  %i.zy = load i64, ptr %i.cr, align 8
  %i.zz = icmp ult i64 %i.zv, %i.zy
  %or.cond.i = select i1 %i.zx, i1 %i.zz, i1 false
  br i1 %or.cond.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.backedge, label %.critedge.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.backedge: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit183.i
  %.0100720.i.be = phi i64 [ %i.zw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i ], [ 0, %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit183.i ]
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i, !llvm.loop !363
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf8compiler3php9Generator11GenerateAllERKSt6vectorIPKNS0_14FileDescriptorESaIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSH_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit199.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i200.i
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #26
  br label %.body181.i

bb.eo:                                            ; preds = %._crit_edge723.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  %i.aah = getelementptr inbounds nuw i8, ptr %i.op, i64 48 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 8, !tbaa !206
  %i.aaj = icmp sgt i32 %i.aai, 0
  br i1 %i.aaj, label %.lr.ph726.i, label %._crit_edge727.i

._crit_edge727.i:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, %bb.eo
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #26
  %i.aak = load ptr, ptr %i.oq, align 8, !tbaa !20 ; 2 uses
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !44
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aak, i64 8
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !40
  store i64 %i.aan, ptr %56, align 8
  store ptr %i.aal, ptr %i.en, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA9_cSt17basic_string_viewIcSt11char_traitsIcEEA7_cNSt7__cxx1112basic_stringIcS7_SaIcEEEA16_cSD_A19_cSD_EEEvS8_DpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 613, ptr nonnull @.str.242, ptr noundef nonnull align 1 dereferenceable(9) @.str.24, ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull align 1 dereferenceable(7) @.str.230, ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull align 1 dereferenceable(16) @.str.235, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 1 dereferenceable(19) @.str.243, ptr noundef nonnull align 8 dereferenceable(32) %42)
          to label %bb.fj unwind label %bb.fk

bb.ep:                                            ; preds = %._crit_edge723.i
  %i.aao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #26
  br label %.body181.i

.lr.ph726.i:                                      ; preds = %bb.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i
  %.0101724.i = phi i32 [ %i.aem, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i ], [ 0, %bb.eo ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #26
  %i.aap = invoke noundef ptr @_ZNK6google8protobuf14FileDescriptor10dependencyEi(ptr noundef nonnull align 8 dereferenceable(184) %i.op, i32 noundef %.0101724.i)
          to label %bb.eq unwind label %bb.fi

bb.eq:                                            ; preds = %.lr.ph726.i
  %i.aaq = getelementptr i8, ptr %i.aap, i64 8
  %.val.i = load ptr, ptr %i.aaq, align 8, !tbaa !20 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !44
  %i.aar = getelementptr i8, ptr %.val.i, i64 8
  %.val.val140.i = load i64, ptr %i.aar, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #26, !noalias !364
  store i64 1, ptr %27, align 8, !tbaa !288, !noalias !364
  store ptr @.str.246, ptr %i.dp, align 8, !tbaa !289, !noalias !364
  store i64 1, ptr %i.dq, align 8, !tbaa !288, !noalias !364
  store ptr @.str.231, ptr %i.dr, align 8, !tbaa !289, !noalias !364
  store i64 1, ptr %i.ds, align 8, !tbaa !288, !noalias !364
  store ptr @.str.13, ptr %i.dt, align 8, !tbaa !289, !noalias !364
  store i64 1, ptr %i.du, align 8, !tbaa !288, !noalias !364
  store ptr @.str.231, ptr %i.dv, align 8, !tbaa !289, !noalias !364
  invoke void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %55, i64 %.val.val140.i, ptr %.val.val.i, ptr nonnull %27, i64 2)
          to label %bb.er unwind label %bb.fi

bb.er:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #26, !noalias !364
  %i.aas = load ptr, ptr %55, align 8, !tbaa !44
  %i.aat = load i64, ptr %i.dw, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i207.i, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i209.i unwind label %.loopexit497.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i209.i: ; preds = %bb.er
  %i.aau = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i207.i, align 8, !tbaa !52, !noalias !367 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.aau, i32 0, i32 1, i32 1), !noalias !367
  %i.aav = load i64, ptr %i.ed, align 8, !tbaa !94, !noalias !370
  %i.aaw = and i64 %i.aav, 65535
  %i.aax = load i64, ptr %26, align 8, !tbaa !93, !noalias !370 ; 3 uses
  %i.aay = xor i64 %i.aaw, %i.ee
  %.sroa.0.0.copyload.i.i.i.i324.i = load ptr, ptr %i.eh, align 8, !tbaa !52, !noalias !367 ; 2 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.et, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i209.i
  %.pn.i327.i = phi i64 [ %i.aay, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i209.i ], [ %i.ace, %bb.et ]
  %.sroa.15.0.i328.i = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i209.i ], [ %i.acd, %bb.et ] ; 2 uses
  %.sroa.7.0.i329.i = and i64 %.pn.i327.i, %i.aax ; 5 uses
  %i.aaz = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i324.i, i64 %.sroa.7.0.i329.i
  call void @llvm.prefetch.p0(ptr %i.aaz, i32 0, i32 3, i32 1), !noalias !367
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aau, i64 %.sroa.7.0.i329.i
  %i.abb = load <16 x i8>, ptr %i.aba, align 1, !tbaa !52, !noalias !367 ; 2 uses
  %i.abc = icmp eq <16 x i8> %i.ej, %i.abb
  %i.abd = bitcast <16 x i1> %i.abc to i16        ; 2 uses
  %.not59.i330.i = icmp eq i16 %i.abd, 0
  br i1 %.not59.i330.i, label %.critedge18.i338.i, label %.lr.ph.i331.i

.lr.ph.i331.i:                                    ; preds = %bb.es, %.critedge.i336.i
  %.sroa.034.060.i332.i = phi i16 [ %i.abv, %.critedge.i336.i ], [ %i.abd, %bb.es ] ; 3 uses
  %i.abe = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i332.i, i1 true)
  %i.abf = zext nneg i16 %i.abe to i64
  %i.abg = add i64 %.sroa.7.0.i329.i, %i.abf
  %i.abh = and i64 %i.abg, %i.aax
  %i.abi = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i324.i, i64 %i.abh ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i333.i = load i64, ptr %i.abi, align 8, !tbaa !51, !noalias !367
  %i.abj = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i333.i, 10
  br i1 %i.abj, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i346.i, label %.critedge.i336.i, !prof !296

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i346.i: ; preds = %.lr.ph.i331.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i334.i = getelementptr inbounds nuw i8, ptr %i.abi, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i335.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i334.i, align 8, !tbaa !225, !noalias !367 ; 2 uses
  %i.abk = load i64, ptr %.sroa.22.0.copyload.i.i.i.i.i.i335.i, align 1
  %i.abl = xor i64 %i.abk, 7020653749524784484
  %i.abm = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i335.i, i64 8
  %i.abn = load i16, ptr %i.abm, align 1
  %i.abo = zext i16 %i.abn to i64
  %i.abp = xor i64 %i.abo, 25965
  %i.abq = or i64 %i.abl, %i.abp
  %i.abr = icmp ne i64 %i.abq, 0
  %i.abs = zext i1 %i.abr to i32
  %i.abt = icmp eq i32 %i.abs, 0
  br i1 %i.abt, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i212.i, label %.critedge.i336.i

.critedge.i336.i:                                 ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i346.i, %.lr.ph.i331.i
  %i.abu = add i16 %.sroa.034.060.i332.i, -1
  %i.abv = and i16 %i.abu, %.sroa.034.060.i332.i  ; 2 uses
  %.not.i337.i = icmp eq i16 %i.abv, 0
  br i1 %.not.i337.i, label %.critedge18.i338.i, label %.lr.ph.i331.i

.critedge18.i338.i:                               ; preds = %.critedge.i336.i, %bb.es
  %i.abw = icmp eq <16 x i8> %i.abb, splat (i8 -128)
  %i.abx = bitcast <16 x i1> %i.abw to i16        ; 2 uses
  %.not52.i339.i = icmp eq i16 %i.abx, 0
  br i1 %.not52.i339.i, label %bb.et, label %.thread.i340.i, !prof !118

.thread.i340.i:                                   ; preds = %.critedge18.i338.i
  %i.aby = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.abx, i1 true)
  %i.abz = zext nneg i16 %i.aby to i64
  %i.aca = add i64 %.sroa.7.0.i329.i, %i.abz
  %i.acb = and i64 %i.aca, %i.aax
  %i.acc = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ec, i64 %i.acb, i64 %.sroa.15.0.i328.i)
          to label %bb.eu unwind label %bb.fd

bb.et:                                            ; preds = %.critedge18.i338.i
  %i.acd = add i64 %.sroa.15.0.i328.i, 16         ; 2 uses
  %i.ace = add i64 %i.acd, %.sroa.7.0.i329.i
  br label %bb.es

.loopexit497.i:                                   ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i387.i, %bb.er
  %lpad.loopexit499.i = landingpad { ptr, i32 }
          cleanup
  br label %.body318.i

.loopexit.split-lp498.i:                          ; preds = %bb.ex
  %lpad.loopexit.split-lp500.i = landingpad { ptr, i32 }
          cleanup
  br label %.body318.i

bb.eu:                                            ; preds = %.thread.i340.i
  %.sroa.0.0.copyload.i.i.i.i23.i341.i = load ptr, ptr %i.eh, align 8, !tbaa !52, !noalias !367
  %i.acf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i341.i, i64 %i.acc ; 4 uses
  store i64 10, ptr %i.acf, align 8, !tbaa !51
  %.sroa.7475.0..sroa.4471.8..sroa.2.0.copyload.i.i.i.i.i.i.i213.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acf, i64 8
  store ptr @.str.241, ptr %.sroa.7475.0..sroa.4471.8..sroa.2.0.copyload.i.i.i.i.i.i.i213.sroa_idx.i, align 8, !tbaa !225
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  store i64 %i.aat, ptr %i.acg, align 8, !tbaa !51
  %.sroa.12477.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  store ptr %i.aas, ptr %.sroa.12477.16..sroa_idx.i, align 8, !tbaa !225
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i212.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i212.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i346.i, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.ach = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !373 ; 7 uses
  %i.aci = load ptr, ptr %i.bs, align 8, !tbaa !304, !noalias !373
  %.not.i.i.i309.i = icmp eq ptr %i.ach, %i.aci
  br i1 %.not.i.i.i309.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i212.i
  %i.acj = getelementptr inbounds nuw i8, ptr %i.ach, i64 16
  %i.ack = getelementptr inbounds nuw i8, ptr %i.ach, i64 8
  store i64 0, ptr %i.ack, align 8, !noalias !373
  store i64 %i.ek, ptr %i.ach, align 8, !tbaa !305, !noalias !373
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.acj, align 8, !tbaa !193, !noalias !373
  %i.acl = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !373
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  store ptr %i.acm, ptr %i.br, align 16, !tbaa !303, !noalias !373
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i310.i

bb.ew:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i212.i
  %i.acn = load ptr, ptr %i.bu, align 8, !tbaa !331 ; 5 uses
  %i.aco = ptrtoint ptr %i.ach to i64
  %i.acp = ptrtoint ptr %i.acn to i64             ; 2 uses
  %i.acq = sub i64 %i.aco, %i.acp                 ; 3 uses
  %i.acr = icmp eq i64 %i.acq, 9223372036854775776
  br i1 %i.acr, label %bb.ex, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i387.i

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc411.i unwind label %.loopexit.split-lp498.i

.noexc411.i:                                      ; preds = %bb.ex
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i387.i: ; preds = %bb.ew
  %i.acs = ashr exact i64 %i.acq, 5               ; 3 uses
  %.sroa.speculated.i.i388.i = call i64 @llvm.umax.i64(i64 %i.acs, i64 1)
  %i.act = add nsw i64 %.sroa.speculated.i.i388.i, %i.acs ; 2 uses
  %i.acu = icmp ult i64 %i.act, %i.acs
  %i.acv = call i64 @llvm.umin.i64(i64 %i.act, i64 288230376151711743)
  %i.acw = select i1 %i.acu, i64 288230376151711743, i64 %i.acv ; 2 uses
  %i.acx = shl nuw nsw i64 %i.acw, 5
  %i.acy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acx) #32
          to label %.noexc412.i unwind label %.loopexit497.i ; 5 uses

.noexc412.i:                                      ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i387.i
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acq ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 16
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  store i64 0, ptr %i.adb, align 8
  store i64 %i.ek, ptr %i.acz, align 8, !tbaa !305
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.ada, align 8, !tbaa !193
  %.not10.i.i.i.i390.i = icmp eq ptr %i.acn, %i.ach
  br i1 %.not10.i.i.i.i390.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i408.i, label %.lr.ph.i.i.i.i391.i

.lr.ph.i.i.i.i391.i:                              ; preds = %.noexc412.i, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i
  %.012.i.i.i.i392.i = phi ptr [ %i.adj, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i ], [ %i.acy, %.noexc412.i ] ; 5 uses
  %.0911.i.i.i.i393.i = phi ptr [ %i.adi, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i ], [ %i.acn, %.noexc412.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !376)
  call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.adc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i392.i, i64 24
  %i.add = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i393.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i392.i, i8 0, i64 24, i1 false), !alias.scope !376, !noalias !379
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !337, !alias.scope !379, !noalias !376
  store ptr %i.ade, ptr %i.adc, align 8, !tbaa !337, !alias.scope !376, !noalias !379
  %i.adf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i393.i, i64 16 ; 2 uses
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !313, !alias.scope !379, !noalias !376 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i394.i = icmp eq ptr %i.adg, null
  br i1 %.not.i.i.not.i.i.i.i.i.i394.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i395.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i395.i: ; preds = %.lr.ph.i.i.i.i391.i
  %i.adh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i392.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i392.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i393.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !381
  store ptr %i.adg, ptr %i.adh, align 8, !tbaa !313, !alias.scope !376, !noalias !379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adf, i8 0, i64 16, i1 false), !alias.scope !379, !noalias !376
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i395.i, %.lr.ph.i.i.i.i391.i
  %i.adi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i393.i, i64 32 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i392.i, i64 32 ; 2 uses
  %.not.i.i.i.i397.i = icmp eq ptr %i.adi, %i.ach
  br i1 %.not.i.i.i.i397.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i408.i, label %.lr.ph.i.i.i.i391.i, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i408.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i, %.noexc412.i
  %.0.lcssa.i.i.i.i399.i = phi ptr [ %i.acy, %.noexc412.i ], [ %i.adj, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i396.i ]
  %i.adk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i399.i, i64 32
  %.not.i26.i410.i = icmp eq ptr %i.acn, null
  br i1 %.not.i26.i410.i, label %.noexc317.i, label %bb.ey

bb.ey:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i408.i
  %i.adl = load ptr, ptr %i.bs, align 8, !tbaa !304
  %i.adm = ptrtoint ptr %i.adl to i64
  %i.adn = sub i64 %i.adm, %i.acp
  call void @_ZdlPvm(ptr noundef nonnull %i.acn, i64 noundef %i.adn) #27
  br label %.noexc317.i

.noexc317.i:                                      ; preds = %bb.ey, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i408.i
  store ptr %i.acy, ptr %i.bu, align 8, !tbaa !331
  store ptr %i.adk, ptr %i.br, align 16, !tbaa !303
  %i.ado = getelementptr inbounds nuw [32 x i8], ptr %i.acy, i64 %i.acw
  store ptr %i.ado, ptr %i.bs, align 8, !tbaa !304
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i310.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i310.i: ; preds = %.noexc317.i, %bb.ev
  store ptr %37, ptr %i.el, align 8, !tbaa !306, !alias.scope !382
  store i8 1, ptr %17, align 8, !tbaa !311, !alias.scope !382
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i311.i, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i312.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 32, ptr nonnull @.str.240, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %18)
          to label %bb.ez unwind label %bb.fc

bb.ez:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i310.i
  %i.adp = load ptr, ptr %i.br, align 16, !tbaa !303 ; 2 uses
  %i.adq = getelementptr inbounds i8, ptr %i.adp, i64 -32 ; 3 uses
  store ptr %i.adq, ptr %i.br, align 16, !tbaa !303
  %i.adr = getelementptr inbounds i8, ptr %i.adp, i64 -16
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i.i.i316.i = icmp eq ptr %i.ads, null
  br i1 %.not.i.i.i.i.i.i316.i, label %bb.fe, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.adt = invoke noundef zeroext i1 %i.ads(ptr noundef nonnull align 8 dereferenceable(32) %i.adq, ptr noundef nonnull align 8 dereferenceable(32) %i.adq, i32 noundef 3)
          to label %bb.fe unwind label %bb.fb     ; 0 uses

bb.fb:                                            ; preds = %bb.fa
  %i.adu = landingpad { ptr, i32 }
          catch ptr null
  %i.adv = extractvalue { ptr, i32 } %i.adu, 0
  call void @__clang_call_terminate(ptr %i.adv) #29
  unreachable

bb.fc:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i310.i
  %i.adw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  br label %.body318.i

bb.fd:                                            ; preds = %.thread.i340.i
  %i.adx = landingpad { ptr, i32 }
          cleanup
  br label %.body318.i

bb.fe:                                            ; preds = %bb.fa, %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.ady = load i64, ptr %26, align 8, !tbaa !93  ; 2 uses
  %i.adz = icmp eq i64 %i.ady, 0
  br i1 %i.adz, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aea = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i207.i, align 8, !tbaa !52
  %i.aeb = load i64, ptr %i.ed, align 8, !tbaa !94
  %i.aec = and i64 %i.aeb, 65536
  %i.aed = icmp ne i64 %i.aec, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %26, i64 noundef %i.ady, ptr noundef %i.aea, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.aed)
          to label %bb.fh unwind label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.aee = landingpad { ptr, i32 }
          catch ptr null
  %i.aef = extractvalue { ptr, i32 } %i.aee, 0
  call void @__clang_call_terminate(ptr %i.aef) #29
  unreachable

.body318.i:                                       ; preds = %bb.fd, %bb.fc, %.loopexit.split-lp498.i, %.loopexit497.i
  %.pn.i208.i = phi { ptr, i32 } [ %i.adx, %bb.fd ], [ %i.adw, %bb.fc ], [ %lpad.loopexit499.i, %.loopexit497.i ], [ %lpad.loopexit.split-lp500.i, %.loopexit.split-lp498.i ] ; 2 uses
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.aeg = load ptr, ptr %55, align 8, !tbaa !44  ; 2 uses
  %i.aeh = icmp eq ptr %i.aeg, %i.em
  br i1 %i.aeh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i

bb.fh:                                            ; preds = %bb.ff, %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #26
  %i.aei = load ptr, ptr %55, align 8, !tbaa !44  ; 2 uses
  %i.aej = icmp eq ptr %i.aei, %i.em
  br i1 %i.aej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i: ; preds = %bb.fh
  %i.aek = load i64, ptr %i.em, align 8, !tbaa !52
  %i.ael = add i64 %i.aek, 1
  call void @_ZdlPvm(ptr noundef %i.aei, i64 noundef %i.ael) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218.i: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i216.i
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  %i.aem = add nuw nsw i32 %.0101724.i, 1         ; 2 uses
  %i.aen = load i32, ptr %i.aah, align 8, !tbaa !206
  %i.aeo = icmp slt i32 %i.aem, %i.aen
  br i1 %i.aeo, label %.lr.ph726.i, label %._crit_edge727.i, !llvm.loop !385

bb.fi:                                            ; preds = %bb.eq, %.lr.ph726.i
  %i.aep = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i: ; preds = %.body318.i
  %i.aeq = load i64, ptr %i.em, align 8, !tbaa !52
  %i.aer = add i64 %i.aeq, 1
  call void @_ZdlPvm(ptr noundef %i.aeg, i64 noundef %i.aer) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit221.i: ; preds = %.body318.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i, %bb.fi
  %.pn116.i = phi { ptr, i32 } [ %i.aep, %bb.fi ], [ %.pn.i208.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i219.i ], [ %.pn.i208.i, %.body318.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #26
  br label %.body181.i

bb.fj:                                            ; preds = %._crit_edge727.i
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  %i.aes = getelementptr inbounds nuw i8, ptr %i.op, i64 64 ; 2 uses
  %i.aet = load i32, ptr %i.aes, align 8, !tbaa !207
  %i.aeu = icmp sgt i32 %i.aet, 0
  br i1 %i.aeu, label %.lr.ph730.i, label %.preheader496.i

.lr.ph730.i:                                      ; preds = %bb.fj
  %i.aev = getelementptr inbounds nuw i8, ptr %i.op, i64 112
  br label %bb.fl

.preheader496.i:                                  ; preds = %bb.fm, %bb.fj
  %i.aew = getelementptr inbounds nuw i8, ptr %i.op, i64 68 ; 2 uses
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !208
  %i.aey = icmp sgt i32 %i.aex, 0
  br i1 %i.aey, label %.lr.ph732.i, label %._crit_edge733.i

.lr.ph732.i:                                      ; preds = %.preheader496.i
  %i.aez = getelementptr inbounds nuw i8, ptr %i.op, i64 120
  br label %bb.fo

bb.fk:                                            ; preds = %._crit_edge727.i
  %i.afa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #26
  br label %.body181.i

bb.fl:                                            ; preds = %bb.fm, %.lr.ph730.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph730.i ], [ %indvars.iv.next.i, %bb.fm ] ; 2 uses
  %i.afb = load ptr, ptr %i.aev, align 8, !tbaa !209
  %i.afc = getelementptr inbounds nuw [160 x i8], ptr %i.afb, i64 %indvars.iv.i
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_116GenerateCMessageEPKNS0_10DescriptorEPNS0_2io7PrinterE(ptr noundef %i.afc, ptr noundef %37)
          to label %bb.fm unwind label %bb.fn
end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf8compiler3php9Generator11GenerateAllERKSt6vectorIPKNS0_14FileDescriptorESaIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS1_16GeneratorContextEPSH_:bb.a
  call void @_ZdlPvm(ptr noundef %i.alz, i64 noundef %i.amc) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i: ; preds = %._crit_edge743.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i263.i
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  %i.amd = load ptr, ptr %59, align 8, !tbaa !44  ; 2 uses
  %i.ame = icmp eq ptr %i.amd, %i.fg
  br i1 %i.ame, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i
  %i.amf = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.amg = add i64 %i.amf, 1
  call void @_ZdlPvm(ptr noundef %i.amd, i64 noundef %i.amg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i266.i
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  %i.amh = load ptr, ptr %57, align 8, !tbaa !44  ; 2 uses
  %i.ami = icmp eq ptr %i.amh, %i.fh
  br i1 %i.ami, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i
  %i.amj = load i64, ptr %i.fh, align 8, !tbaa !52
  %i.amk = add i64 %i.amj, 1
  call void @_ZdlPvm(ptr noundef %i.amh, i64 noundef %i.amk) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #26
  %i.aml = getelementptr inbounds nuw i8, ptr %.sroa.0432.0745.i, i64 8 ; 2 uses
  %.not492.i = icmp eq ptr %i.aml, %i.ahd
  br i1 %.not492.i, label %._crit_edge748.i, label %.lr.ph747.i

bb.hb:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %.lr.ph742.i
  %indvars.iv778.i = phi i64 [ 0, %.lr.ph742.i ], [ %indvars.iv.next779.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ] ; 2 uses
  %i.amm = load ptr, ptr %i.alq, align 8, !tbaa !211
  %i.amn = getelementptr inbounds nuw [88 x i8], ptr %i.amm, i64 %indvars.iv778.i
  %i.amo = getelementptr i8, ptr %i.amn, i64 8
  %.val141.i = load ptr, ptr %i.amo, align 8, !tbaa !404 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #26
  %i.amp = getelementptr inbounds nuw i8, ptr %.val141.i, i64 2
  %.0.copyload.i.i.i.i.i = load i16, ptr %i.amp, align 1
  %i.amq = zext i16 %.0.copyload.i.i.i.i.i to i64 ; 2 uses
  %i.amr = xor i64 %i.amq, -1
  %i.ams = getelementptr inbounds i8, ptr %.val141.i, i64 %i.amr
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #26
  store i64 1, ptr %23, align 8, !tbaa !288
  store ptr @.str.246, ptr %i.ez, align 8, !tbaa !289
  store i64 1, ptr %i.fa, align 8, !tbaa !288
  store ptr @.str.231, ptr %i.fb, align 8, !tbaa !289
  invoke void @_ZN4absl12lts_2025051213StrReplaceAllB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEESt16initializer_listISt4pairIS4_S4_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, i64 %i.amq, ptr nonnull %i.ams, ptr nonnull %23, i64 1)
          to label %.noexc272.i unwind label %bb.hs

.noexc272.i:                                      ; preds = %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.amt = load ptr, ptr %22, align 8, !tbaa !44
  %i.amu = load i64, ptr %i.fd, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i95, align 8
  invoke void @_ZN4absl12lts_2025051218container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef 1)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i unwind label %.loopexit

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i: ; preds = %.noexc272.i
  %i.amv = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i95, align 8, !tbaa !52, !noalias !406 ; 2 uses
  call void @llvm.prefetch.p0(ptr %i.amv, i32 0, i32 1, i32 1), !noalias !406
  %i.amw = load i64, ptr %i.fx, align 8, !tbaa !94, !noalias !409
  %i.amx = and i64 %i.amw, 65535
  %i.amy = load i64, ptr %15, align 8, !tbaa !93, !noalias !409 ; 3 uses
  %i.amz = xor i64 %i.amx, %i.bl
  %.sroa.0.0.copyload.i.i.i.i159 = load ptr, ptr %i.fy, align 8, !tbaa !52, !noalias !406 ; 2 uses
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hd, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i
  %.pn.i160 = phi i64 [ %i.amz, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i ], [ %i.aof, %bb.hd ]
  %.sroa.15.0.i = phi i64 [ 0, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7reserveEm.exit.preheader.i ], [ %i.aoe, %bb.hd ] ; 2 uses
  %.sroa.7.0.i = and i64 %.pn.i160, %i.amy        ; 5 uses
  %i.ana = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i159, i64 %.sroa.7.0.i
  call void @llvm.prefetch.p0(ptr %i.ana, i32 0, i32 3, i32 1), !noalias !406
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amv, i64 %.sroa.7.0.i
  %i.anc = load <16 x i8>, ptr %i.anb, align 1, !tbaa !52, !noalias !406 ; 2 uses
  %i.and = icmp eq <16 x i8> %i.bq, %i.anc
  %i.ane = bitcast <16 x i1> %i.and to i16        ; 2 uses
  %.not59.i = icmp eq i16 %i.ane, 0
  br i1 %.not59.i, label %.critedge18.i, label %.lr.ph.i161

.lr.ph.i161:                                      ; preds = %bb.hc, %.critedge.i162
  %.sroa.034.060.i = phi i16 [ %i.anw, %.critedge.i162 ], [ %i.ane, %bb.hc ] ; 3 uses
  %i.anf = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060.i, i1 true)
  %i.ang = zext nneg i16 %i.anf to i64
  %i.anh = add i64 %.sroa.7.0.i, %i.ang
  %i.ani = and i64 %i.anh, %i.amy
  %i.anj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i159, i64 %i.ani ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %i.anj, align 8, !tbaa !51, !noalias !406
  %i.ank = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 6
  br i1 %i.ank, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, label %.critedge.i162, !prof !296

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i161
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.anj, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !225, !noalias !406 ; 2 uses
  %i.anl = load i32, ptr %.sroa.22.0.copyload.i.i.i.i.i.i, align 1
  %i.anm = xor i32 %i.anl, 1634623331
  %i.ann = getelementptr i8, ptr %.sroa.22.0.copyload.i.i.i.i.i.i, i64 4
  %i.ano = load i16, ptr %i.ann, align 1
  %i.anp = zext i16 %i.ano to i32
  %i.anq = xor i32 %i.anp, 25965
  %i.anr = or i32 %i.anm, %i.anq
  %i.ans = icmp ne i32 %i.anr, 0
  %i.ant = zext i1 %i.ans to i32
  %i.anu = icmp eq i32 %i.ant, 0
  br i1 %i.anu, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i, label %.critedge.i162

.critedge.i162:                                   ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i161
  %i.anv = add i16 %.sroa.034.060.i, -1
  %i.anw = and i16 %i.anv, %.sroa.034.060.i       ; 2 uses
  %.not.i163 = icmp eq i16 %i.anw, 0
  br i1 %.not.i163, label %.critedge18.i, label %.lr.ph.i161

.critedge18.i:                                    ; preds = %.critedge.i162, %bb.hc
  %i.anx = icmp eq <16 x i8> %i.anc, splat (i8 -128)
  %i.any = bitcast <16 x i1> %i.anx to i16        ; 2 uses
  %.not52.i = icmp eq i16 %i.any, 0
  br i1 %.not52.i, label %bb.hd, label %.thread.i, !prof !118

.thread.i:                                        ; preds = %.critedge18.i
  %i.anz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.any, i1 true)
  %i.aoa = zext nneg i16 %i.anz to i64
  %i.aob = add i64 %.sroa.7.0.i, %i.aoa
  %i.aoc = and i64 %i.aob, %i.amy
  %i.aod = invoke noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.bj, i64 %i.aoc, i64 %.sroa.15.0.i)
          to label %bb.he unwind label %bb.hn

bb.hd:                                            ; preds = %.critedge18.i
  %i.aoe = add i64 %.sroa.15.0.i, 16              ; 2 uses
  %i.aof = add i64 %i.aoe, %.sroa.7.0.i
  br label %bb.hc

.loopexit:                                        ; preds = %.noexc272.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body154

.loopexit.split-lp:                               ; preds = %bb.hh
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.he:                                            ; preds = %.thread.i
  %.sroa.0.0.copyload.i.i.i.i23.i = load ptr, ptr %i.fy, align 8, !tbaa !52, !noalias !406
  %i.aog = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23.i, i64 %i.aod ; 4 uses
  store i64 6, ptr %i.aog, align 8, !tbaa !51
  %.sroa.7318.0..sroa.4.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aog, i64 8
  store ptr @.str.230, ptr %.sroa.7318.0..sroa.4.8..sroa.2.0.copyload.i.i.i.i.i.i.i.sroa_idx, align 8, !tbaa !225
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 16
  store i64 %i.amu, ptr %i.aoh, align 8, !tbaa !51
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aog, i64 24
  store ptr %i.amt, ptr %.sroa.12.16..sroa_idx, align 8, !tbaa !225
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i, %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call void @llvm.experimental.noalias.scope.decl(metadata !412)
  %i.aoi = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !412 ; 7 uses
  %i.aoj = load ptr, ptr %i.bs, align 8, !tbaa !304, !noalias !412
  %.not.i.i.i151 = icmp eq ptr %i.aoi, %i.aoj
  br i1 %.not.i.i.i151, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoi, i64 16
  %i.aol = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8
  store i64 0, ptr %i.aol, align 8, !noalias !412
  store i64 %i.fz, ptr %i.aoi, align 8, !tbaa !305, !noalias !412
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.aok, align 8, !tbaa !193, !noalias !412
  %i.aom = load ptr, ptr %i.br, align 16, !tbaa !303, !noalias !412
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 32
  store ptr %i.aon, ptr %i.br, align 16, !tbaa !303, !noalias !412
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i

bb.hg:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE7emplaceIJRS7_SH_ETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESB_INSF_8iteratorEbEDpOSJ_.exit.i
  %i.aoo = load ptr, ptr %i.bu, align 8, !tbaa !331 ; 5 uses
  %i.aop = ptrtoint ptr %i.aoi to i64
  %i.aoq = ptrtoint ptr %i.aoo to i64             ; 2 uses
  %i.aor = sub i64 %i.aop, %i.aoq                 ; 3 uses
  %i.aos = icmp eq i64 %i.aor, 9223372036854775776
  br i1 %i.aos, label %bb.hh, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
          to label %.noexc256 unwind label %.loopexit.split-lp

.noexc256:                                        ; preds = %bb.hh
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.hg
  %i.aot = ashr exact i64 %i.aor, 5               ; 3 uses
  %.sroa.speculated.i.i253 = call i64 @llvm.umax.i64(i64 %i.aot, i64 1)
  %i.aou = add nsw i64 %.sroa.speculated.i.i253, %i.aot ; 2 uses
  %i.aov = icmp ult i64 %i.aou, %i.aot
  %i.aow = call i64 @llvm.umin.i64(i64 %i.aou, i64 288230376151711743)
  %i.aox = select i1 %i.aov, i64 288230376151711743, i64 %i.aow ; 2 uses
  %i.aoy = shl nuw nsw i64 %i.aox, 5
  %i.aoz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoy) #32
          to label %.noexc257 unwind label %.loopexit ; 5 uses

.noexc257:                                        ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit.i
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.aor ; 3 uses
  %i.apb = getelementptr inbounds nuw i8, ptr %i.apa, i64 16
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apa, i64 8
  store i64 0, ptr %i.apc, align 8
  store i64 %i.fz, ptr %i.apa, align 8, !tbaa !305
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_>, ptr %i.apb, align 8, !tbaa !193
  %.not10.i.i.i.i = icmp eq ptr %i.aoo, %i.aoi
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc257, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.apk, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.aoz, %.noexc257 ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.apj, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.aoo, %.noexc257 ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %i.apd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %i.ape = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !415, !noalias !418
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !337, !alias.scope !418, !noalias !415
  store ptr %i.apf, ptr %i.apd, align 8, !tbaa !337, !alias.scope !415, !noalias !418
  %i.apg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !313, !alias.scope !418, !noalias !415 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i = icmp eq ptr %i.aph, null
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.api = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !420
  store ptr %i.aph, ptr %i.api, align 8, !tbaa !313, !alias.scope !415, !noalias !418
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apg, i8 0, i64 16, i1 false), !alias.scope !418, !noalias !415
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.apj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.apk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i255 = icmp eq ptr %i.apj, %i.aoi
  br i1 %.not.i.i.i.i255, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i, label %.lr.ph.i.i.i.i, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc257
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aoz, %.noexc257 ], [ %i.apk, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.apl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i26.i = icmp eq ptr %i.aoo, null
  br i1 %.not.i26.i, label %.noexc153, label %bb.hi

bb.hi:                                            ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  %i.apm = load ptr, ptr %i.bs, align 8, !tbaa !304
  %i.apn = ptrtoint ptr %i.apm to i64
  %i.apo = sub i64 %i.apn, %i.aoq
  call void @_ZdlPvm(ptr noundef nonnull %i.aoo, i64 noundef %i.apo) #27
  br label %.noexc153

.noexc153:                                        ; preds = %bb.hi, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25.i
  store ptr %i.aoz, ptr %i.bu, align 8, !tbaa !331
  store ptr %i.apl, ptr %i.br, align 16, !tbaa !303
  %i.app = getelementptr inbounds nuw [32 x i8], ptr %i.aoz, i64 %i.aox
  store ptr %i.app, ptr %i.bs, align 8, !tbaa !304
  br label %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i

_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i: ; preds = %.noexc153, %bb.hf
  store ptr %37, ptr %i.ga, align 8, !tbaa !306, !alias.scope !421
  store i8 1, ptr %11, align 8, !tbaa !311, !alias.scope !421
  store i32 65792, ptr %.sroa.4.0..sroa_idx.i152, align 1
  store <4 x i8> <i8 0, i8 1, i8 0, i8 1>, ptr %.sroa.7.0..sroa_idx.i, align 1
  invoke void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296) %37, i64 25, ptr nonnull @.str.265, ptr null, i64 0, ptr noundef nonnull byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8 %12)
          to label %bb.hj unwind label %bb.hm

bb.hj:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i
  %i.apq = load ptr, ptr %i.br, align 16, !tbaa !303 ; 2 uses
  %i.apr = getelementptr inbounds i8, ptr %i.apq, i64 -32 ; 3 uses
  store ptr %i.apr, ptr %i.br, align 16, !tbaa !303
  %i.aps = getelementptr inbounds i8, ptr %i.apq, i64 -16
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !313 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.apt, null
  br i1 %.not.i.i.i.i.i.i, label %bb.ho, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.apu = invoke noundef zeroext i1 %i.apt(ptr noundef nonnull align 8 dereferenceable(32) %i.apr, ptr noundef nonnull align 8 dereferenceable(32) %i.apr, i32 noundef 3)
          to label %bb.ho unwind label %bb.hl     ; 0 uses

bb.hl:                                            ; preds = %bb.hk
  %i.apv = landingpad { ptr, i32 }
          catch ptr null
  %i.apw = extractvalue { ptr, i32 } %i.apv, 0
  call void @__clang_call_terminate(ptr %i.apw) #29
  unreachable

bb.hm:                                            ; preds = %_ZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_.exit.i
  %i.apx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  br label %.body154

bb.hn:                                            ; preds = %.thread.i
  %i.apy = landingpad { ptr, i32 }
          cleanup
  br label %.body154

bb.ho:                                            ; preds = %bb.hk, %bb.hj
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.apz = load i64, ptr %15, align 8, !tbaa !93  ; 2 uses
  %i.aqa = icmp eq i64 %i.apz, 0
  br i1 %i.aqa, label %bb.hr, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.aqb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i95, align 8, !tbaa !52
  %i.aqc = load i64, ptr %i.fx, align 8, !tbaa !94
  %i.aqd = and i64 %i.aqc, 65536
  %i.aqe = icmp ne i64 %i.aqd, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.apz, ptr noundef %i.aqb, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.aqe)
          to label %bb.hr unwind label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.aqf = landingpad { ptr, i32 }
          catch ptr null
  %i.aqg = extractvalue { ptr, i32 } %i.aqf, 0
  call void @__clang_call_terminate(ptr %i.aqg) #29
  unreachable

.body154:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.hm, %bb.hn
  %.pn.i96 = phi { ptr, i32 } [ %i.apy, %bb.hn ], [ %i.apx, %bb.hm ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.aqh = load ptr, ptr %22, align 8, !tbaa !44  ; 2 uses
  %i.aqi = icmp eq ptr %i.aqh, %i.fc
  br i1 %i.aqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

bb.hr:                                            ; preds = %bb.hp, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #26
  %i.aqj = load ptr, ptr %22, align 8, !tbaa !44  ; 2 uses
  %i.aqk = icmp eq ptr %i.aqj, %i.fc
  br i1 %i.aqk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.hr
  %i.aql = load i64, ptr %i.fc, align 8, !tbaa !52
  %i.aqm = add i64 %i.aql, 1
  call void @_ZdlPvm(ptr noundef %i.aqj, i64 noundef %i.aqm) #27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %.body154
  %i.aqn = load i64, ptr %i.fc, align 8, !tbaa !52
  %i.aqo = add i64 %i.aqn, 1
  call void @_ZdlPvm(ptr noundef %i.aqh, i64 noundef %i.aqo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %.body154, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %.body273.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  %indvars.iv.next779.i = add nuw nsw i64 %indvars.iv778.i, 1 ; 2 uses
  %i.aqp = load i32, ptr %i.aln, align 4, !tbaa !208
  %i.aqq = sext i32 %i.aqp to i64
  %i.aqr = icmp slt i64 %indvars.iv.next779.i, %i.aqq
  br i1 %i.aqr, label %bb.hb, label %._crit_edge743.i, !llvm.loop !424

bb.hs:                                            ; preds = %bb.hb
  %i.aqs = landingpad { ptr, i32 }
          cleanup
  br label %.body273.i

.body273.i:                                       ; preds = %.body176, %bb.hs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.ha
  %.pn107.i = phi { ptr, i32 } [ %i.aly, %bb.ha ], [ %.pn.i96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ], [ %i.aqs, %bb.hs ], [ %.pn.i102, %.body176 ] ; 2 uses
  %i.aqt = load ptr, ptr %60, align 8, !tbaa !44  ; 2 uses
  %i.aqu = icmp eq ptr %i.aqt, %i.fe
  br i1 %i.aqu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275.i: ; preds = %.body273.i
  %i.aqv = load i64, ptr %i.fe, align 8, !tbaa !52
  %i.aqw = add i64 %i.aqv, 1
  call void @_ZdlPvm(ptr noundef %i.aqt, i64 noundef %i.aqw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i: ; preds = %.body273.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275.i, %bb.gx
  %.pn107.pn.i = phi { ptr, i32 } [ %i.als, %bb.gx ], [ %.pn107.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i275.i ], [ %.pn107.i, %.body273.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #26
  %i.aqx = load ptr, ptr %59, align 8, !tbaa !44  ; 2 uses
  %i.aqy = icmp eq ptr %i.aqx, %i.fg
  br i1 %i.aqy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i
  %i.aqz = load i64, ptr %i.fg, align 8, !tbaa !52
  %i.ara = add i64 %i.aqz, 1
  call void @_ZdlPvm(ptr noundef %i.aqx, i64 noundef %i.ara) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i, %.loopexit363, %.loopexit.split-lp364, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278.i
  %.pn107.pn.pn.i = phi { ptr, i32 } [ %.pn107.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i278.i ], [ %lpad.loopexit.split-lp366, %.loopexit.split-lp364 ], [ %lpad.loopexit365, %.loopexit363 ], [ %.pn107.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit277.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #26
  %i.arb = load ptr, ptr %57, align 8, !tbaa !44  ; 2 uses
  %i.arc = icmp eq ptr %i.arb, %i.fh
  br i1 %i.arc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit283.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i281.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit280.i
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE:bb.a
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

bb.m:                                             ; preds = %bb.k
  %i.bl = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit

_ZN4absl12lts_2025051213hash_internal15MixingHashState26CombineSmallContiguousImplEmPKhm.exit: ; preds = %bb.f, %bb.d, %bb.m, %bb.l, %bb.j, %bb.h
  %.0 = phi i64 [ %i.bl, %bb.m ], [ %i.aj, %bb.h ], [ %i.bd, %bb.j ], [ %i.bk, %bb.l ], [ %i.y, %bb.f ], [ %0, %bb.d ]
  ret i64 %.0
}

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #20

declare noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #17

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE30find_or_prepare_insert_non_sooIS7_EESB_INSF_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.56") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !51 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !225
  %i.c = tail call noundef i64 @_ZN4absl12lts_2025051213hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE(i64 noundef ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64), ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
  %i.d = add i64 %.sroa.0.0.copyload.i, 87
  %i.e = add i64 %i.d, %i.c                       ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !94, !noalias !557
  %i.h = and i64 %i.g, 65535
  %i.i = load i64, ptr %1, align 8, !tbaa !93, !noalias !557 ; 3 uses
  %i.j = lshr i64 %i.e, 7
  %i.k = xor i64 %i.h, %i.j
  %i.l = trunc i64 %i.e to i8
  %i.m = and i8 %i.l, 127
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !52 ; 2 uses
  %i.p = insertelement <16 x i8> poison, i8 %i.m, i64 0
  %i.q = shufflevector <16 x i8> %i.p, <16 x i8> poison, <16 x i32> zeroinitializer
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.pn = phi i64 [ %i.k, %bb.a ], [ %i.ar, %bb.d ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.d ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.i                 ; 5 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.s, i32 0, i32 3, i32 1)
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.7.0
  %i.u = load <16 x i8>, ptr %i.t, align 1, !tbaa !52 ; 2 uses
  %i.v = icmp eq <16 x i8> %i.q, %i.u
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not59 = icmp eq i16 %i.w, 0
  br i1 %.not59, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.034.060 = phi i16 [ %i.af, %.critedge ], [ %i.w, %bb.b ] ; 3 uses
  %i.x = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.034.060, i1 true)
  %i.y = zext nneg i16 %i.x to i64
  %i.z = add i64 %.sroa.7.0, %i.y
  %i.aa = and i64 %i.z, %i.i                      ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.aa ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !51
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !225
  %i.ac = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %i.ac, label %bb.c, label %.critedge, !prof !296

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.r, label %.critedge20, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.22.0.copyload.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i)
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %.critedge20, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ae = add i16 %.sroa.034.060, -1
  %i.af = and i16 %i.ae, %.sroa.034.060           ; 2 uses
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.ag = icmp eq <16 x i8> %i.u, splat (i8 -128)
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not52 = icmp eq i16 %i.ah, 0
  br i1 %.not52, label %bb.d, label %.thread, !prof !118

.thread:                                          ; preds = %.critedge18
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.7.0, %i.aj
  %i.al = and i64 %i.ak, %i.i
  %i.am = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.e, i64 %i.al, i64 %.sroa.15.0) ; 2 uses
  %i.an = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  %.sroa.0.0.copyload.i.i.i.i23 = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i.i.i.i23, i64 %i.am
  br label %bb.e

bb.d:                                             ; preds = %.critedge18
  %i.aq = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.ar = add i64 %i.aq, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %bb.c, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aa
  br label %bb.e

bb.e:                                             ; preds = %.thread, %.critedge20
  %.sink78 = phi ptr [ %i.ao, %.thread ], [ %i.as, %.critedge20 ] ; 2 uses
  %.sink76 = phi ptr [ %i.ap, %.thread ], [ %i.ab, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink78) ]
  store ptr %.sink78, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink76, ptr %.sroa.4.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.at, align 8, !tbaa !504
  ret void
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg, i32 immarg, i32 immarg) #23

declare void @_ZN6google8protobuf2io7Printer9PrintImplESt17basic_string_viewIcSt11char_traitsIcEEN4absl12lts_202505124SpanIKNSt7__cxx1112basic_stringIcS5_SaIcEEEEENS2_12PrintOptionsE(ptr noundef nonnull align 16 dereferenceable(296), i64, ptr, ptr, i64, ptr noundef byval(%"struct.google::protobuf::io::Printer::PrintOptions") align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4absl12lts_202505127CleanupINS0_16cleanup_internal3TagEZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESD_NS0_18container_internal10StringHashENSE_8StringEqESaISt4pairIKSD_SD_EEEEEEDaPKT_EUlvE_ED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !311, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !560
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !303  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !303
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !313  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

_ZN4absl12lts_2025051216cleanup_internal7StorageIZN6google8protobuf2io7Printer8WithVarsINS0_13flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS0_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlvE_E14InvokeCallbackEv.exit: ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE17_M_realloc_insertIJZNS5_8WithVarsIN4absl12lts_2025051213flat_hash_mapISC_SC_NSK_18container_internal10StringHashENSM_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_EEEvN9__gnu_cxx17__normal_iteratorIPSE_SG_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !303  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !331    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #28
  unreachable

_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 2 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %i.t, align 8
  %i.u = load i64, ptr %2, align 8, !tbaa !305
  store i64 %i.u, ptr %i.q, align 8, !tbaa !305
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_, ptr %i.s, align 8, !tbaa !337
  store ptr @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation, ptr %i.r, align 8, !tbaa !313
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, i8 0, i64 24, i1 false), !alias.scope !562, !noalias !565
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !337, !alias.scope !565, !noalias !562
  store ptr %i.x, ptr %i.v, align 8, !tbaa !337, !alias.scope !562, !noalias !565
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !313, !alias.scope !565, !noalias !562 ; 2 uses
  %.not.i.i.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.not.i.i.i.i.i, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !339, !alias.scope !567
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !313, !alias.scope !562, !noalias !565
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false), !alias.scope !565, !noalias !562
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i, %.lr.ph.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, label %.lr.ph.i.i.i, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE12_M_check_lenEmPKc.exit ], [ %i.ac, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22
  %.012.i.i.i18 = phi ptr [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 5 uses
  %.0911.i.i.i19 = phi ptr [ %i.ak, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ], [ %1, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, i8 0, i64 24, i1 false), !alias.scope !568, !noalias !571
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !337, !alias.scope !571, !noalias !568
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !337, !alias.scope !568, !noalias !571
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !313, !alias.scope !571, !noalias !568 ; 2 uses
  %.not.i.i.not.i.i.i.i.i20 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.not.i.i.i.i.i20, label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, label %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21

_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21: ; preds = %.lr.ph.i.i.i17
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(32) %.0911.i.i.i19, i64 16, i1 false), !tbaa.struct !339, !alias.scope !573
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !313, !alias.scope !568, !noalias !571
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false), !alias.scope !571, !noalias !568
  br label %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22

_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22: ; preds = %_ZNSt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEEC2EOSD_.exit.i.i.i.i21, %.lr.ph.i.i.i17
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 32 ; 2 uses
  %.not.i.i.i23 = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i23, label %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, label %.lr.ph.i.i.i17, !llvm.loop !341

_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25: ; preds = %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit
  %.0.lcssa.i.i.i24 = phi ptr [ %i.ad, %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit ], [ %i.al, %_ZSt19__relocate_object_aISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESE_SaISE_EEvPT_PT0_RT1_.exit.i.i.i22 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i26 = icmp eq ptr %i.c, null
  br i1 %.not.i26, label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !304
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ap) #27
  br label %_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit

_ZNSt12_Vector_baseISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE13_M_deallocateEPSE_m.exit: ; preds = %_ZNSt6vectorISt8functionIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEESaISE_EE11_S_relocateEPSE_SH_SH_RSF_.exit25, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !331
  store ptr %.0.lcssa.i.i.i24, ptr %i.a, align 8, !tbaa !303
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !304
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E9_M_invokeERKSt9_Any_dataOSB_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.93") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %.sroa.0.0.copyload.i.i = load i64, ptr %2, align 8, !tbaa !51, !noalias !580
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !225, !noalias !580
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.a = load ptr, ptr %1, align 8, !tbaa !300, !noalias !584
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26, !noalias !584
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !noalias !584
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sroa.2.0.copyload.i.i, ptr %i.b, align 8, !noalias !584
  %i.c = call { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !584 ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26, !noalias !584
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit, label %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i

_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i: ; preds = %bb.a
  %i.f = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !51, !noalias !584
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.2.0.copyload.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !225, !noalias !584
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %0, align 8, !tbaa !51, !alias.scope !580
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.2.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !225, !alias.scope !580
  store i8 0, ptr %i.h, align 8, !tbaa !585, !alias.scope !584
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !50, !alias.scope !584
  store i8 0, ptr %i.j, align 8, !alias.scope !584
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.k, align 8, !tbaa !40, !alias.scope !584
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.l, align 8, !tbaa !587, !alias.scope !584
  br label %_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit

_ZSt10__invoke_rISt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEERZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESF_NSA_18container_internal10StringHashENSG_8StringEqESaISt4pairIKSF_SF_EEEEEEDaPKT_EUlSF_E_JSF_EENSt9enable_ifIX16is_invocable_r_vISO_T0_DpT1_EESO_E4typeEOSU_DpOSV_.exit: ; preds = %bb.a, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i
  %.sink.i.i = phi i8 [ 1, %_ZN6google8protobuf2io7Printer9ValueImplILb0EED2Ev.exit.i.i.i ], [ 0, %bb.a ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 %.sink.i.i, ptr %i.m, align 8, !tbaa !595, !alias.scope !584
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFSt8optionalIN6google8protobuf2io7Printer9ValueImplILb0EEEESt17basic_string_viewIcSt11char_traitsIcEEEZNS4_8WithVarsIN4absl12lts_2025051213flat_hash_mapISB_SB_NSF_18container_internal10StringHashENSH_8StringEqESaISt4pairIKSB_SB_EEEEEEDaPKT_EUlSB_E_E10_M_managerERSt9_Any_dataRKSU_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEDaPKT_EUlSA_E_, ptr %0, align 8, !tbaa !597
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !193
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.a = load i64, ptr %1, align 8, !tbaa !305
  store i64 %i.a, ptr %0, align 8, !tbaa !305
  br label %_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN6google8protobuf2io7Printer8WithVarsIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESC_NS7_18container_internal10StringHashENSD_8StringEqESaISt4pairIKSC_SC_EEEEEEDaPKT_EUlSC_E_E10_M_managerERSt9_Any_dataRKSQ_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE4findIS7_EENSF_8iteratorERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !93
  %i.b = icmp ult i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  %.not.i.i = icmp ult i64 %i.d, 131072
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !52 ; 3 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.0.0.copyload.i.i.i.i.i, align 8, !tbaa !51 ; 3 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !225
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %1, align 8, !tbaa !51
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !225
  %i.f = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i
  br i1 %i.f, label %bb.d, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE10find_smallIS7_EENSF_8iteratorERKT_.exit

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EEvE5applyINS1_12raw_hash_setIS8_NS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEE12EqualElementIS7_EEJRSG_ES8_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSN_DpOSO_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE15_M_range_insertIPZNK4absl12lts_2025051216strings_internal8SplitterINS8_6ByCharENS8_9SkipEmptyES3_E18ConvertToContainerIS5_S3_Lb0EEclERKSD_E8raw_viewEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EET_SO_St20forward_iterator_tag:bb.a
  %i.ad = load ptr, ptr %.012.i.i.i.i.i.prol, align 8, !tbaa !1068
  %i.ae = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !1070
  store i64 %i.af, ptr %.0811.i.i.i.i.i.prol, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !225
  %i.ag = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.prol, i64 16 ; 2 uses
  %i.ai = add nsw i64 %.0910.i.i.i.i.i.prol, -1   ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !1074

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.012.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i55.prol ]
  %.0811.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ah, %.lr.ph.i.i.i.i.i55.prol ]
  %.0910.i.i.i.i.i.unr = phi i64 [ %i.d, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ai, %.lr.ph.i.i.i.i.i55.prol ]
  %i.aj = icmp ult i64 %i.d, 4
  br i1 %i.aj, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.012.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i55 ], [ %.012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i55 ], [ %.0811.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i55 ], [ %.0910.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %i.ak = load ptr, ptr %.012.i.i.i.i.i, align 8, !tbaa !1068
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !1070
  store i64 %i.am, ptr %.0811.i.i.i.i.i, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !225
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 16
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !1068
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1070
  store i64 %i.ar, ptr %i.ao, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.1, align 8, !tbaa !225
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !1068
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1070
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  store ptr %i.au, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.2, align 8, !tbaa !225
  %i.ax = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !1068
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 56
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !1070
  store i64 %i.bb, ptr %i.ay, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56
  store ptr %i.az, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.3, align 8, !tbaa !225
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64
  %i.be = add nsw i64 %.0910.i.i.i.i.i, -4
  %i.bf = icmp sgt i64 %.0910.i.i.i.i.i, 4
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i55, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !1076

_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.bg = getelementptr inbounds i8, ptr %2, i64 %i.m ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bg, %3
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %.0810.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bg, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ] ; 3 uses
  %i.bh = load ptr, ptr %.0810.i.i.i.i, align 8, !tbaa !1068
  %i.bi = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !1070
  store i64 %i.bj, ptr %.011.i.i.i.i, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  store ptr %i.bh, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.bl, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !1077

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !1046
  br label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit: ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit
  %i.bn = phi ptr [ %.pre, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit.loopexit ], [ %i.h, %_ZSt9__advanceIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewlEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.bo = sub nuw nsw i64 %i.d, %i.n
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo ; 3 uses
  store ptr %i.bp, ptr %i.g, align 8, !tbaa !1046
  %.not11.i.i.i.i.i56 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i56, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit, %.lr.ph.i.i.i.i.i57
  %.013.i.i.i.i.i58 = phi ptr [ %i.br, %.lr.ph.i.i.i.i.i57 ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i59 = phi ptr [ %i.bq, %.lr.ph.i.i.i.i.i57 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i58, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i59, i64 16, i1 false), !tbaa.struct !520
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i59, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i58, i64 16
  %.not.i.i.i.i.i60 = icmp eq ptr %i.bq, %i.h
  br i1 %.not.i.i.i.i.i60, label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, label %.lr.ph.i.i.i.i.i57, !llvm.loop !1073

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i57
  %.pre107 = load ptr, ptr %i.g, align 8, !tbaa !1046
  br label %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62

_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62: ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit
  %i.bs = phi ptr [ %.pre107, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62.loopexit ], [ %i.bp, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.m
  store ptr %i.bt, ptr %i.g, align 8, !tbaa !1046
  %i.bu = ashr exact i64 %i.m, 4                  ; 5 uses
  %i.bv = icmp sgt i64 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i64.preheader, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

.lr.ph.i.i.i.i.i64.preheader:                     ; preds = %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62
  %xtraiter = and i64 %i.bu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol

.lr.ph.i.i.i.i.i64.prol:                          ; preds = %.lr.ph.i.i.i.i.i64.preheader, %.lr.ph.i.i.i.i.i64.prol
  %.012.i.i.i.i.i65.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ], [ %2, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0811.i.i.i.i.i66.prol = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ], [ %1, %.lr.ph.i.i.i.i.i64.preheader ] ; 3 uses
  %.0910.i.i.i.i.i67.prol = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ], [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i64.prol ], [ 0, %.lr.ph.i.i.i.i.i64.preheader ]
  %i.bw = load ptr, ptr %.012.i.i.i.i.i65.prol, align 8, !tbaa !1068
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !1070
  store i64 %i.by, ptr %.0811.i.i.i.i.i66.prol, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 8
  store ptr %i.bw, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.prol, align 8, !tbaa !225
  %i.bz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65.prol, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66.prol, i64 16 ; 2 uses
  %i.cb = add nsw i64 %.0910.i.i.i.i.i67.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i64.prol.loopexit, label %.lr.ph.i.i.i.i.i64.prol, !llvm.loop !1078

.lr.ph.i.i.i.i.i64.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i64.prol, %.lr.ph.i.i.i.i.i64.preheader
  %.012.i.i.i.i.i65.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.i64.prol ]
  %.0811.i.i.i.i.i66.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.ca, %.lr.ph.i.i.i.i.i64.prol ]
  %.0910.i.i.i.i.i67.unr = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i64.preheader ], [ %i.cb, %.lr.ph.i.i.i.i.i64.prol ]
  %i.cc = icmp ult i64 %i.bu, 4
  br i1 %i.cc, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, label %.lr.ph.i.i.i.i.i64

.lr.ph.i.i.i.i.i64:                               ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64
  %.012.i.i.i.i.i65 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i64 ], [ %.012.i.i.i.i.i65.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0811.i.i.i.i.i66 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i64 ], [ %.0811.i.i.i.i.i66.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i67 = phi i64 [ %i.cx, %.lr.ph.i.i.i.i.i64 ], [ %.0910.i.i.i.i.i67.unr, %.lr.ph.i.i.i.i.i64.prol.loopexit ] ; 2 uses
  %i.cd = load ptr, ptr %.012.i.i.i.i.i65, align 8, !tbaa !1068
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !1070
  store i64 %i.cf, ptr %.0811.i.i.i.i.i66, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i68 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 8
  store ptr %i.cd, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68, align 8, !tbaa !225
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 16
  %i.ci = load ptr, ptr %i.cg, align 8, !tbaa !1068
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 24
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !1070
  store i64 %i.ck, ptr %i.ch, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.1 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 24
  store ptr %i.ci, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.1, align 8, !tbaa !225
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 32
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !1068
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 40
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !1070
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.2 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 40
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.2, align 8, !tbaa !225
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 48
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !1068
  %i.ct = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 56
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !1070
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !51
  %.sroa.4.0..sroa_idx.i.i.i.i.i68.3 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 56
  store ptr %i.cs, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i68.3, align 8, !tbaa !225
  %i.cv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i65, i64 64
  %i.cw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i66, i64 64
  %i.cx = add nsw i64 %.0910.i.i.i.i.i67, -4
  %i.cy = icmp sgt i64 %.0910.i.i.i.i.i67, 4
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i64, label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit, !llvm.loop !1076

bb.h:                                             ; preds = %bb.b
  %i.cz = load ptr, ptr %0, align 8, !tbaa !1049  ; 5 uses
  %i.da = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.db = sub i64 %i.j, %i.da
  %i.dc = ashr exact i64 %i.db, 4                 ; 4 uses
  %i.dd = sub nsw i64 576460752303423487, %i.dc
  %i.de = icmp ult i64 %i.dd, %i.d
  br i1 %i.de, label %bb.i, label %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.113) #28
  unreachable

_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.h
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 %i.d)
  %i.df = add nsw i64 %.sroa.speculated.i, %i.dc  ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.dc
  %i.dh = tail call i64 @llvm.umin.i64(i64 %i.df, i64 576460752303423487)
  %i.di = select i1 %i.dg, i64 576460752303423487, i64 %i.dh ; 2 uses
  %4 = shl nuw nsw i64 %i.di, 4
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %4) #32 ; 4 uses
  %.not.i = icmp eq ptr %i.cz, %1
  br i1 %.not.i, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71

.lr.ph.i.i.i.i.i71:                               ; preds = %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i71
  %.013.i.i.i.i.i72 = phi ptr [ %i.dk, %.lr.ph.i.i.i.i.i71 ], [ %5, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i73 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i71 ], [ %i.cz, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i72, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i73, i64 16, i1 false), !tbaa.struct !520
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i73, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i72, i64 16 ; 2 uses
  %.not.i.i.i.i.i74 = icmp eq ptr %i.dj, %1
  br i1 %.not.i.i.i.i.i74, label %.lr.ph.i.i.i.i77.preheader, label %.lr.ph.i.i.i.i.i71, !llvm.loop !1073

.lr.ph.i.i.i.i77.preheader:                       ; preds = %.lr.ph.i.i.i.i.i71, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit
  %.011.i.i.i.i78.ph = phi ptr [ %5, %_ZNKSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE12_M_check_lenEmPKc.exit ], [ %i.dk, %.lr.ph.i.i.i.i.i71 ]
  br label %.lr.ph.i.i.i.i77

.lr.ph.i.i.i.i77:                                 ; preds = %.lr.ph.i.i.i.i77.preheader, %.lr.ph.i.i.i.i77
  %.011.i.i.i.i78 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i77 ], [ %.011.i.i.i.i78.ph, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %.0810.i.i.i.i79 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i77 ], [ %2, %.lr.ph.i.i.i.i77.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %.0810.i.i.i.i79, align 8, !tbaa !1068
  %i.dm = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !1070
  store i64 %i.dn, ptr %.011.i.i.i.i78, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 8
  store ptr %i.dl, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i79, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i78, i64 16 ; 3 uses
  %.not.i.i.i.i80 = icmp eq ptr %i.dp, %3
  br i1 %.not.i.i.i.i80, label %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, label %.lr.ph.i.i.i.i77, !llvm.loop !1077

_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82: ; preds = %.lr.ph.i.i.i.i77
  %.not11.i.i.i.i.i83 = icmp eq ptr %1, %i.h
  br i1 %.not11.i.i.i.i.i83, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84

.lr.ph.i.i.i.i.i84:                               ; preds = %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82, %.lr.ph.i.i.i.i.i84
  %.013.i.i.i.i.i85 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i84 ], [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i86 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i84 ], [ %1, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.i.i85, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.012.i.i.i.i.i86, i64 16, i1 false), !tbaa.struct !520
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i86, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i85, i64 16 ; 2 uses
  %.not.i.i.i.i.i87 = icmp eq ptr %i.dr, %i.h
  br i1 %.not.i.i.i.i.i87, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, label %.lr.ph.i.i.i.i.i84, !llvm.loop !1073

_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89: ; preds = %.lr.ph.i.i.i.i.i84, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82
  %.0.lcssa.i.i.i.i.i88 = phi ptr [ %i.dq, %_ZSt22__uninitialized_copy_aIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewPS9_S9_ET0_T_SM_SL_RSaIT1_E.exit82 ], [ %i.ds, %.lr.ph.i.i.i.i.i84 ]
  %.not.i90 = icmp eq ptr %i.cz, null
  br i1 %.not.i90, label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89
  %i.dt = load ptr, ptr %i.e, align 8, !tbaa !1051
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = sub i64 %i.du, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dv) #27
  br label %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit89, %bb.j
  store ptr %5, ptr %0, align 8, !tbaa !1049
  store ptr %.0.lcssa.i.i.i.i.i88, ptr %i.g, align 8, !tbaa !1046
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %i.di
  store ptr %i.dw, ptr %i.e, align 8, !tbaa !1051
  br label %_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit

_ZSt4copyIPZNK4absl12lts_2025051216strings_internal8SplitterINS1_6ByCharENS1_9SkipEmptyESt17basic_string_viewIcSt11char_traitsIcEEE18ConvertToContainerISt6vectorIS9_SaIS9_EES9_Lb0EEclERKSA_E8raw_viewN9__gnu_cxx17__normal_iteratorIPS9_SE_EEET0_T_SP_SO_.exit: ; preds = %.lr.ph.i.i.i.i.i64.prol.loopexit, %.lr.ph.i.i.i.i.i64, %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55, %_ZSt22__uninitialized_move_aIPSt17basic_string_viewIcSt11char_traitsIcEES4_SaIS3_EET0_T_S7_S6_RT1_.exit62, %_ZSt13move_backwardIPSt17basic_string_viewIcSt11char_traitsIcEES4_ET0_T_S6_S5_.exit, %_ZNSt12_Vector_baseISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EE13_M_deallocateEPS3_m.exit, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_123GenerateFieldDocCommentEPNS0_2io7PrinterEPKNS0_15FieldDescriptorERKNS2_7OptionsEi(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef range(i32 1, 4) %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.53", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %14 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %19 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %20 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %0, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 4, ptr nonnull @.str.104)
          to label %bb.c unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %bb.aw, %bb.ar, %bb.y, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.da, %bb.y ], [ %i.fx, %bb.ar ], [ %i.gh, %bb.aw ], [ %.pn54.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit99 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84 ], [ %.pn49.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %i.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit125 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %7, align 8, !tbaa !93     ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !94
  %i.i = and i64 %i.h, 65536
  %i.j = icmp ne i64 %i.i, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.d, ptr noundef %i.f, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.j)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_122GenerateDocCommentBodyINS0_15FieldDescriptorEEEvPNS0_2io7PrinterEPKT_(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call void @_ZNK6google8protobuf15FieldDescriptor11DebugStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(88) %1)
  %i.m = load ptr, ptr %10, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !40
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_111FirstLineOfB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %9, i64 %i.o, ptr %i.m)
          to label %bb.f unwind label %bb.o

bb.f:                                             ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit
  %i.p = load ptr, ptr %9, align 8, !tbaa !44
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !40
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_112EscapePhpdocB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind noalias writable align 8 %8, i64 %i.r, ptr %i.p)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 52, ptr nonnull @.str.122, ptr noundef nonnull align 1 dereferenceable(4) @.str.123, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %8, align 8, !tbaa !44     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.v = load i64, ptr %i.t, align 8, !tbaa !52
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = load ptr, ptr %9, align 8, !tbaa !44     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !52
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
  %i.ac = load ptr, ptr %10, align 8, !tbaa !44   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  switch i32 %3, label %bb.ap [
    i32 1, label %bb.i
    i32 2, label %bb.ac
  ]

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !450
  %i.aj = icmp eq i8 %i.ai, 14
  br i1 %i.aj, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  call fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_120PhpDocSetterTypeNameB5cxx11EPKNS0_15FieldDescriptorERKNS2_7OptionsE(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(40) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #26
  store i64 1, ptr %13, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @.str.12, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #26
  %i.al = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %1)
          to label %bb.k unwind label %bb.r

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_ZN6google8protobuf8compiler3php12_GLOBAL__N_113FullClassNameINS0_14EnumDescriptorEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKT_RKNS2_7OptionsE(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %15, align 8, !tbaa !44
  %i.an = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !40
  store i64 %i.ao, ptr %14, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.am, ptr %i.ap, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %bb.m unwind label %bb.s

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA12_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA11_cSA_EEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %0, i64 70, ptr nonnull @.str.124, ptr noundef nonnull align 1 dereferenceable(12) @.str.125, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 1 dereferenceable(11) @.str.126, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.n unwind label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %12, align 8, !tbaa !44   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.n
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !52
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
end_hunk_4
