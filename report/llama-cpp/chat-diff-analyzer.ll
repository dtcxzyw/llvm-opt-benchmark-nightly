Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/chat-diff-analyzer?download=true
inline.NumInlined: 6589
inline.NumDeleted: 2461
loop-unroll.NumCompletelyUnrolled: 170
loop-unroll.NumUnrolled: 170
begin_hunk_0_@_ZN10autoparser10autoparser24detect_user_start_markerB5cxx11ERK20common_chat_template:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ed
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.zz = load i8, ptr %i.zv, align 1, !tbaa !24
  store i8 %i.zz, ptr %i.zt, align 1, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zt, ptr align 1 %i.zv, i64 %i.zx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.aaa = load i64, ptr %i.zq, align 8, !tbaa !25 ; 2 uses
  store i64 %i.aaa, ptr %i.yk, align 8, !tbaa !25
  %i.aab = load ptr, ptr %26, align 8, !tbaa !23
  %i.aac = getelementptr inbounds nuw i8, ptr %i.aab, i64 %i.aaa
  store i8 0, ptr %i.aac, align 1, !tbaa !24
  %.pre.i294 = load ptr, ptr %27, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.zv, ptr %26, align 8, !tbaa !23
  %i.aad = load <2 x i64>, ptr %i.zq, align 8, !tbaa !24
  store <2 x i64> %i.aad, ptr %i.yk, align 8, !tbaa !24
  br label %bb.eg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aae = load i64, ptr %i.ya, align 8, !tbaa !24
  store ptr %i.zv, ptr %26, align 8, !tbaa !23
  %i.aaf = load <2 x i64>, ptr %i.zq, align 8, !tbaa !24
  store <2 x i64> %i.aaf, ptr %i.yk, align 8, !tbaa !24
  %.not.i293 = icmp eq ptr %i.zt, null
  br i1 %.not.i293, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.zt, ptr %27, align 8, !tbaa !23
  store i64 %i.aae, ptr %i.zg, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.zg, ptr %27, align 8, !tbaa !23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ef, %bb.eg
  %i.aag = phi ptr [ %i.zt, %bb.ef ], [ %i.zg, %bb.eg ], [ %.pre.i294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.zq, align 8, !tbaa !25
  store i8 0, ptr %i.aag, align 1, !tbaa !24
  %i.aah = load ptr, ptr %27, align 8, !tbaa !23  ; 2 uses
  %i.aai = icmp eq ptr %i.aah, %i.zg
  br i1 %i.aai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aaj = load i64, ptr %i.zg, align 8, !tbaa !24
  %i.aak = add i64 %i.aaj, 1
  call void @_ZdlPvm(ptr noundef %i.aah, i64 noundef %i.aak) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.ei

bb.eh:                                            ; preds = %.noexc10.i.i, %bb.dy
  %i.aal = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  br label %bb.fo

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit297, %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27
  %i.aam = load ptr, ptr @_ZN10autoparserL8USER_MSGB5cxx11E, align 8, !tbaa !23
  %i.aan = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN10autoparserL8USER_MSGB5cxx11E, i64 8), align 8, !tbaa !25
  %i.aao = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef %i.aam, i64 noundef 0, i64 noundef %i.aan) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.aap = load i64, ptr %i.yk, align 8, !tbaa !25, !noalias !263
  %i.aaq = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 7 uses
  store ptr %i.aaq, ptr %28, align 8, !tbaa !19, !alias.scope !263
  %i.aar = load ptr, ptr %26, align 8, !tbaa !23, !noalias !263 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.aao, i64 %i.aap) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27, !noalias !263
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !tbaa !21, !noalias !263
  %i.aas = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.aas, label %.noexc10.i.i300, label %._crit_edge.i.i.i299

.noexc10.i.i300:                                  ; preds = %bb.ei
  %i.aat = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc301 unwind label %bb.er ; 2 uses

.noexc301:                                        ; preds = %.noexc10.i.i300
  store ptr %i.aat, ptr %28, align 8, !tbaa !23, !alias.scope !263
  %i.aau = load i64, ptr %i.b, align 8, !tbaa !21, !noalias !263
  store i64 %i.aau, ptr %i.aaq, align 8, !tbaa !24, !alias.scope !263
  br label %._crit_edge.i.i.i299

._crit_edge.i.i.i299:                             ; preds = %.noexc301, %bb.ei
  %i.aav = phi ptr [ %i.aat, %.noexc301 ], [ %i.aaq, %bb.ei ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.ek [
    i64 1, label %bb.ej
    i64 0, label %bb.el
  ]

bb.ej:                                            ; preds = %._crit_edge.i.i.i299
  %i.aaw = load i8, ptr %i.aar, align 1, !tbaa !24
  store i8 %i.aaw, ptr %i.aav, align 1, !tbaa !24
  br label %bb.el

bb.ek:                                            ; preds = %._crit_edge.i.i.i299
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aav, ptr align 1 %i.aar, i64 %spec.select.i.i.i, i1 false)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %._crit_edge.i.i.i299
  %i.aax = load i64, ptr %i.b, align 8, !tbaa !21, !noalias !263 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.aax, ptr %i.aay, align 8, !tbaa !25, !alias.scope !263
  %i.aaz = load ptr, ptr %28, align 8, !tbaa !23, !alias.scope !263
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.aax
  store i8 0, ptr %i.aba, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27, !noalias !263
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  invoke void @_Z18segmentize_markersRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.59") align 8 %29, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.em unwind label %bb.es

bb.em:                                            ; preds = %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30)
          to label %bb.en unwind label %bb.et

bb.en:                                            ; preds = %bb.em
  %i.abb = load ptr, ptr %29, align 8, !tbaa !264 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !264 ; 2 uses
  %.not418429 = icmp eq ptr %i.abb, %i.abd
  br i1 %.not418429, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.en
  %i.abe = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.abh = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %30, i64 16
  br label %bb.eu

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.abj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 7 uses
  store ptr %i.abj, ptr %33, align 8, !tbaa !19, !alias.scope !267
  %i.abk = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 0, ptr %i.abk, align 8, !tbaa !25, !alias.scope !267
  store i8 0, ptr %i.abj, align 8, !tbaa !24, !alias.scope !267
  %i.abl = getelementptr inbounds nuw i8, ptr %30, i64 64
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !82, !noalias !267 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.abm, null
  %i.abn = getelementptr inbounds nuw i8, ptr %30, i64 48
  %i.abo = load ptr, ptr %i.abn, align 8, !noalias !267 ; 2 uses
  %i.abp = icmp ugt ptr %i.abm, %i.abo
  %.08.i.i.i = select i1 %i.abp, ptr %i.abm, ptr %i.abo ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.eq, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge
  %i.abq = getelementptr inbounds nuw i8, ptr %30, i64 56
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !83, !noalias !267 ; 2 uses
  %i.abs = ptrtoint ptr %.08.i.i.i to i64
  %i.abt = ptrtoint ptr %i.abr to i64
  %i.abu = sub i64 %i.abs, %i.abt
  %i.abv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %33, i64 noundef 0, i64 noundef 0, ptr noundef %i.abr, i64 noundef %i.abu)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ep ; 0 uses

bb.ep:                                            ; preds = %bb.eq, %bb.eo
  %i.abw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abx = load ptr, ptr %33, align 8, !tbaa !23, !alias.scope !267 ; 2 uses
  %i.aby = icmp eq ptr %i.abx, %i.abj
  br i1 %i.aby, label %.body305, label %.body305.sink.split

bb.eq:                                            ; preds = %._crit_edge
  %i.abz = getelementptr inbounds nuw i8, ptr %30, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull align 8 dereferenceable(32) %i.abz)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.ep

bb.er:                                            ; preds = %.noexc10.i.i300
  %i.aca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

bb.es:                                            ; preds = %bb.el
  %i.acb = landingpad { ptr, i32 }
          cleanup
  br label %bb.fn

bb.et:                                            ; preds = %bb.em
  %i.acc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fm

bb.eu:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %.084431 = phi i8 [ 0, %.lr.ph ], [ %.185, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ] ; 2 uses
  %.sroa.0388.0430 = phi ptr [ %i.abb, %.lr.ph ], [ %i.adw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.acd = getelementptr inbounds nuw i8, ptr %.sroa.0388.0430, i64 8 ; 3 uses
  store ptr %i.abe, ptr %31, align 8, !tbaa !19
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !23 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %.sroa.0388.0430, i64 16 ; 2 uses
  %i.acg = load i64, ptr %i.acf, align 8, !tbaa !25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.acg, ptr %i.a, align 8, !tbaa !21
  %i.ach = icmp ugt i64 %i.acg, 15
  br i1 %i.ach, label %.noexc.i308, label %._crit_edge.i.i307

.noexc.i308:                                      ; preds = %bb.eu
  %i.aci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc309 unwind label %bb.fa ; 2 uses

.noexc309:                                        ; preds = %.noexc.i308
  store ptr %i.aci, ptr %31, align 8, !tbaa !23
  %i.acj = load i64, ptr %i.a, align 8, !tbaa !21
  store i64 %i.acj, ptr %i.abe, align 8, !tbaa !24
  br label %._crit_edge.i.i307

._crit_edge.i.i307:                               ; preds = %.noexc309, %bb.eu
  %i.ack = phi ptr [ %i.aci, %.noexc309 ], [ %i.abe, %bb.eu ] ; 2 uses
  switch i64 %i.acg, label %bb.ew [
    i64 1, label %bb.ev
    i64 0, label %bb.ex
  ]

bb.ev:                                            ; preds = %._crit_edge.i.i307
  %i.acl = load i8, ptr %i.ace, align 1, !tbaa !24
  store i8 %i.acl, ptr %i.ack, align 1, !tbaa !24
  br label %bb.ex

bb.ew:                                            ; preds = %._crit_edge.i.i307
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ack, ptr align 1 %i.ace, i64 %i.acg, i1 false)
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %._crit_edge.i.i307
  %i.acm = load i64, ptr %i.a, align 8, !tbaa !21 ; 2 uses
  store i64 %i.acm, ptr %i.abf, align 8, !tbaa !25
  %i.acn = load ptr, ptr %31, align 8, !tbaa !23
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acm
  store i8 0, ptr %i.aco, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.acp = load ptr, ptr %31, align 8, !tbaa !23  ; 2 uses
  %i.acq = load i64, ptr %i.abf, align 8, !tbaa !25 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acq
  %.not6.i = icmp samesign eq i64 %i.acq, 0
  br i1 %.not6.i, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN10autoparser10autoparser24detect_user_start_markerERK20common_chat_templateE3$_2ET0_T_SH_SG_T1_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ex, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.acw, %.lr.ph.i ], [ %i.acp, %bb.ex ] ; 3 uses
  %i.acs = load i8, ptr %.sroa.0.08.i, align 1, !tbaa !24
  %i.act = zext i8 %i.acs to i32
  %i.acu = call noundef i32 @tolower(i32 noundef %i.act) #31
  %i.acv = trunc i32 %i.acu to i8
  store i8 %i.acv, ptr %.sroa.0.08.i, align 1, !tbaa !24
  %i.acw = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i311 = icmp eq ptr %i.acw, %i.acr
  br i1 %.not.i311, label %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN10autoparser10autoparser24detect_user_start_markerERK20common_chat_templateE3$_2ET0_T_SH_SG_T1_.exit", label %.lr.ph.i, !llvm.loop !261

"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN10autoparser10autoparser24detect_user_start_markerERK20common_chat_templateE3$_2ET0_T_SH_SG_T1_.exit": ; preds = %.lr.ph.i, %bb.ex
  %i.acx = load i32, ptr %.sroa.0388.0430, align 8, !tbaa !109 ; 2 uses
  %i.acy = icmp ne i32 %i.acx, 1
  %34 = trunc nuw i8 %.084431 to i1               ; 2 uses
  %or.cond = select i1 %i.acy, i1 true, i1 %34
  br i1 %or.cond, label %bb.fc, label %bb.ey

bb.ey:                                            ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN10autoparser10autoparser24detect_user_start_markerERK20common_chat_templateE3$_2ET0_T_SH_SG_T1_.exit"
  %i.acz = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.95, i64 noundef 0, i64 noundef 3) #27
  %.not120 = icmp eq i64 %i.acz, -1
  br i1 %.not120, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey
  %i.ada = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull @.str.96, i64 noundef 0, i64 noundef 5) #27
  %.not121 = icmp eq i64 %i.ada, -1
  br i1 %.not121, label %._crit_edge443, label %bb.fg

._crit_edge443:                                   ; preds = %bb.ez
  %.pre444 = load i32, ptr %.sroa.0388.0430, align 8, !tbaa !109
  br label %bb.fc

bb.fa:                                            ; preds = %.noexc.i308
  %i.adb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.fb:                                            ; preds = %.critedge.thread
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fc:                                            ; preds = %._crit_edge443, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN10autoparser10autoparser24detect_user_start_markerERK20common_chat_templateE3$_2ET0_T_SH_SG_T1_.exit"
  %i.add = phi i32 [ %.pre444, %._crit_edge443 ], [ %i.acx, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZN10autoparser10autoparser24detect_user_start_markerERK20common_chat_templateE3$_2ET0_T_SH_SG_T1_.exit" ] ; 2 uses
  %i.ade = icmp ne i32 %i.add, 0
  %or.cond3 = select i1 %i.ade, i1 true, i1 %34
  br i1 %or.cond3, label %.critedge.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  invoke void @_Z15trim_whitespaceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %32, ptr noundef nonnull align 8 dereferenceable(32) %i.acd)
          to label %bb.fe unwind label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.adf = load i64, ptr %i.abg, align 8, !tbaa !25 ; 2 uses
  %i.adg = icmp eq i64 %i.adf, 0
  %i.adh = load ptr, ptr %32, align 8, !tbaa !23  ; 2 uses
  %i.adi = icmp eq ptr %i.adh, %i.abh
  br i1 %i.adi, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i313: ; preds = %bb.fe
  %i.adj = icmp ult i64 %i.adf, 16
  call void @llvm.assume(i1 %i.adj)
  br label %.critedge

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312: ; preds = %bb.fe
  %i.adk = load i64, ptr %i.abh, align 8, !tbaa !24
  %i.adl = add i64 %i.adk, 1
  call void @_ZdlPvm(ptr noundef %i.adh, i64 noundef %i.adl) #29
  br label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br i1 %i.adg, label %bb.fg, label %.critedge..critedge.thread_crit_edge

.critedge..critedge.thread_crit_edge:             ; preds = %.critedge
  %.pre445 = load i32, ptr %.sroa.0388.0430, align 8, !tbaa !109
  br label %.critedge.thread

bb.ff:                                            ; preds = %bb.fd
  %i.adm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %bb.fh

.critedge.thread:                                 ; preds = %.critedge..critedge.thread_crit_edge, %bb.fc
  %i.adn = phi i32 [ %.pre445, %.critedge..critedge.thread_crit_edge ], [ %i.add, %bb.fc ]
  %i.ado = load ptr, ptr %i.acd, align 8, !tbaa !23
  %i.adp = load i64, ptr %i.acf, align 8, !tbaa !25
  %i.adq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.abi, ptr noundef %i.ado, i64 noundef %i.adp)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.fb ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %.critedge.thread
  %i.adr = icmp eq i32 %i.adn, 1
  %35 = zext i1 %i.adr to i8
  %36 = or i8 %.084431, %35
  %37 = icmp ne i8 %36, 0
  %38 = zext i1 %37 to i8
  br label %bb.fg

bb.fg:                                            ; preds = %.critedge, %bb.ey, %bb.ez, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %.185 = phi i8 [ 0, %bb.ey ], [ %38, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit ], [ 0, %bb.ez ], [ 0, %.critedge ]
  %i.ads = load ptr, ptr %31, align 8, !tbaa !23  ; 2 uses
  %i.adt = icmp eq ptr %i.ads, %i.abe
  br i1 %i.adt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.fg
  %i.adu = load i64, ptr %i.abe, align 8, !tbaa !24
  %i.adv = add i64 %i.adu, 1
  call void @_ZdlPvm(ptr noundef %i.ads, i64 noundef %i.adv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  %i.adw = getelementptr inbounds nuw i8, ptr %.sroa.0388.0430, i64 40 ; 2 uses
  %.not418 = icmp eq ptr %i.adw, %i.abd
  br i1 %.not418, label %._crit_edge, label %bb.eu

bb.fh:                                            ; preds = %bb.ff, %bb.fb
  %.pn122 = phi { ptr, i32 } [ %i.adc, %bb.fb ], [ %i.adm, %bb.ff ] ; 2 uses
  %i.adx = load ptr, ptr %31, align 8, !tbaa !23  ; 2 uses
  %i.ady = icmp eq ptr %i.adx, %i.abe
  br i1 %i.ady, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %bb.fh
  %i.adz = load i64, ptr %i.abe, align 8, !tbaa !24
  %i.aea = add i64 %i.adz, 1
  call void @_ZdlPvm(ptr noundef %i.adx, i64 noundef %i.aea) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %bb.fh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.fa
  %.pn122.pn = phi { ptr, i32 } [ %i.adb, %bb.fa ], [ %.pn122, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %.pn122, %bb.fh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  br label %bb.fl

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.eq, %bb.eo
  invoke void @_Z15trim_whitespaceRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %33)
          to label %bb.fi unwind label %bb.fk

bb.fi:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.aeb = load ptr, ptr %33, align 8, !tbaa !23  ; 2 uses
  %i.aec = icmp eq ptr %i.aeb, %i.abj
  br i1 %i.aec, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %bb.fi
  %i.aed = load i64, ptr %i.abj, align 8, !tbaa !24
  %i.aee = add i64 %i.aed, 1
  call void @_ZdlPvm(ptr noundef %i.aeb, i64 noundef %i.aee) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %bb.fi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  %i.aef = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.aef, ptr %30, align 8, !tbaa !41
  %i.aeg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.aeh = getelementptr i8, ptr %i.aef, i64 -24
  %i.aei = load i64, ptr %i.aeh, align 8
  %i.aej = getelementptr inbounds i8, ptr %30, i64 %i.aei
  store ptr %i.aeg, ptr %i.aej, align 8, !tbaa !41
  %i.aek = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ael = getelementptr inbounds nuw i8, ptr %30, i64 16
  store ptr %i.aek, ptr %i.ael, align 8, !tbaa !41
  %i.aem = getelementptr inbounds nuw i8, ptr %30, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aem, align 8, !tbaa !41
  %i.aen = getelementptr inbounds nuw i8, ptr %30, i64 96
  %i.aeo = load ptr, ptr %i.aen, align 8, !tbaa !23 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %30, i64 112 ; 2 uses
  %i.aeq = icmp eq ptr %i.aeo, %i.aep
  br i1 %i.aeq, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324
  %i.aer = load i64, ptr %i.aep, align 8, !tbaa !24
  %i.aes = add i64 %i.aer, 1
  call void @_ZdlPvm(ptr noundef %i.aeo, i64 noundef %i.aes) #29
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aem, align 8, !tbaa !41
  %i.aet = getelementptr inbounds nuw i8, ptr %30, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aet) #27
  %i.aeu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.aeu, ptr %30, align 8, !tbaa !41
  %i.aev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.aew = getelementptr i8, ptr %i.aeu, i64 -24
  %i.aex = load i64, ptr %i.aew, align 8
  %i.aey = getelementptr inbounds i8, ptr %30, i64 %i.aex
  store ptr %i.aev, ptr %i.aey, align 8, !tbaa !41
  %i.aez = getelementptr inbounds nuw i8, ptr %30, i64 8
  store i64 0, ptr %i.aez, align 8, !tbaa !269
  %i.afa = getelementptr inbounds nuw i8, ptr %30, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.afa) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  %i.afb = load ptr, ptr %29, align 8, !tbaa !111 ; 3 uses
  %i.afc = load ptr, ptr %i.abc, align 8, !tbaa !112 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.afb, %i.afc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %_ZSt8_DestroyI7segmentEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.afj, %_ZSt8_DestroyI7segmentEvPT_.exit.i.i.i ], [ %i.afb, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !23 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %i.afg = icmp eq ptr %i.afe, %i.aff
  br i1 %i.afg, label %_ZSt8_DestroyI7segmentEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.afh = load i64, ptr %i.aff, align 8, !tbaa !24
  %i.afi = add i64 %i.afh, 1
  call void @_ZdlPvm(ptr noundef %i.afe, i64 noundef %i.afi) #29
  br label %_ZSt8_DestroyI7segmentEvPT_.exit.i.i.i

_ZSt8_DestroyI7segmentEvPT_.exit.i.i.i:           ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.afj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i325 = icmp eq ptr %i.afj, %i.afc
  br i1 %.not.i.i.i325, label %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI7segmentEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %29, align 8, !tbaa !111
  br label %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.afk = phi ptr [ %.pr.i, %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.afb, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.afk, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI7segmentSaIS0_EED2Ev.exit, label %bb.fj

bb.fj:                                            ; preds = %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit.i
  %i.afl = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.afm = load ptr, ptr %i.afl, align 8, !tbaa !113
  %i.afn = ptrtoint ptr %i.afm to i64
  %i.afo = ptrtoint ptr %i.afk to i64
  %i.afp = sub i64 %i.afn, %i.afo
  call void @_ZdlPvm(ptr noundef nonnull %i.afk, i64 noundef %i.afp) #29
  br label %_ZNSt6vectorI7segmentSaIS0_EED2Ev.exit

_ZNSt6vectorI7segmentSaIS0_EED2Ev.exit:           ; preds = %_ZSt8_DestroyIP7segmentS0_EvT_S2_RSaIT0_E.exit.i, %bb.fj
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.afq = load ptr, ptr %28, align 8, !tbaa !23  ; 2 uses
  %i.afr = icmp eq ptr %i.afq, %i.aaq
  br i1 %i.afr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt6vectorI7segmentSaIS0_EED2Ev.exit
  %i.afs = load i64, ptr %i.aaq, align 8, !tbaa !24
  %i.aft = add i64 %i.afs, 1
  call void @_ZdlPvm(ptr noundef %i.afq, i64 noundef %i.aft) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt6vectorI7segmentSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  %i.afu = load ptr, ptr %26, align 8, !tbaa !23  ; 2 uses
  %i.afv = icmp eq ptr %i.afu, %i.ya
  br i1 %i.afv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.afw = load i64, ptr %i.ya, align 8, !tbaa !24
  %i.afx = add i64 %i.afw, 1
  call void @_ZdlPvm(ptr noundef %i.afu, i64 noundef %i.afx) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.fp

bb.fk:                                            ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.afy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.afz = load ptr, ptr %33, align 8, !tbaa !23  ; 2 uses
  %i.aga = icmp eq ptr %i.afz, %i.abj
  br i1 %i.aga, label %.body305, label %.body305.sink.split

.body305.sink.split:                              ; preds = %bb.fk, %bb.ep
  %.sink639 = phi ptr [ %i.abx, %bb.ep ], [ %i.afz, %bb.fk ]
  %.pn118.ph = phi { ptr, i32 } [ %i.abw, %bb.ep ], [ %i.afy, %bb.fk ]
  %i.agb = load i64, ptr %i.abj, align 8, !tbaa !24
  %i.agc = add i64 %i.agb, 1
  call void @_ZdlPvm(ptr noundef %.sink639, i64 noundef %i.agc) #29
  br label %.body305

.body305:                                         ; preds = %.body305.sink.split, %bb.fk, %bb.ep
  %.pn118 = phi { ptr, i32 } [ %i.abw, %bb.ep ], [ %i.afy, %bb.fk ], [ %.pn118.ph, %.body305.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  br label %bb.fl

bb.fl:                                            ; preds = %.body305, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %.pn122.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321 ], [ %.pn118, %.body305 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %30) #27
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fl, %bb.et
  %.pn122.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn, %bb.fl ], [ %i.acc, %bb.et ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @_ZNSt6vectorI7segmentSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %29) #27
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.es
  %.pn122.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn122.pn.pn.pn, %bb.fm ], [ %i.acb, %bb.es ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.agd = load ptr, ptr %28, align 8, !tbaa !23  ; 2 uses
  %i.age = icmp eq ptr %i.agd, %i.aaq
  br i1 %i.age, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.fn
  %i.agf = load i64, ptr %i.aaq, align 8, !tbaa !24
end_hunk_0
