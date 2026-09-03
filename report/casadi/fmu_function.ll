Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/fmu_function?download=true
inline.NumInlined: 4370
inline.NumDeleted: 1014
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK6casadi11FmuFunction9eval_taskEPNS_9FmuMemoryExxbbbbb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489: ; preds = %bb.cu
  %i.zv = load i64, ptr %i.zt, align 8, !tbaa !20
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zs, i64 noundef %i.zw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489, %bb.ct
  %.pn415 = phi { ptr, i32 } [ %i.zq, %bb.ct ], [ %i.zr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i489 ], [ %i.zr, %bb.cu ] ; 2 uses
  %i.zx = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.zy = icmp eq ptr %i.zx, %i.xm
  br i1 %i.zy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491
  %i.zz = load i64, ptr %i.xm, align 8, !tbaa !20
  %i.aaa = add i64 %i.zz, 1
  call void @_ZdlPvm(ptr noundef %i.zx, i64 noundef %i.aaa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492, %bb.cs
  %.pn415.pn = phi { ptr, i32 } [ %i.zp, %bb.cs ], [ %.pn415, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i492 ], [ %.pn415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit491 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494, %bb.cr
  %.pn415.pn.pn = phi { ptr, i32 } [ %.pn415.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit494 ], [ %i.zo, %bb.cr ] ; 2 uses
  %i.aab = load ptr, ptr %11, align 8, !tbaa !19  ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.wr
  br i1 %i.aac, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.cv, %bb.ck
  %.sink2020 = phi ptr [ %i.xf, %bb.ck ], [ %i.aab, %bb.cv ]
  %.pn415.pn.pn.pn.ph = phi { ptr, i32 } [ %i.xe, %bb.ck ], [ %.pn415.pn.pn, %bb.cv ]
  %i.aad = load i64, ptr %i.wr, align 8, !tbaa !20
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %.sink2020, i64 noundef %i.aae) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.cv, %bb.ck
  %.pn415.pn.pn.pn = phi { ptr, i32 } [ %i.xe, %bb.ck ], [ %.pn415.pn.pn, %bb.cv ], [ %.pn415.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cw

bb.cw:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488, %bb.co
  %.pn415.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn415.pn.pn.pn, %.body ], [ %i.zg, %bb.co ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit488 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #25
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cn
  %.pn415.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn415.pn.pn.pn.pn, %bb.cw ], [ %i.zf, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.thread616

bb.cy:                                            ; preds = %bb.cd
  %i.aaf = load double, ptr %i.ve, align 8, !tbaa !180
  %i.aag = fneg double %i.aaf
  store double %i.aag, ptr %i.ve, align 8, !tbaa !180
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ca
  %i.aah = load ptr, ptr %i.qj, align 8, !tbaa !234
  %i.aai = load ptr, ptr %i.qi, align 8, !tbaa !187 ; 2 uses
  %i.aaj = ptrtoint ptr %i.aah to i64
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = sub i64 %i.aaj, %i.aak
  %i.aam = ashr exact i64 %i.aal, 3               ; 2 uses
  %.not.i.i498 = icmp ult i64 %i.up, %i.aam
  br i1 %.not.i.i498, label %bb.da, label %.invoke

bb.da:                                            ; preds = %bb.cz
  %i.aan = load double, ptr %i.ve, align 8, !tbaa !180
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %i.up ; 2 uses
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !180
  %i.aaq = fadd double %i.aan, %i.aap
  store double %i.aaq, ptr %i.aao, align 8, !tbaa !180
  %i.aar = load ptr, ptr %i.qm, align 8, !tbaa !629
  %i.aas = load i32, ptr %i.qn, align 8, !tbaa !630
  %i.aat = load ptr, ptr %i.ql, align 8, !tbaa !629 ; 2 uses
  %i.aau = ptrtoint ptr %i.aar to i64
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  %i.aax = shl nsw i64 %i.aaw, 3
  %i.aay = zext i32 %i.aas to i64
  %i.aaz = add nsw i64 %i.aax, %i.aay             ; 2 uses
  %.not.i.i501 = icmp ult i64 %i.up, %i.aaz
  br i1 %.not.i.i501, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, i64 noundef %i.up, i64 noundef %i.aaz) #26
          to label %.noexc502 unwind label %bb.dd

.noexc502:                                        ; preds = %bb.db
  unreachable

bb.dc:                                            ; preds = %bb.da
  %i.aba = sdiv i64 %i.up, 64
  %i.abb = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %i.aba
  %i.abc = and i64 %i.up, -9223372036854775745
  %i.abd = icmp ugt i64 %i.abc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i = select i1 %i.abd, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.abb, i64 %storemerge.idx.i.i.i.i.i.i ; 2 uses
  %i.abe = and i64 %i.up, 63
  %i.abf = shl nuw i64 1, %i.abe
  %i.abg = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !23
  %i.abh = or i64 %i.abg, %i.abf
  store i64 %i.abh, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !23
  %i.abi = load double, ptr %i.ve, align 8, !tbaa !180
  %i.abj = fdiv double 1.000000e+00, %i.abi
  store double %i.abj, ptr %i.ve, align 8, !tbaa !180
  %i.abk = add nuw nsw i64 %.0349993, 1           ; 2 uses
  %exitcond1295.not = icmp eq i64 %i.abk, %i.rs
  br i1 %exitcond1295.not, label %._crit_edge995, label %bb.bw, !llvm.loop !602

bb.dd:                                            ; preds = %bb.db
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %.thread616

._crit_edge995:                                   ; preds = %bb.dc, %_ZNSt6vectorIdSaIdEE6resizeEm.exit447
  %i.abm = load ptr, ptr %i.qo, align 8, !tbaa !236 ; 2 uses
  %i.abn = load ptr, ptr %i.qp, align 8, !tbaa !236 ; 2 uses
  %.not665996 = icmp eq ptr %i.abm, %i.abn
  br i1 %.not665996, label %._crit_edge1000, label %.lr.ph999

.lr.ph999:                                        ; preds = %._crit_edge995
  %i.abo = load ptr, ptr %i.qr, align 8, !tbaa !629
  %i.abp = load i32, ptr %i.qs, align 8, !tbaa !630
  %i.abq = load ptr, ptr %i.qq, align 8, !tbaa !629 ; 2 uses
  %i.abr = ptrtoint ptr %i.abo to i64
  %i.abs = ptrtoint ptr %i.abq to i64
  %i.abt = sub i64 %i.abr, %i.abs
  %i.abu = shl nsw i64 %i.abt, 3
  %i.abv = zext i32 %i.abp to i64
  %i.abw = add nsw i64 %i.abu, %i.abv             ; 2 uses
  br label %bb.de

._crit_edge1000:                                  ; preds = %bb.di, %._crit_edge995
  %i.abx = invoke noundef i32 @_ZNK6casadi3Fmu4evalEPNS_9FmuMemoryE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %1)
          to label %bb.dl unwind label %.loopexit672

bb.de:                                            ; preds = %.lr.ph999, %bb.di
  %.sroa.0570.0997 = phi ptr [ %i.abm, %.lr.ph999 ], [ %i.aco, %bb.di ] ; 2 uses
  %i.aby = load i64, ptr %.sroa.0570.0997, align 8, !tbaa !23 ; 8 uses
  %.not.i.i503 = icmp ult i64 %i.aby, %i.abw
  br i1 %.not.i.i503, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, i64 noundef %i.aby, i64 noundef %i.abw) #26
          to label %.noexc508 unwind label %bb.dj

.noexc508:                                        ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.abz = sdiv i64 %i.aby, 64
  %i.aca = getelementptr inbounds [8 x i8], ptr %i.abq, i64 %i.abz
  %i.acb = and i64 %i.aby, -9223372036854775745
  %i.acc = icmp ugt i64 %i.acb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i504 = select i1 %i.acc, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i505 = getelementptr inbounds i8, ptr %i.aca, i64 %storemerge.idx.i.i.i.i.i.i504 ; 2 uses
  %i.acd = and i64 %i.aby, 63
  %i.ace = shl nuw i64 1, %i.acd
  %i.acf = load i64, ptr %storemerge.i.i.i.i.i.i505, align 8, !tbaa !23
  %i.acg = or i64 %i.acf, %i.ace
  store i64 %i.acg, ptr %storemerge.i.i.i.i.i.i505, align 8, !tbaa !23
  %i.ach = load ptr, ptr %i.qu, align 8, !tbaa !233
  %i.aci = load ptr, ptr %i.qt, align 8, !tbaa !189 ; 2 uses
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = ptrtoint ptr %i.aci to i64
  %i.acl = sub i64 %i.acj, %i.ack
  %i.acm = ashr exact i64 %i.acl, 3               ; 2 uses
  %.not.i.i510 = icmp ult i64 %i.aby, %i.acm
  br i1 %.not.i.i510, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.aby, i64 noundef %i.acm) #26
          to label %.noexc511 unwind label %bb.dk

.noexc511:                                        ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.aby
  store i64 -1, ptr %i.acn, align 8, !tbaa !23
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.0570.0997, i64 8 ; 2 uses
  %.not665 = icmp eq ptr %i.aco, %i.abn
  br i1 %.not665, label %._crit_edge1000, label %bb.de

bb.dj:                                            ; preds = %bb.df
  %i.acp = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dk:                                            ; preds = %bb.dh
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dl:                                            ; preds = %._crit_edge1000
  %.not424 = icmp eq i32 %i.abx, 0
  br i1 %.not424, label %bb.dm, label %.thread612

bb.dm:                                            ; preds = %bb.dl
  %i.acr = load ptr, ptr %i.qv, align 8, !tbaa !278
  %i.acs = invoke noundef i64 @_ZNK6casadi3Fmu4n_inEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.dn unwind label %.loopexit672 ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %.not5.i.i.i = icmp eq i64 %i.acs, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.dn
  %.idx = shl i64 %i.acs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.acr, i8 0, i64 %.idx, i1 false), !tbaa !180
  br label %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader

_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader:         ; preds = %.lr.ph.i.i.i.preheader, %bb.dn
  br label %_ZSt4fillIPdiEvT_S1_RKT0_.exit

_ZSt4fillIPdiEvT_S1_RKT0_.exit:                   ; preds = %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader, %._crit_edge1003
  %.0348 = phi i64 [ %i.afp, %._crit_edge1003 ], [ 0, %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader ] ; 3 uses
  %i.act = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.qw)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %_ZSt4fillIPdiEvT_S1_RKT0_.exit
  %.not426 = icmp slt i64 %.0348, %i.act
  br i1 %.not426, label %bb.dq, label %bb.dx

bb.dp:                                            ; preds = %bb.du, %bb.ds, %bb.dr, %bb.dq, %_ZSt4fillIPdiEvT_S1_RKT0_.exit
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dq:                                            ; preds = %bb.do
  tail call void @_ZN6casadi14casadi_jac_preIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EEx(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qy, i64 noundef %.0348)
  %i.acv = load i64, ptr %i.qy, align 8, !tbaa !615
  %i.acw = load ptr, ptr %i.qz, align 8, !tbaa !616
  %i.acx = load ptr, ptr %i.ra, align 8, !tbaa !617
  invoke void @_ZNK6casadi3Fmu7set_fwdEPNS_9FmuMemoryExPKxPKd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.acv, ptr noundef %i.acw, ptr noundef %i.acx)
          to label %bb.dr unwind label %bb.dp

bb.dr:                                            ; preds = %bb.dq
  %i.acy = load i64, ptr %i.rb, align 8, !tbaa !618
  %i.acz = load ptr, ptr %i.rc, align 8, !tbaa !619
  %i.ada = load ptr, ptr %i.rd, align 8, !tbaa !620
  invoke void @_ZNK6casadi3Fmu11request_fwdEPNS_9FmuMemoryExPKxS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.acy, ptr noundef %i.acz, ptr noundef %i.ada)
          to label %bb.ds unwind label %bb.dp

bb.ds:                                            ; preds = %bb.dr
  %i.adb = invoke noundef i32 @_ZNK6casadi3Fmu8eval_fwdEPNS_9FmuMemoryEb(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i1 noundef zeroext true)
          to label %bb.dt unwind label %bb.dp

bb.dt:                                            ; preds = %bb.ds
  %.not425 = icmp eq i32 %i.adb, 0
  br i1 %.not425, label %bb.du, label %.thread612

bb.du:                                            ; preds = %bb.dt
  %i.adc = load i64, ptr %i.rb, align 8, !tbaa !618
  %i.add = load ptr, ptr %i.rc, align 8, !tbaa !619
  %i.ade = load ptr, ptr %i.re, align 8, !tbaa !621
  invoke void @_ZNK6casadi3Fmu7get_fwdEPNS_9FmuMemoryExPKxPd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.adc, ptr noundef %i.add, ptr noundef %i.ade)
          to label %bb.dv unwind label %bb.dp

bb.dv:                                            ; preds = %bb.du
  %i.adf = load i64, ptr %i.rb, align 8, !tbaa !280 ; 8 uses
  %i.adg = icmp sgt i64 %i.adf, 0
  br i1 %i.adg, label %.lr.ph.i512, label %._crit_edge1003

.lr.ph.i512:                                      ; preds = %bb.dv
  %i.adh = load ptr, ptr %i.rf, align 8, !tbaa !275 ; 8 uses
  %i.adi = load ptr, ptr %i.re, align 8, !tbaa !274 ; 8 uses
  %min.iters.check2007 = icmp ult i64 %i.adf, 4
  br i1 %min.iters.check2007, label %scalar.ph2006.preheader, label %vector.memcheck2000

vector.memcheck2000:                              ; preds = %.lr.ph.i512
  %i.adj = shl i64 %i.adf, 3                      ; 2 uses
  %scevgep2001 = getelementptr i8, ptr %i.adi, i64 %i.adj
  %scevgep2002 = getelementptr i8, ptr %i.adh, i64 %i.adj
  %bound02003 = icmp ult ptr %i.adi, %scevgep2002
  %bound12004 = icmp ult ptr %i.adh, %scevgep2001
  %found.conflict2005 = and i1 %bound02003, %bound12004
  br i1 %found.conflict2005, label %scalar.ph2006.preheader, label %vector.ph2008

vector.ph2008:                                    ; preds = %vector.memcheck2000
  %n.vec2009 = and i64 %i.adf, 9223372036854775804 ; 3 uses
  br label %vector.body2010

vector.body2010:                                  ; preds = %vector.body2010, %vector.ph2008
  %index2011 = phi i64 [ 0, %vector.ph2008 ], [ %index.next2016, %vector.body2010 ] ; 3 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %index2011 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %wide.load2012 = load <2 x double>, ptr %i.adk, align 8, !tbaa !180, !alias.scope !631
  %wide.load2013 = load <2 x double>, ptr %i.adl, align 8, !tbaa !180, !alias.scope !631
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %index2011 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16 ; 2 uses
  %wide.load2014 = load <2 x double>, ptr %i.adm, align 8, !tbaa !180, !alias.scope !632, !noalias !631
  %wide.load2015 = load <2 x double>, ptr %i.adn, align 8, !tbaa !180, !alias.scope !632, !noalias !631
  %i.ado = fmul <2 x double> %wide.load2012, %wide.load2014
  %i.adp = fmul <2 x double> %wide.load2013, %wide.load2015
  store <2 x double> %i.ado, ptr %i.adm, align 8, !tbaa !180, !alias.scope !632, !noalias !631
  store <2 x double> %i.adp, ptr %i.adn, align 8, !tbaa !180, !alias.scope !632, !noalias !631
  %index.next2016 = add nuw i64 %index2011, 4     ; 2 uses
  %i.adq = icmp eq i64 %index.next2016, %n.vec2009
  br i1 %i.adq, label %middle.block2017, label %vector.body2010, !llvm.loop !606

middle.block2017:                                 ; preds = %vector.body2010
  %cmp.n2018 = icmp eq i64 %i.adf, %n.vec2009
  br i1 %cmp.n2018, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit515, label %scalar.ph2006.preheader

scalar.ph2006.preheader:                          ; preds = %vector.memcheck2000, %.lr.ph.i512, %middle.block2017
  %.06.i513.ph = phi i64 [ 0, %vector.memcheck2000 ], [ 0, %.lr.ph.i512 ], [ %n.vec2009, %middle.block2017 ] ; 3 uses
  %xtraiter2234 = and i64 %i.adf, 3               ; 2 uses
  %lcmp.mod2235.not = icmp eq i64 %xtraiter2234, 0
  br i1 %lcmp.mod2235.not, label %scalar.ph2006.prol.loopexit, label %scalar.ph2006.prol

scalar.ph2006.prol:                               ; preds = %scalar.ph2006.preheader, %scalar.ph2006.prol
  %.06.i513.prol = phi i64 [ %i.adw, %scalar.ph2006.prol ], [ %.06.i513.ph, %scalar.ph2006.preheader ] ; 3 uses
  %prol.iter2236 = phi i64 [ %prol.iter2236.next, %scalar.ph2006.prol ], [ 0, %scalar.ph2006.preheader ]
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %.06.i513.prol
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !180
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %.06.i513.prol ; 2 uses
  %i.adu = load double, ptr %i.adt, align 8, !tbaa !180
  %i.adv = fmul double %i.ads, %i.adu
  store double %i.adv, ptr %i.adt, align 8, !tbaa !180
  %i.adw = add nuw nsw i64 %.06.i513.prol, 1      ; 2 uses
  %prol.iter2236.next = add i64 %prol.iter2236, 1 ; 2 uses
  %prol.iter2236.cmp.not = icmp eq i64 %prol.iter2236.next, %xtraiter2234
  br i1 %prol.iter2236.cmp.not, label %scalar.ph2006.prol.loopexit, label %scalar.ph2006.prol, !llvm.loop !607

scalar.ph2006.prol.loopexit:                      ; preds = %scalar.ph2006.prol, %scalar.ph2006.preheader
  %.06.i513.unr = phi i64 [ %.06.i513.ph, %scalar.ph2006.preheader ], [ %i.adw, %scalar.ph2006.prol ]
  %i.adx = sub nsw i64 %.06.i513.ph, %i.adf
  %i.ady = icmp ugt i64 %i.adx, -4
  br i1 %i.ady, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit515, label %scalar.ph2006

scalar.ph2006:                                    ; preds = %scalar.ph2006.prol.loopexit, %scalar.ph2006
  %.06.i513 = phi i64 [ %i.aew, %scalar.ph2006 ], [ %.06.i513.unr, %scalar.ph2006.prol.loopexit ] ; 6 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %.06.i513
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !180
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %.06.i513 ; 2 uses
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !180
  %i.aed = fmul double %i.aea, %i.aec
  store double %i.aed, ptr %i.aeb, align 8, !tbaa !180
  %i.aee = add nuw nsw i64 %.06.i513, 1           ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.aee
  %i.aeg = load double, ptr %i.aef, align 8, !tbaa !180
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.aee ; 2 uses
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !180
  %i.aej = fmul double %i.aeg, %i.aei
  store double %i.aej, ptr %i.aeh, align 8, !tbaa !180
  %i.aek = add nuw nsw i64 %.06.i513, 2           ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.aek
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !180
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.aek ; 2 uses
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !180
  %i.aep = fmul double %i.aem, %i.aeo
  store double %i.aep, ptr %i.aen, align 8, !tbaa !180
  %i.aeq = add nuw nsw i64 %.06.i513, 3           ; 2 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.aeq
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !180
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.aeq ; 2 uses
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !180
  %i.aev = fmul double %i.aes, %i.aeu
  store double %i.aev, ptr %i.aet, align 8, !tbaa !180
  %i.aew = add nuw nsw i64 %.06.i513, 4           ; 2 uses
  %exitcond.not.i514.3 = icmp eq i64 %i.aew, %i.adf
  br i1 %exitcond.not.i514.3, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit515, label %scalar.ph2006, !llvm.loop !608

_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit515: ; preds = %scalar.ph2006.prol.loopexit, %scalar.ph2006, %middle.block2017
  %.pre1318 = load i64, ptr %i.rb, align 8, !tbaa !618 ; 5 uses
  %i.aex = icmp sgt i64 %.pre1318, 0
  br i1 %i.aex, label %.lr.ph1002, label %._crit_edge1003

.lr.ph1002:                                       ; preds = %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit515
  %i.aey = load ptr, ptr %i.rg, align 8, !tbaa !267 ; 3 uses
  %i.aez = load ptr, ptr %i.rc, align 8, !tbaa !619 ; 3 uses
  %i.afa = load ptr, ptr %i.re, align 8, !tbaa !621 ; 3 uses
  %i.afb = load ptr, ptr %i.qv, align 8, !tbaa !278 ; 3 uses
  %i.afc = load ptr, ptr %i.rd, align 8, !tbaa !620 ; 3 uses
  %xtraiter2238 = and i64 %.pre1318, 1
  %i.afd = icmp eq i64 %.pre1318, 1
  br i1 %i.afd, label %.epil.preheader2237, label %.lr.ph1002.new

.lr.ph1002.new:                                   ; preds = %.lr.ph1002
  %unroll_iter2242 = and i64 %.pre1318, 9223372036854775806
  br label %bb.dw

._crit_edge1003.loopexit.unr-lcssa:               ; preds = %bb.dw
  %lcmp.mod2240.not = icmp eq i64 %xtraiter2238, 0
  br i1 %lcmp.mod2240.not, label %._crit_edge1003, label %.epil.preheader2237

.epil.preheader2237:                              ; preds = %._crit_edge1003.loopexit.unr-lcssa, %.lr.ph1002
  %.03471001.epil.init = phi i64 [ 0, %.lr.ph1002 ], [ %i.agn, %._crit_edge1003.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2241 = trunc i64 %.pre1318 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2241)
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %.03471001.epil.init
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !34
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.aey, i64 %i.aff
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !180
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %.03471001.epil.init
end_hunk_0
begin_hunk_1_@_ZNK6casadi11FmuFunction9eval_taskEPNS_9FmuMemoryExxbbbbb:bb.a
  %i.agx = ashr exact i64 %i.agw, 3               ; 4 uses
  br label %bb.ee

bb.dz:                                            ; preds = %.lr.ph1009, %._crit_edge1007
  %.03461008 = phi i64 [ 0, %.lr.ph1009 ], [ %i.ahl, %._crit_edge1007 ] ; 2 uses
  %i.agy = getelementptr [8 x i8], ptr %i.agq, i64 %.03461008
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !34
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.agz ; 2 uses
  %i.ahb = load i64, ptr %i.aha, align 8, !tbaa !34 ; 2 uses
  %i.ahc = getelementptr i8, ptr %i.aha, i64 8    ; 2 uses
  %i.ahd = load i64, ptr %i.ahc, align 8, !tbaa !34
  %i.ahe = icmp slt i64 %i.ahb, %i.ahd
  br i1 %i.ahe, label %.lr.ph1006, label %._crit_edge1007

.lr.ph1006:                                       ; preds = %bb.dz
  %i.ahf = load ptr, ptr %i.qh, align 8, !tbaa !233
  %i.ahg = load ptr, ptr %i.qg, align 8, !tbaa !189 ; 2 uses
  %i.ahh = ptrtoint ptr %i.ahf to i64
  %i.ahi = ptrtoint ptr %i.ahg to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi
  %i.ahk = ashr exact i64 %i.ahj, 3               ; 2 uses
  br label %bb.ea

._crit_edge1007:                                  ; preds = %bb.ec, %bb.dz
  %i.ahl = add nuw nsw i64 %.03461008, 1          ; 2 uses
  %exitcond1297.not = icmp eq i64 %i.ahl, %i.rs
  br i1 %exitcond1297.not, label %.lr.ph1015, label %bb.dz, !llvm.loop !611

bb.ea:                                            ; preds = %.lr.ph1006, %bb.ec
  %.03451004 = phi i64 [ %i.ahb, %.lr.ph1006 ], [ %i.ahu, %bb.ec ] ; 2 uses
  %i.ahm = getelementptr inbounds [8 x i8], ptr %i.py, i64 %.03451004
  %i.ahn = load i64, ptr %i.ahm, align 8, !tbaa !34 ; 3 uses
  %.not.i.i520 = icmp ult i64 %i.ahn, %i.ahk
  br i1 %.not.i.i520, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.ahn, i64 noundef %i.ahk) #26
          to label %.noexc521 unwind label %bb.ed

.noexc521:                                        ; preds = %bb.eb
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ahn
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !23
  %i.ahq = load ptr, ptr %i.rh, align 8, !tbaa !279
  %i.ahr = getelementptr inbounds [8 x i8], ptr %i.ahq, i64 %i.ahp ; 2 uses
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !34
  %i.aht = add nsw i64 %i.ahs, 1
  store i64 %i.aht, ptr %i.ahr, align 8, !tbaa !34
  %i.ahu = add nsw i64 %.03451004, 1              ; 2 uses
  %i.ahv = load i64, ptr %i.ahc, align 8, !tbaa !34
  %i.ahw = icmp slt i64 %i.ahu, %i.ahv
  br i1 %i.ahw, label %bb.ea, label %._crit_edge1007, !llvm.loop !612

bb.ed:                                            ; preds = %bb.eb
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ee:                                            ; preds = %.lr.ph1015, %._crit_edge1013
  %.03441014 = phi i64 [ 0, %.lr.ph1015 ], [ %i.ajk, %._crit_edge1013 ] ; 4 uses
  %i.ahy = getelementptr [8 x i8], ptr %i.agr, i64 %.03441014
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !34 ; 4 uses
  %.not.i.i523 = icmp ult i64 %i.ahz, %i.agx
  br i1 %.not.i.i523, label %bb.ef, label %.invoke2023

bb.ef:                                            ; preds = %bb.ee
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %i.ahz
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !23 ; 8 uses
  %i.aic = load ptr, ptr %i.qj, align 8, !tbaa !234
  %i.aid = load ptr, ptr %i.qi, align 8, !tbaa !187 ; 2 uses
  %i.aie = ptrtoint ptr %i.aic to i64
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = sub i64 %i.aie, %i.aif
  %i.aih = ashr exact i64 %i.aig, 3               ; 2 uses
  %.not.i.i526 = icmp ult i64 %i.aib, %i.aih
  br i1 %.not.i.i526, label %bb.eg, label %.invoke2023

.invoke2023:                                      ; preds = %bb.ef, %bb.ee
  %i.aii = phi i64 [ %i.ahz, %bb.ee ], [ %i.aib, %bb.ef ]
  %i.aij = phi i64 [ %i.agx, %bb.ee ], [ %i.aih, %bb.ef ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.aii, i64 noundef %i.aij) #26
          to label %.cont2024 unwind label %bb.ej

.cont2024:                                        ; preds = %.invoke2023
  unreachable

bb.eg:                                            ; preds = %bb.ef
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0593.4, i64 %.03441014
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !180
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aid, i64 %i.aib
  store double %i.ail, ptr %i.aim, align 8, !tbaa !180
  %i.ain = load ptr, ptr %i.qm, align 8, !tbaa !629
  %i.aio = load i32, ptr %i.qn, align 8, !tbaa !630
  %i.aip = load ptr, ptr %i.ql, align 8, !tbaa !629 ; 2 uses
  %i.aiq = ptrtoint ptr %i.ain to i64
  %i.air = ptrtoint ptr %i.aip to i64
  %i.ais = sub i64 %i.aiq, %i.air
  %i.ait = shl nsw i64 %i.ais, 3
  %i.aiu = zext i32 %i.aio to i64
  %i.aiv = add nsw i64 %i.ait, %i.aiu             ; 2 uses
  %.not.i.i529 = icmp ult i64 %i.aib, %i.aiv
  br i1 %.not.i.i529, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, i64 noundef %i.aib, i64 noundef %i.aiv) #26
          to label %.noexc534 unwind label %bb.ek

.noexc534:                                        ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.eg
  %i.aiw = sdiv i64 %i.aib, 64
  %i.aix = getelementptr inbounds [8 x i8], ptr %i.aip, i64 %i.aiw
  %i.aiy = and i64 %i.aib, -9223372036854775745
  %i.aiz = icmp ugt i64 %i.aiy, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i530 = select i1 %i.aiz, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i531 = getelementptr inbounds i8, ptr %i.aix, i64 %storemerge.idx.i.i.i.i.i.i530 ; 2 uses
  %i.aja = and i64 %i.aib, 63
  %i.ajb = shl nuw i64 1, %i.aja
  %i.ajc = load i64, ptr %storemerge.i.i.i.i.i.i531, align 8, !tbaa !23
  %i.ajd = or i64 %i.ajc, %i.ajb
  store i64 %i.ajd, ptr %storemerge.i.i.i.i.i.i531, align 8, !tbaa !23
  %i.aje = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.ahz ; 2 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !34 ; 2 uses
  %i.ajg = getelementptr i8, ptr %i.aje, i64 8
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !34 ; 2 uses
  %i.aji = icmp slt i64 %i.ajf, %i.ajh
  br i1 %i.aji, label %.lr.ph1012, label %._crit_edge1013

.lr.ph1012:                                       ; preds = %bb.ei
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0576.4, i64 %.03441014
  br label %bb.el

._crit_edge1013:                                  ; preds = %bb.eq, %bb.ei
  %i.ajk = add nuw nsw i64 %.03441014, 1          ; 2 uses
  %exitcond1299.not = icmp eq i64 %i.ajk, %i.rs
  br i1 %exitcond1299.not, label %.loopexit, label %bb.ee, !llvm.loop !613

bb.ej:                                            ; preds = %.invoke2023
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ek:                                            ; preds = %bb.eh
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.el:                                            ; preds = %.lr.ph1012, %bb.eq
  %.01010 = phi i64 [ %i.ajf, %.lr.ph1012 ], [ %i.akh, %bb.eq ] ; 3 uses
  %i.ajn = getelementptr inbounds [8 x i8], ptr %i.py, i64 %.01010
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !34 ; 3 uses
  %.not.i.i536 = icmp ult i64 %i.ajo, %i.agx
  br i1 %.not.i.i536, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.ajo, i64 noundef %i.agx) #26
          to label %.noexc537 unwind label %bb.eo

.noexc537:                                        ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %i.ajo
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !23 ; 3 uses
  %i.ajr = load ptr, ptr %i.rh, align 8, !tbaa !279
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.ajr, i64 %i.ajq
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !34
  %i.aju = icmp sgt i64 %i.ajt, 1
  br i1 %i.aju, label %bb.eq, label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.ajw = load double, ptr %i.ajj, align 8, !tbaa !180
  %i.ajx = load ptr, ptr %i.qv, align 8, !tbaa !278
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.ajx, i64 %i.ajq
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !180
  %i.aka = load ptr, ptr %i.ri, align 8, !tbaa !268
  %i.akb = getelementptr inbounds [8 x i8], ptr %i.aka, i64 %i.ajq
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !180
  %i.akd = fsub double %i.ajz, %i.akc
  %i.ake = fmul double %i.ajw, %i.akd
  br label %bb.eq

bb.eq:                                            ; preds = %bb.en, %bb.ep
  %.sink = phi double [ %i.ake, %bb.ep ], [ +qnan, %bb.en ]
  %i.akf = load ptr, ptr %i.rj, align 8, !tbaa !270
  %i.akg = getelementptr inbounds [8 x i8], ptr %i.akf, i64 %.01010
  store double %.sink, ptr %i.akg, align 8, !tbaa !180
  %i.akh = add i64 %.01010, 1                     ; 2 uses
  %exitcond1298.not = icmp eq i64 %i.akh, %i.ajh
  br i1 %exitcond1298.not, label %._crit_edge1013, label %bb.el, !llvm.loop !614

.thread612:                                       ; preds = %.loopexit, %bb.dl, %bb.dt
  %.7382 = phi i32 [ 1, %bb.dt ], [ 47, %.loopexit ], [ 1, %bb.dl ] ; 2 uses
  %.not.i.i.i539 = icmp eq ptr %.sroa.0576.4, null
  br i1 %.not.i.i.i539, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.er

bb.er:                                            ; preds = %.thread612.thread, %.thread612
  %.7382660 = phi i32 [ 1, %.thread612.thread ], [ %.7382, %.thread612 ]
  %i.aki = ptrtoint ptr %.sroa.23.4 to i64
  %i.akj = ptrtoint ptr %.sroa.0576.4 to i64
  %i.akk = sub i64 %i.aki, %i.akj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0576.4, i64 noundef %i.akk) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.thread612, %bb.er
  %.7382661 = phi i32 [ %.7382, %.thread612 ], [ %.7382660, %bb.er ]
  %.not.i.i.i540 = icmp eq ptr %.sroa.0593.4, null
  br i1 %.not.i.i.i540, label %_ZNSt6vectorIdSaIdEED2Ev.exit541, label %.split

.split:                                           ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.akl = ptrtoint ptr %.sroa.18602.4 to i64
  %i.akm = ptrtoint ptr %.sroa.0593.4 to i64
  %i.akn = sub i64 %i.akl, %i.akm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0593.4, i64 noundef %i.akn) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit541

_ZNSt6vectorIdSaIdEED2Ev.exit541:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %.split
  %14 = icmp eq i32 %.7382661, 1
  br i1 %14, label %.loopexit683, label %_ZNSt6vectorIdSaIdEED2Ev.exit541.thread

bb.es:                                            ; preds = %.loopexit670, %.loopexit.split-lp, %.loopexit672, %.loopexit.split-lp673, %bb.dj, %bb.dk, %bb.dp, %bb.ed, %bb.eo, %bb.ek, %bb.ej, %bb.be
  %.sroa.18602.3 = phi ptr [ %.sroa.18602.01017, %bb.be ], [ %.sroa.18602.4, %bb.dp ], [ %.sroa.18602.4, %bb.ed ], [ %.sroa.18602.4, %bb.eo ], [ %.sroa.18602.4, %bb.ek ], [ %.sroa.18602.4, %bb.ej ], [ %.sroa.18602.1.ph674, %.loopexit.split-lp673 ], [ %.sroa.18602.4, %bb.dk ], [ %.sroa.18602.4, %bb.dj ], [ %.sroa.18602.1.ph, %.loopexit672 ], [ %.sroa.18602.4, %.loopexit670 ], [ %.sroa.18602.4, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0576.3 = phi ptr [ %.sroa.0576.01018, %bb.be ], [ %.sroa.0576.4, %bb.dp ], [ %.sroa.0576.4, %bb.ed ], [ %.sroa.0576.4, %bb.eo ], [ %.sroa.0576.4, %bb.ek ], [ %.sroa.0576.4, %bb.ej ], [ %.sroa.0576.01018, %.loopexit.split-lp673 ], [ %.sroa.0576.4, %bb.dk ], [ %.sroa.0576.4, %bb.dj ], [ %.sroa.0576.1.ph, %.loopexit672 ], [ %.sroa.0576.4, %.loopexit670 ], [ %.sroa.0576.4, %.loopexit.split-lp ] ; 2 uses
  %.sroa.23.3 = phi ptr [ %.sroa.23.01020, %bb.be ], [ %.sroa.23.4, %bb.dp ], [ %.sroa.23.4, %bb.ed ], [ %.sroa.23.4, %bb.eo ], [ %.sroa.23.4, %bb.ek ], [ %.sroa.23.4, %bb.ej ], [ %.sroa.23.01020, %.loopexit.split-lp673 ], [ %.sroa.23.4, %bb.dk ], [ %.sroa.23.4, %bb.dj ], [ %.sroa.23.1.ph, %.loopexit672 ], [ %.sroa.23.4, %.loopexit670 ], [ %.sroa.23.4, %.loopexit.split-lp ]
  %.sroa.0593.3 = phi ptr [ %.sroa.0593.01021, %bb.be ], [ %.sroa.0593.4, %bb.dp ], [ %.sroa.0593.4, %bb.ed ], [ %.sroa.0593.4, %bb.eo ], [ %.sroa.0593.4, %bb.ek ], [ %.sroa.0593.4, %bb.ej ], [ %.sroa.0593.1.ph675, %.loopexit.split-lp673 ], [ %.sroa.0593.4, %bb.dk ], [ %.sroa.0593.4, %bb.dj ], [ %.sroa.0593.1.ph, %.loopexit672 ], [ %.sroa.0593.4, %.loopexit670 ], [ %.sroa.0593.4, %.loopexit.split-lp ] ; 2 uses
  %.pn429.pn.pn = phi { ptr, i32 } [ %i.rm, %bb.be ], [ %i.acu, %bb.dp ], [ %i.ahx, %bb.ed ], [ %i.ajv, %bb.eo ], [ %i.ajm, %bb.ek ], [ %i.ajl, %bb.ej ], [ %lpad.loopexit.split-lp677, %.loopexit.split-lp673 ], [ %i.acq, %bb.dk ], [ %i.acp, %bb.dj ], [ %lpad.loopexit676, %.loopexit672 ], [ %lpad.loopexit, %.loopexit670 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i542 = icmp eq ptr %.sroa.0576.3, null
  br i1 %.not.i.i.i542, label %_ZNSt6vectorIdSaIdEED2Ev.exit543, label %.thread616

.thread616:                                       ; preds = %bb.dd, %bb.cx, %bb.es
  %.pn429.pn.pn629 = phi { ptr, i32 } [ %.pn429.pn.pn, %bb.es ], [ %i.abl, %bb.dd ], [ %.pn415.pn.pn.pn.pn.pn, %bb.cx ]
  %.sroa.0593.3627 = phi ptr [ %.sroa.0593.3, %bb.es ], [ %.sroa.0593.4, %bb.dd ], [ %.sroa.0593.4, %bb.cx ]
  %.sroa.23.3626 = phi ptr [ %.sroa.23.3, %bb.es ], [ %.sroa.23.4, %bb.dd ], [ %.sroa.23.4, %bb.cx ]
  %.sroa.0576.3625 = phi ptr [ %.sroa.0576.3, %bb.es ], [ %.sroa.0576.4, %bb.dd ], [ %.sroa.0576.4, %bb.cx ] ; 2 uses
  %.sroa.18602.3623 = phi ptr [ %.sroa.18602.3, %bb.es ], [ %.sroa.18602.4, %bb.dd ], [ %.sroa.18602.4, %bb.cx ]
  %i.ako = ptrtoint ptr %.sroa.23.3626 to i64
  %i.akp = ptrtoint ptr %.sroa.0576.3625 to i64
  %i.akq = sub i64 %i.ako, %i.akp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0576.3625, i64 noundef %i.akq) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit543

_ZNSt6vectorIdSaIdEED2Ev.exit543:                 ; preds = %bb.es, %.thread616
  %.pn429.pn.pn630 = phi { ptr, i32 } [ %.pn429.pn.pn, %bb.es ], [ %.pn429.pn.pn629, %.thread616 ]
  %.sroa.0593.3628 = phi ptr [ %.sroa.0593.3, %bb.es ], [ %.sroa.0593.3627, %.thread616 ] ; 3 uses
  %.sroa.18602.3624 = phi ptr [ %.sroa.18602.3, %bb.es ], [ %.sroa.18602.3623, %.thread616 ]
  %.not.i.i.i544 = icmp eq ptr %.sroa.0593.3628, null
  br i1 %.not.i.i.i544, label %_ZNSt6vectorIdSaIdEED2Ev.exit545, label %_ZNSt6vectorIdSaIdEED2Ev.exit543.thread

_ZNSt6vectorIdSaIdEED2Ev.exit543.thread:          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit543
  %i.akr = ptrtoint ptr %.sroa.18602.3624 to i64
  %i.aks = ptrtoint ptr %.sroa.0593.3628 to i64
  %i.akt = sub i64 %i.akr, %i.aks
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0593.3628, i64 noundef %i.akt) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit545

_ZNSt6vectorIdSaIdEED2Ev.exit545:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit543, %_ZNSt6vectorIdSaIdEED2Ev.exit543.thread
  resume { ptr, i32 } %.pn429.pn.pn630

_ZNSt6vectorIdSaIdEED2Ev.exit541.thread:          ; preds = %bb.bb, %_ZNSt6vectorIdSaIdEED2Ev.exit541, %.critedge
  br label %.loopexit683

.loopexit683:                                     ; preds = %._crit_edge957, %._crit_edge970, %bb.ah, %_ZNSt6vectorIdSaIdEED2Ev.exit541, %._crit_edge, %_ZNSt6vectorIdSaIdEED2Ev.exit541.thread
  %.12 = phi i32 [ 1, %._crit_edge970 ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit541.thread ], [ 1, %_ZNSt6vectorIdSaIdEED2Ev.exit541 ], [ 1, %._crit_edge ], [ 1, %bb.ah ], [ 1, %._crit_edge957 ]
  ret i32 %.12
}

declare void @_ZNK6casadi3Fmu3setEPNS_9FmuMemoryEmPKd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK6casadi3Fmu7requestEPNS_9FmuMemoryEm(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6casadi3Fmu4evalEPNS_9FmuMemoryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZNK6casadi3Fmu3getEPNS_9FmuMemoryEmPd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK6casadi13ProtoFunction5printEPKcz(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef, ...) local_unnamed_addr #1

declare void @_ZNK6casadi3Fmu7set_fwdEPNS_9FmuMemoryEmPKd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK6casadi3Fmu11request_fwdEPNS_9FmuMemoryEx(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK6casadi3Fmu8eval_fwdEPNS_9FmuMemoryEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK6casadi3Fmu7get_fwdEPNS_9FmuMemoryEmPd(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi14casadi_jac_preIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EEx(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !243
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !246
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !245
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.c, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.q = load i64, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !34
  %i.t = icmp slt i64 %i.q, %i.s
  br i1 %i.t, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !638  ; 2 uses
  %.not77 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !272
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !271
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %._crit_edge
  %.07382 = phi i64 [ %i.q, %.lr.ph84 ], [ %i.bm, %._crit_edge ] ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.07382
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !34 ; 4 uses
  br i1 %.not77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !180
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = phi double [ %i.ah, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.aj = fdiv double 1.000000e+00, %i.ai
  %i.ak = load i64, ptr %1, align 8, !tbaa !639   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ak
  store double %i.ai, ptr %i.al, align 8, !tbaa !180
  %i.am = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak
  store i64 %i.af, ptr %i.am, align 8, !tbaa !34
  %i.an = load i64, ptr %1, align 8, !tbaa !639
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %1, align 8, !tbaa !639
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.af ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !34 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.at = icmp slt i64 %i.aq, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !275
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !273
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !276
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !277
  %.pre = load i64, ptr %i.o, align 8, !tbaa !280
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.ay = phi i64 [ %.pre, %.lr.ph ], [ %i.bi, %bb.e ] ; 2 uses
  %.081 = phi i64 [ %i.aq, %.lr.ph ], [ %i.bj, %bb.e ] ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.081
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !34
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ay
  store double %i.aj, ptr %i.bb, align 8, !tbaa !180
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ay
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !34
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !280
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bd
  store i64 %i.af, ptr %i.be, align 8, !tbaa !34
  %i.bf = load i64, ptr %i.o, align 8, !tbaa !280
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bf
  store i64 %.081, ptr %i.bg, align 8, !tbaa !34
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !280
  %i.bi = add nsw i64 %i.bh, 1                    ; 2 uses
  store i64 %i.bi, ptr %i.o, align 8, !tbaa !280
  %i.bj = add nsw i64 %.081, 1                    ; 2 uses
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !34
  %i.bl = icmp slt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %._crit_edge, !llvm.loop !633

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.bm = add nsw i64 %.07382, 1                  ; 2 uses
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !34
  %i.bo = icmp slt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.b, label %._crit_edge85, !llvm.loop !634

._crit_edge85:                                    ; preds = %._crit_edge, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !640 ; 3 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %.loopexit79, label %.preheader80

.preheader80:                                     ; preds = %._crit_edge85
  %i.br = load i64, ptr %1, align 8, !tbaa !639
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph87, label %.preheader78

.lr.ph87:                                         ; preds = %.preheader80
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !271
  br label %bb.f

.preheader78:                                     ; preds = %bb.f, %.preheader80
  %i.bv = load i64, ptr %i.o, align 8, !tbaa !280
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph89, label %.loopexit79

.lr.ph89:                                         ; preds = %.preheader78
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !276
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph87, %bb.f
  %.07486 = phi i64 [ 0, %.lr.ph87 ], [ %i.cd, %bb.f ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.07486 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !34
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !23
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !34
  %i.cd = add nuw nsw i64 %.07486, 1              ; 2 uses
  %i.ce = load i64, ptr %1, align 8, !tbaa !639
  %i.cf = icmp slt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.f, label %.preheader78, !llvm.loop !635

bb.g:                                             ; preds = %.lr.ph89, %bb.g
  %.188 = phi i64 [ 0, %.lr.ph89 ], [ %i.ck, %bb.g ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.188 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !34
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !23
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !34
  %i.ck = add nuw nsw i64 %.188, 1                ; 2 uses
  %i.cl = load i64, ptr %i.o, align 8, !tbaa !280
  %i.cm = icmp slt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.g, label %.loopexit79, !llvm.loop !636

.loopexit79:                                      ; preds = %bb.g, %.preheader78, %._crit_edge85
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !641 ; 2 uses
  %.not76 = icmp eq ptr %i.co, null
  br i1 %.not76, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit79
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !280
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph91, label %.loopexit

.lr.ph91:                                         ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !273
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph91, %bb.h
  %.290 = phi i64 [ 0, %.lr.ph91 ], [ %i.cx, %bb.h ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.290 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !34
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !23
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !34
end_hunk_1
