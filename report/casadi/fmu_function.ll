inline.NumInlined: 4370
inline.NumDeleted: 1014
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZNK6casadi11FmuFunction9eval_taskEPNS_9FmuMemoryExxbbbbb:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488: ; preds = %bb.cu
  %i.zv = load i64, ptr %i.zt, align 8, !tbaa !17
  %i.zw = add i64 %i.zv, 1
  call void @_ZdlPvm(ptr noundef %i.zs, i64 noundef %i.zw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488, %bb.ct
  %.pn414 = phi { ptr, i32 } [ %i.zq, %bb.ct ], [ %i.zr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488 ], [ %i.zr, %bb.cu ] ; 2 uses
  %i.zx = load ptr, ptr %13, align 8, !tbaa !11   ; 2 uses
  %i.zy = icmp eq ptr %i.zx, %i.xm
  br i1 %i.zy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
  %i.zz = load i64, ptr %i.xm, align 8, !tbaa !17
  %i.aaa = add i64 %i.zz, 1
  call void @_ZdlPvm(ptr noundef %i.zx, i64 noundef %i.aaa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491, %bb.cs
  %.pn414.pn = phi { ptr, i32 } [ %i.zp, %bb.cs ], [ %.pn414, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491 ], [ %.pn414, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493, %bb.cr
  %.pn414.pn.pn = phi { ptr, i32 } [ %.pn414.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493 ], [ %i.zo, %bb.cr ] ; 2 uses
  %i.aab = load ptr, ptr %11, align 8, !tbaa !11  ; 2 uses
  %i.aac = icmp eq ptr %i.aab, %i.wr
  br i1 %i.aac, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.cv, %bb.ck
  %.sink2017 = phi ptr [ %i.xf, %bb.ck ], [ %i.aab, %bb.cv ]
  %.pn414.pn.pn.pn.ph = phi { ptr, i32 } [ %i.xe, %bb.ck ], [ %.pn414.pn.pn, %bb.cv ]
  %i.aad = load i64, ptr %i.wr, align 8, !tbaa !17
  %i.aae = add i64 %i.aad, 1
  call void @_ZdlPvm(ptr noundef %.sink2017, i64 noundef %i.aae) #27
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.cv, %bb.ck
  %.pn414.pn.pn.pn = phi { ptr, i32 } [ %i.xe, %bb.ck ], [ %.pn414.pn.pn, %bb.cv ], [ %.pn414.pn.pn.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.cw

bb.cw:                                            ; preds = %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487, %bb.co
  %.pn414.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn414.pn.pn.pn, %.body ], [ %i.zg, %bb.co ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %9) #25
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cn
  %.pn414.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn414.pn.pn.pn.pn, %bb.cw ], [ %i.zf, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.thread613

bb.cy:                                            ; preds = %bb.cd
  %i.aaf = load double, ptr %i.ve, align 8, !tbaa !209
  %i.aag = fneg double %i.aaf
  store double %i.aag, ptr %i.ve, align 8, !tbaa !209
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.ca
  %i.aah = load ptr, ptr %i.qj, align 8, !tbaa !313
  %i.aai = load ptr, ptr %i.qi, align 8, !tbaa !216 ; 2 uses
  %i.aaj = ptrtoint ptr %i.aah to i64
  %i.aak = ptrtoint ptr %i.aai to i64
  %i.aal = sub i64 %i.aaj, %i.aak
  %i.aam = ashr exact i64 %i.aal, 3               ; 2 uses
  %.not.i.i497 = icmp ult i64 %i.up, %i.aam
  br i1 %.not.i.i497, label %bb.da, label %.invoke

bb.da:                                            ; preds = %bb.cz
  %i.aan = load double, ptr %i.ve, align 8, !tbaa !209
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %i.up ; 2 uses
  %i.aap = load double, ptr %i.aao, align 8, !tbaa !209
  %i.aaq = fadd double %i.aan, %i.aap
  store double %i.aaq, ptr %i.aao, align 8, !tbaa !209
  %i.aar = load ptr, ptr %i.qm, align 8, !tbaa !592
  %i.aas = load i32, ptr %i.qn, align 8, !tbaa !593
  %i.aat = load ptr, ptr %i.ql, align 8, !tbaa !592 ; 2 uses
  %i.aau = ptrtoint ptr %i.aar to i64
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  %i.aax = shl nsw i64 %i.aaw, 3
  %i.aay = zext i32 %i.aas to i64
  %i.aaz = add nsw i64 %i.aax, %i.aay             ; 2 uses
  %.not.i.i500 = icmp ult i64 %i.up, %i.aaz
  br i1 %.not.i.i500, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, i64 noundef %i.up, i64 noundef %i.aaz) #26
          to label %.noexc501 unwind label %bb.dd

.noexc501:                                        ; preds = %bb.db
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
  %i.abg = load i64, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !20
  %i.abh = or i64 %i.abg, %i.abf
  store i64 %i.abh, ptr %storemerge.i.i.i.i.i.i, align 8, !tbaa !20
  %i.abi = load double, ptr %i.ve, align 8, !tbaa !209
  %i.abj = fdiv double 1.000000e+00, %i.abi
  store double %i.abj, ptr %i.ve, align 8, !tbaa !209
  %i.abk = add nuw nsw i64 %.0365990, 1           ; 2 uses
  %exitcond1292.not = icmp eq i64 %i.abk, %i.rs
  br i1 %exitcond1292.not, label %._crit_edge992, label %bb.bw, !llvm.loop !594

bb.dd:                                            ; preds = %bb.db
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %.thread613

._crit_edge992:                                   ; preds = %bb.dc, %_ZNSt6vectorIdSaIdEE6resizeEm.exit446
  %i.abm = load ptr, ptr %i.qo, align 8, !tbaa !315 ; 2 uses
  %i.abn = load ptr, ptr %i.qp, align 8, !tbaa !315 ; 2 uses
  %.not662993 = icmp eq ptr %i.abm, %i.abn
  br i1 %.not662993, label %._crit_edge997, label %.lr.ph996

.lr.ph996:                                        ; preds = %._crit_edge992
  %i.abo = load ptr, ptr %i.qr, align 8, !tbaa !592
  %i.abp = load i32, ptr %i.qs, align 8, !tbaa !593
  %i.abq = load ptr, ptr %i.qq, align 8, !tbaa !592 ; 2 uses
  %i.abr = ptrtoint ptr %i.abo to i64
  %i.abs = ptrtoint ptr %i.abq to i64
  %i.abt = sub i64 %i.abr, %i.abs
  %i.abu = shl nsw i64 %i.abt, 3
  %i.abv = zext i32 %i.abp to i64
  %i.abw = add nsw i64 %i.abu, %i.abv             ; 2 uses
  br label %bb.de

._crit_edge997:                                   ; preds = %bb.di, %._crit_edge992
  %i.abx = invoke noundef i32 @_ZNK6casadi3Fmu4evalEPNS_9FmuMemoryE(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef %1)
          to label %bb.dl unwind label %.loopexit669

bb.de:                                            ; preds = %.lr.ph996, %bb.di
  %.sroa.0569.0994 = phi ptr [ %i.abm, %.lr.ph996 ], [ %i.aco, %bb.di ] ; 2 uses
  %i.aby = load i64, ptr %.sroa.0569.0994, align 8, !tbaa !20 ; 8 uses
  %.not.i.i502 = icmp ult i64 %i.aby, %i.abw
  br i1 %.not.i.i502, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, i64 noundef %i.aby, i64 noundef %i.abw) #26
          to label %.noexc507 unwind label %bb.dj

.noexc507:                                        ; preds = %bb.df
  unreachable

bb.dg:                                            ; preds = %bb.de
  %i.abz = sdiv i64 %i.aby, 64
  %i.aca = getelementptr inbounds [8 x i8], ptr %i.abq, i64 %i.abz
  %i.acb = and i64 %i.aby, -9223372036854775745
  %i.acc = icmp ugt i64 %i.acb, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i503 = select i1 %i.acc, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i504 = getelementptr inbounds i8, ptr %i.aca, i64 %storemerge.idx.i.i.i.i.i.i503 ; 2 uses
  %i.acd = and i64 %i.aby, 63
  %i.ace = shl nuw i64 1, %i.acd
  %i.acf = load i64, ptr %storemerge.i.i.i.i.i.i504, align 8, !tbaa !20
  %i.acg = or i64 %i.acf, %i.ace
  store i64 %i.acg, ptr %storemerge.i.i.i.i.i.i504, align 8, !tbaa !20
  %i.ach = load ptr, ptr %i.qu, align 8, !tbaa !312
  %i.aci = load ptr, ptr %i.qt, align 8, !tbaa !218 ; 2 uses
  %i.acj = ptrtoint ptr %i.ach to i64
  %i.ack = ptrtoint ptr %i.aci to i64
  %i.acl = sub i64 %i.acj, %i.ack
  %i.acm = ashr exact i64 %i.acl, 3               ; 2 uses
  %.not.i.i509 = icmp ult i64 %i.aby, %i.acm
  br i1 %.not.i.i509, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.aby, i64 noundef %i.acm) #26
          to label %.noexc510 unwind label %bb.dk

.noexc510:                                        ; preds = %bb.dh
  unreachable

bb.di:                                            ; preds = %bb.dg
  %i.acn = getelementptr inbounds nuw [8 x i8], ptr %i.aci, i64 %i.aby
  store i64 -1, ptr %i.acn, align 8, !tbaa !20
  %i.aco = getelementptr inbounds nuw i8, ptr %.sroa.0569.0994, i64 8 ; 2 uses
  %.not662 = icmp eq ptr %i.aco, %i.abn
  br i1 %.not662, label %._crit_edge997, label %bb.de

bb.dj:                                            ; preds = %bb.df
  %i.acp = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dk:                                            ; preds = %bb.dh
  %i.acq = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dl:                                            ; preds = %._crit_edge997
  %.not423 = icmp eq i32 %i.abx, 0                ; 3 uses
  br i1 %.not423, label %bb.dm, label %.thread609

bb.dm:                                            ; preds = %bb.dl
  %i.acr = load ptr, ptr %i.qv, align 8, !tbaa !494
  %i.acs = invoke noundef i64 @_ZNK6casadi3Fmu4n_inEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.dn unwind label %.loopexit669 ; 2 uses

bb.dn:                                            ; preds = %bb.dm
  %.not5.i.i.i = icmp eq i64 %i.acs, 0
  br i1 %.not5.i.i.i, label %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.dn
  %.idx = shl i64 %i.acs, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.acr, i8 0, i64 %.idx, i1 false), !tbaa !209
  br label %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader

_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader:         ; preds = %.lr.ph.i.i.i.preheader, %bb.dn
  br label %_ZSt4fillIPdiEvT_S1_RKT0_.exit

_ZSt4fillIPdiEvT_S1_RKT0_.exit:                   ; preds = %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader, %._crit_edge1000
  %.0353 = phi i64 [ %i.afp, %._crit_edge1000 ], [ 0, %_ZSt4fillIPdiEvT_S1_RKT0_.exit.preheader ] ; 3 uses
  %i.act = invoke noundef i64 @_ZNK6casadi8Sparsity5size2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.qw)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %_ZSt4fillIPdiEvT_S1_RKT0_.exit
  %.not425 = icmp slt i64 %.0353, %i.act
  br i1 %.not425, label %bb.dq, label %bb.dx

bb.dp:                                            ; preds = %bb.du, %bb.ds, %bb.dr, %bb.dq, %_ZSt4fillIPdiEvT_S1_RKT0_.exit
  %i.acu = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.dq:                                            ; preds = %bb.do
  tail call void @_ZN6casadi14casadi_jac_preIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EEx(ptr noundef nonnull %i.qx, ptr noundef nonnull %i.qy, i64 noundef %.0353)
  %i.acv = load i64, ptr %i.qy, align 8, !tbaa !556
  %i.acw = load ptr, ptr %i.qz, align 8, !tbaa !557
  %i.acx = load ptr, ptr %i.ra, align 8, !tbaa !558
  invoke void @_ZNK6casadi3Fmu7set_fwdEPNS_9FmuMemoryExPKxPKd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.acv, ptr noundef %i.acw, ptr noundef %i.acx)
          to label %bb.dr unwind label %bb.dp

bb.dr:                                            ; preds = %bb.dq
  %i.acy = load i64, ptr %i.rb, align 8, !tbaa !559
  %i.acz = load ptr, ptr %i.rc, align 8, !tbaa !560
  %i.ada = load ptr, ptr %i.rd, align 8, !tbaa !561
  invoke void @_ZNK6casadi3Fmu11request_fwdEPNS_9FmuMemoryExPKxS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.acy, ptr noundef %i.acz, ptr noundef %i.ada)
          to label %bb.ds unwind label %bb.dp

bb.ds:                                            ; preds = %bb.dr
  %i.adb = invoke noundef i32 @_ZNK6casadi3Fmu8eval_fwdEPNS_9FmuMemoryEb(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i1 noundef zeroext true)
          to label %bb.dt unwind label %bb.dp

bb.dt:                                            ; preds = %bb.ds
  %.not424 = icmp eq i32 %i.adb, 0
  br i1 %.not424, label %bb.du, label %.thread609

bb.du:                                            ; preds = %bb.dt
  %i.adc = load i64, ptr %i.rb, align 8, !tbaa !559
  %i.add = load ptr, ptr %i.rc, align 8, !tbaa !560
  %i.ade = load ptr, ptr %i.re, align 8, !tbaa !562
  invoke void @_ZNK6casadi3Fmu7get_fwdEPNS_9FmuMemoryExPKxPd(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %1, i64 noundef %i.adc, ptr noundef %i.add, ptr noundef %i.ade)
          to label %bb.dv unwind label %bb.dp

bb.dv:                                            ; preds = %bb.du
  %i.adf = load i64, ptr %i.rb, align 8, !tbaa !563 ; 8 uses
  %i.adg = icmp sgt i64 %i.adf, 0
  br i1 %i.adg, label %.lr.ph.i511, label %._crit_edge1000

.lr.ph.i511:                                      ; preds = %bb.dv
  %i.adh = load ptr, ptr %i.rf, align 8, !tbaa !491 ; 8 uses
  %i.adi = load ptr, ptr %i.re, align 8, !tbaa !490 ; 8 uses
  %min.iters.check2004 = icmp ult i64 %i.adf, 4
  br i1 %min.iters.check2004, label %scalar.ph2003.preheader, label %vector.memcheck1997

vector.memcheck1997:                              ; preds = %.lr.ph.i511
  %i.adj = shl i64 %i.adf, 3                      ; 2 uses
  %scevgep1998 = getelementptr i8, ptr %i.adi, i64 %i.adj
  %scevgep1999 = getelementptr i8, ptr %i.adh, i64 %i.adj
  %bound02000 = icmp ult ptr %i.adi, %scevgep1999
  %bound12001 = icmp ult ptr %i.adh, %scevgep1998
  %found.conflict2002 = and i1 %bound02000, %bound12001
  br i1 %found.conflict2002, label %scalar.ph2003.preheader, label %vector.ph2005

vector.ph2005:                                    ; preds = %vector.memcheck1997
  %n.vec2006 = and i64 %i.adf, 9223372036854775804 ; 3 uses
  br label %vector.body2007

vector.body2007:                                  ; preds = %vector.body2007, %vector.ph2005
  %index2008 = phi i64 [ 0, %vector.ph2005 ], [ %index.next2013, %vector.body2007 ] ; 3 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %index2008 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 16
  %wide.load2009 = load <2 x double>, ptr %i.adk, align 8, !tbaa !209, !alias.scope !595
  %wide.load2010 = load <2 x double>, ptr %i.adl, align 8, !tbaa !209, !alias.scope !595
  %i.adm = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %index2008 ; 3 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 16 ; 2 uses
  %wide.load2011 = load <2 x double>, ptr %i.adm, align 8, !tbaa !209, !alias.scope !598, !noalias !595
  %wide.load2012 = load <2 x double>, ptr %i.adn, align 8, !tbaa !209, !alias.scope !598, !noalias !595
  %i.ado = fmul <2 x double> %wide.load2009, %wide.load2011
  %i.adp = fmul <2 x double> %wide.load2010, %wide.load2012
  store <2 x double> %i.ado, ptr %i.adm, align 8, !tbaa !209, !alias.scope !598, !noalias !595
  store <2 x double> %i.adp, ptr %i.adn, align 8, !tbaa !209, !alias.scope !598, !noalias !595
  %index.next2013 = add nuw i64 %index2008, 4     ; 2 uses
  %i.adq = icmp eq i64 %index.next2013, %n.vec2006
  br i1 %i.adq, label %middle.block2014, label %vector.body2007, !llvm.loop !600

middle.block2014:                                 ; preds = %vector.body2007
  %cmp.n2015 = icmp eq i64 %i.adf, %n.vec2006
  br i1 %cmp.n2015, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit514, label %scalar.ph2003.preheader

scalar.ph2003.preheader:                          ; preds = %vector.memcheck1997, %.lr.ph.i511, %middle.block2014
  %.06.i512.ph = phi i64 [ 0, %vector.memcheck1997 ], [ 0, %.lr.ph.i511 ], [ %n.vec2006, %middle.block2014 ] ; 3 uses
  %xtraiter2231 = and i64 %i.adf, 3               ; 2 uses
  %lcmp.mod2232.not = icmp eq i64 %xtraiter2231, 0
  br i1 %lcmp.mod2232.not, label %scalar.ph2003.prol.loopexit, label %scalar.ph2003.prol

scalar.ph2003.prol:                               ; preds = %scalar.ph2003.preheader, %scalar.ph2003.prol
  %.06.i512.prol = phi i64 [ %i.adw, %scalar.ph2003.prol ], [ %.06.i512.ph, %scalar.ph2003.preheader ] ; 3 uses
  %prol.iter2233 = phi i64 [ %prol.iter2233.next, %scalar.ph2003.prol ], [ 0, %scalar.ph2003.preheader ]
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %.06.i512.prol
  %i.ads = load double, ptr %i.adr, align 8, !tbaa !209
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %.06.i512.prol ; 2 uses
  %i.adu = load double, ptr %i.adt, align 8, !tbaa !209
  %i.adv = fmul double %i.ads, %i.adu
  store double %i.adv, ptr %i.adt, align 8, !tbaa !209
  %i.adw = add nuw nsw i64 %.06.i512.prol, 1      ; 2 uses
  %prol.iter2233.next = add i64 %prol.iter2233, 1 ; 2 uses
  %prol.iter2233.cmp.not = icmp eq i64 %prol.iter2233.next, %xtraiter2231
  br i1 %prol.iter2233.cmp.not, label %scalar.ph2003.prol.loopexit, label %scalar.ph2003.prol, !llvm.loop !601

scalar.ph2003.prol.loopexit:                      ; preds = %scalar.ph2003.prol, %scalar.ph2003.preheader
  %.06.i512.unr = phi i64 [ %.06.i512.ph, %scalar.ph2003.preheader ], [ %i.adw, %scalar.ph2003.prol ]
  %i.adx = sub nsw i64 %.06.i512.ph, %i.adf
  %i.ady = icmp ugt i64 %i.adx, -4
  br i1 %i.ady, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit514, label %scalar.ph2003

scalar.ph2003:                                    ; preds = %scalar.ph2003.prol.loopexit, %scalar.ph2003
  %.06.i512 = phi i64 [ %i.aew, %scalar.ph2003 ], [ %.06.i512.unr, %scalar.ph2003.prol.loopexit ] ; 6 uses
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %.06.i512
  %i.aea = load double, ptr %i.adz, align 8, !tbaa !209
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %.06.i512 ; 2 uses
  %i.aec = load double, ptr %i.aeb, align 8, !tbaa !209
  %i.aed = fmul double %i.aea, %i.aec
  store double %i.aed, ptr %i.aeb, align 8, !tbaa !209
  %i.aee = add nuw nsw i64 %.06.i512, 1           ; 2 uses
  %i.aef = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.aee
  %i.aeg = load double, ptr %i.aef, align 8, !tbaa !209
  %i.aeh = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.aee ; 2 uses
  %i.aei = load double, ptr %i.aeh, align 8, !tbaa !209
  %i.aej = fmul double %i.aeg, %i.aei
  store double %i.aej, ptr %i.aeh, align 8, !tbaa !209
  %i.aek = add nuw nsw i64 %.06.i512, 2           ; 2 uses
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.aek
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !209
  %i.aen = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.aek ; 2 uses
  %i.aeo = load double, ptr %i.aen, align 8, !tbaa !209
  %i.aep = fmul double %i.aem, %i.aeo
  store double %i.aep, ptr %i.aen, align 8, !tbaa !209
  %i.aeq = add nuw nsw i64 %.06.i512, 3           ; 2 uses
  %i.aer = getelementptr inbounds nuw [8 x i8], ptr %i.adh, i64 %i.aeq
  %i.aes = load double, ptr %i.aer, align 8, !tbaa !209
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %i.adi, i64 %i.aeq ; 2 uses
  %i.aeu = load double, ptr %i.aet, align 8, !tbaa !209
  %i.aev = fmul double %i.aes, %i.aeu
  store double %i.aev, ptr %i.aet, align 8, !tbaa !209
  %i.aew = add nuw nsw i64 %.06.i512, 4           ; 2 uses
  %exitcond.not.i513.3 = icmp eq i64 %i.aew, %i.adf
  br i1 %exitcond.not.i513.3, label %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit514, label %scalar.ph2003, !llvm.loop !602

_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit514: ; preds = %scalar.ph2003.prol.loopexit, %scalar.ph2003, %middle.block2014
  %.pre1315 = load i64, ptr %i.rb, align 8, !tbaa !559 ; 5 uses
  %i.aex = icmp sgt i64 %.pre1315, 0
  br i1 %i.aex, label %.lr.ph999, label %._crit_edge1000

.lr.ph999:                                        ; preds = %_ZN6casadi16casadi_jac_scaleIdEEvPKNS_15casadi_jac_probIT_EEPNS_15casadi_jac_dataIS2_EE.exit514
  %i.aey = load ptr, ptr %i.rg, align 8, !tbaa !483 ; 3 uses
  %i.aez = load ptr, ptr %i.rc, align 8, !tbaa !560 ; 3 uses
  %i.afa = load ptr, ptr %i.re, align 8, !tbaa !562 ; 3 uses
  %i.afb = load ptr, ptr %i.qv, align 8, !tbaa !494 ; 3 uses
  %i.afc = load ptr, ptr %i.rd, align 8, !tbaa !561 ; 3 uses
  %xtraiter2235 = and i64 %.pre1315, 1
  %i.afd = icmp eq i64 %.pre1315, 1
  br i1 %i.afd, label %.epil.preheader2234, label %.lr.ph999.new

.lr.ph999.new:                                    ; preds = %.lr.ph999
  %unroll_iter2239 = and i64 %.pre1315, 9223372036854775806
  br label %bb.dw

._crit_edge1000.loopexit.unr-lcssa:               ; preds = %bb.dw
  %lcmp.mod2237.not = icmp eq i64 %xtraiter2235, 0
  br i1 %lcmp.mod2237.not, label %._crit_edge1000, label %.epil.preheader2234

.epil.preheader2234:                              ; preds = %._crit_edge1000.loopexit.unr-lcssa, %.lr.ph999
  %.0352998.epil.init = phi i64 [ 0, %.lr.ph999 ], [ %i.agn, %._crit_edge1000.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod2238 = trunc i64 %.pre1315 to i1
  tail call void @llvm.assume(i1 %lcmp.mod2238)
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %.0352998.epil.init
  %i.aff = load i64, ptr %i.afe, align 8, !tbaa !43
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.aey, i64 %i.aff
  %i.afh = load double, ptr %i.afg, align 8, !tbaa !209
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %.0352998.epil.init
end_hunk_0
begin_hunk_1_@_ZNK6casadi11FmuFunction9eval_taskEPNS_9FmuMemoryExxbbbbb:bb.a
  %i.agx = ashr exact i64 %i.agw, 3               ; 4 uses
  br label %bb.ee

bb.dz:                                            ; preds = %.lr.ph1006, %._crit_edge1004
  %.03511005 = phi i64 [ 0, %.lr.ph1006 ], [ %i.ahl, %._crit_edge1004 ] ; 2 uses
  %i.agy = getelementptr [8 x i8], ptr %i.agq, i64 %.03511005
  %i.agz = load i64, ptr %i.agy, align 8, !tbaa !43
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.agz ; 2 uses
  %i.ahb = load i64, ptr %i.aha, align 8, !tbaa !43 ; 2 uses
  %i.ahc = getelementptr i8, ptr %i.aha, i64 8    ; 2 uses
  %i.ahd = load i64, ptr %i.ahc, align 8, !tbaa !43
  %i.ahe = icmp slt i64 %i.ahb, %i.ahd
  br i1 %i.ahe, label %.lr.ph1003, label %._crit_edge1004

.lr.ph1003:                                       ; preds = %bb.dz
  %i.ahf = load ptr, ptr %i.qh, align 8, !tbaa !312
  %i.ahg = load ptr, ptr %i.qg, align 8, !tbaa !218 ; 2 uses
  %i.ahh = ptrtoint ptr %i.ahf to i64
  %i.ahi = ptrtoint ptr %i.ahg to i64
  %i.ahj = sub i64 %i.ahh, %i.ahi
  %i.ahk = ashr exact i64 %i.ahj, 3               ; 2 uses
  br label %bb.ea

._crit_edge1004:                                  ; preds = %bb.ec, %bb.dz
  %i.ahl = add nuw nsw i64 %.03511005, 1          ; 2 uses
  %exitcond1294.not = icmp eq i64 %i.ahl, %i.rs
  br i1 %exitcond1294.not, label %.lr.ph1012, label %bb.dz, !llvm.loop !605

bb.ea:                                            ; preds = %.lr.ph1003, %bb.ec
  %.03491001 = phi i64 [ %i.ahb, %.lr.ph1003 ], [ %i.ahu, %bb.ec ] ; 2 uses
  %i.ahm = getelementptr inbounds [8 x i8], ptr %i.py, i64 %.03491001
  %i.ahn = load i64, ptr %i.ahm, align 8, !tbaa !43 ; 3 uses
  %.not.i.i519 = icmp ult i64 %i.ahn, %i.ahk
  br i1 %.not.i.i519, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.ahn, i64 noundef %i.ahk) #26
          to label %.noexc520 unwind label %bb.ed

.noexc520:                                        ; preds = %bb.eb
  unreachable

bb.ec:                                            ; preds = %bb.ea
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.ahg, i64 %i.ahn
  %i.ahp = load i64, ptr %i.aho, align 8, !tbaa !20
  %i.ahq = load ptr, ptr %i.rh, align 8, !tbaa !495
  %i.ahr = getelementptr inbounds [8 x i8], ptr %i.ahq, i64 %i.ahp ; 2 uses
  %i.ahs = load i64, ptr %i.ahr, align 8, !tbaa !43
  %i.aht = add nsw i64 %i.ahs, 1
  store i64 %i.aht, ptr %i.ahr, align 8, !tbaa !43
  %i.ahu = add nsw i64 %.03491001, 1              ; 2 uses
  %i.ahv = load i64, ptr %i.ahc, align 8, !tbaa !43
  %i.ahw = icmp slt i64 %i.ahu, %i.ahv
  br i1 %i.ahw, label %bb.ea, label %._crit_edge1004, !llvm.loop !606

bb.ed:                                            ; preds = %bb.eb
  %i.ahx = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ee:                                            ; preds = %.lr.ph1012, %._crit_edge1010
  %.03471011 = phi i64 [ 0, %.lr.ph1012 ], [ %i.ajk, %._crit_edge1010 ] ; 4 uses
  %i.ahy = getelementptr [8 x i8], ptr %i.agr, i64 %.03471011
  %i.ahz = load i64, ptr %i.ahy, align 8, !tbaa !43 ; 4 uses
  %.not.i.i522 = icmp ult i64 %i.ahz, %i.agx
  br i1 %.not.i.i522, label %bb.ef, label %.invoke2020

bb.ef:                                            ; preds = %bb.ee
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %i.ahz
  %i.aib = load i64, ptr %i.aia, align 8, !tbaa !20 ; 8 uses
  %i.aic = load ptr, ptr %i.qj, align 8, !tbaa !313
  %i.aid = load ptr, ptr %i.qi, align 8, !tbaa !216 ; 2 uses
  %i.aie = ptrtoint ptr %i.aic to i64
  %i.aif = ptrtoint ptr %i.aid to i64
  %i.aig = sub i64 %i.aie, %i.aif
  %i.aih = ashr exact i64 %i.aig, 3               ; 2 uses
  %.not.i.i525 = icmp ult i64 %i.aib, %i.aih
  br i1 %.not.i.i525, label %bb.eg, label %.invoke2020

.invoke2020:                                      ; preds = %bb.ef, %bb.ee
  %i.aii = phi i64 [ %i.ahz, %bb.ee ], [ %i.aib, %bb.ef ]
  %i.aij = phi i64 [ %i.agx, %bb.ee ], [ %i.aih, %bb.ef ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.aii, i64 noundef %i.aij) #26
          to label %.cont2021 unwind label %bb.ej

.cont2021:                                        ; preds = %.invoke2020
  unreachable

bb.eg:                                            ; preds = %bb.ef
  %i.aik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0591.4, i64 %.03471011
  %i.ail = load double, ptr %i.aik, align 8, !tbaa !209
  %i.aim = getelementptr inbounds nuw [8 x i8], ptr %i.aid, i64 %i.aib
  store double %i.ail, ptr %i.aim, align 8, !tbaa !209
  %i.ain = load ptr, ptr %i.qm, align 8, !tbaa !592
  %i.aio = load i32, ptr %i.qn, align 8, !tbaa !593
  %i.aip = load ptr, ptr %i.ql, align 8, !tbaa !592 ; 2 uses
  %i.aiq = ptrtoint ptr %i.ain to i64
  %i.air = ptrtoint ptr %i.aip to i64
  %i.ais = sub i64 %i.aiq, %i.air
  %i.ait = shl nsw i64 %i.ais, 3
  %i.aiu = zext i32 %i.aio to i64
  %i.aiv = add nsw i64 %i.ait, %i.aiu             ; 2 uses
  %.not.i.i528 = icmp ult i64 %i.aib, %i.aiv
  br i1 %.not.i.i528, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.252, i64 noundef %i.aib, i64 noundef %i.aiv) #26
          to label %.noexc533 unwind label %bb.ek

.noexc533:                                        ; preds = %bb.eh
  unreachable

bb.ei:                                            ; preds = %bb.eg
  %i.aiw = sdiv i64 %i.aib, 64
  %i.aix = getelementptr inbounds [8 x i8], ptr %i.aip, i64 %i.aiw
  %i.aiy = and i64 %i.aib, -9223372036854775745
  %i.aiz = icmp ugt i64 %i.aiy, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i529 = select i1 %i.aiz, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i530 = getelementptr inbounds i8, ptr %i.aix, i64 %storemerge.idx.i.i.i.i.i.i529 ; 2 uses
  %i.aja = and i64 %i.aib, 63
  %i.ajb = shl nuw i64 1, %i.aja
  %i.ajc = load i64, ptr %storemerge.i.i.i.i.i.i530, align 8, !tbaa !20
  %i.ajd = or i64 %i.ajc, %i.ajb
  store i64 %i.ajd, ptr %storemerge.i.i.i.i.i.i530, align 8, !tbaa !20
  %i.aje = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.ahz ; 2 uses
  %i.ajf = load i64, ptr %i.aje, align 8, !tbaa !43 ; 2 uses
  %i.ajg = getelementptr i8, ptr %i.aje, i64 8
  %i.ajh = load i64, ptr %i.ajg, align 8, !tbaa !43 ; 2 uses
  %i.aji = icmp slt i64 %i.ajf, %i.ajh
  br i1 %i.aji, label %.lr.ph1009, label %._crit_edge1010

.lr.ph1009:                                       ; preds = %bb.ei
  %i.ajj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0575.4, i64 %.03471011
  br label %bb.el

._crit_edge1010:                                  ; preds = %bb.eq, %bb.ei
  %i.ajk = add nuw nsw i64 %.03471011, 1          ; 2 uses
  %exitcond1296.not = icmp eq i64 %i.ajk, %i.rs
  br i1 %exitcond1296.not, label %.loopexit, label %bb.ee, !llvm.loop !607

bb.ej:                                            ; preds = %.invoke2020
  %i.ajl = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ek:                                            ; preds = %bb.eh
  %i.ajm = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.el:                                            ; preds = %.lr.ph1009, %bb.eq
  %.03441007 = phi i64 [ %i.ajf, %.lr.ph1009 ], [ %i.akh, %bb.eq ] ; 3 uses
  %i.ajn = getelementptr inbounds [8 x i8], ptr %i.py, i64 %.03441007
  %i.ajo = load i64, ptr %i.ajn, align 8, !tbaa !43 ; 3 uses
  %.not.i.i535 = icmp ult i64 %i.ajo, %i.agx
  br i1 %.not.i.i535, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.240, i64 noundef %i.ajo, i64 noundef %i.agx) #26
          to label %.noexc536 unwind label %bb.eo

.noexc536:                                        ; preds = %bb.em
  unreachable

bb.en:                                            ; preds = %bb.el
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %i.ajo
  %i.ajq = load i64, ptr %i.ajp, align 8, !tbaa !20 ; 3 uses
  %i.ajr = load ptr, ptr %i.rh, align 8, !tbaa !495
  %i.ajs = getelementptr inbounds [8 x i8], ptr %i.ajr, i64 %i.ajq
  %i.ajt = load i64, ptr %i.ajs, align 8, !tbaa !43
  %i.aju = icmp sgt i64 %i.ajt, 1
  br i1 %i.aju, label %bb.eq, label %bb.ep

bb.eo:                                            ; preds = %bb.em
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.ep:                                            ; preds = %bb.en
  %i.ajw = load double, ptr %i.ajj, align 8, !tbaa !209
  %i.ajx = load ptr, ptr %i.qv, align 8, !tbaa !494
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.ajx, i64 %i.ajq
  %i.ajz = load double, ptr %i.ajy, align 8, !tbaa !209
  %i.aka = load ptr, ptr %i.ri, align 8, !tbaa !484
  %i.akb = getelementptr inbounds [8 x i8], ptr %i.aka, i64 %i.ajq
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !209
  %i.akd = fsub double %i.ajz, %i.akc
  %i.ake = fmul double %i.ajw, %i.akd
  br label %bb.eq

bb.eq:                                            ; preds = %bb.en, %bb.ep
  %.sink = phi double [ %i.ake, %bb.ep ], [ +qnan, %bb.en ]
  %i.akf = load ptr, ptr %i.rj, align 8, !tbaa !486
  %i.akg = getelementptr inbounds [8 x i8], ptr %i.akf, i64 %.03441007
  store double %.sink, ptr %i.akg, align 8, !tbaa !209
  %i.akh = add i64 %.03441007, 1                  ; 2 uses
  %exitcond1295.not = icmp eq i64 %i.akh, %i.ajh
  br i1 %exitcond1295.not, label %._crit_edge1010, label %bb.el, !llvm.loop !608

.thread609:                                       ; preds = %.loopexit, %bb.dl, %bb.dt
  %14 = phi i1 [ false, %bb.dt ], [ %.not423, %bb.dl ], [ %.not423, %.loopexit ] ; 2 uses
  %.not.i.i.i538 = icmp eq ptr %.sroa.0575.4, null
  br i1 %.not.i.i.i538, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.er

bb.er:                                            ; preds = %.thread609.thread, %.thread609
  %cond659 = phi i1 [ false, %.thread609.thread ], [ %14, %.thread609 ]
  %i.aki = ptrtoint ptr %.sroa.23.4 to i64
  %i.akj = ptrtoint ptr %.sroa.0575.4 to i64
  %i.akk = sub i64 %i.aki, %i.akj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0575.4, i64 noundef %i.akk) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %.thread609, %bb.er
  %cond660 = phi i1 [ %14, %.thread609 ], [ %cond659, %bb.er ] ; 2 uses
  %.not.i.i.i539 = icmp eq ptr %.sroa.0591.4, null
  br i1 %.not.i.i.i539, label %_ZNSt6vectorIdSaIdEED2Ev.exit540, label %.split

.split:                                           ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.akl = ptrtoint ptr %.sroa.18600.4 to i64
  %i.akm = ptrtoint ptr %.sroa.0591.4 to i64
  %i.akn = sub i64 %i.akl, %i.akm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0591.4, i64 noundef %i.akn) #27
  br i1 %cond660, label %_ZNSt6vectorIdSaIdEED2Ev.exit540.thread, label %.loopexit680

_ZNSt6vectorIdSaIdEED2Ev.exit540:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  br i1 %cond660, label %_ZNSt6vectorIdSaIdEED2Ev.exit540.thread, label %.loopexit680

bb.es:                                            ; preds = %.loopexit667, %.loopexit.split-lp, %.loopexit669, %.loopexit.split-lp670, %bb.dj, %bb.dk, %bb.dp, %bb.ed, %bb.eo, %bb.ek, %bb.ej, %bb.be
  %.sroa.23.3 = phi ptr [ %.sroa.23.01013, %bb.be ], [ %.sroa.23.4, %bb.dp ], [ %.sroa.23.4, %bb.ed ], [ %.sroa.23.4, %bb.eo ], [ %.sroa.23.4, %bb.ek ], [ %.sroa.23.4, %bb.ej ], [ %.sroa.23.01013, %.loopexit.split-lp670 ], [ %.sroa.23.4, %bb.dk ], [ %.sroa.23.4, %bb.dj ], [ %.sroa.23.1.ph, %.loopexit669 ], [ %.sroa.23.4, %.loopexit667 ], [ %.sroa.23.4, %.loopexit.split-lp ]
  %.sroa.0575.3 = phi ptr [ %.sroa.0575.01015, %bb.be ], [ %.sroa.0575.4, %bb.dp ], [ %.sroa.0575.4, %bb.ed ], [ %.sroa.0575.4, %bb.eo ], [ %.sroa.0575.4, %bb.ek ], [ %.sroa.0575.4, %bb.ej ], [ %.sroa.0575.01015, %.loopexit.split-lp670 ], [ %.sroa.0575.4, %bb.dk ], [ %.sroa.0575.4, %bb.dj ], [ %.sroa.0575.1.ph, %.loopexit669 ], [ %.sroa.0575.4, %.loopexit667 ], [ %.sroa.0575.4, %.loopexit.split-lp ] ; 2 uses
  %.sroa.18600.3 = phi ptr [ %.sroa.18600.01016, %bb.be ], [ %.sroa.18600.4, %bb.dp ], [ %.sroa.18600.4, %bb.ed ], [ %.sroa.18600.4, %bb.eo ], [ %.sroa.18600.4, %bb.ek ], [ %.sroa.18600.4, %bb.ej ], [ %.sroa.18600.1.ph671, %.loopexit.split-lp670 ], [ %.sroa.18600.4, %bb.dk ], [ %.sroa.18600.4, %bb.dj ], [ %.sroa.18600.1.ph, %.loopexit669 ], [ %.sroa.18600.4, %.loopexit667 ], [ %.sroa.18600.4, %.loopexit.split-lp ] ; 2 uses
  %.sroa.0591.3 = phi ptr [ %.sroa.0591.01018, %bb.be ], [ %.sroa.0591.4, %bb.dp ], [ %.sroa.0591.4, %bb.ed ], [ %.sroa.0591.4, %bb.eo ], [ %.sroa.0591.4, %bb.ek ], [ %.sroa.0591.4, %bb.ej ], [ %.sroa.0591.1.ph672, %.loopexit.split-lp670 ], [ %.sroa.0591.4, %bb.dk ], [ %.sroa.0591.4, %bb.dj ], [ %.sroa.0591.1.ph, %.loopexit669 ], [ %.sroa.0591.4, %.loopexit667 ], [ %.sroa.0591.4, %.loopexit.split-lp ] ; 2 uses
  %.pn428.pn.pn = phi { ptr, i32 } [ %i.rm, %bb.be ], [ %i.acu, %bb.dp ], [ %i.ahx, %bb.ed ], [ %i.ajv, %bb.eo ], [ %i.ajm, %bb.ek ], [ %i.ajl, %bb.ej ], [ %lpad.loopexit.split-lp674, %.loopexit.split-lp670 ], [ %i.acq, %bb.dk ], [ %i.acp, %bb.dj ], [ %lpad.loopexit673, %.loopexit669 ], [ %lpad.loopexit, %.loopexit667 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i541 = icmp eq ptr %.sroa.0575.3, null
  br i1 %.not.i.i.i541, label %_ZNSt6vectorIdSaIdEED2Ev.exit542, label %.thread613

.thread613:                                       ; preds = %bb.dd, %bb.cx, %bb.es
  %.pn428.pn.pn626 = phi { ptr, i32 } [ %.pn428.pn.pn, %bb.es ], [ %i.abl, %bb.dd ], [ %.pn414.pn.pn.pn.pn.pn, %bb.cx ]
  %.sroa.0591.3624 = phi ptr [ %.sroa.0591.3, %bb.es ], [ %.sroa.0591.4, %bb.dd ], [ %.sroa.0591.4, %bb.cx ]
  %.sroa.18600.3622 = phi ptr [ %.sroa.18600.3, %bb.es ], [ %.sroa.18600.4, %bb.dd ], [ %.sroa.18600.4, %bb.cx ]
  %.sroa.0575.3621 = phi ptr [ %.sroa.0575.3, %bb.es ], [ %.sroa.0575.4, %bb.dd ], [ %.sroa.0575.4, %bb.cx ] ; 2 uses
  %.sroa.23.3620 = phi ptr [ %.sroa.23.3, %bb.es ], [ %.sroa.23.4, %bb.dd ], [ %.sroa.23.4, %bb.cx ]
  %i.ako = ptrtoint ptr %.sroa.23.3620 to i64
  %i.akp = ptrtoint ptr %.sroa.0575.3621 to i64
  %i.akq = sub i64 %i.ako, %i.akp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0575.3621, i64 noundef %i.akq) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit542

_ZNSt6vectorIdSaIdEED2Ev.exit542:                 ; preds = %bb.es, %.thread613
  %.pn428.pn.pn627 = phi { ptr, i32 } [ %.pn428.pn.pn, %bb.es ], [ %.pn428.pn.pn626, %.thread613 ]
  %.sroa.0591.3625 = phi ptr [ %.sroa.0591.3, %bb.es ], [ %.sroa.0591.3624, %.thread613 ] ; 3 uses
  %.sroa.18600.3623 = phi ptr [ %.sroa.18600.3, %bb.es ], [ %.sroa.18600.3622, %.thread613 ]
  %.not.i.i.i543 = icmp eq ptr %.sroa.0591.3625, null
  br i1 %.not.i.i.i543, label %_ZNSt6vectorIdSaIdEED2Ev.exit544, label %_ZNSt6vectorIdSaIdEED2Ev.exit542.thread

_ZNSt6vectorIdSaIdEED2Ev.exit542.thread:          ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit542
  %i.akr = ptrtoint ptr %.sroa.18600.3623 to i64
  %i.aks = ptrtoint ptr %.sroa.0591.3625 to i64
  %i.akt = sub i64 %i.akr, %i.aks
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0591.3625, i64 noundef %i.akt) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit544

_ZNSt6vectorIdSaIdEED2Ev.exit544:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit542, %_ZNSt6vectorIdSaIdEED2Ev.exit542.thread
  resume { ptr, i32 } %.pn428.pn.pn627

_ZNSt6vectorIdSaIdEED2Ev.exit540.thread:          ; preds = %bb.bb, %.split, %_ZNSt6vectorIdSaIdEED2Ev.exit540, %.critedge
  br label %.loopexit680

.loopexit680:                                     ; preds = %._crit_edge954, %._crit_edge967, %bb.ah, %.split, %_ZNSt6vectorIdSaIdEED2Ev.exit540, %._crit_edge, %_ZNSt6vectorIdSaIdEED2Ev.exit540.thread
  %.12 = phi i32 [ 1, %.split ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit540.thread ], [ 1, %_ZNSt6vectorIdSaIdEED2Ev.exit540 ], [ 1, %._crit_edge ], [ 1, %bb.ah ], [ 1, %._crit_edge967 ], [ 1, %._crit_edge954 ]
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !347
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !350
  %i.f = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !346
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !349
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.c, i64 %2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.q = load i64, ptr %i.p, align 8, !tbaa !43   ; 2 uses
  %i.r = getelementptr i8, ptr %i.p, i64 8        ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !43
  %i.t = icmp slt i64 %i.q, %i.s
  br i1 %i.t, label %.lr.ph84, label %._crit_edge85

.lr.ph84:                                         ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !609  ; 2 uses
  %.not77 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !488
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !487
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph84, %._crit_edge
  %.07382 = phi i64 [ %i.q, %.lr.ph84 ], [ %i.bm, %._crit_edge ] ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.07382
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !43 ; 4 uses
  br i1 %.not77, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !209
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ai = phi double [ %i.ah, %bb.c ], [ 1.000000e+00, %bb.b ] ; 2 uses
  %i.aj = fdiv double 1.000000e+00, %i.ai
  %i.ak = load i64, ptr %1, align 8, !tbaa !610   ; 2 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ak
  store double %i.ai, ptr %i.al, align 8, !tbaa !209
  %i.am = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ak
  store i64 %i.af, ptr %i.am, align 8, !tbaa !43
  %i.an = load i64, ptr %1, align 8, !tbaa !610
  %i.ao = add nsw i64 %i.an, 1
  store i64 %i.ao, ptr %1, align 8, !tbaa !610
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.af ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !43 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ap, i64 8      ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.at = icmp slt i64 %i.aq, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.au = load ptr, ptr %i.aa, align 8, !tbaa !491
  %i.av = load ptr, ptr %i.ab, align 8, !tbaa !489
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !492
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !493
  %.pre = load i64, ptr %i.o, align 8, !tbaa !563
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.ay = phi i64 [ %.pre, %.lr.ph ], [ %i.bi, %bb.e ] ; 2 uses
  %.07481 = phi i64 [ %i.aq, %.lr.ph ], [ %i.bj, %bb.e ] ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.n, i64 %.07481
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ay
  store double %i.aj, ptr %i.bb, align 8, !tbaa !209
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.av, i64 %i.ay
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !43
  %i.bd = load i64, ptr %i.o, align 8, !tbaa !563
  %i.be = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bd
  store i64 %i.af, ptr %i.be, align 8, !tbaa !43
  %i.bf = load i64, ptr %i.o, align 8, !tbaa !563
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.bf
  store i64 %.07481, ptr %i.bg, align 8, !tbaa !43
  %i.bh = load i64, ptr %i.o, align 8, !tbaa !563
  %i.bi = add nsw i64 %i.bh, 1                    ; 2 uses
  store i64 %i.bi, ptr %i.o, align 8, !tbaa !563
  %i.bj = add nsw i64 %.07481, 1                  ; 2 uses
  %i.bk = load i64, ptr %i.ar, align 8, !tbaa !43
  %i.bl = icmp slt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.e, label %._crit_edge, !llvm.loop !611

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.bm = add nsw i64 %.07382, 1                  ; 2 uses
  %i.bn = load i64, ptr %i.r, align 8, !tbaa !43
  %i.bo = icmp slt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.b, label %._crit_edge85, !llvm.loop !612

._crit_edge85:                                    ; preds = %._crit_edge, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !613 ; 3 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %.loopexit79, label %.preheader80

.preheader80:                                     ; preds = %._crit_edge85
  %i.br = load i64, ptr %1, align 8, !tbaa !610
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph87, label %.preheader78

.lr.ph87:                                         ; preds = %.preheader80
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !487
  br label %bb.f

.preheader78:                                     ; preds = %bb.f, %.preheader80
  %i.bv = load i64, ptr %i.o, align 8, !tbaa !563
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph89, label %.loopexit79

.lr.ph89:                                         ; preds = %.preheader78
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !492
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph87, %bb.f
  %.086 = phi i64 [ 0, %.lr.ph87 ], [ %i.cd, %bb.f ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.086 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !43
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20
  store i64 %i.cc, ptr %i.bz, align 8, !tbaa !43
  %i.cd = add nuw nsw i64 %.086, 1                ; 2 uses
  %i.ce = load i64, ptr %1, align 8, !tbaa !610
  %i.cf = icmp slt i64 %i.cd, %i.ce
  br i1 %i.cf, label %bb.f, label %.preheader78, !llvm.loop !614

bb.g:                                             ; preds = %.lr.ph89, %bb.g
  %.188 = phi i64 [ 0, %.lr.ph89 ], [ %i.ck, %bb.g ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.188 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !43
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !20
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !43
  %i.ck = add nuw nsw i64 %.188, 1                ; 2 uses
  %i.cl = load i64, ptr %i.o, align 8, !tbaa !563
  %i.cm = icmp slt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.g, label %.loopexit79, !llvm.loop !615

.loopexit79:                                      ; preds = %bb.g, %.preheader78, %._crit_edge85
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !616 ; 2 uses
  %.not76 = icmp eq ptr %i.co, null
  br i1 %.not76, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit79
  %i.cp = load i64, ptr %i.o, align 8, !tbaa !563
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph91, label %.loopexit

.lr.ph91:                                         ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !489
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph91, %bb.h
  %.290 = phi i64 [ 0, %.lr.ph91 ], [ %i.cx, %bb.h ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.290 ; 2 uses
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !43
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !20
  store i64 %i.cw, ptr %i.ct, align 8, !tbaa !43
end_hunk_1
