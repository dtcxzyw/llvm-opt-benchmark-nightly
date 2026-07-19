inline.NumInlined: 6973
inline.NumDeleted: 2254
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 47
loop-unroll.NumUnrolled: 82
begin_hunk_0_@_ZN6Assimp12glTFExporter12ExportMeshesEv:bb.a
  store i64 %.1, ptr %i.zv, align 8
  %i.zw = load ptr, ptr %5, align 8
  %i.zx = load i32, ptr %.sroa.2161.0..sroa_idx, align 8
  %i.zy = zext i32 %i.zx to i64
  %i.zz = load ptr, ptr %i.zw, align 8
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.zz, i64 %i.zy
  %i.aab = load ptr, ptr %i.aaa, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 72
  %i.aad = load i64, ptr %i.aac, align 8
  %i.aae = sub i64 %i.aad, %.1
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zj, i64 56
  store i64 %i.aae, ptr %i.aaf, align 8
  %i.aag = load ptr, ptr %i.cy, align 8
  %i.aah = invoke noundef i32 @_ZNK6Assimp16ExportProperties18GetPropertyIntegerEPKci(ptr noundef nonnull align 8 dereferenceable(240) %i.aag, ptr noundef nonnull @.str.29, i32 noundef 0)
          to label %bb.cy unwind label %bb.di

bb.cy:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit376
  %i.aai = icmp ne i32 %i.aah, 0
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.zj, i64 64
  %i.aak = zext i1 %i.aai to i8
  store i8 %i.aak, ptr %i.aaj, align 8
  %i.aal = load i64, ptr %16, align 8
  %i.aam = mul i64 %i.aal, 3
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zj, i64 72
  store i64 %i.aam, ptr %i.aan, align 8
  %i.aao = load i64, ptr %i.dt, align 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.zj, i64 80
  store i64 %i.aao, ptr %i.aap, align 8
  %i.aaq = load ptr, ptr %.fca.0.extract98, align 8
  %i.aar = getelementptr inbounds nuw [8 x i8], ptr %i.aaq, i64 %i.iy
  %i.aas = load ptr, ptr %i.aar, align 8          ; 2 uses
  %i.aat = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #33
          to label %bb.cz unwind label %bb.dj     ; 2 uses

bb.cz:                                            ; preds = %bb.cy
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aas, i64 96
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  store ptr %i.zj, ptr %i.aav, align 8
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.aat, ptr noundef nonnull align 8 dereferenceable(24) %i.aau) #30
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aas, i64 112 ; 2 uses
  %i.aax = load i64, ptr %i.aaw, align 8
  %i.aay = add i64 %i.aax, 1
  store i64 %i.aay, ptr %i.aaw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  %i.aaz = load ptr, ptr %i.ee, align 8           ; 2 uses
  %i.aba = icmp eq ptr %i.aaz, null
  br i1 %i.aba, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdaPv(ptr noundef nonnull %i.aaz) #31
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.abb = load ptr, ptr %i.dg, align 8           ; 2 uses
  %i.abc = icmp eq ptr %i.abb, null
  br i1 %i.abc, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @_ZdaPv(ptr noundef nonnull %i.abb) #31
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %i.abd = load ptr, ptr %i.ef, align 8           ; 2 uses
  %i.abe = icmp eq ptr %i.abd, null
  br i1 %i.abe, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZdaPv(ptr noundef nonnull %i.abd) #31
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.abf = load ptr, ptr %i.df, align 8           ; 2 uses
  %i.abg = icmp eq ptr %i.abf, null
  br i1 %i.abg, label %_ZN5o3dgc13SC3DMCEncoderItED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdaPv(ptr noundef nonnull %i.abf) #31
  br label %_ZN5o3dgc13SC3DMCEncoderItED2Ev.exit

_ZN5o3dgc13SC3DMCEncoderItED2Ev.exit:             ; preds = %bb.df, %bb.dg
  call void @_ZN5o3dgc19TriangleListEncoderItED2Ev(ptr noundef nonnull align 8 dead_on_return(556) dereferenceable(11524) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.abh = load ptr, ptr %14, align 8             ; 2 uses
  %i.abi = icmp eq ptr %i.abh, null
  br i1 %i.abi, label %_ZN5o3dgc12BinaryStreamD2Ev.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZN5o3dgc13SC3DMCEncoderItED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.abh) #31
  br label %_ZN5o3dgc12BinaryStreamD2Ev.exit

_ZN5o3dgc12BinaryStreamD2Ev.exit:                 ; preds = %_ZN5o3dgc13SC3DMCEncoderItED2Ev.exit, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %bb.dn

bb.di:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit376, %bb.cx, %_ZN4glTF6Buffer11ReplaceDataEmmPKhm.exit
  %i.abj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.cy
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dk:                                            ; preds = %bb.co, %bb.cq, %bb.dj, %bb.di, %bb.cp, %bb.cn
  %.pn245.pn.pn.pn.pn = phi { ptr, i32 } [ %i.wy, %bb.cn ], [ %i.wz, %bb.co ], [ %i.xa, %bb.cp ], [ %i.xb, %bb.cq ], [ %i.abk, %bb.dj ], [ %i.abj, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #30
  call void @_ZN5o3dgc13SC3DMCEncoderItED2Ev(ptr noundef nonnull align 8 dead_on_return(11524) dereferenceable(11524) %15) #30
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.cm
  %.pn245.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn245.pn.pn.pn.pn, %bb.dk ], [ %i.wx, %bb.cm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %i.abl = load ptr, ptr %14, align 8             ; 2 uses
  %i.abm = icmp eq ptr %i.abl, null
  br i1 %i.abm, label %_ZN5o3dgc12BinaryStreamD2Ev.exit380, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_ZdaPv(ptr noundef nonnull %i.abl) #31
  br label %_ZN5o3dgc12BinaryStreamD2Ev.exit380

_ZN5o3dgc12BinaryStreamD2Ev.exit380:              ; preds = %bb.dm, %bb.dl, %bb.cl
  %.pn245.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ww, %bb.cl ], [ %.pn245.pn.pn.pn.pn.pn, %bb.dl ], [ %.pn245.pn.pn.pn.pn.pn, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #30
  br label %_ZNSt6vectorItSaItEED2Ev.exit366

bb.dn:                                            ; preds = %_ZN5o3dgc12BinaryStreamD2Ev.exit, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.abn = load ptr, ptr %11, align 8             ; 2 uses
  %i.abo = icmp eq ptr %i.abn, %i.eg
  br i1 %i.abo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381: ; preds = %bb.dn
  %i.abp = load i64, ptr %i.eg, align 8
  %i.abq = add i64 %i.abp, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit383: ; preds = %bb.dn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i381
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  %indvars.iv.next900 = add nuw nsw i64 %indvars.iv899, 1 ; 2 uses
  %i.abr = load ptr, ptr %i.bi, align 8           ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load i32, ptr %i.abs, align 8
  %i.abu = zext i32 %i.abt to i64
  %i.abv = icmp samesign ult i64 %indvars.iv.next900, %i.abu
  br i1 %i.abv, label %bb.s, label %._crit_edge747.loopexit, !llvm.loop !54

_ZNSt6vectorItSaItEED2Ev.exit366:                 ; preds = %.loopexit526, %.loopexit.split-lp527, %.loopexit, %.loopexit.split-lp, %.loopexit536, %.loopexit.split-lp537, %.loopexit531, %.loopexit.split-lp532, %bb.cb, %.thread, %_ZN5o3dgc12BinaryStreamD2Ev.exit380, %bb.av
  %.sroa.22.8 = phi ptr [ %.sroa.22.5, %bb.cb ], [ %.sroa.22.1, %bb.av ], [ %.sroa.22.5, %.thread ], [ %.sroa.22.1, %.loopexit.split-lp532 ], [ %.sroa.22.1, %.loopexit.split-lp537 ], [ %.sroa.13.2729, %.loopexit.split-lp ], [ %.sroa.22.5, %_ZN5o3dgc12BinaryStreamD2Ev.exit380 ], [ %.sroa.22.1, %.loopexit531 ], [ %.sroa.22.2.ph, %.loopexit536 ], [ %.sroa.13.2729, %.loopexit ], [ %.sroa.22.4, %.loopexit526 ], [ %.sroa.22.4, %.loopexit.split-lp527 ] ; 2 uses
  %.sroa.0497.8 = phi ptr [ %.sroa.0497.5, %bb.cb ], [ %.sroa.0497.1, %bb.av ], [ %.sroa.0497.5, %.thread ], [ %.sroa.0497.1, %.loopexit.split-lp532 ], [ %.sroa.0497.1, %.loopexit.split-lp537 ], [ %.sroa.0497.3730, %.loopexit.split-lp ], [ %.sroa.0497.5, %_ZN5o3dgc12BinaryStreamD2Ev.exit380 ], [ %.sroa.0497.1, %.loopexit531 ], [ %.sroa.0497.2.ph, %.loopexit536 ], [ %.sroa.0497.3730, %.loopexit ], [ %.sroa.0497.4, %.loopexit526 ], [ %.sroa.0497.4, %.loopexit.split-lp527 ] ; 2 uses
  %.pn254.pn.pn.pn.pn = phi { ptr, i32 } [ %i.vl, %bb.cb ], [ %i.ml, %bb.av ], [ %i.uf, %.thread ], [ %lpad.loopexit.split-lp534, %.loopexit.split-lp532 ], [ %lpad.loopexit.split-lp539, %.loopexit.split-lp537 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %.pn245.pn.pn.pn.pn.pn.pn, %_ZN5o3dgc12BinaryStreamD2Ev.exit380 ], [ %lpad.loopexit533, %.loopexit531 ], [ %lpad.loopexit538, %.loopexit536 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit528, %.loopexit526 ], [ %lpad.loopexit.split-lp529, %.loopexit.split-lp527 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #30
  %i.abw = load ptr, ptr %11, align 8             ; 2 uses
  %i.abx = icmp eq ptr %i.abw, %i.eg
  br i1 %i.abx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit366
  %i.aby = load i64, ptr %i.eg, align 8
  %i.abz = add i64 %i.aby, 1
  call void @_ZdlPvm(ptr noundef %i.abw, i64 noundef %i.abz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit386: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit366, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316
  %.sroa.22.9 = phi ptr [ %.sroa.22.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %.sroa.22.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384 ], [ %.sroa.22.8, %_ZNSt6vectorItSaItEED2Ev.exit366 ]
  %.sroa.0497.9 = phi ptr [ %.sroa.0497.1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %.sroa.0497.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384 ], [ %.sroa.0497.8, %_ZNSt6vectorItSaItEED2Ev.exit366 ]
  %.pn254.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn238, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit316 ], [ %.pn254.pn.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i384 ], [ %.pn254.pn.pn.pn.pn, %_ZNSt6vectorItSaItEED2Ev.exit366 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  br label %bb.eh

bb.do:                                            ; preds = %._crit_edge747
  %i.aca = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.acb = load ptr, ptr %i.aca, align 8          ; 2 uses
  %i.acc = ptrtoint ptr %i.acb to i64
  %i.acd = ptrtoint ptr %.pre908.a to i64
  %i.ace = sub i64 %i.acc, %i.acd                 ; 2 uses
  %i.acf = ashr exact i64 %i.ace, 6               ; 3 uses
  %i.acg = icmp ugt i64 %i.acf, 288230376151711743
  %i.ach = select i1 %i.acg, i64 -1, i64 %i.ace
  %i.aci = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ach) #33
          to label %.preheader unwind label %bb.dp ; 2 uses

.preheader:                                       ; preds = %bb.do
  %.not759 = icmp eq ptr %i.acb, %.pre908.a
  br i1 %.not759, label %._crit_edge752, label %.lr.ph751

._crit_edge752:                                   ; preds = %.lr.ph751, %.preheader
  %i.acj = load ptr, ptr %i.ae, align 8
  %i.ack = trunc nuw i64 %i.acf to i32
  %i.acl = invoke { ptr, i32 } @_Z10ExportDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEjPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(2032) %i.acj, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef %i.ack, ptr noundef nonnull %i.aci, i32 noundef 6, i32 noundef 6, i32 noundef 5126, i32 noundef 0)
          to label %bb.dq unwind label %bb.ds     ; 2 uses

bb.dp:                                            ; preds = %bb.do
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

.lr.ph751:                                        ; preds = %.preheader, %.lr.ph751
  %i.acn = phi i64 [ %indvars.iv.next903, %.lr.ph751 ], [ 0, %.preheader ] ; 3 uses
  %i.aco = getelementptr inbounds nuw [64 x i8], ptr %.pre908.a, i64 %i.acn ; 16 uses
  %i.acp = getelementptr inbounds nuw [64 x i8], ptr %i.aci, i64 %i.acn ; 16 uses
  %i.acq = load float, ptr %i.aco, align 4
  store float %i.acq, ptr %i.acp, align 4
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 16
  %i.acs = load float, ptr %i.acr, align 4
  %i.act = getelementptr inbounds nuw i8, ptr %i.acp, i64 4
  store float %i.acs, ptr %i.act, align 4
  %i.acu = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acv = load float, ptr %i.acu, align 4
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  store float %i.acv, ptr %i.acw, align 4
  %i.acx = getelementptr inbounds nuw i8, ptr %i.aco, i64 48
  %i.acy = load float, ptr %i.acx, align 4
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acp, i64 12
  store float %i.acy, ptr %i.acz, align 4
  %i.ada = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %i.adb = load float, ptr %i.ada, align 4
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store float %i.adb, ptr %i.adc, align 4
  %i.add = getelementptr inbounds nuw i8, ptr %i.aco, i64 20
  %i.ade = load float, ptr %i.add, align 4
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acp, i64 20
  store float %i.ade, ptr %i.adf, align 4
  %i.adg = getelementptr inbounds nuw i8, ptr %i.aco, i64 36
  %i.adh = load float, ptr %i.adg, align 4
  %i.adi = getelementptr inbounds nuw i8, ptr %i.acp, i64 24
  store float %i.adh, ptr %i.adi, align 4
  %i.adj = getelementptr inbounds nuw i8, ptr %i.aco, i64 52
  %i.adk = load float, ptr %i.adj, align 4
  %i.adl = getelementptr inbounds nuw i8, ptr %i.acp, i64 28
  store float %i.adk, ptr %i.adl, align 4
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aco, i64 8
  %i.adn = load float, ptr %i.adm, align 4
  %i.ado = getelementptr inbounds nuw i8, ptr %i.acp, i64 32
  store float %i.adn, ptr %i.ado, align 4
  %i.adp = getelementptr inbounds nuw i8, ptr %i.aco, i64 24
  %i.adq = load float, ptr %i.adp, align 4
  %i.adr = getelementptr inbounds nuw i8, ptr %i.acp, i64 36
  store float %i.adq, ptr %i.adr, align 4
  %i.ads = getelementptr inbounds nuw i8, ptr %i.aco, i64 40
  %i.adt = load float, ptr %i.ads, align 4
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acp, i64 40
  store float %i.adt, ptr %i.adu, align 4
  %i.adv = getelementptr inbounds nuw i8, ptr %i.aco, i64 56
  %i.adw = load float, ptr %i.adv, align 4
  %i.adx = getelementptr inbounds nuw i8, ptr %i.acp, i64 44
  store float %i.adw, ptr %i.adx, align 4
  %i.ady = getelementptr inbounds nuw i8, ptr %i.aco, i64 12
  %i.adz = load float, ptr %i.ady, align 4
  %i.aea = getelementptr inbounds nuw i8, ptr %i.acp, i64 48
  store float %i.adz, ptr %i.aea, align 4
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aco, i64 28
  %i.aec = load float, ptr %i.aeb, align 4
  %i.aed = getelementptr inbounds nuw i8, ptr %i.acp, i64 52
  store float %i.aec, ptr %i.aed, align 4
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aco, i64 44
  %i.aef = load float, ptr %i.aee, align 4
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.acp, i64 56
  store float %i.aef, ptr %i.aeg, align 4
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aco, i64 60
  %i.aei = load float, ptr %i.aeh, align 4
  %i.aej = getelementptr inbounds nuw i8, ptr %i.acp, i64 60
  store float %i.aei, ptr %i.aej, align 4
  %indvars.iv.next903 = add i64 %i.acn, 1         ; 2 uses
  %21 = and i64 %indvars.iv.next903, 4294967295
  %i.aek = icmp ugt i64 %i.acf, %21
  br i1 %i.aek, label %.lr.ph751, label %._crit_edge752, !llvm.loop !55

bb.dq:                                            ; preds = %._crit_edge752
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.acl, 0 ; 4 uses
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.acl, 1 ; 2 uses
  %.not.i387 = icmp eq ptr %.fca.0.extract9, null
  br i1 %.not.i387, label %._ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread_crit_edge, label %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388

._ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread_crit_edge: ; preds = %bb.dq
  %.pre904 = load ptr, ptr %6, align 8
  %.pre906 = load i32, ptr %i.bw, align 8
  br label %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread

_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388: ; preds = %bb.dq
  %i.ael = zext i32 %.fca.1.extract10 to i64
  %i.aem = getelementptr inbounds nuw i8, ptr %.fca.0.extract9, i64 8
  %i.aen = load ptr, ptr %i.aem, align 8
  %i.aeo = load ptr, ptr %.fca.0.extract9, align 8
  %i.aep = ptrtoint ptr %i.aen to i64
  %i.aeq = ptrtoint ptr %i.aeo to i64
  %i.aer = sub i64 %i.aep, %i.aeq
  %i.aes = ashr exact i64 %i.aer, 3
  %i.aet = icmp ugt i64 %i.aes, %i.ael
  %.pre905 = load ptr, ptr %6, align 8            ; 3 uses
  %.pre907 = load i32, ptr %i.bw, align 8         ; 3 uses
  br i1 %i.aet, label %bb.dr, label %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread

bb.dr:                                            ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388
  %i.aeu = zext i32 %.pre907 to i64
  %i.aev = load ptr, ptr %.pre905, align 8
  %i.aew = getelementptr inbounds nuw [8 x i8], ptr %i.aev, i64 %i.aeu
  %i.aex = load ptr, ptr %i.aew, align 8          ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 144
  store ptr %.fca.0.extract9, ptr %i.aey, align 8
  %.sroa.6458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aex, i64 152
  store i32 %.fca.1.extract10, ptr %.sroa.6458.0..sroa_idx, align 8
  br label %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread

bb.ds:                                            ; preds = %._crit_edge752
  %i.aez = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread: ; preds = %._ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread_crit_edge, %bb.dr, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388
  %i.afa = phi i32 [ %.pre906, %._ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread_crit_edge ], [ %.pre907, %bb.dr ], [ %.pre907, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388 ]
  %i.afb = phi ptr [ %.pre904, %._ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread_crit_edge ], [ %.pre905, %bb.dr ], [ %.pre905, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388 ] ; 3 uses
  %i.afc = zext i32 %i.afa to i64                 ; 3 uses
  %i.afd = load ptr, ptr %i.afb, align 8
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %i.afc
  %i.aff = load ptr, ptr %i.afe, align 8
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 136
  store i8 1, ptr %i.afg, align 8
  %i.afh = load ptr, ptr %i.afb, align 8
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.afh, i64 %i.afc
  %i.afj = load ptr, ptr %i.afi, align 8          ; 7 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 72
  store float 1.000000e+00, ptr %i.afk, align 4
  %i.afl = getelementptr inbounds nuw i8, ptr %i.afj, i64 76
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afl, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afm, align 4
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afj, i64 96
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afj, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afn, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afo, align 4
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afj, i64 116
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afj, i64 132
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.afp, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.afq, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.afr = load ptr, ptr %i.ae, align 8           ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 1304
  store ptr %i.afs, ptr %18, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %.sroa.28.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #30
  store ptr null, ptr %19, align 8
  %i.aft = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  store i32 0, ptr %i.aft, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #30
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 1184
  %i.afv = load ptr, ptr %i.afu, align 8
  %i.afw = load ptr, ptr %i.afv, align 8          ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  %i.afy = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  store ptr %i.afy, ptr %20, align 8
  %i.afz = load ptr, ptr %i.afx, align 8          ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afw, i64 16
  %i.agb = load i64, ptr %i.aga, align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.agb, ptr %i.a, align 8
  %i.agc = icmp ugt i64 %i.agb, 15
  br i1 %i.agc, label %.noexc.i394, label %._crit_edge.i.i393

.noexc.i394:                                      ; preds = %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread
  %i.agd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc395 unwind label %bb.ec ; 2 uses

.noexc395:                                        ; preds = %.noexc.i394
  store ptr %i.agd, ptr %20, align 8
  %i.age = load i64, ptr %i.a, align 8
  store i64 %i.age, ptr %i.afy, align 8
  br label %._crit_edge.i.i393

._crit_edge.i.i393:                               ; preds = %.noexc395, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread
  %i.agf = phi ptr [ %i.agd, %.noexc395 ], [ %i.afy, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit388.thread ] ; 2 uses
  switch i64 %i.agb, label %bb.du [
    i64 1, label %bb.dt
    i64 0, label %bb.dv
  ]

bb.dt:                                            ; preds = %._crit_edge.i.i393
  %i.agg = load i8, ptr %i.afz, align 1
  store i8 %i.agg, ptr %i.agf, align 1
  br label %bb.dv

bb.du:                                            ; preds = %._crit_edge.i.i393
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.agf, ptr align 1 %i.afz, i64 %i.agb, i1 false)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %._crit_edge.i.i393
  %i.agh = load i64, ptr %i.a, align 8            ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 %i.agh, ptr %i.agi, align 8
  %i.agj = load ptr, ptr %20, align 8
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 %i.agh
  store i8 0, ptr %i.agk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.agl = call noundef zeroext i1 @_Z12FindMeshNodeRN10glTFCommon3RefIN4glTF4NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %18, ptr noundef nonnull align 8 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(32) %20) ; 0 uses
  %i.agm = load ptr, ptr %i.afb, align 8
  %i.agn = getelementptr inbounds nuw [8 x i8], ptr %i.agm, i64 %i.afc
  %i.ago = load ptr, ptr %i.agn, align 8
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 160
  %i.agq = load ptr, ptr %i.agp, align 8          ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.agq, i64 8
  %.sroa.05.0.copyload.i = load ptr, ptr %i.agq, align 8
  %.sroa.67.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.pre.i = load ptr, ptr %.sroa.05.0.copyload.i, align 8
  %.phi.trans.insert.i = zext i32 %.sroa.67.0.copyload.i to i64
  %.phi.trans.insert12.i = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %.phi.trans.insert.i
  %.pre13.i = load ptr, ptr %.phi.trans.insert12.i, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dw, %bb.dv
  %i.agr = phi ptr [ %.pre13.i, %bb.dv ], [ %i.agw, %bb.dw ] ; 2 uses
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 344
  %.sroa.05.0.copyload6.i = load ptr, ptr %i.ags, align 8 ; 3 uses
  %.sroa.67.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.agr, i64 352
  %.sroa.67.0.copyload9.i = load i32, ptr %.sroa.67.0..sroa_idx8.i, align 8 ; 3 uses
  %i.agt = zext i32 %.sroa.67.0.copyload9.i to i64
  %i.agu = load ptr, ptr %.sroa.05.0.copyload6.i, align 8
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %i.agu, i64 %i.agt
  %i.agw = load ptr, ptr %i.agv, align 8          ; 2 uses
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 320
  %i.agy = load i64, ptr %i.agx, align 8
  %i.agz = icmp eq i64 %i.agy, 0
  br i1 %i.agz, label %bb.dx, label %bb.dw, !llvm.loop !56

bb.dx:                                            ; preds = %bb.dw
  %i.aha = load ptr, ptr %19, align 8             ; 2 uses
  %i.ahb = load i32, ptr %i.aft, align 8
  %i.ahc = zext i32 %i.ahb to i64                 ; 2 uses
  %i.ahd = load ptr, ptr %i.aha, align 8
  %i.ahe = getelementptr inbounds nuw [8 x i8], ptr %i.ahd, i64 %i.ahc
  %i.ahf = load ptr, ptr %i.ahe, align 8          ; 3 uses
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.ahf, i64 272 ; 2 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.ahf, i64 280 ; 4 uses
  %i.ahi = load ptr, ptr %i.ahh, align 8          ; 6 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahf, i64 288 ; 2 uses
  %i.ahk = load ptr, ptr %i.ahj, align 8
  %.not.i398 = icmp eq ptr %i.ahi, %i.ahk
  br i1 %.not.i398, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  store ptr %.sroa.05.0.copyload6.i, ptr %i.ahi, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ahi, i64 8
  store i32 %.sroa.67.0.copyload9.i, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ahl = load ptr, ptr %i.ahh, align 8
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 16
  store ptr %i.ahm, ptr %i.ahh, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

bb.dz:                                            ; preds = %bb.dx
  %i.ahn = load ptr, ptr %i.ahg, align 8          ; 5 uses
  %i.aho = ptrtoint ptr %i.ahi to i64
  %i.ahp = ptrtoint ptr %i.ahn to i64
  %i.ahq = sub i64 %i.aho, %i.ahp                 ; 4 uses
  %i.ahr = icmp eq i64 %i.ahq, 9223372036854775792
  br i1 %i.ahr, label %bb.ea, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.ea:                                            ; preds = %bb.dz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
          to label %.noexc408 unwind label %bb.ed

.noexc408:                                        ; preds = %bb.ea
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.dz
  %i.ahs = ashr exact i64 %i.ahq, 4               ; 3 uses
  %.sroa.speculated.i.i.i399 = call i64 @llvm.umax.i64(i64 %i.ahs, i64 1)
end_hunk_0
begin_hunk_1_@_Z12FindMeshNodeRN10glTFCommon3RefIN4glTF4NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  br label %.loopexit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit
  %i.al = add i32 %.01829, 1                      ; 2 uses
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = icmp ugt i64 %i.o, %i.am
  br i1 %i.an, label %bb.b, label %.preheader, !llvm.loop !123

bb.c:                                             ; preds = %.lr.ph31
  %i.ao = add i32 %.030, 1                        ; 2 uses
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = load i32, ptr %i.b, align 8
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.aq, align 8
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = ashr exact i64 %i.bc, 4
  %i.be = icmp ugt i64 %i.bd, %i.ap
  br i1 %i.be, label %.lr.ph31, label %.loopexit, !llvm.loop !124

.lr.ph31:                                         ; preds = %.preheader, %bb.c
  %i.bf = phi ptr [ %i.az, %bb.c ], [ %i.v, %.preheader ]
  %i.bg = phi i64 [ %i.ap, %bb.c ], [ 0, %.preheader ]
  %.030 = phi i32 [ %i.ao, %bb.c ], [ 0, %.preheader ]
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = tail call noundef zeroext i1 @_Z12FindMeshNodeRN10glTFCommon3RefIN4glTF4NodeEEES4_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(12) %i.bh, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) ; 3 uses
  br i1 %i.bi, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.c, %.lr.ph31, %.preheader, %.thread
  %.2 = phi i1 [ true, %.thread ], [ false, %.preheader ], [ %i.bi, %.lr.ph31 ], [ %i.bi, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i32 } @_Z21FindSkeletonRootJointRN10glTFCommon3RefIN4glTF4SkinEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.05.0.copyload = load ptr, ptr %i.i, align 8
  %.sroa.67.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 8
  %.pre = load ptr, ptr %.sroa.05.0.copyload, align 8
  %.phi.trans.insert = zext i32 %.sroa.67.0.copyload to i64
  %.phi.trans.insert12 = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.phi.trans.insert
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre13, %bb.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 344
  %.sroa.05.0.copyload6 = load ptr, ptr %i.k, align 8 ; 2 uses
  %.sroa.67.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.j, i64 352
  %.sroa.67.0.copyload9 = load i32, ptr %.sroa.67.0..sroa_idx8, align 8 ; 2 uses
  %i.l = zext i32 %.sroa.67.0.copyload9 to i64
  %i.m = load ptr, ptr %.sroa.05.0.copyload6, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.b, !llvm.loop !56

bb.c:                                             ; preds = %bb.b
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.05.0.copyload6, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.67.0.copyload9, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z10ExportSkinRN4glTF5AssetEPK6aiMeshRN10glTFCommon3RefINS_4MeshEEERNS6_INS_6BufferEEERNS6_INS_4SkinEEERSt6vectorI12aiMatrix4x4tIfESaISI_EE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %5) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.ab, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4                  ; 4 uses
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #33 ; 4 uses
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #33 ; 4 uses
  %i.j = shl nuw nsw i64 %i.f, 2                  ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #33 ; 3 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.lr.ph206, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.k, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.g, i1 false)
  br label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.b, %.lr.ph.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.c

._crit_edge207:                                   ; preds = %._crit_edge204
  %.pre220 = load i32, ptr %i.d, align 4
  %i.q = load ptr, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = load ptr, ptr %i.q, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8              ; 6 uses
  %i.z = load ptr, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = zext i32 %i.ab to i64
  %i.ad = load ptr, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = tail call { ptr, i32 } @_Z10ExportDataRN4glTF5AssetERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERN10glTFCommon3RefINS_6BufferEEEjPvNS_10AttribType5ValueESG_NS_13ComponentTypeENS_16BufferViewTargetE(ptr noundef nonnull align 8 dereferenceable(2032) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef %.pre220, ptr noundef nonnull %i.h, i32 noundef 3, i32 noundef 3, i32 noundef 5126, i32 noundef 0) ; 2 uses
  %.fca.0.extract1 = extractvalue { ptr, i32 } %i.ah, 0 ; 5 uses
  %.fca.1.extract2 = extractvalue { ptr, i32 } %i.ah, 1 ; 3 uses
  %.not.i = icmp eq ptr %.fca.0.extract1, null
  br i1 %.not.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit, label %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit

_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit: ; preds = %._crit_edge207
  %i.ai = zext i32 %.fca.1.extract2 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.fca.0.extract1, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = load ptr, ptr %.fca.0.extract1, align 8
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  %i.aq = icmp ugt i64 %i.ap, %i.ai
  br i1 %i.aq, label %bb.r, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF8AccessorEEESaIS4_EE9push_backERKS4_.exit

bb.c:                                             ; preds = %.lr.ph206, %._crit_edge204
  %indvars.iv216 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next217, %._crit_edge204 ] ; 2 uses
  %i.ar = load ptr, ptr %i.l, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv216
  %i.at = load ptr, ptr %i.as, align 8            ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = tail call { ptr, i32 } @_ZN4glTF8LazyDictINS_4NodeEE3GetEPKc(ptr noundef nonnull align 8 dereferenceable(120) %i.m, ptr noundef nonnull %i.au) ; 2 uses
  %.fca.0.extract22 = extractvalue { ptr, i32 } %i.av, 0 ; 4 uses
  %.fca.1.extract23 = extractvalue { ptr, i32 } %i.av, 1 ; 3 uses
  %i.aw = zext i32 %.fca.1.extract23 to i64       ; 2 uses
  %i.ax = load ptr, ptr %.fca.0.extract22, align 8
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 312
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba)
  %i.bc = load ptr, ptr %4, align 8
  %i.bd = load i32, ptr %i.n, align 8
  %i.be = zext i32 %i.bd to i64
  %i.bf = load ptr, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8            ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 160 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 168 ; 4 uses
  %i.bk = load ptr, ptr %i.bj, align 8            ; 7 uses
  %i.bl = load ptr, ptr %i.bi, align 8            ; 6 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 4 uses
  %i.bp = ashr exact i64 %i.bo, 4                 ; 3 uses
  %.not209 = icmp eq ptr %i.bk, %i.bl             ; 2 uses
  br i1 %.not209, label %.thread, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.c
  %i.bq = load ptr, ptr %.fca.0.extract22, align 8
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.aw
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 320
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 312
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  br i1 %spec.select249, label %bb.e, label %bb.n

bb.d:                                             ; preds = %.lr.ph192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread
  %i.bw = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 4 uses
  %.082191 = phi i32 [ 0, %.lr.ph192 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %.083190 = phi i1 [ true, %.lr.ph192 ], [ %spec.select249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load i32, ptr %i.bz, align 8
  %i.cb = zext i32 %i.ca to i64
  %i.cc = load ptr, ptr %i.by, align 8
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 320
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.cg) ; 2 uses
  %i.ch = icmp eq i64 %.sroa.speculated.i, 0
  br i1 %i.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %bb.d
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 312
  %i.cj = load ptr, ptr %i.bv, align 8
  %i.ck = load ptr, ptr %i.ci, align 8
  %bcmp = tail call i32 @bcmp(ptr %i.ck, ptr %i.cj, i64 %.sroa.speculated.i)
  %.not.i90 = icmp eq i32 %bcmp, 0
  br i1 %.not.i90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit: ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %i.cl = icmp eq i64 %i.cg, %i.bu
  %cond.fr = freeze i1 %i.cl                      ; 2 uses
  %not..0.i = xor i1 %cond.fr, true
  %spec.select = select i1 %not..0.i, i1 %.083190, i1 false
  %6 = trunc nuw i64 %i.bw to i32
  %spec.select256 = select i1 %cond.fr, i32 %6, i32 %.082191
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %spec.select249 = phi i1 [ %.083190, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %spec.select, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit ] ; 2 uses
  %i.cm = phi i32 [ %.082191, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ], [ %spec.select256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareERKS4_.exit ] ; 2 uses
  %7 = add i64 %i.bw, 1
  %8 = and i64 %7, 4294967295
  %i.cn = icmp ugt i64 %i.bp, %8
  %indvars.iv.next = add i64 %i.bw, 1
  br i1 %i.cn, label %bb.d, label %._crit_edge, !llvm.loop !125

bb.e:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %i.bh, i64 176 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8
  %.not.i91 = icmp eq ptr %i.bk, %i.cp
  br i1 %.not.i91, label %bb.g, label %bb.f

.thread:                                          ; preds = %bb.c
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bh, i64 176 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8
  %.not.i91250 = icmp eq ptr %i.bk, %i.cr
  br i1 %.not.i91250, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  store ptr %.fca.0.extract22, ptr %i.bk, align 8
  %.sroa.8168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.8168.0..sroa_idx, align 8
  %i.cs = load ptr, ptr %i.bj, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store ptr %i.ct, ptr %i.bj, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.cu = icmp eq i64 %i.bo, 9223372036854775792
  br i1 %i.cu, label %bb.h, label %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %.thread, %bb.g
  %i.cv = phi ptr [ %i.co, %bb.g ], [ %i.cq, %.thread ]
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.cw = add nuw nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.cx = shl nuw nsw i64 %i.cw, 4
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #33 ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.bo ; 2 uses
  store ptr %.fca.0.extract22, ptr %i.cz, align 8
  %.sroa.8168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 %.fca.1.extract23, ptr %.sroa.8168.0..sroa_idx169, align 8
  br i1 %.not209, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i ], [ %i.cy, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %i.bl, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !alias.scope !126
  %i.da = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.da, %i.bk
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !29

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cy, %_ZNKSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.db, %.lr.ph.i.i.i.i.i ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bo) #31
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i
  store ptr %i.cy, ptr %i.bi, align 8
  store ptr %i.dc, ptr %i.bj, align 8
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.cy, i64 %i.cw
  store ptr %i.dd, ptr %i.cv, align 8
  br label %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.at, i64 1056
  %.sroa.0141.0.copyload = load float, ptr %i.de, align 4 ; 2 uses
  %.sroa.6144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1060
  %.sroa.6144.sroa.0.0.copyload = load <4 x float>, ptr %.sroa.6144.0..sroa_idx, align 4 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1076
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %.sroa.8151.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1080
  %.sroa.8151.sroa.0.0.copyload = load <4 x float>, ptr %.sroa.8151.0..sroa_idx, align 4 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1096
  %.sroa.9.0.copyload = load float, ptr %.sroa.9.0..sroa_idx, align 4 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1100
  %.sroa.10.sroa.0.0.copyload = load <4 x float>, ptr %.sroa.10.0..sroa_idx, align 4 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 1116
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4 ; 2 uses
  %i.df = load ptr, ptr %i.o, align 8             ; 11 uses
  %i.dg = load ptr, ptr %i.p, align 8
  %.not.i92 = icmp eq ptr %i.df, %i.dg
  br i1 %.not.i92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit
  store float %.sroa.0141.0.copyload, ptr %i.df, align 4
  %.sroa.6144.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store <4 x float> %.sroa.6144.sroa.0.0.copyload, ptr %.sroa.6144.0..sroa_idx145, align 4
  %.sroa.7.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  store float %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx147, align 4
  %.sroa.8151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  store <4 x float> %.sroa.8151.sroa.0.0.copyload, ptr %.sroa.8151.0..sroa_idx152, align 4
  %.sroa.9.0..sroa_idx154 = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx154, align 4
  %.sroa.10.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  store <4 x float> %.sroa.10.sroa.0.0.copyload, ptr %.sroa.10.0..sroa_idx158, align 4
  %.sroa.11.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.df, i64 60
  store float %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx160, align 4
  %i.dh = load ptr, ptr %i.o, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 64 ; 2 uses
  store ptr %i.di, ptr %i.o, align 8
  %.pre = load ptr, ptr %5, align 8
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN4glTF4NodeEEESaIS4_EE9push_backERKS4_.exit
  %i.dj = load ptr, ptr %5, align 8               ; 5 uses
  %i.dk = ptrtoint ptr %i.df to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 4 uses
  %i.dn = icmp eq i64 %i.dm, 9223372036854775744
  br i1 %i.dn, label %bb.l, label %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #34
  unreachable

_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %i.do = ashr exact i64 %i.dm, 6                 ; 3 uses
  %.sroa.speculated.i.i.i93 = tail call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dp = add nsw i64 %.sroa.speculated.i.i.i93, %i.do ; 2 uses
  %i.dq = icmp ult i64 %i.dp, %i.do
  %i.dr = tail call i64 @llvm.umin.i64(i64 %i.dp, i64 144115188075855871)
  %i.ds = select i1 %i.dq, i64 144115188075855871, i64 %i.dr ; 3 uses
  %.not.i.i.i94 = icmp ne i64 %i.ds, 0
  tail call void @llvm.assume(i1 %.not.i.i.i94)
  %i.dt = shl nuw nsw i64 %i.ds, 6
  %i.du = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #33 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dm ; 7 uses
  store float %.sroa.0141.0.copyload, ptr %i.dv, align 4
  %.sroa.6144.0..sroa_idx146 = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store <4 x float> %.sroa.6144.sroa.0.0.copyload, ptr %.sroa.6144.0..sroa_idx146, align 4
  %.sroa.7.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.dv, i64 20
  store float %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx149, align 4
  %.sroa.8151.0..sroa_idx153 = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store <4 x float> %.sroa.8151.sroa.0.0.copyload, ptr %.sroa.8151.0..sroa_idx153, align 4
  %.sroa.9.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  store float %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx156, align 4
  %.sroa.10.0..sroa_idx159 = getelementptr inbounds nuw i8, ptr %i.dv, i64 44
  store <4 x float> %.sroa.10.sroa.0.0.copyload, ptr %.sroa.10.0..sroa_idx159, align 4
  %.sroa.11.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.dv, i64 60
  store float %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx162, align 4
  %.not10.i.i.i.i.i95 = icmp eq ptr %i.dj, %i.df
  br i1 %.not10.i.i.i.i.i95, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i96

.lr.ph.i.i.i.i.i96:                               ; preds = %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i96
  %.012.i.i.i.i.i97 = phi ptr [ %i.dx, %.lr.ph.i.i.i.i.i96 ], [ %i.du, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i98 = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i96 ], [ %i.dj, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.012.i.i.i.i.i97, ptr noundef nonnull align 4 dereferenceable(64) %.0911.i.i.i.i.i98, i64 64, i1 false), !alias.scope !130
  %i.dw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i98, i64 64 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i97, i64 64 ; 2 uses
  %.not.i.i.i.i.i99 = icmp eq ptr %i.dw, %i.df
  br i1 %.not.i.i.i.i.i99, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i96, !llvm.loop !134

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i96, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i100 = phi ptr [ %i.du, %_ZNKSt6vectorI12aiMatrix4x4tIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dx, %.lr.ph.i.i.i.i.i96 ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i100, i64 64 ; 2 uses
  %.not.i23.i.i101 = icmp eq ptr %i.dj, null
  br i1 %.not.i23.i.i101, label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef %i.dm) #31
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.du, ptr %5, align 8
  store ptr %i.dy, ptr %i.o, align 8
  %i.dz = getelementptr inbounds nuw [64 x i8], ptr %i.du, i64 %i.ds
  store ptr %i.dz, ptr %i.p, align 8
  br label %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.j, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ea = phi ptr [ %.pre, %bb.j ], [ %i.du, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.eb = phi ptr [ %i.di, %bb.j ], [ %i.dy, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = lshr exact i64 %i.ee, 6
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = add i32 %i.eg, -1
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit, %._crit_edge
  %.2 = phi i32 [ %i.eh, %_ZNSt6vectorI12aiMatrix4x4tIfESaIS1_EE9push_backERKS1_.exit ], [ %i.cm, %._crit_edge ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.at, i64 1028
  %i.ej = load i32, ptr %i.ei, align 4            ; 2 uses
  %.not210 = icmp eq i32 %i.ej, 0
  br i1 %.not210, label %._crit_edge204, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.n
  %i.ek = getelementptr inbounds nuw i8, ptr %i.at, i64 1048
  %i.el = uitofp i32 %.2 to float
  %.pre219 = load ptr, ptr %i.ek, align 8
  %i.em = zext i32 %i.ej to i64
  br label %bb.o

end_hunk_1
