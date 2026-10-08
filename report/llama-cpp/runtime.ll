Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/runtime?download=true
inline.NumInlined: 4405
inline.NumDeleted: 1322
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5jinja13for_statement12execute_implERNS_7contextE:bb.a
bb.ge:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 8 ; 4 uses
  %i.zf = load atomic i64, ptr %i.ze acquire, align 8 ; 2 uses
  %i.zg = icmp eq i64 %i.zf, 4294967297
  %i.zh = trunc i64 %i.zf to i32                  ; 2 uses
  br i1 %i.zg, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i32 0, ptr %i.ze, align 8, !tbaa !90
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zd, i64 12
  store i32 0, ptr %i.zi, align 4, !tbaa !91
  %i.zj = load ptr, ptr %i.zd, align 8, !tbaa !42
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16
  %i.zl = load ptr, ptr %i.zk, align 8
  call void %i.zl(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #31, !inline_history !5
  %i.zm = load ptr, ptr %i.zd, align 8, !tbaa !42
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 24
  %i.zo = load ptr, ptr %i.zn, align 8
  call void %i.zo(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #31, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit388

bb.gg:                                            ; preds = %bb.ge
  %i.zp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i385 = icmp eq i8 %i.zp, 0
  br i1 %.not.i.i.i385, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.zq = add nsw i32 %i.zh, -1
  store i32 %i.zq, ptr %i.ze, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i386

bb.gi:                                            ; preds = %bb.gg
  %i.zr = atomicrmw volatile add ptr %i.ze, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i386

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i386: ; preds = %bb.gi, %bb.gh
  %.0.i.i.i.i387 = phi i32 [ %i.zh, %bb.gh ], [ %i.zr, %bb.gi ]
  %i.zs = icmp eq i32 %.0.i.i.i.i387, 1
  br i1 %i.zs, label %bb.gj, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit388, !prof !96

bb.gj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i386
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.zd) #31
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit388

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit388: ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.gf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i386, %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZN5jinja7contextD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %22) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  %i.zt = add nuw i64 %.0781437, 1                ; 2 uses
  %i.zu = load ptr, ptr %i.lg, align 8, !tbaa !169
  %i.zv = load ptr, ptr %15, align 8, !tbaa !174
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = sub i64 %i.zw, %i.zx
  %i.zz = ashr exact i64 %i.zy, 4
  %i.aaa = icmp ult i64 %i.zt, %i.zz
  br i1 %i.aaa, label %bb.ce, label %._crit_edge1442, !llvm.loop !556

.body:                                            ; preds = %.loopexit879, %.loopexit.split-lp880, %bb.fy, %bb.fz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341, %bb.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352, %bb.ek, %bb.ep, %bb.eh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, %bb.eu, %bb.fo, %bb.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336
  %.pn211 = phi { ptr, i32 } [ %i.uk, %bb.eh ], [ %i.ya, %bb.fo ], [ %.pn209, %bb.fk ], [ %.pn204.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit336 ], [ %i.vw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361 ], [ %.pn189.pn834, %bb.eu ], [ %i.si, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343 ], [ %.pn192.pn810, %bb.dz ], [ %.pn196.pn.pn822, %bb.ek ], [ %.pn196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit352 ], [ %i.vp, %bb.ep ], [ %i.ys, %bb.fy ], [ %i.vw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359 ], [ %i.si, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341 ], [ %.pn196, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i350 ], [ %i.ys, %bb.fz ], [ %lpad.loopexit881, %.loopexit879 ], [ %lpad.loopexit.split-lp882, %.loopexit.split-lp880 ]
  %i.aab = load ptr, ptr %i.lk, align 16, !tbaa !172 ; 2 uses
  %.not.i389 = icmp eq ptr %i.aab, null
  br i1 %.not.i389, label %_ZNSt14_Function_baseD2Ev.exit390, label %bb.gk

bb.gk:                                            ; preds = %.body
  %i.aac = invoke noundef zeroext i1 %i.aab(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit390 unwind label %bb.gl ; 0 uses

bb.gl:                                            ; preds = %bb.gk
  %i.aad = landingpad { ptr, i32 }
          catch ptr null
  %i.aae = extractvalue { ptr, i32 } %i.aad, 0
  call void @__clang_call_terminate(ptr %i.aae) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit390:                ; preds = %.body, %bb.gk
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #31
  call void @_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #31
  call void @_ZN5jinja7contextD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %22) #31
  br label %bb.gm

bb.gm:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit390, %bb.df
  %.pn211.pn = phi { ptr, i32 } [ %.pn211, %_ZNSt14_Function_baseD2Ev.exit390 ], [ %i.py, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #31
  br label %bb.rf

bb.gn:                                            ; preds = %._crit_edge1442
  %i.aaf = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aag = load ptr, ptr %i.aaf, align 8, !tbaa !169
  %i.aah = load ptr, ptr %21, align 8, !tbaa !174
  %i.aai = ptrtoint ptr %i.aag to i64
  %i.aaj = ptrtoint ptr %i.aah to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  %i.aal = ashr exact i64 %i.aak, 4
  %i.aam = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.91, ptr noundef nonnull @.str.10, i32 noundef 589, i64 noundef %i.aal) ; 0 uses
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %._crit_edge1442
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %i.aan = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.aao = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #35
          to label %bb.gp unwind label %bb.gq     ; 10 uses

bb.gp:                                            ; preds = %bb.go
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  store i32 1, ptr %i.aap, align 8, !tbaa !90, !noalias !619
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 12
  store i32 1, ptr %i.aaq, align 4, !tbaa !91, !noalias !619
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5jinja13value_array_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aao, align 8, !tbaa !42, !noalias !619
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 2 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aao, i64 160 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aao, i64 176
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.aau, i8 0, i64 152, i1 false), !noalias !619
  store ptr %i.aas, ptr %i.aat, align 8, !tbaa !66, !noalias !619
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 184
  store ptr %i.aas, ptr %i.aav, align 8, !tbaa !67, !noalias !619
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aao, i64 192
  store i64 0, ptr %i.aaw, align 8, !tbaa !68, !noalias !619
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5jinja13value_array_tE, i64 16), ptr %i.aar, align 8, !tbaa !42, !noalias !619
  store ptr %i.aao, ptr %i.aan, align 8, !tbaa !88, !alias.scope !619
  store ptr %i.aar, ptr %38, align 16, !tbaa !157, !alias.scope !619
  %i.aax = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 9 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !169 ; 2 uses
  %i.aaz = load ptr, ptr %21, align 8, !tbaa !174 ; 2 uses
  %.not1459 = icmp eq ptr %i.aay, %i.aaz
  br i1 %.not1459, label %._crit_edge1450, label %.lr.ph1449

.lr.ph1449:                                       ; preds = %bb.gp
  %i.aba = ptrtoint ptr %i.aaz to i64
  %i.abb = ptrtoint ptr %i.aay to i64
  %i.abc = sub i64 %i.abb, %i.aba
  %i.abd = ashr exact i64 %i.abc, 4
  %i.abe = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 4 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 6 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.abh = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 6 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.abl = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 6 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.abp = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 2 uses
  %i.abq = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 2 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.abt = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 6 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.abx = getelementptr inbounds nuw i8, ptr %54, i64 8 ; 3 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.abz = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 6 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.acb = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.acd = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %58, i64 8
  %i.acf = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %61, i64 16 ; 6 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.acj = getelementptr inbounds nuw i8, ptr %62, i64 8 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %64, i64 16 ; 6 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %64, i64 8
  %i.acn = getelementptr inbounds nuw i8, ptr %66, i64 8 ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %65, i64 8 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.acr = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.acs = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.act = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.acv = getelementptr inbounds nuw i8, ptr %69, i64 8 ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %40, i64 21
  %i.acx = getelementptr inbounds nuw i8, ptr %43, i64 22
  %i.acy = getelementptr inbounds nuw i8, ptr %46, i64 24
  %i.acz = getelementptr inbounds nuw i8, ptr %49, i64 25
  %i.ada = getelementptr inbounds nuw i8, ptr %52, i64 21
  %i.adb = getelementptr inbounds nuw i8, ptr %55, i64 20
  %i.adc = getelementptr inbounds nuw i8, ptr %58, i64 22
  %i.add = getelementptr inbounds nuw i8, ptr %61, i64 24
  %i.ade = getelementptr inbounds nuw i8, ptr %64, i64 24
  %i.adf = getelementptr inbounds nuw i8, ptr %67, i64 20
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.adg = landingpad { ptr, i32 }
          cleanup
  br label %bb.re

bb.gr:                                            ; preds = %.lr.ph1449, %_ZNSt12__shared_ptrIN5jinja14value_object_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.jt23
  %i.adh = phi i64 [ %i.abd, %.lr.ph1449 ], [ %i.beo, %_ZNSt12__shared_ptrIN5jinja14value_object_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.jt23 ]
  %.0651447 = phi i1 [ true, %.lr.ph1449 ], [ %.166.jt23, %_ZNSt12__shared_ptrIN5jinja14value_object_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.jt23 ] ; 2 uses
  %storemerge1446 = phi i64 [ 0, %.lr.ph1449 ], [ %i.aeb, %_ZNSt12__shared_ptrIN5jinja14value_object_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.jt23 ] ; 13 uses
  %i.adi = load i8, ptr @g_jinja_debug, align 1, !tbaa !40, !range !85, !noundef !86
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.adk = add nuw i64 %storemerge1446, 1
  %i.adl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, ptr noundef nonnull @.str.10, i32 noundef 595, i64 noundef %i.adk, i64 noundef %i.adh) ; 0 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.adm = invoke noalias noundef nonnull dereferenceable(264) ptr @_Znwm(i64 noundef 264) #35
          to label %._crit_edge.i.i394 unwind label %bb.mn ; 16 uses

._crit_edge.i.i394:                               ; preds = %bb.gt
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  store i32 1, ptr %i.adn, align 8, !tbaa !90, !noalias !622
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 12
  store i32 1, ptr %i.ado, align 4, !tbaa !91, !noalias !622
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5jinja14value_object_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.adm, align 8, !tbaa !42, !noalias !622
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adm, i64 16 ; 3 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adm, i64 160 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adm, i64 176
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %i.ads, i8 0, i64 240, i1 false), !noalias !622
  store ptr %i.adq, ptr %i.adr, align 8, !tbaa !66, !noalias !622
  %i.adt = getelementptr inbounds nuw i8, ptr %i.adm, i64 184
  store ptr %i.adq, ptr %i.adt, align 8, !tbaa !67, !noalias !622
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5jinja14value_object_tE, i64 16), ptr %i.adp, align 8, !tbaa !42, !noalias !622
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adm, i64 200
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adm, i64 248
  store ptr %i.adv, ptr %i.adu, align 8, !tbaa !105, !noalias !622
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adm, i64 208
  store i64 1, ptr %i.adw, align 8, !tbaa !106, !noalias !622
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adm, i64 216
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adm, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adx, i8 0, i64 16, i1 false), !noalias !622
  store float 1.000000e+00, ptr %i.ady, align 8, !tbaa !107, !noalias !622
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adm, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.adz, i8 0, i64 16, i1 false), !noalias !622
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adm, i64 256
  store ptr %i.adm, ptr %i.abe, align 8, !tbaa !88, !alias.scope !622
  store ptr %i.adp, ptr %39, align 16, !tbaa !136, !alias.scope !622
  store i8 0, ptr %i.aea, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #31
  store ptr %i.abf, ptr %40, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.abf, ptr noundef nonnull align 1 dereferenceable(5) @.str.93, i64 5, i1 false)
  store i64 5, ptr %i.abg, align 8, !tbaa !53
  store i8 0, ptr %i.acw, align 1, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #31
  %i.aeb = add nuw i64 %storemerge1446, 1         ; 7 uses
  %i.aec = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #35
          to label %bb.gu unwind label %.thread1737 ; 13 uses

bb.gu:                                            ; preds = %._crit_edge.i.i394
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 8
  store i32 1, ptr %i.aed, align 8, !tbaa !90, !noalias !623
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 12
  store i32 1, ptr %i.aee, align 4, !tbaa !91, !noalias !623
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5jinja11value_int_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.aec, align 8, !tbaa !42, !noalias !623
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aec, i64 16 ; 2 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aec, i64 40
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aec, i64 160 ; 3 uses
  store i32 0, ptr %i.aeh, align 8, !tbaa !64, !noalias !623
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aec, i64 168
  store ptr null, ptr %i.aei, align 8, !tbaa !65, !noalias !623
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aec, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.aeg, i8 0, i64 105, i1 false), !noalias !623
  store ptr %i.aeh, ptr %i.aej, align 8, !tbaa !66, !noalias !623
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aec, i64 184
  store ptr %i.aeh, ptr %i.aek, align 8, !tbaa !67, !noalias !623
  %i.ael = getelementptr inbounds nuw i8, ptr %i.aec, i64 192
  store i64 0, ptr %i.ael, align 8, !tbaa !68, !noalias !623
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5jinja11value_int_tE, i64 16), ptr %i.aef, align 8, !tbaa !42, !noalias !623
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aec, i64 24
  store i64 %i.aeb, ptr %i.aem, align 8, !tbaa !167, !noalias !623
  %i.aen = sitofp i64 %i.aeb to double            ; 2 uses
  %i.aeo = fptosi double %i.aen to i64
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.aeb, %i.aeo
  %i.aep = icmp slt i64 %i.aeb, 0
  %i.aeq = select i1 %i.aep, double -inf, double +inf
  %storemerge.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, double %i.aen, double %i.aeq
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aec, i64 32
  store double %storemerge.i.i.i.i.i.i.i.i, ptr %i.aer, align 8, !tbaa !168, !noalias !623
  store ptr %i.aef, ptr %41, align 8, !tbaa !76
  store ptr null, ptr %i.abh, align 8, !tbaa !88
  store ptr %i.aec, ptr %i.abi, align 8, !tbaa !88
  store ptr null, ptr %42, align 8, !tbaa !155
  invoke void @_ZN5jinja14value_object_t6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_7value_tEE(ptr noundef nonnull align 8 dereferenceable(241) %i.adp, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(16) %41)
          to label %bb.gv unwind label %bb.mo

bb.gv:                                            ; preds = %bb.gu
  %i.aes = load ptr, ptr %i.abi, align 8, !tbaa !88 ; 8 uses
  %.not.i.i399 = icmp eq ptr %i.aes, null
  br i1 %.not.i.i399, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit403, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 8 ; 4 uses
  %i.aeu = load atomic i64, ptr %i.aet acquire, align 8 ; 2 uses
  %i.aev = icmp eq i64 %i.aeu, 4294967297
  %i.aew = trunc i64 %i.aeu to i32                ; 2 uses
  br i1 %i.aev, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %bb.gw
  store i32 0, ptr %i.aet, align 8, !tbaa !90
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 12
  store i32 0, ptr %i.aex, align 4, !tbaa !91
  %i.aey = load ptr, ptr %i.aes, align 8, !tbaa !42
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 16
  %i.afa = load ptr, ptr %i.aez, align 8
  call void %i.afa(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #31, !inline_history !5
  %i.afb = load ptr, ptr %i.aes, align 8, !tbaa !42
  %i.afc = getelementptr inbounds nuw i8, ptr %i.afb, i64 24
  %i.afd = load ptr, ptr %i.afc, align 8
  call void %i.afd(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #31, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit403

bb.gy:                                            ; preds = %bb.gw
  %i.afe = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i400 = icmp eq i8 %i.afe, 0
  br i1 %.not.i.i.i400, label %bb.ha, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aff = add nsw i32 %i.aew, -1
  store i32 %i.aff, ptr %i.aet, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i401

bb.ha:                                            ; preds = %bb.gy
  %i.afg = atomicrmw volatile add ptr %i.aet, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i401

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i401: ; preds = %bb.ha, %bb.gz
  %.0.i.i.i.i402 = phi i32 [ %i.aew, %bb.gz ], [ %i.afg, %bb.ha ]
  %i.afh = icmp eq i32 %.0.i.i.i.i402, 1
  br i1 %i.afh, label %bb.hb, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit403, !prof !96

bb.hb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i401
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aes) #31
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit403

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit403: ; preds = %bb.gv, %bb.gx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i401, %bb.hb
  %i.afi = load ptr, ptr %i.abh, align 8, !tbaa !88 ; 8 uses
  %.not.i.i404 = icmp eq ptr %i.afi, null
  br i1 %.not.i.i404, label %_ZNSt12__shared_ptrIN5jinja11value_int_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.hc

bb.hc:                                            ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit403
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8 ; 4 uses
  %i.afk = load atomic i64, ptr %i.afj acquire, align 8 ; 2 uses
  %i.afl = icmp eq i64 %i.afk, 4294967297
  %i.afm = trunc i64 %i.afk to i32                ; 2 uses
  br i1 %i.afl, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  store i32 0, ptr %i.afj, align 8, !tbaa !90
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afi, i64 12
  store i32 0, ptr %i.afn, align 4, !tbaa !91
  %i.afo = load ptr, ptr %i.afi, align 8, !tbaa !42
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8
  call void %i.afq(ptr noundef nonnull align 8 dereferenceable(16) %i.afi) #31, !inline_history !569
  %i.afr = load ptr, ptr %i.afi, align 8, !tbaa !42
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 24
  %i.aft = load ptr, ptr %i.afs, align 8
  call void %i.aft(ptr noundef nonnull align 8 dereferenceable(16) %i.afi) #31, !inline_history !569
  br label %_ZNSt12__shared_ptrIN5jinja11value_int_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.he:                                            ; preds = %bb.hc
  %i.afu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i405 = icmp eq i8 %i.afu, 0
  br i1 %.not.i.i.i405, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.afv = add nsw i32 %i.afm, -1
  store i32 %i.afv, ptr %i.afj, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i406

bb.hg:                                            ; preds = %bb.he
  %i.afw = atomicrmw volatile add ptr %i.afj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i406

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i406: ; preds = %bb.hg, %bb.hf
  %.0.i.i.i.i407 = phi i32 [ %i.afm, %bb.hf ], [ %i.afw, %bb.hg ]
  %i.afx = icmp eq i32 %.0.i.i.i.i407, 1
  br i1 %i.afx, label %bb.hh, label %_ZNSt12__shared_ptrIN5jinja11value_int_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

bb.hh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i406
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.afi) #31
  br label %_ZNSt12__shared_ptrIN5jinja11value_int_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5jinja11value_int_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit403, %bb.hd, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i406, %bb.hh
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #31
  %i.afy = load ptr, ptr %40, align 8, !tbaa !54  ; 2 uses
  %i.afz = icmp eq ptr %i.afy, %i.abf
  br i1 %i.afz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408: ; preds = %_ZNSt12__shared_ptrIN5jinja11value_int_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aga = load i64, ptr %i.abf, align 8, !tbaa !56
  %i.agb = add i64 %i.aga, 1
  call void @_ZdlPvm(ptr noundef %i.afy, i64 noundef %i.agb) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410: ; preds = %_ZNSt12__shared_ptrIN5jinja11value_int_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i408
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #31
  %i.agc = load ptr, ptr %39, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #31
  store ptr %i.abj, ptr %43, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.abj, ptr noundef nonnull align 1 dereferenceable(6) @.str.94, i64 6, i1 false)
  store i64 6, ptr %i.abk, align 8, !tbaa !53
  store i8 0, ptr %i.acx, align 2, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #31
  %i.agd = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #35
          to label %bb.hi unwind label %.thread1741 ; 13 uses

bb.hi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit410
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  store i32 1, ptr %i.age, align 8, !tbaa !90, !noalias !624
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agd, i64 12
  store i32 1, ptr %i.agf, align 4, !tbaa !91, !noalias !624
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5jinja11value_int_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.agd, align 8, !tbaa !42, !noalias !624
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 16 ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agd, i64 40
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agd, i64 160 ; 3 uses
  store i32 0, ptr %i.agi, align 8, !tbaa !64, !noalias !624
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agd, i64 168
  store ptr null, ptr %i.agj, align 8, !tbaa !65, !noalias !624
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agd, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(105) %i.agh, i8 0, i64 105, i1 false), !noalias !624
  store ptr %i.agi, ptr %i.agk, align 8, !tbaa !66, !noalias !624
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agd, i64 184
  store ptr %i.agi, ptr %i.agl, align 8, !tbaa !67, !noalias !624
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agd, i64 192
  store i64 0, ptr %i.agm, align 8, !tbaa !68, !noalias !624
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN5jinja11value_int_tE, i64 16), ptr %i.agg, align 8, !tbaa !42, !noalias !624
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agd, i64 24
  store i64 %storemerge1446, ptr %i.agn, align 8, !tbaa !167, !noalias !624
  %i.ago = sitofp i64 %storemerge1446 to double   ; 2 uses
  %i.agp = fptosi double %i.ago to i64
  %.not.i.i.i.i.i.i.i.i415 = icmp eq i64 %storemerge1446, %i.agp
  %i.agq = icmp slt i64 %storemerge1446, 0
  %i.agr = select i1 %i.agq, double -inf, double +inf
  %storemerge.i.i.i.i.i.i.i.i416 = select i1 %.not.i.i.i.i.i.i.i.i415, double %i.ago, double %i.agr
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agd, i64 32
  store double %storemerge.i.i.i.i.i.i.i.i416, ptr %i.ags, align 8, !tbaa !168, !noalias !624
  store ptr %i.agg, ptr %44, align 8, !tbaa !76
  store ptr null, ptr %i.abl, align 8, !tbaa !88
  store ptr %i.agd, ptr %i.abm, align 8, !tbaa !88
  store ptr null, ptr %45, align 8, !tbaa !155
  invoke void @_ZN5jinja14value_object_t6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_7value_tEE(ptr noundef nonnull align 8 dereferenceable(241) %i.agc, ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(16) %44)
          to label %bb.hj unwind label %bb.mp
end_hunk_0
begin_hunk_1_@_ZN5jinja13for_statement12execute_implERNS_7contextE:bb.a
  store i8 0, ptr %i.add, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #31
  br i1 %i.amv, label %bb.ks, label %bb.ko

bb.ko:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529
  %i.asl = load ptr, ptr %21, align 8, !tbaa !174
  %i.asm = getelementptr [16 x i8], ptr %i.asl, i64 %storemerge1446 ; 2 uses
  %i.asn = getelementptr i8, ptr %i.asm, i64 -16
  %i.aso = getelementptr i8, ptr %i.asm, i64 -8
  %i.asp = load ptr, ptr %i.aso, align 8, !tbaa !88 ; 2 uses
  %i.asq = load <2 x ptr>, ptr %i.asn, align 8, !tbaa !87
  store <2 x ptr> %i.asq, ptr %62, align 16, !tbaa !87
  %.not.i.i.i534 = icmp eq ptr %i.asp, null
  br i1 %.not.i.i.i534, label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit536, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asp, i64 8 ; 3 uses
  %i.ass = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i535 = icmp eq i8 %i.ass, 0
  br i1 %.not.i.i.i.i535, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ast = load i32, ptr %i.asr, align 4, !tbaa !95
  %i.asu = add nsw i32 %i.ast, 1
  store i32 %i.asu, ptr %i.asr, align 4, !tbaa !95
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit536

bb.kr:                                            ; preds = %bb.kp
  %i.asv = atomicrmw volatile add ptr %i.asr, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit536

bb.ks:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #31
  %i.asw = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #35
          to label %.noexc537 unwind label %bb.mz ; 6 uses

.noexc537:                                        ; preds = %bb.ks
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asw, i64 8
  store i32 1, ptr %i.asx, align 8, !tbaa !90, !noalias !634
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asw, i64 12
  store i32 1, ptr %i.asy, align 4, !tbaa !91, !noalias !634
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5jinja17value_undefined_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.asw, align 8, !tbaa !42, !noalias !634
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asw, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5jinja17value_undefined_tEJRA9_KcEEvPT_DpOT0_(ptr noundef nonnull %i.asz, ptr noundef nonnull align 1 dereferenceable(9) @.str.100)
          to label %bb.kt unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5jinja17value_undefined_tESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !634

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5jinja17value_undefined_tESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc537
  %i.ata = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.asw, i64 noundef 232) #33, !noalias !634
  br label %bb.nc

bb.kt:                                            ; preds = %.noexc537
  store ptr %i.asz, ptr %62, align 16, !tbaa !76
  store ptr null, ptr %i.ack, align 8, !tbaa !88
  store ptr %i.asw, ptr %i.acj, align 8, !tbaa !88
  store ptr null, ptr %63, align 8, !tbaa !94
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit536

_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit536: ; preds = %bb.kr, %bb.kq, %bb.ko, %bb.kt
  invoke void @_ZN5jinja14value_object_t6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_7value_tEE(ptr noundef nonnull align 8 dereferenceable(241) %i.ask, ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull align 8 dereferenceable(16) %62)
          to label %bb.ku unwind label %bb.na

bb.ku:                                            ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit536
  %i.atb = load ptr, ptr %i.acj, align 8, !tbaa !88 ; 8 uses
  %.not.i.i540 = icmp eq ptr %i.atb, null
  br i1 %.not.i.i540, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 8 ; 4 uses
  %i.atd = load atomic i64, ptr %i.atc acquire, align 8 ; 2 uses
  %i.ate = icmp eq i64 %i.atd, 4294967297
  %i.atf = trunc i64 %i.atd to i32                ; 2 uses
  br i1 %i.ate, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  store i32 0, ptr %i.atc, align 8, !tbaa !90
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atb, i64 12
  store i32 0, ptr %i.atg, align 4, !tbaa !91
  %i.ath = load ptr, ptr %i.atb, align 8, !tbaa !42
  %i.ati = getelementptr inbounds nuw i8, ptr %i.ath, i64 16
  %i.atj = load ptr, ptr %i.ati, align 8
  call void %i.atj(ptr noundef nonnull align 8 dereferenceable(16) %i.atb) #31, !inline_history !5
  %i.atk = load ptr, ptr %i.atb, align 8, !tbaa !42
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atk, i64 24
  %i.atm = load ptr, ptr %i.atl, align 8
  call void %i.atm(ptr noundef nonnull align 8 dereferenceable(16) %i.atb) #31, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544

bb.kx:                                            ; preds = %bb.kv
  %i.atn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i541 = icmp eq i8 %i.atn, 0
  br i1 %.not.i.i.i541, label %bb.kz, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.ato = add nsw i32 %i.atf, -1
  store i32 %i.ato, ptr %i.atc, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i542

bb.kz:                                            ; preds = %bb.kx
  %i.atp = atomicrmw volatile add ptr %i.atc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i542

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i542: ; preds = %bb.kz, %bb.ky
  %.0.i.i.i.i543 = phi i32 [ %i.atf, %bb.ky ], [ %i.atp, %bb.kz ]
  %i.atq = icmp eq i32 %.0.i.i.i.i543, 1
  br i1 %i.atq, label %bb.la, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544, !prof !96

bb.la:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i542
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atb) #31
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544: ; preds = %bb.ku, %bb.kw, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i542, %bb.la
  br i1 %i.amv, label %bb.lb, label %.critedge

bb.lb:                                            ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544
  %i.atr = load ptr, ptr %i.ack, align 8, !tbaa !88 ; 8 uses
  %.not.i.i545 = icmp eq ptr %i.atr, null
  br i1 %.not.i.i545, label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ats = getelementptr inbounds nuw i8, ptr %i.atr, i64 8 ; 4 uses
  %i.att = load atomic i64, ptr %i.ats acquire, align 8 ; 2 uses
  %i.atu = icmp eq i64 %i.att, 4294967297
  %i.atv = trunc i64 %i.att to i32                ; 2 uses
  br i1 %i.atu, label %bb.ld, label %bb.le

bb.ld:                                            ; preds = %bb.lc
  store i32 0, ptr %i.ats, align 8, !tbaa !90
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atr, i64 12
  store i32 0, ptr %i.atw, align 4, !tbaa !91
  %i.atx = load ptr, ptr %i.atr, align 8, !tbaa !42
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atx, i64 16
  %i.atz = load ptr, ptr %i.aty, align 8
  call void %i.atz(ptr noundef nonnull align 8 dereferenceable(16) %i.atr) #31, !inline_history !598
  %i.aua = load ptr, ptr %i.atr, align 8, !tbaa !42
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aua, i64 24
  %i.auc = load ptr, ptr %i.aub, align 8
  call void %i.auc(ptr noundef nonnull align 8 dereferenceable(16) %i.atr) #31, !inline_history !598
  br label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.le:                                            ; preds = %bb.lc
  %i.aud = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i546 = icmp eq i8 %i.aud, 0
  br i1 %.not.i.i.i546, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.aue = add nsw i32 %i.atv, -1
  store i32 %i.aue, ptr %i.ats, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i547

bb.lg:                                            ; preds = %bb.le
  %i.auf = atomicrmw volatile add ptr %i.ats, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i547

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i547: ; preds = %bb.lg, %bb.lf
  %.0.i.i.i.i548 = phi i32 [ %i.atv, %bb.lf ], [ %i.auf, %bb.lg ]
  %i.aug = icmp eq i32 %.0.i.i.i.i548, 1
  br i1 %i.aug, label %bb.lh, label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !96

bb.lh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i547
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.atr) #31
  br label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.lb, %bb.ld, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i547, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #31
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit544, %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #31
  %i.auh = load ptr, ptr %61, align 8, !tbaa !54  ; 2 uses
  %i.aui = icmp eq ptr %i.auh, %i.ach
  br i1 %i.aui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549: ; preds = %.critedge
  %i.auj = load i64, ptr %i.ach, align 8, !tbaa !56
  %i.auk = add i64 %i.auj, 1
  call void @_ZdlPvm(ptr noundef %i.auh, i64 noundef %i.auk) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i549
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #31
  %i.aul = load ptr, ptr %39, align 16, !tbaa !97
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #31
  store ptr %i.acl, ptr %64, align 8, !tbaa !57
  store i64 7882834719056356718, ptr %i.acl, align 8
  store i64 8, ptr %i.acm, align 8, !tbaa !53
  store i8 0, ptr %i.ade, align 8, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #31
  %i.aum = load ptr, ptr %i.aax, align 8, !tbaa !169
  %i.aun = load ptr, ptr %21, align 8, !tbaa !174 ; 2 uses
  %i.auo = ptrtoint ptr %i.aum to i64
  %i.aup = ptrtoint ptr %i.aun to i64
  %i.auq = sub i64 %i.auo, %i.aup
  %i.aur = ashr exact i64 %i.auq, 4
  %i.aus = add nsw i64 %i.aur, -1
  %.not177 = icmp ult i64 %storemerge1446, %i.aus ; 3 uses
  br i1 %.not177, label %bb.li, label %bb.lm

bb.li:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551
  %i.aut = getelementptr inbounds nuw [16 x i8], ptr %i.aun, i64 %i.aeb ; 2 uses
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 8
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !88 ; 2 uses
  %i.auw = load <2 x ptr>, ptr %i.aut, align 8, !tbaa !87
  store <2 x ptr> %i.auw, ptr %65, align 16, !tbaa !87
  %.not.i.i.i556 = icmp eq ptr %i.auv, null
  br i1 %.not.i.i.i556, label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit558, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auv, i64 8 ; 3 uses
  %i.auy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i557 = icmp eq i8 %i.auy, 0
  br i1 %.not.i.i.i.i557, label %bb.ll, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.auz = load i32, ptr %i.aux, align 4, !tbaa !95
  %i.ava = add nsw i32 %i.auz, 1
  store i32 %i.ava, ptr %i.aux, align 4, !tbaa !95
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit558

bb.ll:                                            ; preds = %bb.lj
  %i.avb = atomicrmw volatile add ptr %i.aux, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit558

bb.lm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit551
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #31
  %i.avc = invoke noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #35
          to label %.noexc560 unwind label %bb.nd ; 6 uses

.noexc560:                                        ; preds = %bb.lm
  %i.avd = getelementptr inbounds nuw i8, ptr %i.avc, i64 8
  store i32 1, ptr %i.avd, align 8, !tbaa !90, !noalias !635
  %i.ave = getelementptr inbounds nuw i8, ptr %i.avc, i64 12
  store i32 1, ptr %i.ave, align 4, !tbaa !91, !noalias !635
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5jinja17value_undefined_tESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.avc, align 8, !tbaa !42, !noalias !635
  %i.avf = getelementptr inbounds nuw i8, ptr %i.avc, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN5jinja17value_undefined_tEJRA9_KcEEvPT_DpOT0_(ptr noundef nonnull %i.avf, ptr noundef nonnull align 1 dereferenceable(9) @.str.101)
          to label %bb.ln unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5jinja17value_undefined_tESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i559, !noalias !635

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5jinja17value_undefined_tESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i559: ; preds = %.noexc560
  %i.avg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.avc, i64 noundef 232) #33, !noalias !635
  br label %bb.ng

bb.ln:                                            ; preds = %.noexc560
  store ptr %i.avf, ptr %65, align 16, !tbaa !76
  store ptr null, ptr %i.acn, align 8, !tbaa !88
  store ptr %i.avc, ptr %i.aco, align 8, !tbaa !88
  store ptr null, ptr %66, align 8, !tbaa !94
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit558

_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit558: ; preds = %bb.ll, %bb.lk, %bb.li, %bb.ln
  invoke void @_ZN5jinja14value_object_t6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt10shared_ptrINS_7value_tEE(ptr noundef nonnull align 8 dereferenceable(241) %i.aul, ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull align 8 dereferenceable(16) %65)
          to label %bb.lo unwind label %bb.ne

bb.lo:                                            ; preds = %_ZNSt10shared_ptrIN5jinja7value_tEEC2ERKS2_.exit558
  %i.avh = load ptr, ptr %i.aco, align 8, !tbaa !88 ; 8 uses
  %.not.i.i564 = icmp eq ptr %i.avh, null
  br i1 %.not.i.i564, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit568, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.avi = getelementptr inbounds nuw i8, ptr %i.avh, i64 8 ; 4 uses
  %i.avj = load atomic i64, ptr %i.avi acquire, align 8 ; 2 uses
  %i.avk = icmp eq i64 %i.avj, 4294967297
  %i.avl = trunc i64 %i.avj to i32                ; 2 uses
  br i1 %i.avk, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  store i32 0, ptr %i.avi, align 8, !tbaa !90
  %i.avm = getelementptr inbounds nuw i8, ptr %i.avh, i64 12
  store i32 0, ptr %i.avm, align 4, !tbaa !91
  %i.avn = load ptr, ptr %i.avh, align 8, !tbaa !42
  %i.avo = getelementptr inbounds nuw i8, ptr %i.avn, i64 16
  %i.avp = load ptr, ptr %i.avo, align 8
  call void %i.avp(ptr noundef nonnull align 8 dereferenceable(16) %i.avh) #31, !inline_history !5
  %i.avq = load ptr, ptr %i.avh, align 8, !tbaa !42
  %i.avr = getelementptr inbounds nuw i8, ptr %i.avq, i64 24
  %i.avs = load ptr, ptr %i.avr, align 8
  call void %i.avs(ptr noundef nonnull align 8 dereferenceable(16) %i.avh) #31, !inline_history !5
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit568

bb.lr:                                            ; preds = %bb.lp
  %i.avt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i565 = icmp eq i8 %i.avt, 0
  br i1 %.not.i.i.i565, label %bb.lt, label %bb.ls

bb.ls:                                            ; preds = %bb.lr
  %i.avu = add nsw i32 %i.avl, -1
  store i32 %i.avu, ptr %i.avi, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i566

bb.lt:                                            ; preds = %bb.lr
  %i.avv = atomicrmw volatile add ptr %i.avi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i566

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i566: ; preds = %bb.lt, %bb.ls
  %.0.i.i.i.i567 = phi i32 [ %i.avl, %bb.ls ], [ %i.avv, %bb.lt ]
  %i.avw = icmp eq i32 %.0.i.i.i.i567, 1
  br i1 %i.avw, label %bb.lu, label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit568, !prof !96

bb.lu:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i566
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avh) #31
  br label %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit568

_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit568: ; preds = %bb.lo, %bb.lq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i566, %bb.lu
  br i1 %.not177, label %.critedge227, label %bb.lv

bb.lv:                                            ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit568
  %i.avx = load ptr, ptr %i.acn, align 8, !tbaa !88 ; 8 uses
  %.not.i.i569 = icmp eq ptr %i.avx, null
  br i1 %.not.i.i569, label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit573, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.avy = getelementptr inbounds nuw i8, ptr %i.avx, i64 8 ; 4 uses
  %i.avz = load atomic i64, ptr %i.avy acquire, align 8 ; 2 uses
  %i.awa = icmp eq i64 %i.avz, 4294967297
  %i.awb = trunc i64 %i.avz to i32                ; 2 uses
  br i1 %i.awa, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  store i32 0, ptr %i.avy, align 8, !tbaa !90
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avx, i64 12
  store i32 0, ptr %i.awc, align 4, !tbaa !91
  %i.awd = load ptr, ptr %i.avx, align 8, !tbaa !42
  %i.awe = getelementptr inbounds nuw i8, ptr %i.awd, i64 16
  %i.awf = load ptr, ptr %i.awe, align 8
  call void %i.awf(ptr noundef nonnull align 8 dereferenceable(16) %i.avx) #31, !inline_history !598
  %i.awg = load ptr, ptr %i.avx, align 8, !tbaa !42
  %i.awh = getelementptr inbounds nuw i8, ptr %i.awg, i64 24
  %i.awi = load ptr, ptr %i.awh, align 8
  call void %i.awi(ptr noundef nonnull align 8 dereferenceable(16) %i.avx) #31, !inline_history !598
  br label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit573

bb.ly:                                            ; preds = %bb.lw
  %i.awj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i570 = icmp eq i8 %i.awj, 0
  br i1 %.not.i.i.i570, label %bb.ma, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.awk = add nsw i32 %i.awb, -1
  store i32 %i.awk, ptr %i.avy, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i571

bb.ma:                                            ; preds = %bb.ly
  %i.awl = atomicrmw volatile add ptr %i.avy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i571

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i571: ; preds = %bb.ma, %bb.lz
  %.0.i.i.i.i572 = phi i32 [ %i.awb, %bb.lz ], [ %i.awl, %bb.ma ]
  %i.awm = icmp eq i32 %.0.i.i.i.i572, 1
  br i1 %i.awm, label %bb.mb, label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit573, !prof !96

bb.mb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i571
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.avx) #31
  br label %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit573

_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit573: ; preds = %bb.lv, %bb.lx, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i571, %bb.mb
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #31
  br label %.critedge227

.critedge227:                                     ; preds = %_ZNSt12__shared_ptrIN5jinja7value_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit568, %_ZNSt12__shared_ptrIN5jinja17value_undefined_tELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit573
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #31
  %i.awn = load ptr, ptr %64, align 8, !tbaa !54  ; 2 uses
  %i.awo = icmp eq ptr %i.awn, %i.acl
  br i1 %i.awo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574: ; preds = %.critedge227
  %i.awp = load i64, ptr %i.acl, align 8, !tbaa !56
  %i.awq = add i64 %i.awp, 1
  call void @_ZdlPvm(ptr noundef %i.awn, i64 noundef %i.awq) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576: ; preds = %.critedge227, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #31
  store ptr %i.acp, ptr %67, align 8, !tbaa !57
  store i32 1886351212, ptr %i.acp, align 8
  store i64 4, ptr %i.acq, align 8, !tbaa !53
  store i8 0, ptr %i.adf, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #31
  %i.awr = load ptr, ptr %i.abe, align 8, !tbaa !88 ; 2 uses
  %i.aws = load <2 x ptr>, ptr %39, align 16, !tbaa !87
  store <2 x ptr> %i.aws, ptr %68, align 16, !tbaa !87
  %.not.i.i.i581 = icmp eq ptr %i.awr, null
  br i1 %.not.i.i.i581, label %_ZNSt10shared_ptrIN5jinja7value_tEEC2INS0_14value_object_tEvEERKS_IT_E.exit, label %bb.mc

bb.mc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awr, i64 8 ; 3 uses
  %i.awu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i582 = icmp eq i8 %i.awu, 0
  br i1 %.not.i.i.i.i582, label %bb.me, label %bb.md

bb.md:                                            ; preds = %bb.mc
  %i.awv = load i32, ptr %i.awt, align 4, !tbaa !95
  %i.aww = add nsw i32 %i.awv, 1
  store i32 %i.aww, ptr %i.awt, align 4, !tbaa !95
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2INS0_14value_object_tEvEERKS_IT_E.exit

bb.me:                                            ; preds = %bb.mc
  %i.awx = atomicrmw volatile add ptr %i.awt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5jinja7value_tEEC2INS0_14value_object_tEvEERKS_IT_E.exit

_ZNSt10shared_ptrIN5jinja7value_tEEC2INS0_14value_object_tEvEERKS_IT_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576, %bb.md, %bb.me
end_hunk_1
