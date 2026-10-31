Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagesource?download=true
inline.NumInlined: 1740
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN11ImageSource17generateImagePartESt17basic_string_viewIcSt11char_traitsIcEERPN5video6IImageERSt3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISC_ESaISC_EE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1956

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1956: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1953, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1954
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #23
  %i.chw = load ptr, ptr %132, align 8, !tbaa !32 ; 2 uses
  %i.chx = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  %i.chy = icmp eq ptr %i.chw, %i.chx
  br i1 %i.chy, label %_ZN11BasicStrfndIcED2Ev.exit1960, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1957

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1957: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1956
  %i.chz = load i64, ptr %i.chx, align 8, !tbaa !33
  %i.cia = add i64 %i.chz, 1
  call void @_ZdlPvm(ptr noundef %i.chw, i64 noundef %i.cia) #22
  br label %_ZN11BasicStrfndIcED2Ev.exit1960

_ZN11BasicStrfndIcED2Ev.exit1960:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1956, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1957
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #23
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit2465

bb.tq:                                            ; preds = %bb.tl, %bb.ti
  %.pn838 = phi { ptr, i32 } [ %i.cgx, %bb.tl ], [ %i.cgv, %bb.ti ] ; 2 uses
  %i.cib = load ptr, ptr %139, align 8, !tbaa !32 ; 2 uses
  %i.cic = getelementptr inbounds nuw i8, ptr %139, i64 16 ; 2 uses
  %i.cid = icmp eq ptr %i.cib, %i.cic
  br i1 %i.cid, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961: ; preds = %bb.tq
  %i.cie = load i64, ptr %i.cic, align 8, !tbaa !33
  %i.cif = add i64 %i.cie, 1
  call void @_ZdlPvm(ptr noundef %i.cib, i64 noundef %i.cif) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963: ; preds = %bb.tq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1945
  %.pn838.pn = phi { ptr, i32 } [ %.pn835, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1945 ], [ %.pn838, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1961 ], [ %.pn838, %bb.tq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %139) #23
  %i.cig = load ptr, ptr %136, align 8, !tbaa !32 ; 2 uses
  %i.cih = getelementptr inbounds nuw i8, ptr %136, i64 16 ; 2 uses
  %i.cii = icmp eq ptr %i.cig, %i.cih
  br i1 %i.cii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963
  %i.cij = load i64, ptr %i.cih, align 8, !tbaa !33
  %i.cik = add i64 %i.cij, 1
  call void @_ZdlPvm(ptr noundef %i.cig, i64 noundef %i.cik) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1942
  %.pn838.pn.pn = phi { ptr, i32 } [ %.pn833, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1942 ], [ %.pn838.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1964 ], [ %.pn838.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1963 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %136) #23
  br label %bb.tr

bb.tr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1939
  %.pn838.pn.pn.pn = phi { ptr, i32 } [ %.pn838.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1966 ], [ %.pn831, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1939 ]
  %i.cil = load ptr, ptr %132, align 8, !tbaa !32 ; 2 uses
  %i.cim = getelementptr inbounds nuw i8, ptr %132, i64 16 ; 2 uses
  %i.cin = icmp eq ptr %i.cil, %i.cim
  br i1 %i.cin, label %_ZN11BasicStrfndIcED2Ev.exit1970, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1967

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1967: ; preds = %bb.tr
  %i.cio = load i64, ptr %i.cim, align 8, !tbaa !33
  %i.cip = add i64 %i.cio, 1
  call void @_ZdlPvm(ptr noundef %i.cil, i64 noundef %i.cip) #22
  br label %_ZN11BasicStrfndIcED2Ev.exit1970

_ZN11BasicStrfndIcED2Ev.exit1970:                 ; preds = %bb.tr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1967
  call void @llvm.lifetime.end.p0(ptr nonnull %132) #23
  br label %common.resume

bb.ts:                                            ; preds = %bb.sl
  %.sroa.0179.0.copyload = load i64, ptr %13, align 8, !tbaa !103
  %.sroa.2180.0.copyload = load ptr, ptr %i.dy, align 8, !tbaa !78
  %i.ciq = call noundef zeroext i1 @_Z15str_starts_withIcJEEDaSt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_DpOT0_(i64 %.sroa.0179.0.copyload, ptr %.sroa.2180.0.copyload, ptr noundef nonnull @.str.52)
  br i1 %i.ciq, label %bb.tt, label %bb.um

bb.tt:                                            ; preds = %bb.ts
  %i.cir = load ptr, ptr %3, align 8, !tbaa !62   ; 2 uses
  %.not828 = icmp eq ptr %i.cir, null
  br i1 %.not828, label %bb.tu, label %bb.tz

bb.tu:                                            ; preds = %bb.tt
  %.not.i1971 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i1971, label %_ZTW11errorstream.exit1972, label %bb.tv

bb.tv:                                            ; preds = %bb.tu
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit1972

_ZTW11errorstream.exit1972:                       ; preds = %bb.tu, %bb.tv
  %i.cis = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cit = load ptr, ptr %i.cis, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.ciu = load ptr, ptr %i.cit, align 8, !tbaa !41
  %i.civ = load ptr, ptr %i.ciu, align 8
  %i.ciw = call noundef zeroext i1 %i.civ(ptr noundef nonnull align 8 dereferenceable(8) %i.cit), !inline_history !150
  %.v.i1973 = select i1 %i.ciw, i64 976, i64 984
  %i.cix = getelementptr inbounds nuw i8, ptr %i.cis, i64 %.v.i1973 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr @.str.10, ptr %i.ay, align 8, !tbaa !78
  %i.ciy = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cix, ptr noundef nonnull align 8 dereferenceable(8) %i.ay) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  store ptr @.str.11, ptr %i.ax, align 8, !tbaa !78
  %i.ciz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cix, ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.cja = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ciz, ptr noundef nonnull align 8 dereferenceable(16) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr @.str.12, ptr %i.aw, align 8, !tbaa !78
  %i.cjb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cja, ptr noundef nonnull align 8 dereferenceable(8) %i.aw) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.cjc = load ptr, ptr %i.cjb, align 8, !tbaa !79 ; 5 uses
  %.not.i1974 = icmp eq ptr %i.cjc, null
  br i1 %.not.i1974, label %_ZN11StreamProxylsEPFRSoS0_E.exit1092, label %bb.tw

bb.tw:                                            ; preds = %_ZTW11errorstream.exit1972
  %i.cjd = load ptr, ptr %i.cjc, align 8, !tbaa !41
  %i.cje = getelementptr i8, ptr %i.cjd, i64 -24
  %i.cjf = load i64, ptr %i.cje, align 8
  %i.cjg = getelementptr inbounds i8, ptr %i.cjc, i64 %i.cjf
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cjg, i64 32
  %i.cji = load i32, ptr %i.cjh, align 8, !tbaa !86
  %i.cjj = icmp eq i32 %i.cji, 0
  br i1 %i.cjj, label %bb.ty, label %bb.tx

bb.tx:                                            ; preds = %bb.tw
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cjc)
  %.pre.i1975 = load ptr, ptr %i.cjb, align 8, !tbaa !79
  br label %bb.ty

bb.ty:                                            ; preds = %bb.tx, %bb.tw
  %i.cjk = phi ptr [ %.pre.i1975, %bb.tx ], [ %i.cjc, %bb.tw ]
  %i.cjl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cjk), !inline_history !5 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit1092

bb.tz:                                            ; preds = %bb.tt
  %i.cjm = load i8, ptr %0, align 8, !tbaa !117, !range !45, !noundef !76
  %i.cjn = trunc nuw i8 %i.cjm to i1
  br i1 %i.cjn, label %bb.ud, label %bb.ua

bb.ua:                                            ; preds = %bb.tz
  %i.cjo = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cjp = load i8, ptr %i.cjo, align 2, !tbaa !118, !range !45, !noundef !76
  %i.cjq = trunc nuw i8 %i.cjp to i1
  br i1 %i.cjq, label %bb.ud, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.cjr = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cjs = load i8, ptr %i.cjr, align 1, !tbaa !119, !range !45, !noundef !76
  %i.cjt = trunc nuw i8 %i.cjs to i1
  br i1 %i.cjt, label %bb.ud, label %bb.uc

bb.uc:                                            ; preds = %bb.ub
  %i.cju = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cjv = load i8, ptr %i.cju, align 1, !tbaa !120, !range !45, !noundef !76
  %i.cjw = trunc nuw i8 %i.cjv to i1
  br i1 %i.cjw, label %bb.ud, label %.thread3472

bb.ud:                                            ; preds = %bb.tz, %bb.ua, %bb.ub, %bb.uc
  call void @_Z21imageCleanTransparentPN5video6IImageEj(ptr noundef nonnull %i.cir, i32 noundef 0)
  %.phi.trans.insert2834 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre2835 = load i8, ptr %.phi.trans.insert2834, align 1, !tbaa !119, !range !45
  %i.cjx = trunc nuw i8 %.pre2835 to i1
  br i1 %i.cjx, label %.critedge1016, label %.thread3472

.thread3472:                                      ; preds = %bb.uc, %bb.ud
  %i.cjy = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cjz = load i8, ptr %i.cjy, align 2, !tbaa !118, !range !45, !noundef !76
  %i.cka = trunc nuw i8 %i.cjz to i1
  br i1 %i.cka, label %.critedge1016, label %_ZN11StreamProxylsEPFRSoS0_E.exit2465

.critedge1016:                                    ; preds = %bb.ud, %.thread3472
  %i.ckb = load ptr, ptr @g_settings, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %143) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %144) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %143, ptr noundef nonnull @.str.53, ptr noundef nonnull align 1 dereferenceable(1) %144)
          to label %bb.ue unwind label %bb.uj

bb.ue:                                            ; preds = %.critedge1016
  %i.ckc = invoke noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.ckb, ptr noundef nonnull align 8 dereferenceable(32) %143)
          to label %bb.uf unwind label %bb.uk

bb.uf:                                            ; preds = %bb.ue
  %i.ckd = call i16 @llvm.umax.i16(i16 %i.ckc, i16 192)
  %.0.i = call i16 @llvm.umin.i16(i16 %i.ckd, i16 16384)
  %i.cke = uitofp nsz nneg i16 %.0.i to float
  %i.ckf = load ptr, ptr %143, align 8, !tbaa !32 ; 2 uses
  %i.ckg = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 2 uses
  %i.ckh = icmp eq ptr %i.ckf, %i.ckg
  br i1 %i.ckh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1980, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1978

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1978: ; preds = %bb.uf
  %i.cki = load i64, ptr %i.ckg, align 8, !tbaa !33
  %i.ckj = add i64 %i.cki, 1
  call void @_ZdlPvm(ptr noundef %i.ckf, i64 noundef %i.ckj) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1980

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1980: ; preds = %bb.uf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1978
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #23
  %i.ckk = load ptr, ptr %3, align 8, !tbaa !62   ; 2 uses
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.ckk, i64 12
  %i.ckm = load <2 x i32>, ptr %i.ckl, align 4, !tbaa !108 ; 3 uses
  %i.ckn = uitofp <2 x i32> %i.ckm to <2 x float>
  %i.cko = insertelement <2 x float> poison, float %i.cke, i64 0
  %i.ckp = shufflevector <2 x float> %i.cko, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ckq = fdiv nsz <2 x float> %i.ckp, %i.ckn    ; 2 uses
  %i.ckr = extractelement <2 x float> %i.ckq, i64 0
  %i.cks = call nsz noundef float @llvm.ceil.f32(float %i.ckr)
  %i.ckt = fptoui float %i.cks to i32
  %i.cku = extractelement <2 x float> %i.ckq, i64 1
  %i.ckv = call nsz noundef float @llvm.ceil.f32(float %i.cku)
  %i.ckw = fptoui float %i.ckv to i32
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %i.ckt, i32 %i.ckw) ; 3 uses
  %i.ckx = icmp sgt i32 %.sroa.speculated, 1
  br i1 %i.ckx, label %bb.ug, label %_ZN11StreamProxylsEPFRSoS0_E.exit2465

bb.ug:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1980
  %i.cky = extractelement <2 x i32> %i.ckm, i64 0
  %i.ckz = mul i32 %.sroa.speculated, %i.cky      ; 2 uses
  %i.cla = extractelement <2 x i32> %i.ckm, i64 1
  %i.clb = mul i32 %.sroa.speculated, %i.cla      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %145) #23
  store i32 %i.ckz, ptr %145, align 4, !tbaa !101
  %i.clc = getelementptr inbounds nuw i8, ptr %145, i64 4
  store i32 %i.clb, ptr %i.clc, align 4, !tbaa !102
  %i.cld = icmp ult i32 %i.ckz, 23001
  %i.cle = icmp ult i32 %i.clb, 23001
  %or.cond25 = and i1 %i.cld, %i.cle
  br i1 %or.cond25, label %bb.uh, label %bb.ul

bb.uh:                                            ; preds = %bb.ug
  %i.clf = getelementptr inbounds nuw i8, ptr %i.ckk, i64 8
  %i.clg = load i32, ptr %i.clf, align 8, !tbaa !113
  %i.clh = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.cli = getelementptr inbounds nuw i8, ptr %i.clh, i64 600
  %i.clj = load ptr, ptr %i.cli, align 8
  %i.clk = call noundef ptr %i.clj(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i32 noundef %i.clg, ptr noundef nonnull align 4 dereferenceable(8) %145) ; 2 uses
  %i.cll = load ptr, ptr %3, align 8, !tbaa !62   ; 2 uses
  %i.clm = load ptr, ptr %i.cll, align 8, !tbaa !41
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clm, i64 48
  %i.clo = load ptr, ptr %i.cln, align 8
  call void %i.clo(ptr noundef nonnull align 8 dereferenceable(41) %i.cll, ptr noundef %i.clk)
  %i.clp = load ptr, ptr %3, align 8, !tbaa !62   ; 2 uses
  %i.clq = load ptr, ptr %i.clp, align 8, !tbaa !41
  %i.clr = getelementptr i8, ptr %i.clq, i64 -24
  %i.cls = load i64, ptr %i.clr, align 8
  %i.clt = getelementptr inbounds i8, ptr %i.clp, i64 %i.cls ; 3 uses
  %i.clu = getelementptr inbounds nuw i8, ptr %i.clt, i64 8 ; 2 uses
  %i.clv = load i32, ptr %i.clu, align 8, !tbaa !43
  %i.clw = add nsw i32 %i.clv, -1                 ; 2 uses
  store i32 %i.clw, ptr %i.clu, align 8, !tbaa !43
  %.not.i1981 = icmp eq i32 %i.clw, 0
  br i1 %.not.i1981, label %bb.ui, label %_ZNK17IReferenceCounted4dropEv.exit1982

bb.ui:                                            ; preds = %bb.uh
  %i.clx = load ptr, ptr %i.clt, align 8, !tbaa !41
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clx, i64 8
  %i.clz = load ptr, ptr %i.cly, align 8
  call void %i.clz(ptr noundef nonnull align 8 dereferenceable(12) %i.clt) #23, !inline_history !0
  br label %_ZNK17IReferenceCounted4dropEv.exit1982

_ZNK17IReferenceCounted4dropEv.exit1982:          ; preds = %bb.uh, %bb.ui
  store ptr %i.clk, ptr %3, align 8, !tbaa !62
  br label %bb.ul

bb.uj:                                            ; preds = %.critedge1016
  %i.cma = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985

bb.uk:                                            ; preds = %bb.ue
  %i.cmb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cmc = load ptr, ptr %143, align 8, !tbaa !32 ; 2 uses
  %i.cmd = getelementptr inbounds nuw i8, ptr %143, i64 16 ; 2 uses
  %i.cme = icmp eq ptr %i.cmc, %i.cmd
  br i1 %i.cme, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1983

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1983: ; preds = %bb.uk
  %i.cmf = load i64, ptr %i.cmd, align 8, !tbaa !33
  %i.cmg = add i64 %i.cmf, 1
  call void @_ZdlPvm(ptr noundef %i.cmc, i64 noundef %i.cmg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1985: ; preds = %bb.uk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1983, %bb.uj
  %.pn829 = phi { ptr, i32 } [ %i.cma, %bb.uj ], [ %i.cmb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1983 ], [ %i.cmb, %bb.uk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %143) #23
  br label %common.resume

bb.ul:                                            ; preds = %_ZNK17IReferenceCounted4dropEv.exit1982, %bb.ug
  call void @llvm.lifetime.end.p0(ptr nonnull %145) #23
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit2465

bb.um:                                            ; preds = %bb.ts
  %.sroa.0165.0.copyload = load i64, ptr %13, align 8, !tbaa !103
  %.sroa.2166.0.copyload = load ptr, ptr %i.dy, align 8, !tbaa !78
  %i.cmh = call noundef zeroext i1 @_Z15str_starts_withIcJEEDaSt17basic_string_viewIT_St11char_traitsIS1_EEPKS1_DpOT0_(i64 %.sroa.0165.0.copyload, ptr %.sroa.2166.0.copyload, ptr noundef nonnull @.str.54)
  br i1 %i.cmh, label %bb.un, label %bb.wf

bb.un:                                            ; preds = %bb.um
  %i.cmi = load ptr, ptr %3, align 8, !tbaa !62
  %.not815 = icmp eq ptr %i.cmi, null
  br i1 %.not815, label %bb.uo, label %bb.ut

bb.uo:                                            ; preds = %bb.un
  %.not.i1986 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i1986, label %_ZTW11errorstream.exit1987, label %bb.up

bb.up:                                            ; preds = %bb.uo
  call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit1987

_ZTW11errorstream.exit1987:                       ; preds = %bb.uo, %bb.up
  %i.cmj = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.cmk = load ptr, ptr %i.cmj, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.cml = load ptr, ptr %i.cmk, align 8, !tbaa !41
  %i.cmm = load ptr, ptr %i.cml, align 8
  %i.cmn = call noundef zeroext i1 %i.cmm(ptr noundef nonnull align 8 dereferenceable(8) %i.cmk), !inline_history !150
  %.v.i1988 = select i1 %i.cmn, i64 976, i64 984
  %i.cmo = getelementptr inbounds nuw i8, ptr %i.cmj, i64 %.v.i1988 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr @.str.10, ptr %i.av, align 8, !tbaa !78
  %i.cmp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cmo, ptr noundef nonnull align 8 dereferenceable(8) %i.av) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store ptr @.str.11, ptr %i.au, align 8, !tbaa !78
  %i.cmq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cmo, ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.cmr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cmq, ptr noundef nonnull align 8 dereferenceable(16) %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store ptr @.str.12, ptr %i.at, align 8, !tbaa !78
  %i.cms = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cmr, ptr noundef nonnull align 8 dereferenceable(8) %i.at) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.cmt = load ptr, ptr %i.cms, align 8, !tbaa !79 ; 5 uses
  %.not.i1989 = icmp eq ptr %i.cmt, null
  br i1 %.not.i1989, label %_ZN11StreamProxylsEPFRSoS0_E.exit1092, label %bb.uq

bb.uq:                                            ; preds = %_ZTW11errorstream.exit1987
  %i.cmu = load ptr, ptr %i.cmt, align 8, !tbaa !41
  %i.cmv = getelementptr i8, ptr %i.cmu, i64 -24
  %i.cmw = load i64, ptr %i.cmv, align 8
  %i.cmx = getelementptr inbounds i8, ptr %i.cmt, i64 %i.cmw
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmx, i64 32
  %i.cmz = load i32, ptr %i.cmy, align 8, !tbaa !86
  %i.cna = icmp eq i32 %i.cmz, 0
  br i1 %i.cna, label %bb.us, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cmt)
  %.pre.i1990 = load ptr, ptr %i.cms, align 8, !tbaa !79
  br label %bb.us

bb.us:                                            ; preds = %bb.ur, %bb.uq
  %i.cnb = phi ptr [ %.pre.i1990, %bb.ur ], [ %i.cmt, %bb.uq ]
  %i.cnc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.cnb), !inline_history !5 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit1092

bb.ut:                                            ; preds = %bb.un
  call void @llvm.lifetime.start.p0(ptr nonnull %146) #23
  %.sroa.0163.0.copyload = load i64, ptr %13, align 8, !tbaa !103
  %.sroa.2164.0.copyload = load ptr, ptr %i.dy, align 8, !tbaa !78
  call void @_ZN11BasicStrfndIcEC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(40) %146, i64 %.sroa.0163.0.copyload, ptr %.sroa.2164.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %148) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %149) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %148, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %149)
          to label %bb.uu unwind label %bb.vj

bb.uu:                                            ; preds = %bb.ut
  invoke void @_ZN11BasicStrfndIcE4nextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %147, ptr noundef nonnull align 8 dereferenceable(40) %146, ptr noundef nonnull align 8 dereferenceable(32) %148)
          to label %bb.uv unwind label %bb.vk

bb.uv:                                            ; preds = %bb.uu
  %i.cnd = load ptr, ptr %147, align 8, !tbaa !32 ; 2 uses
  %i.cne = getelementptr inbounds nuw i8, ptr %147, i64 16 ; 2 uses
  %i.cnf = icmp eq ptr %i.cnd, %i.cne
  br i1 %i.cnf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1992

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1992: ; preds = %bb.uv
  %i.cng = load i64, ptr %i.cne, align 8, !tbaa !33
  %i.cnh = add i64 %i.cng, 1
  call void @_ZdlPvm(ptr noundef %i.cnd, i64 noundef %i.cnh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994: ; preds = %bb.uv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1992
  %i.cni = load ptr, ptr %148, align 8, !tbaa !32 ; 2 uses
  %i.cnj = getelementptr inbounds nuw i8, ptr %148, i64 16 ; 2 uses
  %i.cnk = icmp eq ptr %i.cni, %i.cnj
  br i1 %i.cnk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1997, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1995

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1995: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994
  %i.cnl = load i64, ptr %i.cnj, align 8, !tbaa !33
  %i.cnm = add i64 %i.cnl, 1
  call void @_ZdlPvm(ptr noundef %i.cni, i64 noundef %i.cnm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1997

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1997: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1994, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1995
  call void @llvm.lifetime.end.p0(ptr nonnull %149) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %148) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %150) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %151) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %152) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %151, ptr noundef nonnull @.str.16, ptr noundef nonnull align 1 dereferenceable(1) %152)
end_hunk_0
begin_hunk_1_@_ZL14apply_colorizePN5video6IImageEN4core8vector2dIjEES4_NS_6SColorEib:bb.a
  %exitcond88.not = icmp eq i32 %i.m, %i.i
  br i1 %exitcond88.not, label %.loopexit, label %.preheader, !llvm.loop !209

bb.d:                                             ; preds = %.preheader, %bb.f
  %.06379 = phi i32 [ %.sroa.048.0.extract.trunc, %.preheader ], [ %i.ab, %bb.f ] ; 3 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 %i.p(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06379, i32 noundef %.081)
  %i.r = lshr i32 %i.q, 24                        ; 2 uses
  %.not67 = icmp eq i32 %i.r, 0
  br i1 %.not67, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = mul nuw nsw i32 %i.r, %i.a
  %i.t = udiv i32 %i.s, 255
  %i.u = shl nuw i32 %i.t, 24
  %i.v = load i32, ptr %7, align 4, !tbaa !104
  %i.w = and i32 %i.v, 16777215
  %i.x = or disjoint i32 %i.w, %i.u
  store i32 %i.x, ptr %7, align 4, !tbaa !104
  %i.y = load ptr, ptr %0, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06379, i32 noundef %.081, ptr noundef nonnull align 4 dereferenceable(4) %7, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = add i32 %.06379, 1                      ; 2 uses
  %exitcond87.not = icmp eq i32 %i.ab, %i.k
  br i1 %exitcond87.not, label %._crit_edge80, label %bb.d, !llvm.loop !210

.preheader69:                                     ; preds = %.preheader69.lr.ph, %._crit_edge77
  %.06278 = phi i32 [ %i.ac, %._crit_edge77 ], [ %.sroa.7.0.extract.trunc, %.preheader69.lr.ph ] ; 3 uses
  br label %bb.g

._crit_edge77:                                    ; preds = %bb.i
  %i.ac = add i32 %.06278, 1                      ; 2 uses
  %exitcond86.not = icmp eq i32 %i.ac, %i.e
  br i1 %exitcond86.not, label %.loopexit, label %.preheader69, !llvm.loop !211

bb.g:                                             ; preds = %.preheader69, %bb.i
  %.06176 = phi i32 [ %.sroa.048.0.extract.trunc, %.preheader69 ], [ %i.ak, %bb.i ] ; 3 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i32 %i.af(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06176, i32 noundef %.06278)
  %.not66 = icmp ult i32 %i.ag, 16777216
  br i1 %.not66, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.06176, i32 noundef %.06278, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ak = add i32 %.06176, 1                      ; 2 uses
  %exitcond85.not = icmp eq i32 %i.ak, %i.g
  br i1 %exitcond85.not, label %._crit_edge77, label %bb.g, !llvm.loop !212

bb.j:                                             ; preds = %bb.a
  %i.al = add i32 %.sroa.4.0.extract.trunc, %.sroa.7.0.extract.trunc ; 2 uses
  %i.am = icmp ugt i32 %i.al, %.sroa.7.0.extract.trunc
  br i1 %i.am, label %.preheader72.lr.ph, label %.loopexit

.preheader72.lr.ph:                               ; preds = %bb.j
  %i.an = uitofp nsz nneg i32 %i.a to float       ; 2 uses
  %i.ao = sitofp nsz i32 %4 to float
  %.in = select i1 %i.b, float %i.an, float %i.ao
  %i.ap = fdiv nsz float %.in, 2.550000e+02       ; 2 uses
  %i.aq = add i32 %.sroa.043.0.extract.trunc, %.sroa.048.0.extract.trunc ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, %.sroa.048.0.extract.trunc
  %i.as = fcmp nsz olt float %i.ap, 0.000000e+00
  %i.at = select i1 %i.as, float 0.000000e+00, float %i.ap ; 2 uses
  %i.au = fcmp nsz olt float %i.at, 1.000000e+00
  %i.av = select i1 %i.au, float %i.at, float 1.000000e+00 ; 2 uses
  %i.aw = fsub nsz float 1.000000e+00, %i.av
  br i1 %i.ar, label %.preheader72.preheader, label %.loopexit

.preheader72.preheader:                           ; preds = %.preheader72.lr.ph
  %i.ax = lshr i32 %3, 16
  %i.ay = lshr i32 %3, 8
  %i.az = and i32 %i.ax, 255
  %i.ba = uitofp nsz nneg i32 %i.az to float
  %i.bb = and i32 %i.ay, 255
  %i.bc = uitofp nsz nneg i32 %i.bb to float
  %i.bd = and i32 %3, 255
  %i.be = uitofp nsz nneg i32 %i.bd to float
  %i.bf = insertelement <4 x float> poison, float %i.av, i64 0
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bh = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.bc, i64 1
  %i.bj = insertelement <4 x float> poison, float %i.be, i64 2
  %i.bk = insertelement <4 x float> %i.bj, float %i.an, i64 3
  %i.bl = shufflevector <4 x float> %i.bi, <4 x float> %i.bk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.bm = fmul nnan nsz <4 x float> %i.bg, %i.bl
  %i.bn = insertelement <4 x float> poison, float %i.aw, i64 0
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.preheader72

.preheader72:                                     ; preds = %.preheader72.preheader, %._crit_edge
  %.06075 = phi i32 [ %i.bp, %._crit_edge ], [ %.sroa.7.0.extract.trunc, %.preheader72.preheader ] ; 3 uses
  br label %bb.k

._crit_edge:                                      ; preds = %bb.m
  %i.bp = add i32 %.06075, 1                      ; 2 uses
  %exitcond84.not = icmp eq i32 %i.bp, %i.al
  br i1 %exitcond84.not, label %.loopexit, label %.preheader72, !llvm.loop !213

bb.k:                                             ; preds = %.preheader72, %bb.m
  %.05974 = phi i32 [ %.sroa.048.0.extract.trunc, %.preheader72 ], [ %i.cg, %bb.m ] ; 3 uses
  %i.bq = load ptr, ptr %0, align 8, !tbaa !41
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call i32 %i.bs(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.05974, i32 noundef %.06075) ; 3 uses
  store i32 %i.bt, ptr %7, align 4, !tbaa !108
  %.not = icmp ult i32 %i.bt, 16777216
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = bitcast i32 %i.bt to <4 x i8>
  %i.bv = shufflevector <4 x i8> %i.bu, <4 x i8> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.bw = uitofp <4 x i8> %i.bv to <4 x float>
  %i.bx = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bo, <4 x float> %i.bm)
  %i.by = fadd nsz <4 x float> %i.bx, splat (float 5.000000e-01)
  %i.bz = call nsz <4 x float> @llvm.floor.v4f32(<4 x float> %i.by)
  %i.ca = fptosi <4 x float> %i.bz to <4 x i32>
  %i.cb = shufflevector <4 x i32> %i.ca, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.cc = trunc <4 x i32> %i.cb to <4 x i8>
  store <4 x i8> %i.cc, ptr %7, align 4, !tbaa !108
  %i.cd = load ptr, ptr %0, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.05974, i32 noundef %.06075, ptr noundef nonnull align 4 dereferenceable(4) %7, i1 noundef zeroext false)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cg = add i32 %.05974, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.cg, %i.aq
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !214

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge77, %._crit_edge80, %bb.j, %.preheader72.lr.ph, %.preheader70, %.preheader69.lr.ph, %bb.c, %.preheader.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret void
}

declare void @_Z21imageCleanTransparentPN5video6IImageEj(ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef zeroext i16 @_ZNK8Settings6getU16ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #10

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #11

declare noundef zeroext i1 @_Z15base64_is_validSt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #5

declare void @_Z13base64_decodeB5cxx11St17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i64, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15RenderingEngine14get_raw_deviceEv() local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !47 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not2 = icmp eq ptr %i.c, null
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine14get_raw_deviceEv) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL20apply_hue_saturationPN5video6IImageEN4core8vector2dIjEES4_iiib(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #4 {
bb.a:
  %7 = alloca %"class.video::SColor", align 4     ; 4 uses
  %.sroa.027.0.extract.trunc = trunc i64 %1 to i32 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 3 uses
  %.sroa.026.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.b = insertelement <2 x i32> %i.a, i32 %5, i64 1
  %i.c = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.b, <2 x i32> splat (i32 -100))
  %i.d = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.c, <2 x i32> <i32 1000, i32 100>)
  %i.e = sitofp <2 x i32> %i.d to <2 x float>
  %i.f = fdiv nsz <2 x float> %i.e, splat (float 1.000000e+02) ; 2 uses
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %i.h = uitofp nneg i32 %i.g to float            ; 2 uses
  %i.i = fcmp nsz olt float %i.h, 1.000000e+02
  %i.j = select i1 %i.i, float %i.h, float 1.000000e+02
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.9.0 = phi nsz float [ %i.j, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.k = add i32 %.sroa.2.0.extract.trunc, %.sroa.3.0.extract.trunc ; 2 uses
  %i.l = icmp ugt i32 %i.k, %.sroa.3.0.extract.trunc
  br i1 %i.l, label %.preheader.lr.ph, label %._crit_edge63.split

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.m = add i32 %.sroa.026.0.extract.trunc, %.sroa.027.0.extract.trunc ; 2 uses
  %i.n = icmp ugt i32 %i.m, %.sroa.027.0.extract.trunc
  %i.o = extractelement <2 x float> %i.f, i64 1   ; 5 uses
  %i.p = fcmp nsz olt float %i.o, 0.000000e+00    ; 2 uses
  %i.q = fadd nnan nsz float %i.o, 1.000000e+00   ; 2 uses
  %i.r = extractelement <2 x float> %i.f, i64 0
  %i.s = fadd nnan nsz float %i.r, 1.000000e+00
  %i.t = fsub nsz float 1.000000e+00, %i.o
  %i.u = sitofp nsz i32 %3 to float               ; 2 uses
  br i1 %i.n, label %.preheader, label %._crit_edge63.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03162 = phi i32 [ %i.v, %._crit_edge ], [ %.sroa.3.0.extract.trunc, %.preheader.lr.ph ] ; 3 uses
  %.sroa.17.061 = phi float [ %.sroa.17.2, %._crit_edge ], [ 1.000000e+00, %.preheader.lr.ph ]
  %.sroa.9.160 = phi float [ %.sroa.9.3, %._crit_edge ], [ %.sroa.9.0, %.preheader.lr.ph ]
  br label %bb.d

._crit_edge63.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.c
  ret void

._crit_edge:                                      ; preds = %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit
  %i.v = add i32 %.03162, 1                       ; 2 uses
  %exitcond64.not = icmp eq i32 %i.v, %i.k
  br i1 %exitcond64.not, label %._crit_edge63.split, label %.preheader, !llvm.loop !215

bb.d:                                             ; preds = %.preheader, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit
  %.03058 = phi i32 [ %.sroa.027.0.extract.trunc, %.preheader ], [ %i.fh, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit ] ; 3 uses
  %.sroa.17.157 = phi float [ %.sroa.17.061, %.preheader ], [ %.sroa.17.2, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit ]
  %.sroa.9.256 = phi float [ %.sroa.9.160, %.preheader ], [ %.sroa.9.3, %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call i32 %i.y(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.03058, i32 noundef %.03162) ; 5 uses
  %i.aa = lshr i32 %i.z, 16
  %i.ab = and i32 %i.aa, 255
  %i.ac = uitofp nsz nneg i32 %i.ab to float      ; 2 uses
  %i.ad = and i32 %i.z, 255
  %i.ae = uitofp nsz nneg i32 %i.ad to float      ; 2 uses
  br i1 %6, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = lshr i32 %i.z, 8
  %i.ag = and i32 %i.af, 255
  %i.ah = uitofp nsz nneg i32 %i.ag to float
  %i.ai = fmul nnan nsz float %i.ah, 5.900000e-01
  %i.aj = call nsz float @llvm.fmuladd.f32(float %i.ac, float 3.000000e-01, float %i.ai)
  %i.ak = call nsz noundef float @llvm.fmuladd.f32(float %i.ae, float 1.100000e-01, float %i.aj)
  %i.al = fdiv nsz float %i.ak, 2.550000e+02      ; 2 uses
  %i.am = fmul nsz float %i.q, %i.al
  %i.an = call nsz float @llvm.fmuladd.f32(float %i.al, float %i.t, float %i.o)
  %.0 = select nsz i1 %i.p, float %i.am, float %i.an
  %i.ao = fmul nsz float %.0, 1.000000e+02
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.ap = fmul nnan nsz float %i.ac, f0x3B808081  ; 6 uses
  %i.aq = lshr i32 %i.z, 8
  %i.ar = and i32 %i.aq, 255
  %i.as = uitofp nsz nneg i32 %i.ar to float
  %i.at = fmul nnan nsz float %i.as, f0x3B808081  ; 6 uses
  %i.au = fmul nnan nsz float %i.ae, f0x3B808081  ; 6 uses
  %i.av = lshr i32 %i.z, 24
  %i.aw = uitofp nsz nneg i32 %i.av to float
  %i.ax = fmul nnan nsz float %i.aw, f0x3B808081
  %i.ay = fcmp nsz olt float %i.ap, %i.at         ; 2 uses
  %..i.i = select i1 %i.ay, float %i.at, float %i.ap ; 2 uses
  %i.az = fcmp nsz olt float %..i.i, %i.au
  %.sroa.speculated36.i = select i1 %i.az, float %i.au, float %..i.i ; 5 uses
  %..i32.i = select i1 %i.ay, float %i.ap, float %i.at ; 2 uses
  %i.ba = fcmp nsz olt float %..i32.i, %i.au
  %.sroa.speculated.i = select i1 %i.ba, float %..i32.i, float %i.au ; 3 uses
  %i.bb = fadd nsz float %.sroa.speculated36.i, %.sroa.speculated.i ; 2 uses
  %i.bc = fmul nsz float %i.bb, 5.000000e+01      ; 4 uses
  %i.bd = fsub nsz float %.sroa.speculated36.i, %.sroa.speculated.i ; 5 uses
  %i.be = call nsz noundef float @llvm.fabs.f32(float %i.bd)
  %i.bf = fcmp nsz ugt float %i.be, f0x358637BD
  br i1 %i.bf, label %bb.g, label %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit

bb.g:                                             ; preds = %bb.f
  %i.bg = fcmp nsz ugt float %i.bc, 5.000000e+01
  %i.bh = fsub nsz float 2.000000e+00, %.sroa.speculated36.i
  %i.bi = fsub nsz float %i.bh, %.sroa.speculated.i
  %.pn.i = select i1 %i.bg, float %i.bi, float %i.bb
  %.sink.i = fdiv nsz float %i.bd, %.pn.i
  %i.bj = fmul nsz float %.sink.i, 1.000000e+02   ; 2 uses
  %i.bk = fsub nsz float %.sroa.speculated36.i, %i.ap
  %i.bl = call nsz noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = fcmp nsz ugt float %i.bl, f0x358637BD
  br i1 %i.bm, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = fsub nsz float %i.at, %i.au
  %i.bo = fdiv nsz float %i.bn, %i.bd
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bp = fsub nsz float %.sroa.speculated36.i, %i.at
  %i.bq = call nsz noundef float @llvm.fabs.f32(float %i.bp)
  %i.br = fcmp nsz ugt float %i.bq, f0x358637BD
  br i1 %i.br, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = fsub nsz float %i.au, %i.ap
  %i.bt = fdiv nsz float %i.bs, %i.bd
  %i.bu = fadd nsz float %i.bt, 2.000000e+00
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bv = fsub nsz float %i.ap, %i.at
  %i.bw = fdiv nsz float %i.bv, %i.bd
  %i.bx = fadd nsz float %i.bw, 4.000000e+00
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.by = phi float [ %i.bu, %bb.j ], [ %i.bx, %bb.k ], [ %i.bo, %bb.h ]
  %i.bz = fmul nsz float %i.by, 6.000000e+01      ; 3 uses
  %i.ca = fcmp nsz olt float %i.bz, 0.000000e+00
  br i1 %i.ca, label %.lr.ph.i, label %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %storemerge39.i = phi float [ %i.cb, %.lr.ph.i ], [ %i.bz, %bb.l ]
  %i.cb = fadd nsz float %storemerge39.i, 3.600000e+02 ; 3 uses
  %i.cc = fcmp nsz olt float %i.cb, 0.000000e+00
  br i1 %i.cc, label %.lr.ph.i, label %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit, !llvm.loop !216

_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit:  ; preds = %.lr.ph.i, %bb.l, %bb.f
  %.sroa.043.1 = phi nsz float [ 0.000000e+00, %bb.f ], [ %i.bz, %bb.l ], [ %i.cb, %.lr.ph.i ]
  %.sroa.9.4 = phi nsz float [ 0.000000e+00, %bb.f ], [ %i.bj, %bb.l ], [ %i.bj, %.lr.ph.i ]
  %i.cd = fmul nsz float %i.q, %i.bc
  %i.ce = fsub nsz float 1.000000e+02, %i.bc
  %i.cf = call nsz float @llvm.fmuladd.f32(float %i.o, float %i.ce, float %i.bc)
  %.sroa.18.0 = select nsz i1 %i.p, float %i.cd, float %i.cf
  %i.cg = fmul nsz float %i.s, %.sroa.9.4         ; 2 uses
  %i.ch = fcmp nsz olt float %i.cg, 0.000000e+00
  %i.ci = select i1 %i.ch, float 0.000000e+00, float %i.cg ; 2 uses
  %i.cj = fcmp nsz olt float %i.ci, 1.000000e+02
  %i.ck = select i1 %i.cj, float %i.ci, float 1.000000e+02
  %i.cl = fadd nsz float %.sroa.043.1, %i.u
  br label %bb.m

bb.m:                                             ; preds = %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit, %bb.e
  %.sroa.043.0 = phi float [ %i.u, %bb.e ], [ %i.cl, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ]
  %.sroa.9.3 = phi nsz float [ %.sroa.9.256, %bb.e ], [ %i.ck, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ] ; 4 uses
  %.sroa.18.1 = phi nsz float [ %i.ao, %bb.e ], [ %.sroa.18.0, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ] ; 2 uses
  %.sroa.17.2 = phi nsz float [ %.sroa.17.157, %bb.e ], [ %i.ax, %_ZN5video9SColorHSL7fromRGBERKNS_7SColorfE.exit ] ; 3 uses
  %i.cm = fdiv nsz float %.sroa.18.1, 1.000000e+02 ; 7 uses
  %i.cn = call nsz float @llvm.fabs.f32(float %.sroa.9.3)
  %i.co = fcmp nsz ugt float %i.cn, f0x358637BD
  br i1 %i.co, label %bb.n, label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

bb.n:                                             ; preds = %bb.m
  %i.cp = frem nsz float %.sroa.043.0, 3.600000e+02 ; 3 uses
  %i.cq = fcmp nsz olt float %i.cp, 0.000000e+00
  %i.cr = fadd nsz float %i.cp, 3.600000e+02
  %storemerge = select i1 %i.cq, float %i.cr, float %i.cp
  %i.cs = fcmp nsz ugt float %.sroa.18.1, 5.000000e+01
  %i.ct = fsub nsz float 1.000000e+00, %i.cm
  %.sink.i34 = select i1 %i.cs, float %i.ct, float %i.cm
  %i.cu = insertelement <2 x float> poison, float %.sroa.9.3, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %storemerge, i64 1
  %i.cw = fdiv nsz <2 x float> %i.cv, <float 1.000000e+02, float 3.600000e+02> ; 2 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 1 ; 5 uses
  %i.cy = extractelement <2 x float> %i.cw, i64 0
  %i.cz = call nsz float @llvm.fmuladd.f32(float %.sink.i34, float %i.cy, float %i.cm) ; 10 uses
  %i.da = fneg nsz float %i.cz
  %i.db = call nsz float @llvm.fmuladd.f32(float %i.cm, float 2.000000e+00, float %i.da) ; 15 uses
  %i.dc = fadd nsz float %i.cx, f0x3EAAAAAB       ; 3 uses
  %i.dd = fcmp nsz olt float %i.dc, 0.000000e+00
  %i.de = fadd nsz float %i.dc, 1.000000e+00
  %.0.i.i = select nsz i1 %i.dd, float %i.de, float %i.dc ; 3 uses
  %i.df = fcmp nsz ogt float %.0.i.i, 1.000000e+00
  %i.dg = fadd nsz float %.0.i.i, -1.000000e+00
  %.1.i.i = select nsz i1 %i.df, float %i.dg, float %.0.i.i ; 5 uses
  %i.dh = fcmp nsz olt float %.1.i.i, f0x3E2AAAAB
  br i1 %i.dh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.di = fsub nsz float %i.cz, %i.db
  %i.dj = fmul nsz float %i.di, %.1.i.i
  %i.dk = call nsz float @llvm.fmuladd.f32(float %i.dj, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i

bb.p:                                             ; preds = %bb.n
  %i.dl = fcmp nsz olt float %.1.i.i, 5.000000e-01
  br i1 %i.dl, label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = fcmp nsz olt float %.1.i.i, f0x3F2AAAAB
  br i1 %i.dm, label %bb.r, label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i

bb.r:                                             ; preds = %bb.q
  %i.dn = fsub nsz float %i.cz, %i.db
  %i.do = fsub nnan nsz float f0x3F2AAAAB, %.1.i.i
  %i.dp = fmul nsz float %i.dn, %i.do
  %i.dq = call nsz float @llvm.fmuladd.f32(float %i.dp, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit.i

_ZNK5video9SColorHSL6toRGB1Efff.exit.i:           ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.017.i.i = phi nsz float [ %i.dk, %bb.o ], [ %i.db, %bb.q ], [ %i.dq, %bb.r ], [ %i.cz, %bb.p ] ; 4 uses
  %i.dr = fcmp nsz olt float %i.cx, 0.000000e+00
  %i.ds = fadd nsz float %i.cx, 1.000000e+00
  %.0.i21.i = select nsz i1 %i.dr, float %i.ds, float %i.cx ; 3 uses
  %i.dt = fcmp nsz ogt float %.0.i21.i, 1.000000e+00
  %i.du = fadd nsz float %.0.i21.i, -1.000000e+00
  %.1.i22.i = select nsz i1 %i.dt, float %i.du, float %.0.i21.i ; 5 uses
  %i.dv = fcmp nsz olt float %.1.i22.i, f0x3E2AAAAB
  br i1 %i.dv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit.i
  %i.dw = fsub nsz float %i.cz, %i.db
  %i.dx = fmul nsz float %i.dw, %.1.i22.i
  %i.dy = call nsz float @llvm.fmuladd.f32(float %i.dx, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i

bb.t:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit.i
  %i.dz = fcmp nsz olt float %.1.i22.i, 5.000000e-01
  br i1 %i.dz, label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ea = fcmp nsz olt float %.1.i22.i, f0x3F2AAAAB
  br i1 %i.ea, label %bb.v, label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i

bb.v:                                             ; preds = %bb.u
  %i.eb = fsub nsz float %i.cz, %i.db
  %i.ec = fsub nnan nsz float f0x3F2AAAAB, %.1.i22.i
  %i.ed = fmul nsz float %i.eb, %i.ec
  %i.ee = call nsz float @llvm.fmuladd.f32(float %i.ed, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i

_ZNK5video9SColorHSL6toRGB1Efff.exit24.i:         ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.017.i23.i = phi nsz float [ %i.dy, %bb.s ], [ %i.db, %bb.u ], [ %i.ee, %bb.v ], [ %i.cz, %bb.t ] ; 4 uses
  %i.ef = fadd nsz float %i.cx, f0xBEAAAAAB       ; 3 uses
  %i.eg = fcmp nsz olt float %i.ef, 0.000000e+00
  %i.eh = fadd nsz float %i.ef, 1.000000e+00
  %.0.i25.i = select nsz i1 %i.eg, float %i.eh, float %i.ef ; 3 uses
  %i.ei = fcmp nsz ogt float %.0.i25.i, 1.000000e+00
  %i.ej = fadd nsz float %.0.i25.i, -1.000000e+00
  %.1.i26.i = select nsz i1 %i.ei, float %i.ej, float %.0.i25.i ; 5 uses
  %i.ek = fcmp nsz olt float %.1.i26.i, f0x3E2AAAAB
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i
  %i.el = fsub nsz float %i.cz, %i.db
  %i.em = fmul nsz float %i.el, %.1.i26.i
  %i.en = call nsz float @llvm.fmuladd.f32(float %i.em, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

bb.x:                                             ; preds = %_ZNK5video9SColorHSL6toRGB1Efff.exit24.i
  %i.eo = fcmp nsz olt float %.1.i26.i, 5.000000e-01
  br i1 %i.eo, label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ep = fcmp nsz olt float %.1.i26.i, f0x3F2AAAAB
  br i1 %i.ep, label %bb.z, label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

bb.z:                                             ; preds = %bb.y
  %i.eq = fsub nsz float %i.cz, %i.db
  %i.er = fsub nnan nsz float f0x3F2AAAAB, %.1.i26.i
  %i.es = fmul nsz float %i.eq, %i.er
  %i.et = call nsz float @llvm.fmuladd.f32(float %i.es, float 6.000000e+00, float %i.db)
  br label %_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit

_ZNK5video9SColorHSL5toRGBERNS_7SColorfE.exit:    ; preds = %bb.m, %bb.w, %bb.x, %bb.y, %bb.z
  %.017.i.sink.i = phi float [ %i.cm, %bb.m ], [ %.017.i.i, %bb.w ], [ %.017.i.i, %bb.x ], [ %.017.i.i, %bb.y ], [ %.017.i.i, %bb.z ]
  %.017.i23.sink.i = phi float [ %i.cm, %bb.m ], [ %.017.i23.i, %bb.w ], [ %.017.i23.i, %bb.x ], [ %.017.i23.i, %bb.y ], [ %.017.i23.i, %bb.z ]
  %.017.i27.sink.i = phi float [ %i.cm, %bb.m ], [ %i.en, %bb.w ], [ %i.cz, %bb.x ], [ %i.db, %bb.y ], [ %i.et, %bb.z ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.eu = insertelement <4 x float> poison, float %.017.i.sink.i, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %.017.i23.sink.i, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %.017.i27.sink.i, i64 2
  %i.ex = insertelement <4 x float> %i.ew, float %.sroa.17.2, i64 3
  %i.ey = fmul nsz <4 x float> %i.ex, splat (float 2.550000e+02)
  %i.ez = fadd nsz <4 x float> %i.ey, splat (float 5.000000e-01)
  %i.fa = call nsz <4 x float> @llvm.floor.v4f32(<4 x float> %i.ez)
  %i.fb = fptosi <4 x float> %i.fa to <4 x i32>
  %i.fc = shufflevector <4 x i32> %i.fb, <4 x i32> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 3>
  %i.fd = trunc <4 x i32> %i.fc to <4 x i8>
  store <4 x i8> %i.fd, ptr %7, align 4
  %i.fe = load ptr, ptr %0, align 8, !tbaa !41
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.03058, i32 noundef %.03162, ptr noundef nonnull align 4 dereferenceable(4) %7, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.fh = add i32 %.03058, 1                      ; 2 uses
  %exitcond.not = icmp eq i32 %i.fh, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !217
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL13apply_overlayPN5video6IImageES1_N4core8vector2dIiEES4_NS3_IjEEb(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, i64 %4, i1 noundef zeroext %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"class.video::SColor", align 4     ; 4 uses
  %.sroa.047.0.extract.trunc = trunc i64 %2 to i32 ; 2 uses
  %.sroa.348.0.extract.shift = lshr i64 %2, 32
  %.sroa.348.0.extract.trunc = trunc nuw i64 %.sroa.348.0.extract.shift to i32 ; 2 uses
  %.sroa.044.0.extract.trunc = trunc i64 %3 to i32 ; 2 uses
  %.sroa.3.0.extract.shift = lshr i64 %3, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 2 uses
  %.sroa.039.0.extract.trunc = trunc i64 %4 to i32 ; 2 uses
  %.sroa.2.0.extract.shift = lshr i64 %4, 32      ; 2 uses
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = select i1 %5, ptr %1, ptr %0             ; 2 uses
  %i.b = select i1 %5, ptr %0, ptr %1             ; 2 uses
  %.sroa.026.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.044.0.extract.trunc, i32 %.sroa.047.0.extract.trunc
  %.sroa.427.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.3.0.extract.trunc, i32 %.sroa.348.0.extract.trunc
  %.sroa.0.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.047.0.extract.trunc, i32 %.sroa.044.0.extract.trunc
  %.sroa.4.0.copyload.sroa.speculated = select i1 %5, i32 %.sroa.348.0.extract.trunc, i32 %.sroa.3.0.extract.trunc
  %i.c = icmp ne i64 %.sroa.2.0.extract.shift, 0
  %i.d = icmp ne i32 %.sroa.039.0.extract.trunc, 0
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader, label %._crit_edge59.split

.preheader:                                       ; preds = %bb.a, %._crit_edge
  %.04958 = phi i32 [ %i.g, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.e = add i32 %.04958, %.sroa.4.0.copyload.sroa.speculated ; 2 uses
  %i.f = add i32 %.04958, %.sroa.427.0.copyload.sroa.speculated
  br label %bb.b

._crit_edge59.split:                              ; preds = %._crit_edge, %bb.a
  ret void

._crit_edge:                                      ; preds = %bb.k
  %i.g = add nuw i32 %.04958, 1                   ; 2 uses
  %exitcond60.not = icmp eq i32 %i.g, %.sroa.2.0.extract.trunc
  br i1 %exitcond60.not, label %._crit_edge59.split, label %.preheader, !llvm.loop !218

bb.b:                                             ; preds = %.preheader, %bb.k
  %.057 = phi i32 [ 0, %.preheader ], [ %i.cl, %bb.k ] ; 3 uses
  %i.h = add i32 %.057, %.sroa.0.0.copyload.sroa.speculated ; 2 uses
  %i.i = add i32 %.057, %.sroa.026.0.copyload.sroa.speculated
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call i32 %i.l(ptr noundef nonnull align 8 dereferenceable(41) %i.a, i32 noundef %i.i, i32 noundef %i.f) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call i32 %i.p(ptr noundef nonnull align 8 dereferenceable(41) %i.b, i32 noundef %i.h, i32 noundef %i.e) ; 4 uses
  %i.r = lshr i32 %i.m, 16
  %i.s = lshr i32 %i.m, 8
  %i.t = lshr i32 %i.q, 16
  %i.u = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %i.v = insertelement <4 x i32> %i.u, i32 %i.s, i64 1
  %i.w = insertelement <4 x i32> %i.v, i32 %i.m, i64 2
  %i.x = insertelement <4 x i32> %i.w, i32 %i.t, i64 3
  %i.y = and <4 x i32> %i.x, splat (i32 255)
  %i.z = uitofp nneg <4 x i32> %i.y to <4 x float>
  %i.aa = fdiv nsz <4 x float> %i.z, splat (float 2.550000e+02) ; 7 uses
  %i.ab = lshr i32 %i.q, 8
  %i.ac = and i32 %i.ab, 255
  %i.ad = uitofp nsz nneg i32 %i.ac to float
  %i.ae = and i32 %i.q, 255
  %i.af = uitofp nsz nneg i32 %i.ae to float
  %i.ag = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.af, i64 1
  %i.ai = fdiv nsz <2 x float> %i.ah, splat (float 2.550000e+02) ; 3 uses
  %i.aj = and i32 %i.q, -16777216
  %i.ak = extractelement <4 x float> %i.aa, i64 3 ; 2 uses
  %i.al = fcmp nsz olt float %i.ak, 5.000000e-01
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.am = fmul nnan nsz float %i.ak, 2.000000e+00
  %i.an = extractelement <4 x float> %i.aa, i64 0
  %i.ao = fmul nsz float %i.an, %i.am
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ap = shufflevector <4 x float> %i.aa, <4 x float> poison, <2 x i32> <i32 3, i32 0>
  %i.aq = fsub nsz <2 x float> splat (float 1.000000e+00), %i.ap ; 2 uses
  %i.ar = extractelement <2 x float> %i.aq, i64 0
  %i.as = fmul nnan nsz float %i.ar, -2.000000e+00
  %i.at = extractelement <2 x float> %i.aq, i64 1
  %i.au = call nsz float @llvm.fmuladd.f32(float %i.as, float %i.at, float 1.000000e+00)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = phi nsz float [ %i.ao, %bb.c ], [ %i.au, %bb.d ]
  %i.aw = fmul nsz float %i.av, 2.550000e+02
  %i.ax = fptoui float %i.aw to i32
  %i.ay = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %i.az = fcmp nsz olt float %i.ay, 5.000000e-01
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = fmul nnan nsz float %i.ay, 2.000000e+00
  %i.bb = extractelement <4 x float> %i.aa, i64 1
  %i.bc = fmul nsz float %i.bb, %i.ba
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bd = fsub nnan nsz float 1.000000e+00, %i.ay
  %i.be = extractelement <4 x float> %i.aa, i64 1
  %i.bf = fsub nsz float 1.000000e+00, %i.be
  %i.bg = fmul nnan nsz float %i.bd, -2.000000e+00
  %i.bh = call nsz float @llvm.fmuladd.f32(float %i.bg, float %i.bf, float 1.000000e+00)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bi = phi nsz float [ %i.bc, %bb.f ], [ %i.bh, %bb.g ]
  %i.bj = fmul nsz float %i.bi, 2.550000e+02
  %i.bk = fptoui float %i.bj to i32
  %i.bl = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.bm = fcmp nsz olt float %i.bl, 5.000000e-01
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bn = fmul nnan nsz float %i.bl, 2.000000e+00
  %i.bo = extractelement <4 x float> %i.aa, i64 2
  %i.bp = fmul nsz float %i.bo, %i.bn
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bq = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> %i.aa, <2 x i32> <i32 1, i32 6>
  %i.bs = fsub nsz <2 x float> splat (float 1.000000e+00), %i.br ; 2 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = fmul nnan nsz float %i.bt, -2.000000e+00
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.bv, float 1.000000e+00)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bx = phi nsz float [ %i.bp, %bb.i ], [ %i.bw, %bb.j ]
  %i.by = fmul nsz float %i.bx, 2.550000e+02
  %i.bz = fptoui float %i.by to i32
  %i.ca = shl i32 %i.ax, 16
  %i.cb = and i32 %i.ca, 16711680
  %i.cc = or disjoint i32 %i.cb, %i.aj
  %i.cd = shl i32 %i.bk, 8
  %i.ce = and i32 %i.cd, 65280
  %i.cf = or disjoint i32 %i.cc, %i.ce
  %i.cg = and i32 %i.bz, 255
  %i.ch = or disjoint i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %6, align 4, !tbaa !104
  %i.ci = load ptr, ptr %1, align 8, !tbaa !41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(41) %1, i32 noundef %i.h, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.cl = add nuw i32 %.057, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.cl, %.sroa.039.0.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !219
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL25apply_brightness_contrastPN5video6IImageEN4core8vector2dIjEES4_ii(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.video::SColor", align 4     ; 5 uses
  %.sroa.031.0.extract.trunc = trunc i64 %1 to i32 ; 3 uses
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32 ; 3 uses
  %.sroa.030.0.extract.trunc = trunc i64 %2 to i32
  %.sroa.2.0.extract.shift = lshr i64 %2, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.a = tail call i32 @llvm.smax.i32(i32 %4, i32 -127)
  %i.b = tail call noundef i32 @llvm.smin.i32(i32 %i.a, i32 127)
  %i.c = sitofp nsz i32 %i.b to float
  %i.d = fmul nnan nsz float %i.c, 7.812500e-03   ; 3 uses
  %i.e = tail call i32 @llvm.smax.i32(i32 %3, i32 -127)
  %i.f = tail call noundef i32 @llvm.smin.i32(i32 %i.e, i32 127)
  %i.g = insertelement <2 x i32> poison, i32 %i.f, i64 0
  %i.h = insertelement <2 x i32> %i.g, i32 %3, i64 1
  %i.i = sitofp <2 x i32> %i.h to <2 x float>
  %i.j = fmul nnan nsz <2 x float> %i.i, <float 1.000000e+00, float 1.275000e+02>
  %i.k = fdiv nsz <2 x float> %i.j, splat (float 1.270000e+02) ; 3 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = tail call nsz noundef float @llvm.fabs.f32(float %i.l)
  %i.n = fsub nsz float 1.000000e+00, %i.m
  %i.o = tail call nsz noundef float @llvm.atan.f32(float %i.n) ; 3 uses
  %i.p = fcmp nsz ugt float %i.d, 0.000000e+00
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = fmul nsz float %i.d, %i.o
  %i.r = fpext nsz float %i.q to double
  %.pre = fpext nsz float %i.o to double
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = fpext nnan ninf nsz float %i.d to double
  %i.t = fpext nsz float %i.o to double           ; 2 uses
  %i.u = fsub nsz double f0x3FF921FB54442D18, %i.t
  %i.v = fmul nsz double %i.u, %i.s
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi double [ %i.t, %bb.c ], [ %.pre, %bb.b ]
  %i.w = phi nsz double [ %i.v, %bb.c ], [ %i.r, %bb.b ]
  %i.x = fadd nsz double %i.w, %.pre-phi
  %i.y = fptrunc nsz double %i.x to float
  %i.z = tail call nsz noundef float @llvm.tan.f32(float %i.y) ; 4 uses
  %i.aa = fcmp nsz ugt float %i.z, 1.000000e+00
  %i.ab = fneg nsz float %i.z                     ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float 1.275000e+02, float 1.275000e+02)
  %i.ad = extractelement <2 x float> %i.k, i64 1
  %i.ae = fadd nsz float %i.ad, %i.ac
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = extractelement <2 x float> %i.k, i64 1
  %i.ag = fsub nsz float 1.275000e+02, %i.af
  %i.ah = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ag, float 1.275000e+02)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = phi nsz float [ %i.ae, %bb.e ], [ %i.ah, %bb.f ]
  %i.aj = fadd nsz float %i.ai, 5.000000e-01      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 0, ptr %5, align 4, !tbaa !104
  %i.ak = add i32 %.sroa.2.0.extract.trunc, %.sroa.3.0.extract.trunc ; 2 uses
  %i.al = icmp ugt i32 %i.ak, %.sroa.3.0.extract.trunc
  br i1 %i.al, label %.preheader.lr.ph, label %._crit_edge55.split

.preheader.lr.ph:                                 ; preds = %bb.g
  %i.am = add i32 %.sroa.030.0.extract.trunc, %.sroa.031.0.extract.trunc ; 2 uses
  %i.an = icmp ugt i32 %i.am, %.sroa.031.0.extract.trunc
  br i1 %i.an, label %.preheader.preheader, label %._crit_edge55.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ao = insertelement <2 x float> poison, float %i.z, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.03454 = phi i32 [ %i.as, %._crit_edge ], [ %.sroa.3.0.extract.trunc, %.preheader.preheader ] ; 3 uses
  br label %bb.h

._crit_edge55.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

._crit_edge:                                      ; preds = %bb.h
  %i.as = add i32 %.03454, 1                      ; 2 uses
  %exitcond56.not = icmp eq i32 %i.as, %i.ak
  br i1 %exitcond56.not, label %._crit_edge55.split, label %.preheader, !llvm.loop !220

bb.h:                                             ; preds = %.preheader, %bb.h
  %.053 = phi i32 [ %.sroa.031.0.extract.trunc, %.preheader ], [ %i.cd, %bb.h ] ; 3 uses
  %i.at = load ptr, ptr %0, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call i32 %i.av(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.053, i32 noundef %.03454) ; 4 uses
  %i.ax = and i32 %i.aw, -16777216
  %i.ay = lshr i32 %i.aw, 16
  %i.az = and i32 %i.ay, 255
  %i.ba = uitofp nsz nneg i32 %i.az to float
  %i.bb = call nsz float @llvm.fmuladd.f32(float %i.z, float %i.ba, float %i.aj)
  %i.bc = fptosi float %i.bb to i32
  %i.bd = call i32 @llvm.smax.i32(i32 %i.bc, i32 0)
  %i.be = call i32 @llvm.umin.i32(i32 %i.bd, i32 255)
  %i.bf = lshr i32 %i.aw, 8
  %i.bg = and i32 %i.bf, 255
  %i.bh = uitofp nsz nneg i32 %i.bg to float
  %i.bi = and i32 %i.aw, 255
  %i.bj = uitofp nsz nneg i32 %i.bi to float
  %i.bk = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bl, <2 x float> %i.ar) ; 2 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0
  %i.bo = fptosi float %i.bn to i32
  %i.bp = call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %i.bq = call i32 @llvm.umin.i32(i32 %i.bp, i32 255)
  %i.br = extractelement <2 x float> %i.bm, i64 1
  %i.bs = fptosi float %i.br to i32
  %i.bt = call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bu = call i32 @llvm.umin.i32(i32 %i.bt, i32 255)
  %i.bv = shl nuw nsw i32 %i.be, 16
  %i.bw = or disjoint i32 %i.bv, %i.ax
  %i.bx = shl nuw nsw i32 %i.bq, 8
  %i.by = or disjoint i32 %i.bw, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  store i32 %i.bz, ptr %5, align 4, !tbaa !104
  %i.ca = load ptr, ptr %0, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(41) %0, i32 noundef %.053, i32 noundef %.03454, ptr noundef nonnull align 4 dereferenceable(4) %5, i1 noundef zeroext false)
  %i.cd = add i32 %.053, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.cd, %i.am
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !221
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11ImageSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = load ptr, ptr @g_settings, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.d, ptr noundef nonnull align 1 dereferenceable(7) @.str.72, i64 7, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.e, align 8, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.f, align 1, !tbaa !33
  %i.g = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.h = load ptr, ptr %1, align 8, !tbaa !32     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.d
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.d, align 8, !tbaa !33
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.l = zext i1 %i.g to i8
  store i8 %i.l, ptr %0, align 8, !tbaa !117
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load ptr, ptr @g_settings, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 16, ptr %i.b, align 8, !tbaa !103
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc17 unwind label %bb.f   ; 2 uses

.noexc17:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.p, ptr %2, align 8, !tbaa !32
  %i.q = load i64, ptr %i.b, align 8, !tbaa !103  ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, ptr noundef nonnull align 1 dereferenceable(16) @.str.73, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !44
  %i.s = load ptr, ptr %2, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.u = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %.noexc17
  %i.v = load ptr, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.b
  %i.x = load i64, ptr %i.o, align 8, !tbaa !33
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.z = zext i1 %i.u to i8
  store i8 %i.z, ptr %i.m, align 1, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ab = load ptr, ptr @g_settings, align 8, !tbaa !122
end_hunk_1
