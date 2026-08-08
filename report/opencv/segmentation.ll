inline.NumInlined: 1455
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@main:._crit_edge.i.i
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 67
  %i.zo = load i8, ptr %i.zn, align 1, !tbaa !16
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i850

bb.en:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i848
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zk)
          to label %.noexc853 unwind label %bb.eo

.noexc853:                                        ; preds = %bb.en
  %i.zp = load ptr, ptr %i.zk, align 8, !tbaa !74
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 48
  %i.zr = load ptr, ptr %i.zq, align 8
  %i.zs = invoke noundef signext i8 %i.zr(ptr noundef nonnull align 8 dereferenceable(570) %i.zk, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i850 unwind label %bb.eo, !inline_history !264

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i850: ; preds = %.noexc853, %bb.em
  %.0.i.i.i851 = phi i8 [ %i.zo, %bb.em ], [ %i.zs, %.noexc853 ]
  %i.zt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i851)
          to label %.noexc855 unwind label %bb.eo

.noexc855:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i850
  %i.zu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.zt)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.eo ; 0 uses

bb.eo:                                            ; preds = %.noexc855, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i850, %.noexc853, %bb.en, %bb.el, %bb.ek, %bb.ei
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ki

bb.ep:                                            ; preds = %bb.ej
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %87) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #25
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %88) #25
  %i.zw = getelementptr inbounds nuw i8, ptr %87, i64 8 ; 2 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %87, i64 12 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %89, i64 16 ; 6 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %89, i64 8
  %i.aaa = getelementptr inbounds nuw i8, ptr %90, i64 16
  %i.aab = getelementptr inbounds nuw i8, ptr %90, i64 20
  %i.aac = getelementptr inbounds nuw i8, ptr %90, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %91, i64 16
  %i.aae = getelementptr inbounds nuw i8, ptr %91, i64 20
  %i.aaf = getelementptr inbounds nuw i8, ptr %91, i64 8
  %i.aag = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.aah = getelementptr inbounds nuw i8, ptr %92, i64 16
  %i.aai = fpext float %i.dy to double
  %i.aaj = getelementptr inbounds nuw i8, ptr %93, i64 4
  %i.aak = getelementptr inbounds nuw i8, ptr %94, i64 16
  %i.aal = getelementptr inbounds nuw i8, ptr %94, i64 20
  %i.aam = getelementptr inbounds nuw i8, ptr %94, i64 8
  %i.aan = getelementptr inbounds nuw i8, ptr %95, i64 16 ; 6 uses
  %i.aao = getelementptr inbounds nuw i8, ptr %95, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 6 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %116, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %115, i64 72
  %i.aas = getelementptr inbounds nuw i8, ptr %115, i64 92
  %i.aat = getelementptr inbounds nuw i8, ptr %115, i64 96
  %i.aau = getelementptr inbounds nuw i8, ptr %115, i64 88
  %i.aav = getelementptr inbounds nuw i8, ptr %20, i64 1
  %i.aaw = getelementptr inbounds nuw i8, ptr %20, i64 2
  %i.aax = getelementptr inbounds nuw i8, ptr %21, i64 1 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %21, i64 2 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %24, i64 432
  %i.aba = getelementptr inbounds nuw i8, ptr %24, i64 224
  %i.abb = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.abc = getelementptr inbounds nuw i8, ptr %115, i64 24 ; 2 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %115, i64 136
  %i.abe = getelementptr inbounds nuw i8, ptr %115, i64 144
  %i.abf = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %23, i64 128 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %25, i64 24
  %i.abi = getelementptr inbounds nuw i8, ptr %25, i64 128
  %i.abj = getelementptr inbounds nuw i8, ptr %117, i64 24
  %i.abk = getelementptr inbounds nuw i8, ptr %117, i64 128
  %i.abl = getelementptr inbounds nuw i8, ptr %118, i64 16
  %i.abm = getelementptr inbounds nuw i8, ptr %118, i64 20
  %i.abn = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.abo = getelementptr inbounds nuw i8, ptr %119, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %119, i64 16
  %i.abq = getelementptr inbounds nuw i8, ptr %87, i64 72 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %87, i64 84 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %87, i64 88 ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %120, i64 16
  %i.abt = getelementptr inbounds nuw i8, ptr %120, i64 20
  %i.abu = getelementptr inbounds nuw i8, ptr %120, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %121, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %121, i64 20
  %i.abx = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.aby = getelementptr inbounds nuw i8, ptr %122, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %122, i64 16
  %i.aca = getelementptr inbounds nuw i8, ptr %98, i64 8
  %i.acb = getelementptr inbounds nuw i8, ptr %98, i64 16
  %i.acc = getelementptr inbounds nuw i8, ptr %99, i64 8
  %i.acd = getelementptr inbounds nuw i8, ptr %99, i64 16
  %i.ace = getelementptr inbounds nuw i8, ptr %101, i64 8
  %i.acf = getelementptr inbounds nuw i8, ptr %101, i64 16
  %i.acg = getelementptr inbounds nuw i8, ptr %103, i64 16
  %i.ach = getelementptr inbounds nuw i8, ptr %103, i64 20
  %i.aci = getelementptr inbounds nuw i8, ptr %103, i64 8
  %i.acj = getelementptr inbounds nuw i8, ptr %104, i64 8
  %i.ack = getelementptr inbounds nuw i8, ptr %104, i64 16
  %i.acl = getelementptr inbounds nuw i8, ptr %107, i64 432
  %i.acm = getelementptr inbounds nuw i8, ptr %107, i64 224
  %i.acn = getelementptr inbounds nuw i8, ptr %107, i64 16
  %i.aco = getelementptr inbounds nuw i8, ptr %109, i64 208 ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %109, i64 416 ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %108, i64 16 ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %108, i64 8 ; 2 uses
  %i.acs = getelementptr inbounds nuw i8, ptr %110, i64 16
  %i.act = getelementptr inbounds nuw i8, ptr %110, i64 20
  %i.acu = getelementptr inbounds nuw i8, ptr %110, i64 8
  %i.acv = getelementptr inbounds nuw i8, ptr %111, i64 8
  %i.acw = getelementptr inbounds nuw i8, ptr %111, i64 16
  %i.acx = getelementptr inbounds nuw i8, ptr %112, i64 16
  %i.acy = getelementptr inbounds nuw i8, ptr %112, i64 20
  %i.acz = getelementptr inbounds nuw i8, ptr %112, i64 8
  %i.ada = getelementptr inbounds nuw i8, ptr %113, i64 16
  %i.adb = getelementptr inbounds nuw i8, ptr %113, i64 20
  %i.adc = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.add = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.ade = getelementptr inbounds nuw i8, ptr %114, i64 16
  %i.adf = getelementptr inbounds nuw i8, ptr %97, i64 8
  %i.adg = getelementptr inbounds nuw i8, ptr %97, i64 16
  %i.adh = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.adi = getelementptr inbounds nuw i8, ptr %124, i64 16
  %i.adj = getelementptr inbounds nuw i8, ptr %125, i64 16
  %i.adk = getelementptr inbounds nuw i8, ptr %126, i64 8
  %i.adl = getelementptr inbounds nuw i8, ptr %126, i64 16
  %i.adm = getelementptr inbounds nuw i8, ptr %128, i64 16
  %i.adn = getelementptr inbounds nuw i8, ptr %128, i64 20
  %i.ado = getelementptr inbounds nuw i8, ptr %128, i64 8
  %i.adp = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.adq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.adr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ads = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.adt = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.adu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.adv = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.adw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.adx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ady = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aea = getelementptr inbounds nuw i8, ptr %11, i64 22
  %i.aeb = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.aed = getelementptr inbounds nuw i8, ptr %12, i64 22
  %i.aee = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.aef = getelementptr inbounds nuw i8, ptr %13, i64 20
  %i.aeg = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aeh = getelementptr inbounds nuw i8, ptr %123, i64 16 ; 4 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %89, i64 30
  %i.aej = getelementptr inbounds nuw i8, ptr %109, i64 416
  %i.aek = getelementptr inbounds nuw i8, ptr %109, i64 208
  br label %bb.eq

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit807, %bb.ep
  %.0919 = phi i32 [ 500, %bb.ep ], [ %.1920, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit807 ] ; 2 uses
  %.0917 = phi i32 [ 50, %bb.ep ], [ %.1918, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit807 ] ; 2 uses
  %.0152 = phi i32 [ -1, %bb.ep ], [ %.1154, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit807 ] ; 2 uses
  %i.ael = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 1)
          to label %bb.er unwind label %.loopexit939

bb.er:                                            ; preds = %bb.eq
  %i.aem = icmp slt i32 %i.ael, 0
  br i1 %i.aem, label %bb.es, label %.loopexit944

bb.es:                                            ; preds = %bb.er
  %i.aen = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZN2cv12VideoCapturersERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(25) %81, ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %bb.et unwind label %.loopexit939 ; 0 uses

bb.et:                                            ; preds = %bb.es
  %i.aeo = invoke noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %87)
          to label %bb.eu unwind label %.loopexit939

bb.eu:                                            ; preds = %bb.et
  br i1 %i.aeo, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aep = invoke noundef i32 @_ZN2cv7waitKeyEi(i32 noundef 0)
          to label %.loopexit944 unwind label %.loopexit.split-lp940 ; 0 uses

.loopexit939:                                     ; preds = %bb.eq, %bb.es, %bb.et
  %lpad.loopexit941 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

.loopexit.split-lp940:                            ; preds = %bb.ev
  %lpad.loopexit.split-lp942 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.ew:                                            ; preds = %bb.eu
  %i.aeq = icmp eq i32 %.0152, -1
  br i1 %i.aeq, label %bb.ex, label %._crit_edge.i.i701

bb.ex:                                            ; preds = %bb.ew
  %i.aer = load i32, ptr %i.zw, align 8, !tbaa !238
  %i.aes = load i32, ptr %i.zx, align 4, !tbaa !238
  %i.aet = call i32 @llvm.smax.i32(i32 %i.aer, i32 %i.aes) ; 3 uses
  %i.aeu = mul nsw i32 %i.aet, 20
  %i.aev = sdiv i32 %i.aeu, 512
  %.sroa.speculated877 = call i32 @llvm.smin.i32(i32 %i.aev, i32 %.0917)
  %i.aew = mul nsw i32 %i.aet, 400
  %i.aex = sdiv i32 %i.aew, 512
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.aex, i32 %.0919)
  br label %._crit_edge.i.i701

._crit_edge.i.i701:                               ; preds = %bb.ex, %bb.ew
  %.1920 = phi i32 [ %.sroa.speculated, %bb.ex ], [ %.0919, %bb.ew ] ; 3 uses
  %.1918 = phi i32 [ %.sroa.speculated877, %bb.ex ], [ %.0917, %bb.ew ] ; 5 uses
  %.1154 = phi i32 [ %i.aet, %bb.ex ], [ %.0152, %bb.ew ]
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #25
  store ptr %i.zy, ptr %89, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.zy, ptr noundef nonnull align 1 dereferenceable(14) @.str.84, i64 14, i1 false)
  store i64 14, ptr %i.zz, align 8, !tbaa !9
  store i8 0, ptr %i.aei, align 2, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #25
  store i32 0, ptr %i.aaa, align 8, !tbaa !265
  store i32 0, ptr %i.aab, align 4, !tbaa !267
  store i32 16842752, ptr %90, align 8, !tbaa !268
  store ptr %87, ptr %i.aac, align 8, !tbaa !270
  invoke void @_ZN2cv6imshowERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull align 8 dereferenceable(24) %90)
          to label %bb.ey unwind label %bb.gg

bb.ey:                                            ; preds = %._crit_edge.i.i701
  call void @llvm.lifetime.end.p0(ptr nonnull %90) #25
  %i.aey = load ptr, ptr %89, align 8, !tbaa !17  ; 2 uses
  %i.aez = icmp eq ptr %i.aey, %i.zy
  br i1 %i.aez, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i706, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705: ; preds = %bb.ey
  %i.afa = load i64, ptr %i.zy, align 8, !tbaa !16
  %i.afb = add i64 %i.afa, 1
  call void @_ZdlPvm(ptr noundef %i.aey, i64 noundef %i.afb) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i706

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i706: ; preds = %bb.ey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i705
  call void @llvm.lifetime.end.p0(ptr nonnull %89) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %91) #25
  store i32 0, ptr %i.aad, align 8, !tbaa !265
  store i32 0, ptr %i.aae, align 4, !tbaa !267
  store i32 16842752, ptr %91, align 8, !tbaa !268
  store ptr %87, ptr %i.aaf, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #25
  store i64 0, ptr %i.aah, align 8
  store i32 33619968, ptr %92, align 8, !tbaa !268
  store ptr %88, ptr %i.aag, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %93) #25
  store i32 %i.ew, ptr %93, align 4, !tbaa !265
  store i32 %i.fe, ptr %i.aaj, align 4, !tbaa !267
  invoke void @_ZN2cv3dnn14dnn5_v2026060513blobFromImageERKNS_11_InputArrayERKNS_12_OutputArrayEdRKNS_5Size_IiEERKNS_7Scalar_IdEEbbi(ptr noundef nonnull align 8 dereferenceable(24) %91, ptr noundef nonnull align 8 dereferenceable(24) %92, double noundef %i.aai, ptr noundef nonnull align 4 dereferenceable(8) %93, ptr noundef nonnull align 8 dereferenceable(32) %44, i1 noundef zeroext %i.eo, i1 noundef zeroext false, i32 noundef 5)
          to label %._crit_edge.i.i708 unwind label %bb.gh

._crit_edge.i.i708:                               ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i706
  call void @llvm.lifetime.end.p0(ptr nonnull %93) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %94) #25
  store i32 0, ptr %i.aak, align 8, !tbaa !265
  store i32 0, ptr %i.aal, align 4, !tbaa !267
  store i32 16842752, ptr %94, align 8, !tbaa !268
  store ptr %88, ptr %i.aam, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %95) #25
  store ptr %i.aan, ptr %95, align 8, !tbaa !15
  store i64 0, ptr %i.aao, align 8, !tbaa !9
  store i8 0, ptr %i.aan, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %96) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %96, i8 0, i64 32, i1 false)
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net8setInputERKNS_11_InputArrayERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEdRKNS_7Scalar_IdEE(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(32) %95, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(32) %96)
          to label %bb.ez unwind label %bb.gi

bb.ez:                                            ; preds = %._crit_edge.i.i708
  call void @llvm.lifetime.end.p0(ptr nonnull %96) #25
  %i.afc = load ptr, ptr %95, align 8, !tbaa !17  ; 2 uses
  %i.afd = icmp eq ptr %i.afc, %i.aan
  br i1 %i.afd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712: ; preds = %bb.ez
  %i.afe = load i64, ptr %i.aan, align 8, !tbaa !16
  %i.aff = add i64 %i.afe, 1
  call void @_ZdlPvm(ptr noundef %i.afc, i64 noundef %i.aff) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714: ; preds = %bb.ez, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i712
  call void @llvm.lifetime.end.p0(ptr nonnull %95) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %94) #25
  %i.afg = invoke noundef i64 @_ZN2cv12getTickCountEv()
          to label %bb.fa unwind label %bb.gj

bb.fa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit714
  %i.afh = load i64, ptr %i.m, align 8, !tbaa !9
  %i.afi = icmp eq i64 %i.afh, 6
  br i1 %i.afi, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread923

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.fa
  %i.afj = load ptr, ptr %31, align 8, !tbaa !17  ; 2 uses
  %i.afk = load i32, ptr %i.afj, align 1
  %i.afl = xor i32 %i.afk, 1701720693
  %i.afm = getelementptr i8, ptr %i.afj, i64 4
  %i.afn = load i16, ptr %i.afm, align 1
  %i.afo = zext i16 %i.afn to i32
  %i.afp = xor i32 %i.afo, 28788
  %i.afq = or i32 %i.afl, %i.afp
  %i.afr = icmp ne i32 %i.afq, 0
  %i.afs = zext i1 %i.afr to i32
  %i.aft = icmp eq i32 %i.afs, 0
  br i1 %i.aft, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread923

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %97) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %97, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %98) #25
  store i64 0, ptr %i.acb, align 8
  store i32 33882112, ptr %98, align 8, !tbaa !268
  store ptr %97, ptr %i.aca, align 8, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %99) #25
  invoke void @_ZNK2cv3dnn14dnn5_v202606053Net28getUnconnectedOutLayersNamesB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %99, ptr noundef nonnull align 8 dereferenceable(16) %79)
          to label %bb.fb unwind label %bb.gk

bb.fb:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN2cv3dnn14dnn5_v202606053Net7forwardERKNS_12_OutputArrayERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(24) %98, ptr noundef nonnull align 8 dereferenceable(24) %99)
          to label %bb.fc unwind label %bb.gl

bb.fc:                                            ; preds = %bb.fb
  %i.afu = load ptr, ptr %99, align 8, !tbaa !215 ; 3 uses
  %i.afv = load ptr, ptr %i.acc, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.afu, %i.afv
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.fc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.agb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.afu, %bb.fc ] ; 3 uses
  %i.afw = load ptr, ptr %.05.i.i.i, align 8, !tbaa !17 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.afy = icmp eq ptr %i.afw, %i.afx
  br i1 %i.afy, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.afz = load i64, ptr %i.afx, align 8, !tbaa !16
  %i.aga = add i64 %i.afz, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.aga) #26
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.agb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i715 = icmp eq ptr %i.agb, %i.afv
  br i1 %.not.i.i.i715, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !216

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %99, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.fc
  %i.agc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.afu, %bb.fc ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.agc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.fd

bb.fd:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.agd = load ptr, ptr %i.acd, align 8, !tbaa !214
  %i.age = ptrtoint ptr %i.agd to i64
  %i.agf = ptrtoint ptr %i.agc to i64
  %i.agg = sub i64 %i.age, %i.agf
  call void @_ZdlPvm(ptr noundef nonnull %i.agc, i64 noundef %i.agg) #26
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %98) #25
  invoke void @_ZNK2cv3dnn14dnn5_v202606053Net16printPerfProfileEv(ptr noundef nonnull align 8 dereferenceable(16) %79)
          to label %bb.fe unwind label %bb.gn

bb.fe:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %100) #25
  %i.agh = load ptr, ptr %97, align 8, !tbaa !271 ; 3 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 72
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !274
  %i.agk = icmp sgt i32 %i.agj, 2
  br i1 %i.agk, label %bb.fi, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @.str.99, ptr noundef nonnull align 1 dereferenceable(1) %29)
          to label %.noexc719 unwind label %.loopexit.split-lp954

.noexc719:                                        ; preds = %bb.ff
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.100, i32 noundef 97) #27
          to label %bb.fg unwind label %bb.fh

bb.fg:                                            ; preds = %.noexc719
  unreachable

bb.fh:                                            ; preds = %.noexc719
  %i.agl = landingpad { ptr, i32 }
          cleanup
  %i.agm = load ptr, ptr %28, align 8, !tbaa !17  ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.ago = icmp eq ptr %i.agm, %i.agn
  br i1 %i.ago, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i717, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i716

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i716: ; preds = %bb.fh
  %i.agp = load i64, ptr %i.agn, align 8, !tbaa !16
  %i.agq = add i64 %i.agp, 1
  call void @_ZdlPvm(ptr noundef %i.agm, i64 noundef %i.agq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i717
end_hunk_0
