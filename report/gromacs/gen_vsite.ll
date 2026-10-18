Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gen_vsite?download=true
inline.NumInlined: 2920
inline.NumDeleted: 809
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZL14gen_vsites_trpP22PreprocessingAtomTypesPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EEPP6t_atomPPPPcPPiPS1_I16VsiteTypeAndSignSaISH_EEP8t_symtabSF_NS2_8ArrayRefIKS4_EEP7t_atomsNSN_ISH_EERNS2_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSU_95EEEiSF_iNSN_IK19VirtualSiteTopologyEE:bb.a
  store ptr %i.abb, ptr %109, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.abb, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  %i.abc = getelementptr inbounds nuw i8, ptr %109, i64 8
  store i64 3, ptr %i.abc, align 8, !tbaa !34
  %i.abd = getelementptr inbounds nuw i8, ptr %109, i64 19
  store i8 0, ptr %i.abd, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #26
  %i.abe = getelementptr inbounds nuw i8, ptr %110, i64 16 ; 6 uses
  store ptr %i.abe, ptr %110, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.abe, ptr noundef nonnull align 1 dereferenceable(3) @.str.18, i64 3, i1 false)
  %i.abf = getelementptr inbounds nuw i8, ptr %110, i64 8
  store i64 3, ptr %i.abf, align 8, !tbaa !34
  %i.abg = getelementptr inbounds nuw i8, ptr %110, i64 19
  store i8 0, ptr %i.abg, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %111) #26
  %i.abh = getelementptr inbounds nuw i8, ptr %111, i64 16 ; 6 uses
  store ptr %i.abh, ptr %111, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.abh, ptr noundef nonnull align 1 dereferenceable(3) @.str.24, i64 3, i1 false)
  %i.abi = getelementptr inbounds nuw i8, ptr %111, i64 8
  store i64 3, ptr %i.abi, align 8, !tbaa !34
  %i.abj = getelementptr inbounds nuw i8, ptr %111, i64 19
  store i8 0, ptr %i.abj, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %112) #26
  %i.abk = getelementptr inbounds nuw i8, ptr %112, i64 16 ; 6 uses
  store ptr %i.abk, ptr %112, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.abk, ptr noundef nonnull align 1 dereferenceable(3) @.str.19, i64 3, i1 false)
  %i.abl = getelementptr inbounds nuw i8, ptr %112, i64 8
  store i64 3, ptr %i.abl, align 8, !tbaa !34
  %i.abm = getelementptr inbounds nuw i8, ptr %112, i64 19
  store i8 0, ptr %i.abm, align 1, !tbaa !25
  %i.abn = invoke fastcc noundef float @_ZL13get_ddb_angleN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_SB_(ptr %.0.val3, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(32) %109, ptr noundef nonnull align 8 dereferenceable(32) %110, ptr noundef nonnull align 8 dereferenceable(32) %111, ptr noundef nonnull align 8 dereferenceable(32) %112)
          to label %bb.ak unwind label %bb.bn

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1130
  %i.abo = fpext float %i.abn to double
  %i.abp = fmul double %i.abo, f0x3F91DF46A2529D39
  %i.abq = fptrunc double %i.abp to float
  %i.abr = load ptr, ptr %112, align 8, !tbaa !31 ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.abk
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1147: ; preds = %bb.ak
  %i.abt = load i64, ptr %i.abk, align 8, !tbaa !25
  %i.abu = add i64 %i.abt, 1
  call void @_ZdlPvm(ptr noundef %i.abr, i64 noundef %i.abu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1147
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #26
  %i.abv = load ptr, ptr %111, align 8, !tbaa !31 ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.abh
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1150: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149
  %i.abx = load i64, ptr %i.abh, align 8, !tbaa !25
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.aby) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1149, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1150
  call void @llvm.lifetime.end.p0(ptr nonnull %111) #26
  %i.abz = load ptr, ptr %110, align 8, !tbaa !31 ; 2 uses
  %i.aca = icmp eq ptr %i.abz, %i.abe
  br i1 %i.aca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152
  %i.acb = load i64, ptr %i.abe, align 8, !tbaa !25
  %i.acc = add i64 %i.acb, 1
  call void @_ZdlPvm(ptr noundef %i.abz, i64 noundef %i.acc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1152, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1153
  call void @llvm.lifetime.end.p0(ptr nonnull %110) #26
  %i.acd = load ptr, ptr %109, align 8, !tbaa !31 ; 2 uses
  %i.ace = icmp eq ptr %i.acd, %i.abb
  br i1 %i.ace, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155
  %i.acf = load i64, ptr %i.abb, align 8, !tbaa !25
  %i.acg = add i64 %i.acf, 1
  call void @_ZdlPvm(ptr noundef %i.acd, i64 noundef %i.acg) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1156
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %113) #26
  %i.ach = getelementptr inbounds nuw i8, ptr %113, i64 16 ; 6 uses
  store ptr %i.ach, ptr %113, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ach, ptr noundef nonnull align 1 dereferenceable(3) @.str.1, i64 3, i1 false)
  %i.aci = getelementptr inbounds nuw i8, ptr %113, i64 8
  store i64 3, ptr %i.aci, align 8, !tbaa !34
  %i.acj = getelementptr inbounds nuw i8, ptr %113, i64 19
  store i8 0, ptr %i.acj, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #26
  %i.ack = getelementptr inbounds nuw i8, ptr %114, i64 16 ; 6 uses
  store ptr %i.ack, ptr %114, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ack, ptr noundef nonnull align 1 dereferenceable(3) @.str.15, i64 3, i1 false)
  %i.acl = getelementptr inbounds nuw i8, ptr %114, i64 8
  store i64 3, ptr %i.acl, align 8, !tbaa !34
  %i.acm = getelementptr inbounds nuw i8, ptr %114, i64 19
  store i8 0, ptr %i.acm, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #26
  %i.acn = getelementptr inbounds nuw i8, ptr %115, i64 16 ; 6 uses
  store ptr %i.acn, ptr %115, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.acn, ptr noundef nonnull align 1 dereferenceable(3) @.str.25, i64 3, i1 false)
  %i.aco = getelementptr inbounds nuw i8, ptr %115, i64 8
  store i64 3, ptr %i.aco, align 8, !tbaa !34
  %i.acp = getelementptr inbounds nuw i8, ptr %115, i64 19
  store i8 0, ptr %i.acp, align 1, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #26
  %i.acq = getelementptr inbounds nuw i8, ptr %116, i64 16 ; 6 uses
  store ptr %i.acq, ptr %116, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.acq, ptr noundef nonnull align 1 dereferenceable(3) @.str.26, i64 3, i1 false)
  %i.acr = getelementptr inbounds nuw i8, ptr %116, i64 8
  store i64 3, ptr %i.acr, align 8, !tbaa !34
  %i.acs = getelementptr inbounds nuw i8, ptr %116, i64 19
  store i8 0, ptr %i.acs, align 1, !tbaa !25
  %i.act = invoke fastcc noundef float @_ZL13get_ddb_angleN3gmx8ArrayRefIK19VirtualSiteTopologyEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_SB_(ptr %.0.val3, ptr %i.o, ptr noundef nonnull align 8 dereferenceable(32) %113, ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %115, ptr noundef nonnull align 8 dereferenceable(32) %116)
          to label %bb.al unwind label %bb.bo

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158
  %i.acu = fpext float %i.act to double
  %i.acv = fmul double %i.acu, f0x3F91DF46A2529D39
  %i.acw = fptrunc double %i.acv to float
  %i.acx = load ptr, ptr %116, align 8, !tbaa !31 ; 2 uses
  %i.acy = icmp eq ptr %i.acx, %i.acq
  br i1 %i.acy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1175: ; preds = %bb.al
  %i.acz = load i64, ptr %i.acq, align 8, !tbaa !25
  %i.ada = add i64 %i.acz, 1
  call void @_ZdlPvm(ptr noundef %i.acx, i64 noundef %i.ada) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1177

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1177: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1175
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #26
  %i.adb = load ptr, ptr %115, align 8, !tbaa !31 ; 2 uses
  %i.adc = icmp eq ptr %i.adb, %i.acn
  br i1 %i.adc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1178: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1177
  %i.add = load i64, ptr %i.acn, align 8, !tbaa !25
  %i.ade = add i64 %i.add, 1
  call void @_ZdlPvm(ptr noundef %i.adb, i64 noundef %i.ade) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1177, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1178
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #26
  %i.adf = load ptr, ptr %114, align 8, !tbaa !31 ; 2 uses
  %i.adg = icmp eq ptr %i.adf, %i.ack
  br i1 %i.adg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180
  %i.adh = load i64, ptr %i.ack, align 8, !tbaa !25
  %i.adi = add i64 %i.adh, 1
  call void @_ZdlPvm(ptr noundef %i.adf, i64 noundef %i.adi) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1181
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #26
  %i.adj = load ptr, ptr %113, align 8, !tbaa !31 ; 2 uses
  %i.adk = icmp eq ptr %i.adj, %i.ach
  br i1 %i.adk, label %.peel.next, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1184

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1184: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183
  %i.adl = load i64, ptr %i.ach, align 8, !tbaa !25
  %i.adm = add i64 %i.adl, 1
  call void @_ZdlPvm(ptr noundef %i.adj, i64 noundef %i.adm) #30
  br label %.peel.next

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1183, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1184
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  %i.adn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store float 0.000000e+00, ptr %i.adn, align 16, !tbaa !88
  %i.ado = fmul float %i.y, -5.000000e-01         ; 5 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.ado, ptr %i.adp, align 16, !tbaa !88
  %i.adq = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store float 0.000000e+00, ptr %i.adq, align 4, !tbaa !88
  %i.adr = fmul float %i.y, 5.000000e-01          ; 4 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store float %i.adr, ptr %i.ads, align 4, !tbaa !88
  %i.adt = fneg float %i.au                       ; 2 uses
  %i.adu = call noundef float @sinf(float noundef %i.mw) #26
  %i.adv = fmul float %i.adu, %i.adt              ; 3 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store float %i.adv, ptr %i.adw, align 4, !tbaa !88
  %i.adx = call noundef float @cosf(float noundef %i.mw) #26
  %i.ady = call float @llvm.fmuladd.f32(float %i.adt, float %i.adx, float %i.adr) ; 3 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.ady, ptr %i.adz, align 4, !tbaa !88
  %i.aea = fneg float %i.cm
  %i.aeb = call noundef float @sinf(float noundef %i.oc) #26
  %i.aec = fmul float %i.aeb, %i.aea              ; 8 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store float %i.aec, ptr %i.aed, align 4, !tbaa !88
  %i.aee = call noundef float @cosf(float noundef %i.oc) #26
  %i.aef = call float @llvm.fmuladd.f32(float %i.cm, float %i.aee, float %i.ado) ; 8 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store float %i.aef, ptr %i.aeg, align 4, !tbaa !88
  %i.aeh = fpext float %i.oc to double
  %117 = fadd double %i.aeh, f0x400921FB54442D18
  %118 = fpext float %i.pi to double
  %119 = fsub double %117, %118
  %120 = fptrunc double %119 to float             ; 2 uses
  %121 = call noundef float @sinf(float noundef %120) #26
  %122 = fneg float %i.di
  %123 = call float @llvm.fmuladd.f32(float %122, float %121, float %i.aec) ; 5 uses
  store float %123, ptr %i.a, align 16, !tbaa !88
  %124 = call noundef float @cosf(float noundef %120) #26
  %125 = call float @llvm.fmuladd.f32(float %i.di, float %124, float %i.aef) ; 5 uses
  store float %125, ptr %i.b, align 16, !tbaa !88
  %i.aei = fadd float %i.oc, %i.qo                ; 2 uses
  %126 = fpext float %i.aei to double
  %127 = fadd double %126, f0xC00921FB54442D18
  %128 = fptrunc double %127 to float             ; 2 uses
  %129 = call noundef float @sinf(float noundef %128) #26
  %130 = fneg float %i.bq
  %131 = call float @llvm.fmuladd.f32(float %130, float %129, float %i.aec) ; 3 uses
  %132 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %131, ptr %132, align 8, !tbaa !88
  %133 = call noundef float @cosf(float noundef %128) #26
  %134 = call float @llvm.fmuladd.f32(float %i.bq, float %133, float %i.aef) ; 3 uses
  %135 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float %134, ptr %135, align 8, !tbaa !88
  %i.aej = call noundef float @sinf(float noundef %i.ru) #26
  %136 = fmul float %i.fa, %i.aej                 ; 4 uses
  %137 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store float %136, ptr %137, align 16, !tbaa !88
  %i.aek = call noundef float @cosf(float noundef %i.ru) #26
  %i.ael = call float @llvm.fmuladd.f32(float %i.fa, float %i.aek, float %i.ado) ; 4 uses
  %138 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store float %i.ael, ptr %138, align 16, !tbaa !88
  %i.aem = call noundef float @sinf(float noundef %i.ta) #26
  %139 = fmul float %i.ee, %i.aem                 ; 4 uses
  %140 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store float %139, ptr %140, align 8, !tbaa !88
  %i.aen = call noundef float @cosf(float noundef %i.ta) #26
  %141 = fneg float %i.ee
  %142 = call float @llvm.fmuladd.f32(float %141, float %i.aen, float %i.adr) ; 4 uses
  %143 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store float %142, ptr %143, align 8, !tbaa !88
  %144 = fadd float %i.ru, %i.ug                  ; 2 uses
  %145 = fpext float %144 to double
  %146 = fadd double %145, f0xC00921FB54442D18
  %147 = fptrunc double %146 to float             ; 2 uses
  %i.aeo = call noundef float @sinf(float noundef %147) #26
  %i.aep = call float @llvm.fmuladd.f32(float %i.fw, float %i.aeo, float %136) ; 3 uses
  %148 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store float %i.aep, ptr %148, align 16, !tbaa !88
  %i.aeq = call noundef float @cosf(float noundef %147) #26
  %i.aer = call float @llvm.fmuladd.f32(float %i.fw, float %i.aeq, float %i.ael) ; 3 uses
  %149 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store float %i.aer, ptr %149, align 16, !tbaa !88
  %150 = fadd float %i.ta, %i.ze                  ; 2 uses
  %151 = fpext float %150 to double
  %152 = fadd double %151, f0xC00921FB54442D18
  %153 = fptrunc double %152 to float             ; 2 uses
  %i.aes = call noundef float @sinf(float noundef %153) #26
  %i.aet = call float @llvm.fmuladd.f32(float %i.gs, float %i.aes, float %139) ; 3 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store float %i.aet, ptr %i.aeu, align 8, !tbaa !88
  %i.aev = call noundef float @cosf(float noundef %153) #26
  %i.aew = fneg float %i.gs
  %i.aex = call float @llvm.fmuladd.f32(float %i.aew, float %i.aev, float %142) ; 3 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store float %i.aex, ptr %i.aey, align 8, !tbaa !88
  %i.aez = fsub float %i.aei, %i.aak              ; 2 uses
  %i.afa = call noundef float @sinf(float noundef %i.aez) #26
  %i.afb = fneg float %i.ho
  %i.afc = call float @llvm.fmuladd.f32(float %i.afb, float %i.afa, float %131) ; 2 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.afc, ptr %i.afd, align 4, !tbaa !88
  %i.afe = call noundef float @cosf(float noundef %i.aez) #26
  %i.aff = call float @llvm.fmuladd.f32(float %i.ho, float %i.afe, float %134) ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.aff, ptr %i.afg, align 4, !tbaa !88
  %i.afh = fpext float %i.mw to double
  %i.afi = fadd double %i.afh, f0x400921FB54442D18
  %i.afj = fpext float %i.abq to double
  %i.afk = fsub double %i.afi, %i.afj
  %i.afl = fptrunc double %i.afk to float         ; 2 uses
  %i.afm = call noundef float @sinf(float noundef %i.afl) #26
  %i.afn = fneg float %i.jg                       ; 2 uses
  %i.afo = call float @llvm.fmuladd.f32(float %i.afn, float %i.afm, float %i.adv) ; 2 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store float %i.afo, ptr %i.afp, align 8, !tbaa !88
  %i.afq = call noundef float @cosf(float noundef %i.afl) #26
  %i.afr = call float @llvm.fmuladd.f32(float %i.afn, float %i.afq, float %i.ady) ; 2 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store float %i.afr, ptr %i.afs, align 8, !tbaa !88
  %i.aft = fpext float %i.ru to double
  %i.afu = fadd double %i.aft, f0x400921FB54442D18
  %i.afv = fpext float %i.acw to double
  %i.afw = fsub double %i.afu, %i.afv
  %i.afx = fptrunc double %i.afw to float         ; 2 uses
  %i.afy = call noundef float @sinf(float noundef %i.afx) #26
  %i.afz = call float @llvm.fmuladd.f32(float %i.ky, float %i.afy, float %136) ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store float %i.afz, ptr %i.aga, align 4, !tbaa !88
  %i.agb = call noundef float @cosf(float noundef %i.afx) #26
  %i.agc = call float @llvm.fmuladd.f32(float %i.ky, float %i.agb, float %i.ael) ; 2 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  store float %i.agc, ptr %i.agd, align 4, !tbaa !88
  %i.age = fpext float %i.ta to double
  %i.agf = fadd double %i.age, f0x400921FB54442D18
  %i.agg = fpext float %i.xy to double
  %i.agh = fsub double %i.agf, %i.agg
  %i.agi = fptrunc double %i.agh to float         ; 2 uses
  %i.agj = call noundef float @sinf(float noundef %i.agi) #26
  %i.agk = call float @llvm.fmuladd.f32(float %i.ik, float %i.agj, float %139) ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store float %i.agk, ptr %i.agl, align 4, !tbaa !88
  %i.agm = call noundef float @cosf(float noundef %i.agi) #26
  %i.agn = fneg float %i.ik
  %i.ago = call float @llvm.fmuladd.f32(float %i.agn, float %i.agm, float %142) ; 2 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %i.ago, ptr %i.agp, align 4, !tbaa !88
  %i.agq = fsub float %150, %i.ws                 ; 2 uses
  %i.agr = call noundef float @sinf(float noundef %i.agq) #26
  %i.ags = call float @llvm.fmuladd.f32(float %i.lu, float %i.agr, float %i.aep) ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  store float %i.ags, ptr %i.agt, align 4, !tbaa !88
  %i.agu = call noundef float @cosf(float noundef %i.agq) #26
  %i.agv = call float @llvm.fmuladd.f32(float %i.lu, float %i.agu, float %i.aer) ; 2 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %i.agv, ptr %i.agw, align 4, !tbaa !88
  %i.agx = fsub float %144, %i.vm                 ; 2 uses
  %i.agy = call noundef float @sinf(float noundef %i.agx) #26
  %i.agz = call float @llvm.fmuladd.f32(float %i.kc, float %i.agy, float %i.aet) ; 2 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store float %i.agz, ptr %i.aha, align 4, !tbaa !88
  %i.ahb = call noundef float @cosf(float noundef %i.agx) #26
  %i.ahc = fneg float %i.kc
  %i.ahd = call float @llvm.fmuladd.f32(float %i.ahc, float %i.ahb, float %i.aex) ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store float %i.ahd, ptr %i.ahe, align 4, !tbaa !88
  %i.ahf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 18 uses
  %i.ahg = load ptr, ptr %i.ahf, align 8, !tbaa !70 ; 15 uses
  %i.ahh = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !15
  %i.ahj = sext i32 %i.ahi to i64
  %i.ahk = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.ahj
  %i.ahl = load float, ptr %i.ahk, align 4, !tbaa !87 ; 3 uses
  %i.ahm = fadd float %i.ahl, 0.000000e+00
  %i.ahn = call float @llvm.fmuladd.f32(float %i.ahl, float 0.000000e+00, float 0.000000e+00)
  %i.aho = insertelement <4 x float> poison, float %i.aec, i64 0
  %i.ahp = insertelement <4 x float> %i.aho, float %i.aef, i64 1
  %i.ahq = shufflevector <4 x float> %i.ahp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ahr = fmul <4 x float> %i.ahq, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ahs = insertelement <4 x float> poison, float %i.ahl, i64 0
  %i.aht = shufflevector <4 x float> %i.ahs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ahr, <4 x float> %i.aht, <4 x float> zeroinitializer)
  %i.ahv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ahw = load i32, ptr %i.ahv, align 4, !tbaa !15
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.ahx
  %i.ahz = load float, ptr %i.ahy, align 4, !tbaa !87 ; 3 uses
  %i.aia = fadd float %i.ahz, %i.ahm
  %i.aib = call float @llvm.fmuladd.f32(float %i.ahz, float 0.000000e+00, float %i.ahn)
  %i.aic = insertelement <4 x float> poison, float %131, i64 0
  %i.aid = insertelement <4 x float> %i.aic, float %134, i64 1
  %i.aie = shufflevector <4 x float> %i.aid, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aif = fmul <4 x float> %i.aie, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.aig = insertelement <4 x float> poison, float %i.ahz, i64 0
  %i.aih = shufflevector <4 x float> %i.aig, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aii = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aif, <4 x float> %i.aih, <4 x float> %i.ahu)
  %i.aij = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !15
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.ail
  %i.ain = load float, ptr %i.aim, align 4, !tbaa !87 ; 3 uses
  %i.aio = fadd float %i.ain, %i.aia
  %i.aip = call float @llvm.fmuladd.f32(float %i.ain, float 0.000000e+00, float %i.aib)
  %i.aiq = insertelement <4 x float> poison, float %i.afc, i64 0
  %i.air = insertelement <4 x float> %i.aiq, float %i.aff, i64 1
  %i.ais = shufflevector <4 x float> %i.air, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ait = fmul <4 x float> %i.ais, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.aiu = insertelement <4 x float> poison, float %i.ain, i64 0
  %i.aiv = shufflevector <4 x float> %i.aiu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ait, <4 x float> %i.aiv, <4 x float> %i.aii)
  %i.aix = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !15
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.aiz
  %i.ajb = load float, ptr %i.aja, align 4, !tbaa !87 ; 3 uses
  %i.ajc = call float @llvm.fmuladd.f32(float %i.ajb, float 5.000000e-01, float %i.aio)
  %i.ajd = call float @llvm.fmuladd.f32(float %i.ajb, float 5.000000e-01, float %i.aip)
  %i.aje = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.ado, i64 1
  %i.ajf = fmul <4 x float> %i.aje, <float 5.000000e-01, float 5.000000e-01, float poison, float poison>
  %i.ajg = shufflevector <4 x float> %i.ajf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ajh = insertelement <4 x float> poison, float %i.ajb, i64 0
  %i.aji = shufflevector <4 x float> %i.ajh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ajg, <4 x float> %i.aji, <4 x float> %i.aiw)
  %i.ajk = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !15
  %i.ajm = sext i32 %i.ajl to i64
  %i.ajn = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.ajm
  %i.ajo = load float, ptr %i.ajn, align 4, !tbaa !87 ; 3 uses
  %i.ajp = fadd float %i.ajo, %i.ajc
  %i.ajq = call float @llvm.fmuladd.f32(float %i.ajo, float 0.000000e+00, float %i.ajd)
  %i.ajr = insertelement <4 x float> poison, float %i.adv, i64 0
  %i.ajs = insertelement <4 x float> %i.ajr, float %i.ady, i64 1
  %i.ajt = shufflevector <4 x float> %i.ajs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aju = fmul <4 x float> %i.ajt, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.ajv = insertelement <4 x float> poison, float %i.ajo, i64 0
  %i.ajw = shufflevector <4 x float> %i.ajv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aju, <4 x float> %i.ajw, <4 x float> %i.ajj)
  %i.ajy = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !15
  %i.aka = sext i32 %i.ajz to i64
  %i.akb = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.aka
  %i.akc = load float, ptr %i.akb, align 4, !tbaa !87 ; 3 uses
  %i.akd = fadd float %i.akc, %i.ajp
  %i.ake = call float @llvm.fmuladd.f32(float %i.akc, float 0.000000e+00, float %i.ajq)
  %i.akf = insertelement <4 x float> poison, float %i.afo, i64 0
  %i.akg = insertelement <4 x float> %i.akf, float %i.afr, i64 1
  %i.akh = shufflevector <4 x float> %i.akg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aki = fmul <4 x float> %i.akh, <float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.akj = insertelement <4 x float> poison, float %i.akc, i64 0
  %i.akk = shufflevector <4 x float> %i.akj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aki, <4 x float> %i.akk, <4 x float> %i.ajx)
  %i.akm = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !15
  %i.ako = sext i32 %i.akn to i64
  %i.akp = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.ako
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !87 ; 3 uses
  %i.akr = call float @llvm.fmuladd.f32(float %i.akq, float 5.000000e-01, float %i.akd)
  %i.aks = call float @llvm.fmuladd.f32(float %i.akq, float 5.000000e-01, float %i.ake)
  %i.akt = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, float %i.adr, i64 1
  %i.aku = fmul <4 x float> %i.akt, <float 5.000000e-01, float 5.000000e-01, float poison, float poison>
  %i.akv = shufflevector <4 x float> %i.aku, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.akw = insertelement <4 x float> poison, float %i.akq, i64 0
  %i.akx = shufflevector <4 x float> %i.akw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aky = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.akv, <4 x float> %i.akx, <4 x float> %i.akl)
  %i.akz = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !15
  %i.alb = sext i32 %i.ala to i64
  %i.alc = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.alb
  %i.ald = load float, ptr %i.alc, align 4, !tbaa !87 ; 3 uses
  %i.ale = call float @llvm.fmuladd.f32(float %i.ald, float 0.000000e+00, float %i.akr)
  %i.alf = fadd float %i.ald, %i.aks
  %i.alg = insertelement <4 x float> poison, float %136, i64 0
  %i.alh = insertelement <4 x float> %i.alg, float %i.ael, i64 1
  %i.ali = shufflevector <4 x float> %i.alh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.alj = fmul <4 x float> %i.ali, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.alk = insertelement <4 x float> poison, float %i.ald, i64 0
  %i.all = shufflevector <4 x float> %i.alk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.alm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alj, <4 x float> %i.all, <4 x float> %i.aky)
  %i.aln = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.alo = load i32, ptr %i.aln, align 4, !tbaa !15
  %i.alp = sext i32 %i.alo to i64
  %i.alq = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.alp
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !87 ; 3 uses
  %i.als = call float @llvm.fmuladd.f32(float %i.alr, float 0.000000e+00, float %i.ale)
  %i.alt = fadd float %i.alr, %i.alf
  %i.alu = insertelement <4 x float> poison, float %i.afz, i64 0
  %i.alv = insertelement <4 x float> %i.alu, float %i.agc, i64 1
  %i.alw = shufflevector <4 x float> %i.alv, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.alx = fmul <4 x float> %i.alw, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.aly = insertelement <4 x float> poison, float %i.alr, i64 0
  %i.alz = shufflevector <4 x float> %i.aly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ama = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.alx, <4 x float> %i.alz, <4 x float> %i.alm)
  %i.amb = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !15
  %i.amd = sext i32 %i.amc to i64
  %i.ame = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.amd
  %i.amf = load float, ptr %i.ame, align 4, !tbaa !87 ; 3 uses
  %i.amg = call float @llvm.fmuladd.f32(float %i.amf, float 0.000000e+00, float %i.als)
  %i.amh = fadd float %i.amf, %i.alt
  %i.ami = insertelement <4 x float> poison, float %139, i64 0
  %i.amj = insertelement <4 x float> %i.ami, float %142, i64 1
  %i.amk = shufflevector <4 x float> %i.amj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aml = fmul <4 x float> %i.amk, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.amm = insertelement <4 x float> poison, float %i.amf, i64 0
  %i.amn = shufflevector <4 x float> %i.amm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aml, <4 x float> %i.amn, <4 x float> %i.ama)
  %i.amp = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !15
  %i.amr = sext i32 %i.amq to i64
  %i.ams = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.amr
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !87 ; 3 uses
  %i.amu = call float @llvm.fmuladd.f32(float %i.amt, float 0.000000e+00, float %i.amg)
  %i.amv = fadd float %i.amt, %i.amh
  %i.amw = insertelement <4 x float> poison, float %i.agk, i64 0
  %i.amx = insertelement <4 x float> %i.amw, float %i.ago, i64 1
  %i.amy = shufflevector <4 x float> %i.amx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.amz = fmul <4 x float> %i.amy, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ana = insertelement <4 x float> poison, float %i.amt, i64 0
  %i.anb = shufflevector <4 x float> %i.ana, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anc = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.amz, <4 x float> %i.anb, <4 x float> %i.amo)
  %i.and = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !15
  %i.anf = sext i32 %i.ane to i64
  %i.ang = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.anf
  %i.anh = load float, ptr %i.ang, align 4, !tbaa !87 ; 3 uses
  %i.ani = call float @llvm.fmuladd.f32(float %i.anh, float 0.000000e+00, float %i.amu)
  %i.anj = fadd float %i.anh, %i.amv
  %i.ank = insertelement <4 x float> poison, float %i.aep, i64 0
  %i.anl = insertelement <4 x float> %i.ank, float %i.aer, i64 1
  %i.anm = shufflevector <4 x float> %i.anl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ann = fmul <4 x float> %i.anm, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ano = insertelement <4 x float> poison, float %i.anh, i64 0
  %i.anp = shufflevector <4 x float> %i.ano, <4 x float> poison, <4 x i32> zeroinitializer
  %i.anq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ann, <4 x float> %i.anp, <4 x float> %i.anc)
  %i.anr = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ans = load i32, ptr %i.anr, align 4, !tbaa !15
  %i.ant = sext i32 %i.ans to i64
  %i.anu = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.ant
  %i.anv = load float, ptr %i.anu, align 4, !tbaa !87 ; 3 uses
  %i.anw = call float @llvm.fmuladd.f32(float %i.anv, float 0.000000e+00, float %i.ani)
  %i.anx = fadd float %i.anv, %i.anj
  %i.any = insertelement <4 x float> poison, float %i.ags, i64 0
  %i.anz = insertelement <4 x float> %i.any, float %i.agv, i64 1
  %i.aoa = shufflevector <4 x float> %i.anz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aob = fmul <4 x float> %i.aoa, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.aoc = insertelement <4 x float> poison, float %i.anv, i64 0
  %i.aod = shufflevector <4 x float> %i.aoc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aoe = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aob, <4 x float> %i.aod, <4 x float> %i.anq)
  %i.aof = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !15
  %i.aoh = sext i32 %i.aog to i64
  %i.aoi = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.aoh
  %i.aoj = load float, ptr %i.aoi, align 4, !tbaa !87 ; 3 uses
  %i.aok = call float @llvm.fmuladd.f32(float %i.aoj, float 0.000000e+00, float %i.anw)
  %i.aol = fadd float %i.aoj, %i.anx
  %i.aom = insertelement <4 x float> poison, float %i.aet, i64 0
  %i.aon = insertelement <4 x float> %i.aom, float %i.aex, i64 1
  %i.aoo = shufflevector <4 x float> %i.aon, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aop = fmul <4 x float> %i.aoo, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.aoq = insertelement <4 x float> poison, float %i.aoj, i64 0
  %i.aor = shufflevector <4 x float> %i.aoq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aos = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aop, <4 x float> %i.aor, <4 x float> %i.aoe)
  %i.aot = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !15
  %i.aov = sext i32 %i.aou to i64
  %i.aow = getelementptr inbounds [36 x i8], ptr %i.ahg, i64 %i.aov
  %i.aox = load float, ptr %i.aow, align 4, !tbaa !87 ; 3 uses
  %i.aoy = call float @llvm.fmuladd.f32(float %i.aox, float 0.000000e+00, float %i.aok) ; 4 uses
  %i.aoz = fadd float %i.aox, %i.aol              ; 4 uses
  %i.apa = insertelement <4 x float> poison, float %i.agz, i64 0
  %i.apb = insertelement <4 x float> %i.apa, float %i.ahd, i64 1
  %i.apc = shufflevector <4 x float> %i.apb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.apd = fmul <4 x float> %i.apc, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.ape = insertelement <4 x float> poison, float %i.aox, i64 0
  %i.apf = shufflevector <4 x float> %i.ape, <4 x float> poison, <4 x i32> zeroinitializer
  %i.apg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.apd, <4 x float> %i.apf, <4 x float> %i.aos) ; 4 uses
  %i.aph = extractelement <4 x float> %i.apg, i64 0
  %i.api = fdiv float %i.aph, %i.aoy              ; 6 uses
  %i.apj = extractelement <4 x float> %i.apg, i64 2
  %i.apk = fdiv float %i.apj, %i.aoy              ; 6 uses
  %i.apl = extractelement <4 x float> %i.apg, i64 1
  %i.apm = fdiv float %i.apl, %i.aoz              ; 4 uses
  %i.apn = extractelement <4 x float> %i.apg, i64 3
  %i.apo = fdiv float %i.apn, %i.aoz              ; 4 uses
  %i.app = call fastcc noundef i32 @_ZL13vsite_nm2typePKcP22PreprocessingAtomTypes(ptr noundef nonnull @.str.103, ptr noundef %0)
  %i.apq = load i32, ptr %11, align 4, !tbaa !15  ; 5 uses
  %i.apr = load i32, ptr %7, align 4, !tbaa !15   ; 2 uses
  %invariant.op = add i32 %i.apq, %i.apr          ; 3 uses
  %.reass.1 = add i32 %invariant.op, 1            ; 2 uses
  %i.aps = load ptr, ptr @debug, align 8, !tbaa !14
  %.not477 = icmp eq ptr %i.aps, null
  br i1 %.not477, label %bb.bq, label %bb.bp

bb.am:                                            ; preds = %._crit_edge.i.i
  %i.apt = landingpad { ptr, i32 }
          cleanup
  %i.apu = load ptr, ptr %18, align 8, !tbaa !31  ; 2 uses
  %i.apv = icmp eq ptr %i.apu, %i.v
  br i1 %i.apv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1187: ; preds = %bb.am
  %i.apw = load i64, ptr %i.v, align 8, !tbaa !25
  %i.apx = add i64 %i.apw, 1
  call void @_ZdlPvm(ptr noundef %i.apu, i64 noundef %i.apx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1189: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1187
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26
  %i.apy = load ptr, ptr %17, align 8, !tbaa !31  ; 2 uses
  %i.apz = icmp eq ptr %i.apy, %i.s
  br i1 %i.apz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1192, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1190

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1190: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1189
  %i.aqa = load i64, ptr %i.s, align 8, !tbaa !25
  %i.aqb = add i64 %i.aqa, 1
  call void @_ZdlPvm(ptr noundef %i.apy, i64 noundef %i.aqb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1192

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1192: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1189, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1190
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26
  %i.aqc = load ptr, ptr %16, align 8, !tbaa !31  ; 2 uses
  %i.aqd = icmp eq ptr %i.aqc, %i.p
  br i1 %i.aqd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1193

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1192
  %i.aqe = load i64, ptr %i.p, align 8, !tbaa !25
  %i.aqf = add i64 %i.aqe, 1
  call void @_ZdlPvm(ptr noundef %i.aqc, i64 noundef %i.aqf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1192, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1193
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #26
  br label %bb.bz

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit500
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  %i.aqh = load ptr, ptr %21, align 8, !tbaa !31  ; 2 uses
  %i.aqi = icmp eq ptr %i.aqh, %i.ar
  br i1 %i.aqi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1196: ; preds = %bb.an
  %i.aqj = load i64, ptr %i.ar, align 8, !tbaa !25
  %i.aqk = add i64 %i.aqj, 1
  call void @_ZdlPvm(ptr noundef %i.aqh, i64 noundef %i.aqk) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1198: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1196
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #26
  %i.aql = load ptr, ptr %20, align 8, !tbaa !31  ; 2 uses
  %i.aqm = icmp eq ptr %i.aql, %i.ao
  br i1 %i.aqm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1199

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1198
  %i.aqn = load i64, ptr %i.ao, align 8, !tbaa !25
  %i.aqo = add i64 %i.aqn, 1
  call void @_ZdlPvm(ptr noundef %i.aql, i64 noundef %i.aqo) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1199
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #26
  %i.aqp = load ptr, ptr %19, align 8, !tbaa !31  ; 2 uses
  %i.aqq = icmp eq ptr %i.aqp, %i.al
  br i1 %i.aqq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1202

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201
  %i.aqr = load i64, ptr %i.al, align 8, !tbaa !25
  %i.aqs = add i64 %i.aqr, 1
  call void @_ZdlPvm(ptr noundef %i.aqp, i64 noundef %i.aqs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1204

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1204: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1201, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1202
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #26
  br label %bb.bz

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit521
  %i.aqt = landingpad { ptr, i32 }
          cleanup
  %i.aqu = load ptr, ptr %24, align 8, !tbaa !31  ; 2 uses
  %i.aqv = icmp eq ptr %i.aqu, %i.bn
  br i1 %i.aqv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1207, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1205: ; preds = %bb.ao
  %i.aqw = load i64, ptr %i.bn, align 8, !tbaa !25
  %i.aqx = add i64 %i.aqw, 1
  call void @_ZdlPvm(ptr noundef %i.aqu, i64 noundef %i.aqx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1207

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1207: ; preds = %bb.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1205
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #26
  %i.aqy = load ptr, ptr %23, align 8, !tbaa !31  ; 2 uses
  %i.aqz = icmp eq ptr %i.aqy, %i.bk
  br i1 %i.aqz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1208: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1207
  %i.ara = load i64, ptr %i.bk, align 8, !tbaa !25
  %i.arb = add i64 %i.ara, 1
  call void @_ZdlPvm(ptr noundef %i.aqy, i64 noundef %i.arb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1207, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1208
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #26
  %i.arc = load ptr, ptr %22, align 8, !tbaa !31  ; 2 uses
  %i.ard = icmp eq ptr %i.arc, %i.bh
  br i1 %i.ard, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1211

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1211: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210
  %i.are = load i64, ptr %i.bh, align 8, !tbaa !25
  %i.arf = add i64 %i.are, 1
  call void @_ZdlPvm(ptr noundef %i.arc, i64 noundef %i.arf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1213: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1211
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #26
  br label %bb.bz

bb.ap:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit542
  %i.arg = landingpad { ptr, i32 }
          cleanup
  %i.arh = load ptr, ptr %27, align 8, !tbaa !31  ; 2 uses
  %i.ari = icmp eq ptr %i.arh, %i.cj
  br i1 %i.ari, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1214: ; preds = %bb.ap
  %i.arj = load i64, ptr %i.cj, align 8, !tbaa !25
  %i.ark = add i64 %i.arj, 1
  call void @_ZdlPvm(ptr noundef %i.arh, i64 noundef %i.ark) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1216

end_hunk_0
begin_hunk_1_@_ZL14gen_vsites_trpP22PreprocessingAtomTypesPSt6vectorIN3gmx11BasicVectorIfEESaIS4_EEPP6t_atomPPPPcPPiPS1_I16VsiteTypeAndSignSaISH_EEP8t_symtabSF_NS2_8ArrayRefIKS4_EEP7t_atomsNSN_ISH_EERNS2_16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLSU_95EEEiSF_iNSN_IK19VirtualSiteTopologyEE:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1477

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1477: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1474, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1475
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #26
  br label %bb.bz

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1158
  %i.bft = landingpad { ptr, i32 }
          cleanup
  %i.bfu = load ptr, ptr %116, align 8, !tbaa !31 ; 2 uses
  %i.bfv = icmp eq ptr %i.bfu, %i.acq
  br i1 %i.bfv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1480, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1478

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1478: ; preds = %bb.bo
  %i.bfw = load i64, ptr %i.acq, align 8, !tbaa !25
  %i.bfx = add i64 %i.bfw, 1
  call void @_ZdlPvm(ptr noundef %i.bfu, i64 noundef %i.bfx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1480

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1480: ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1478
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #26
  %i.bfy = load ptr, ptr %115, align 8, !tbaa !31 ; 2 uses
  %i.bfz = icmp eq ptr %i.bfy, %i.acn
  br i1 %i.bfz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1483, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1481

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1481: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1480
  %i.bga = load i64, ptr %i.acn, align 8, !tbaa !25
  %i.bgb = add i64 %i.bga, 1
  call void @_ZdlPvm(ptr noundef %i.bfy, i64 noundef %i.bgb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1483

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1483: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1480, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1481
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #26
  %i.bgc = load ptr, ptr %114, align 8, !tbaa !31 ; 2 uses
  %i.bgd = icmp eq ptr %i.bgc, %i.ack
  br i1 %i.bgd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1484

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1484: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1483
  %i.bge = load i64, ptr %i.ack, align 8, !tbaa !25
  %i.bgf = add i64 %i.bge, 1
  call void @_ZdlPvm(ptr noundef %i.bgc, i64 noundef %i.bgf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1483, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1484
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #26
  %i.bgg = load ptr, ptr %113, align 8, !tbaa !31 ; 2 uses
  %i.bgh = icmp eq ptr %i.bgg, %i.ach
  br i1 %i.bgh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1487

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1487: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486
  %i.bgi = load i64, ptr %i.ach, align 8, !tbaa !25
  %i.bgj = add i64 %i.bgi, 1
  call void @_ZdlPvm(ptr noundef %i.bgg, i64 noundef %i.bgj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1489: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1486, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1487
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #26
  br label %bb.bz

bb.bp:                                            ; preds = %.peel.next
  %i.bgk = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.bgl = load ptr, ptr %4, align 8, !tbaa !69
  %i.bgm = sext i32 %i.apq to i64
  %i.bgn = getelementptr inbounds [4 x i8], ptr %i.bgl, i64 %i.bgm
  %i.bgo = load i32, ptr %i.bgn, align 4, !tbaa !15
  %i.bgp = add nsw i32 %i.bgo, 1
  %i.bgq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bgk, ptr noundef nonnull @.str.58, i32 noundef 2, i32 noundef %i.bgp) #31 ; 0 uses
  %.pre = load i32, ptr %7, align 4, !tbaa !15
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.peel.next
  %i.bgr = phi i32 [ %.pre, %bb.bp ], [ %i.apr, %.peel.next ]
  %i.bgs = add nsw i32 %i.bgr, 2                  ; 2 uses
  store i32 %i.bgs, ptr %7, align 4, !tbaa !15
  %i.bgt = load i32, ptr %8, align 8, !tbaa !24   ; 2 uses
  %i.bgu = icmp slt i32 %i.apq, %i.bgt
  br i1 %i.bgu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bq
  %i.bgv = load ptr, ptr %4, align 8, !tbaa !69
  %i.bgw = sext i32 %i.apq to i64
  br label %bb.br

bb.br:                                            ; preds = %.lr.ph, %bb.br
  %indvars.iv221 = phi i64 [ %i.bgw, %.lr.ph ], [ %indvars.iv.next222, %bb.br ] ; 3 uses
  %i.bgx = load i32, ptr %7, align 4, !tbaa !15
  %i.bgy = trunc nsw i64 %indvars.iv221 to i32
  %i.bgz = add nsw i32 %i.bgx, %i.bgy
  %i.bha = getelementptr inbounds [4 x i8], ptr %i.bgv, i64 %indvars.iv221
  store i32 %i.bgz, ptr %i.bha, align 4, !tbaa !15
  %indvars.iv.next222 = add nsw i64 %indvars.iv221, 1 ; 2 uses
  %i.bhb = load i32, ptr %8, align 8, !tbaa !24   ; 2 uses
  %i.bhc = sext i32 %i.bhb to i64
  %i.bhd = icmp slt i64 %indvars.iv.next222, %i.bhc
  br i1 %i.bhd, label %bb.br, label %._crit_edge.loopexit, !llvm.loop !219

._crit_edge.loopexit:                             ; preds = %bb.br
  %.pre287 = load i32, ptr %7, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.bq
  %i.bhe = phi i32 [ %i.bgs, %bb.bq ], [ %.pre287, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.bgt, %bb.bq ], [ %i.bhb, %._crit_edge.loopexit ]
  %i.bhf = add nsw i32 %i.bhe, %.lcssa
  %i.bhg = sext i32 %i.bhf to i64
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.bhg)
  %i.bhh = load i32, ptr %8, align 8, !tbaa !24
  %i.bhi = load i32, ptr %7, align 4, !tbaa !15
  %i.bhj = add nsw i32 %i.bhi, %i.bhh
  %i.bhk = sext i32 %i.bhj to i64
  %i.bhl = load ptr, ptr %2, align 8, !tbaa !61
  %i.bhm = call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.41, i32 noundef 1162, ptr noundef %i.bhl, i64 noundef range(i64 -2147483648, 2147483648) %i.bhk, i64 noundef 36)
  store ptr %i.bhm, ptr %2, align 8, !tbaa !61
  %i.bhn = load i32, ptr %8, align 8, !tbaa !24
  %i.bho = load i32, ptr %7, align 4, !tbaa !15
  %i.bhp = add nsw i32 %i.bho, %i.bhn
  %i.bhq = sext i32 %i.bhp to i64
  %i.bhr = load ptr, ptr %3, align 8, !tbaa !62
  %i.bhs = call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.41, i32 noundef 1163, ptr noundef %i.bhr, i64 noundef range(i64 -2147483648, 2147483648) %i.bhq, i64 noundef 8) ; 4 uses
  store ptr %i.bhs, ptr %3, align 8, !tbaa !62
  %i.bht = load i32, ptr %8, align 8, !tbaa !24
  %i.bhu = load i32, ptr %7, align 4, !tbaa !15
  %i.bhv = add i32 %i.bhu, %i.bht                 ; 4 uses
  %i.bhw = sext i32 %i.bhv to i64                 ; 4 uses
  %i.bhx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bhy = load ptr, ptr %i.bhx, align 8, !tbaa !67 ; 2 uses
  %i.bhz = load ptr, ptr %5, align 8, !tbaa !65   ; 2 uses
  %i.bia = ptrtoint ptr %i.bhy to i64
  %i.bib = ptrtoint ptr %i.bhz to i64
  %i.bic = sub i64 %i.bia, %i.bib
  %i.bid = sdiv exact i64 %i.bic, 12              ; 3 uses
  %i.bie = icmp ult i64 %i.bid, %i.bhw
  br i1 %i.bie, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %._crit_edge
  %i.bif = sub nuw nsw i64 %i.bhw, %i.bid
  call void @_ZNSt6vectorI16VsiteTypeAndSignSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.bif)
  %.pre288 = load ptr, ptr %3, align 8, !tbaa !62
  %.pre289 = load i32, ptr %8, align 8, !tbaa !24
  %.pre290 = load i32, ptr %7, align 4, !tbaa !15
  %.pre305 = add i32 %.pre289, %.pre290
  br label %.preheader

bb.bt:                                            ; preds = %._crit_edge
  %i.big = icmp ugt i64 %i.bid, %i.bhw
  br i1 %i.big, label %bb.bu, label %.preheader

bb.bu:                                            ; preds = %bb.bt
  %i.bih = getelementptr inbounds nuw [12 x i8], ptr %i.bhz, i64 %i.bhw ; 2 uses
  %.not.i.i = icmp eq ptr %i.bhy, %i.bih
  br i1 %.not.i.i, label %.preheader, label %_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.bu
  store ptr %i.bih, ptr %i.bhx, align 8, !tbaa !67
  br label %.preheader

.preheader:                                       ; preds = %_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i, %bb.bu, %bb.bt, %bb.bs
  %invariant.op203.pre-phi = phi i32 [ %.pre305, %bb.bs ], [ %i.bhv, %bb.bt ], [ %i.bhv, %bb.bu ], [ %i.bhv, %_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.bii = phi ptr [ %.pre288, %bb.bs ], [ %i.bhs, %bb.bt ], [ %i.bhs, %bb.bu ], [ %i.bhs, %_ZSt8_DestroyIP16VsiteTypeAndSignS0_EvT_S2_RSaIT0_E.exit.i.i ] ; 2 uses
  %.reass204 = add i32 %invariant.op203.pre-phi, -1
  %i.bij = sext i32 %.reass204 to i64
  %i.bik = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bij
  store ptr null, ptr %i.bik, align 8, !tbaa !81
  %.reass204.1 = add i32 %invariant.op203.pre-phi, -2
  %i.bil = sext i32 %.reass204.1 to i64
  %i.bim = getelementptr inbounds [8 x i8], ptr %i.bii, i64 %i.bil
  store ptr null, ptr %i.bim, align 8, !tbaa !81
  %i.bin = load i32, ptr %11, align 4, !tbaa !15
  %i.bio = sext i32 %i.bin to i64
  %i.bip = inttoptr i64 %.0.val to ptr            ; 3 uses
  %i.biq = getelementptr inbounds [12 x i8], ptr %i.bip, i64 %i.bio ; 3 uses
  %i.bir = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.bis = load i32, ptr %i.bir, align 4, !tbaa !15
  %i.bit = sext i32 %i.bis to i64
  %i.biu = getelementptr inbounds [12 x i8], ptr %i.bip, i64 %i.bit ; 4 uses
  %i.biv = load float, ptr %i.biq, align 4, !tbaa !88
  %i.biw = load float, ptr %i.biu, align 4, !tbaa !88 ; 3 uses
  %i.bix = fsub float %i.biv, %i.biw              ; 2 uses
  %i.biy = getelementptr inbounds nuw i8, ptr %i.biq, i64 4
  %i.biz = load float, ptr %i.biy, align 4, !tbaa !88
  %i.bja = getelementptr inbounds nuw i8, ptr %i.biu, i64 4 ; 2 uses
  %i.bjb = load float, ptr %i.bja, align 4, !tbaa !88 ; 3 uses
  %i.bjc = fsub float %i.biz, %i.bjb              ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.biq, i64 8
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !88
  %i.bjf = getelementptr inbounds nuw i8, ptr %i.biu, i64 8 ; 2 uses
  %i.bjg = load float, ptr %i.bjf, align 4, !tbaa !88 ; 3 uses
  %i.bjh = fsub float %i.bje, %i.bjg              ; 2 uses
  %i.bji = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bjj = load i32, ptr %i.bji, align 4, !tbaa !15
  %i.bjk = sext i32 %i.bjj to i64
  %i.bjl = getelementptr inbounds [12 x i8], ptr %i.bip, i64 %i.bjk ; 3 uses
  %i.bjm = load float, ptr %i.bjl, align 4, !tbaa !88
  %i.bjn = fsub float %i.bjm, %i.biw              ; 2 uses
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.bjl, i64 4
  %i.bjp = load float, ptr %i.bjo, align 4, !tbaa !88
  %i.bjq = fsub float %i.bjp, %i.bjb              ; 2 uses
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjl, i64 8
  %i.bjs = load float, ptr %i.bjr, align 4, !tbaa !88
  %i.bjt = fsub float %i.bjs, %i.bjg              ; 2 uses
  %i.bju = fsub float %123, %i.aec
  %i.bjv = fsub float %125, %i.aef                ; 3 uses
  %i.bjw = fsub float 0.000000e+00, %i.aec        ; 3 uses
  %i.bjx = fsub float %i.ado, %i.aef              ; 5 uses
  %i.bjy = fsub float %i.api, %i.aec
  %i.bjz = fsub float %i.apk, %i.aef              ; 2 uses
  %i.bka = fneg float %i.bjz
  %i.bkb = fmul float %i.bjw, %i.bka
  %i.bkc = call float @llvm.fmuladd.f32(float %i.bjy, float %i.bjx, float %i.bkb)
  %i.bkd = fneg float %i.bjv
  %i.bke = fmul float %i.bjw, %i.bkd
  %i.bkf = call float @llvm.fmuladd.f32(float %i.bju, float %i.bjx, float %i.bke) ; 2 uses
  %i.bkg = fdiv float %i.bkc, %i.bkf              ; 4 uses
  %i.bkh = fneg float %i.bkg
  %i.bki = call float @llvm.fmuladd.f32(float %i.bkh, float %i.bjv, float %i.bjz)
  %i.bkj = fdiv float %i.bki, %i.bjx              ; 3 uses
  %i.bkk = fmul float %i.bix, %i.bkg
  %i.bkl = fmul float %i.bjc, %i.bkg
  %i.bkm = fmul float %i.bjh, %i.bkg
  %i.bkn = fmul float %i.bjn, %i.bkj
  %i.bko = fmul float %i.bjq, %i.bkj
  %i.bkp = fmul float %i.bjt, %i.bkj
  %i.bkq = fadd float %i.bkk, %i.bkn
  %i.bkr = fadd float %i.bkl, %i.bko
  %i.bks = fadd float %i.bkm, %i.bkp
  %i.bkt = sext i32 %invariant.op to i64          ; 4 uses
  %i.bku = load ptr, ptr %1, align 8, !tbaa !58   ; 2 uses
  %i.bkv = getelementptr inbounds nuw [12 x i8], ptr %i.bku, i64 %i.bkt ; 3 uses
  %i.bkw = fadd float %i.biw, %i.bkq
  %i.bkx = fadd float %i.bjb, %i.bkr
  %i.bky = fadd float %i.bjg, %i.bks
  store float %i.bkw, ptr %i.bkv, align 4, !tbaa !88
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.bkv, i64 4
  store float %i.bkx, ptr %i.bkz, align 4, !tbaa !88
  %i.bla = getelementptr inbounds nuw i8, ptr %i.bkv, i64 8
  store float %i.bky, ptr %i.bla, align 4, !tbaa !88
  %i.blb = fsub float %i.apm, %i.aec
  %i.blc = fsub float %i.apo, %i.aef              ; 2 uses
  %i.bld = fneg float %i.blc
  %i.ble = fmul float %i.bjw, %i.bld
  %i.blf = call float @llvm.fmuladd.f32(float %i.blb, float %i.bjx, float %i.ble)
  %i.blg = fdiv float %i.blf, %i.bkf              ; 4 uses
  %i.blh = fneg float %i.blg
  %i.bli = call float @llvm.fmuladd.f32(float %i.blh, float %i.bjv, float %i.blc)
  %i.blj = fdiv float %i.bli, %i.bjx              ; 3 uses
  %i.blk = fmul float %i.bix, %i.blg
  %i.bll = fmul float %i.bjc, %i.blg
  %i.blm = fmul float %i.bjh, %i.blg
  %i.bln = fmul float %i.bjn, %i.blj
  %i.blo = fmul float %i.bjq, %i.blj
  %i.blp = fmul float %i.bjt, %i.blj
  %i.blq = fadd float %i.blk, %i.bln
  %i.blr = fadd float %i.bll, %i.blo
  %i.bls = fadd float %i.blm, %i.blp
  %i.blt = sext i32 %.reass.1 to i64              ; 4 uses
  %i.blu = getelementptr inbounds nuw [12 x i8], ptr %i.bku, i64 %i.blt ; 3 uses
  %i.blv = load float, ptr %i.biu, align 4, !tbaa !88
  %i.blw = fadd float %i.blv, %i.blq
  %i.blx = load float, ptr %i.bja, align 4, !tbaa !88
  %i.bly = fadd float %i.blx, %i.blr
  %i.blz = load float, ptr %i.bjf, align 4, !tbaa !88
  %i.bma = fadd float %i.blz, %i.bls
  store float %i.blw, ptr %i.blu, align 4, !tbaa !88
  %i.bmb = getelementptr inbounds nuw i8, ptr %i.blu, i64 4
  store float %i.bly, ptr %i.bmb, align 4, !tbaa !88
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.blu, i64 8
  store float %i.bma, ptr %i.bmc, align 4, !tbaa !88
  %i.bmd = trunc i32 %i.app to i16                ; 4 uses
  %i.bme = sext i32 %i.apq to i64                 ; 2 uses
  %i.bmf = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef 1) #26 ; 0 uses
  %i.bmg = call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef %6, ptr noundef nonnull %i.c)
  %i.bmh = load ptr, ptr %3, align 8, !tbaa !62
  %i.bmi = getelementptr inbounds [8 x i8], ptr %i.bmh, i64 %i.bkt
  store ptr %i.bmg, ptr %i.bmi, align 8, !tbaa !81
  %i.bmj = load ptr, ptr %2, align 8, !tbaa !61
  %i.bmk = getelementptr inbounds [36 x i8], ptr %i.bmj, i64 %i.bkt ; 9 uses
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 8
  store float %i.aoy, ptr %i.bml, align 4, !tbaa !89
  store float %i.aoy, ptr %i.bmk, align 4, !tbaa !87
  %i.bmm = getelementptr inbounds nuw i8, ptr %i.bmk, i64 12
  store float 0.000000e+00, ptr %i.bmm, align 4, !tbaa !91
  %i.bmn = getelementptr inbounds nuw i8, ptr %i.bmk, i64 4
  store float 0.000000e+00, ptr %i.bmn, align 4, !tbaa !92
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bmk, i64 18
  store i16 %i.bmd, ptr %i.bmo, align 2, !tbaa !93
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmk, i64 16
  store i16 %i.bmd, ptr %i.bmp, align 4, !tbaa !94
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bmk, i64 20
  store i32 0, ptr %i.bmq, align 4, !tbaa !95
  %i.bmr = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bms = getelementptr inbounds [36 x i8], ptr %i.bmr, i64 %i.bme
  %i.bmt = getelementptr inbounds nuw i8, ptr %i.bms, i64 24
  %i.bmu = load i32, ptr %i.bmt, align 4, !tbaa !74
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.bmk, i64 24
  store i32 %i.bmu, ptr %i.bmv, align 4, !tbaa !74
  %i.bmw = getelementptr inbounds nuw i8, ptr %i.bmk, i64 32
  store i8 77, ptr %i.bmw, align 4, !tbaa !25
  %i.bmx = load ptr, ptr %2, align 8, !tbaa !61
  %i.bmy = getelementptr inbounds [36 x i8], ptr %i.bmx, i64 %i.bkt
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 33
  store i8 0, ptr %i.bmz, align 1, !tbaa !25
  %i.bna = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) @.str.106, i32 noundef 2) #26 ; 0 uses
  %i.bnb = call noundef ptr @_Z10put_symtabP8t_symtabPKc(ptr noundef %6, ptr noundef nonnull %i.c)
  %i.bnc = load ptr, ptr %3, align 8, !tbaa !62
  %i.bnd = getelementptr inbounds [8 x i8], ptr %i.bnc, i64 %i.blt
  store ptr %i.bnb, ptr %i.bnd, align 8, !tbaa !81
  %i.bne = load ptr, ptr %2, align 8, !tbaa !61
  %i.bnf = getelementptr inbounds [36 x i8], ptr %i.bne, i64 %i.blt ; 9 uses
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 8
  store float %i.aoz, ptr %i.bng, align 4, !tbaa !89
  store float %i.aoz, ptr %i.bnf, align 4, !tbaa !87
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bnf, i64 12
  store float 0.000000e+00, ptr %i.bnh, align 4, !tbaa !91
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnf, i64 4
  store float 0.000000e+00, ptr %i.bni, align 4, !tbaa !92
  %i.bnj = getelementptr inbounds nuw i8, ptr %i.bnf, i64 18
  store i16 %i.bmd, ptr %i.bnj, align 2, !tbaa !93
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnf, i64 16
  store i16 %i.bmd, ptr %i.bnk, align 4, !tbaa !94
  %i.bnl = getelementptr inbounds nuw i8, ptr %i.bnf, i64 20
  store i32 0, ptr %i.bnl, align 4, !tbaa !95
  %i.bnm = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bnn = getelementptr inbounds [36 x i8], ptr %i.bnm, i64 %i.bme
  %i.bno = getelementptr inbounds nuw i8, ptr %i.bnn, i64 24
  %i.bnp = load i32, ptr %i.bno, align 4, !tbaa !74
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnf, i64 24
  store i32 %i.bnp, ptr %i.bnq, align 4, !tbaa !74
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnf, i64 32
  store i8 77, ptr %i.bnr, align 4, !tbaa !25
  %i.bns = load ptr, ptr %2, align 8, !tbaa !61
  %i.bnt = getelementptr inbounds [36 x i8], ptr %i.bns, i64 %i.blt
  %i.bnu = getelementptr inbounds nuw i8, ptr %i.bnt, i64 33
  store i8 0, ptr %i.bnu, align 1, !tbaa !25
  %i.bnv = fsub float %i.api, %123
  %i.bnw = fsub float %i.apk, %125
  %i.bnx = call noundef float @hypotf(float noundef %i.bnv, float noundef %i.bnw) #26
  %i.bny = fsub float %i.api, %i.apm
  %i.bnz = fsub float %i.apk, %i.apo
  %i.boa = call noundef float @hypotf(float noundef %i.bny, float noundef %i.bnz) #26
  %i.bob = fsub float %i.apm, %123
  %i.boc = fsub float %i.apo, %125
  %i.bod = call noundef float @hypotf(float noundef %i.bob, float noundef %i.boc) #26
  %i.boe = getelementptr inbounds nuw i8, ptr %9, i64 14112 ; 3 uses
  %i.bof = load i32, ptr %11, align 4, !tbaa !15
  %i.bog = add nsw i32 %invariant.op, %12         ; 3 uses
  store float %i.bnx, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, align 16, !tbaa !88
  call void @_Z9add_paramP18InteractionsOfTypeiiN3gmx8ArrayRefIKfEEPKc(ptr noundef nonnull %i.boe, i32 noundef %i.bof, i32 noundef %i.bog, ptr nonnull @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, i64 48), ptr noundef null)
  %i.boh = load i32, ptr %11, align 4, !tbaa !15
  %i.boi = add nsw i32 %.reass.1, %12             ; 3 uses
  store float %i.bod, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, align 16, !tbaa !88
  call void @_Z9add_paramP18InteractionsOfTypeiiN3gmx8ArrayRefIKfEEPKc(ptr noundef nonnull %i.boe, i32 noundef %i.boh, i32 noundef %i.boi, ptr nonnull @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, i64 48), ptr noundef null)
  store float %i.boa, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, align 16, !tbaa !88
  call void @_Z9add_paramP18InteractionsOfTypeiiN3gmx8ArrayRefIKfEEPKc(ptr noundef nonnull %i.boe, i32 noundef %i.bog, i32 noundef %i.boi, ptr nonnull @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZL12my_add_paramP18InteractionsOfTypeiifE1c, i64 48), ptr noundef null)
  %i.boj = inttoptr i64 %.0.val1 to ptr           ; 16 uses
  %i.bok = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bol = load i32, ptr %i.bir, align 4, !tbaa !15
  %i.bom = sext i32 %i.bol to i64                 ; 2 uses
  %i.bon = getelementptr inbounds [36 x i8], ptr %i.bok, i64 %i.bom
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bon, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.boo = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bom
  store i64 4294967364, ptr %i.boo, align 4
  %i.bop = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.boq = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bor = load i32, ptr %i.boq, align 4, !tbaa !15
  %i.bos = sext i32 %i.bor to i64                 ; 2 uses
  %i.bot = getelementptr inbounds [36 x i8], ptr %i.bop, i64 %i.bos
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bot, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bou = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bos
  store i64 4294967364, ptr %i.bou, align 4
  %i.bov = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bow = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.box = load i32, ptr %i.bow, align 4, !tbaa !15
  %i.boy = sext i32 %i.box to i64                 ; 2 uses
  %i.boz = getelementptr inbounds [36 x i8], ptr %i.bov, i64 %i.boy
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.boz, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bpa = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.boy
  store i64 4294967364, ptr %i.bpa, align 4
  %i.bpb = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bpc = load i32, ptr %i.bji, align 4, !tbaa !15
  %i.bpd = sext i32 %i.bpc to i64                 ; 2 uses
  %i.bpe = getelementptr inbounds [36 x i8], ptr %i.bpb, i64 %i.bpd
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bpe, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bpf = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bpd
  store i64 4294967364, ptr %i.bpf, align 4
  %i.bpg = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bph = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.bpi = load i32, ptr %i.bph, align 4, !tbaa !15
  %i.bpj = sext i32 %i.bpi to i64                 ; 2 uses
  %i.bpk = getelementptr inbounds [36 x i8], ptr %i.bpg, i64 %i.bpj
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bpk, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bpl = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bpj
  store i64 4294967364, ptr %i.bpl, align 4
  %i.bpm = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bpn = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.bpo = load i32, ptr %i.bpn, align 4, !tbaa !15
  %i.bpp = sext i32 %i.bpo to i64                 ; 2 uses
  %i.bpq = getelementptr inbounds [36 x i8], ptr %i.bpm, i64 %i.bpp
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bpq, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bpr = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bpp
  store i64 4294967364, ptr %i.bpr, align 4
  %i.bps = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bpt = getelementptr inbounds nuw i8, ptr %11, i64 28
  %i.bpu = load i32, ptr %i.bpt, align 4, !tbaa !15
  %i.bpv = sext i32 %i.bpu to i64                 ; 2 uses
  %i.bpw = getelementptr inbounds [36 x i8], ptr %i.bps, i64 %i.bpv
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bpw, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bpx = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bpv
  store i64 4294967364, ptr %i.bpx, align 4
  %i.bpy = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bpz = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.bqa = load i32, ptr %i.bpz, align 4, !tbaa !15
  %i.bqb = sext i32 %i.bqa to i64                 ; 2 uses
  %i.bqc = getelementptr inbounds [36 x i8], ptr %i.bpy, i64 %i.bqb
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bqc, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bqd = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bqb
  store i64 4294967364, ptr %i.bqd, align 4
  %i.bqe = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bqf = getelementptr inbounds nuw i8, ptr %11, i64 36
  %i.bqg = load i32, ptr %i.bqf, align 4, !tbaa !15
  %i.bqh = sext i32 %i.bqg to i64                 ; 2 uses
  %i.bqi = getelementptr inbounds [36 x i8], ptr %i.bqe, i64 %i.bqh
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bqi, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bqj = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bqh
  store i64 4294967364, ptr %i.bqj, align 4
  %i.bqk = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bql = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.bqm = load i32, ptr %i.bql, align 4, !tbaa !15
  %i.bqn = sext i32 %i.bqm to i64                 ; 2 uses
  %i.bqo = getelementptr inbounds [36 x i8], ptr %i.bqk, i64 %i.bqn
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bqo, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bqp = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bqn
  store i64 4294967364, ptr %i.bqp, align 4
  %i.bqq = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bqr = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.bqs = load i32, ptr %i.bqr, align 4, !tbaa !15
  %i.bqt = sext i32 %i.bqs to i64                 ; 2 uses
  %i.bqu = getelementptr inbounds [36 x i8], ptr %i.bqq, i64 %i.bqt
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bqu, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.bqv = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bqt
  store i64 4294967364, ptr %i.bqv, align 4
  %i.bqw = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.bqx = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.bqy = load i32, ptr %i.bqx, align 4, !tbaa !15
  %i.bqz = sext i32 %i.bqy to i64                 ; 2 uses
  %i.bra = getelementptr inbounds [36 x i8], ptr %i.bqw, i64 %i.bqz
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.bra, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.brb = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bqz
  store i64 4294967364, ptr %i.brb, align 4
  %i.brc = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.brd = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.bre = load i32, ptr %i.brd, align 4, !tbaa !15
  %i.brf = sext i32 %i.bre to i64                 ; 2 uses
  %i.brg = getelementptr inbounds [36 x i8], ptr %i.brc, i64 %i.brf
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.brg, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.brh = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.brf
  store i64 4294967364, ptr %i.brh, align 4
  %i.bri = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.brj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.brk = load i32, ptr %i.brj, align 4, !tbaa !15
  %i.brl = sext i32 %i.brk to i64                 ; 2 uses
  %i.brm = getelementptr inbounds [36 x i8], ptr %i.bri, i64 %i.brl
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.brm, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.brn = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.brl
  store i64 4294967364, ptr %i.brn, align 4
  %i.bro = load ptr, ptr %i.ahf, align 8, !tbaa !70
  %i.brp = getelementptr inbounds nuw i8, ptr %11, i64 60
  %i.brq = load i32, ptr %i.brp, align 4, !tbaa !15
  %i.brr = sext i32 %i.brq to i64                 ; 2 uses
  %i.brs = getelementptr inbounds [36 x i8], ptr %i.bro, i64 %i.brr
  call void @llvm.masked.store.v3f32.p0(<3 x float> <float 0.000000e+00, float poison, float 0.000000e+00>, ptr align 4 %i.brs, <3 x i1> <i1 true, i1 false, i1 true>), !tbaa !88
  %i.brt = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.brr
  store i64 4294967364, ptr %i.brt, align 4
  %i.bru = fsub float %i.apm, %i.api
  %i.brv = fsub float %i.apo, %i.apk              ; 2 uses
  %i.brw = fsub float %123, %i.api                ; 2 uses
  %i.brx = fsub float %125, %i.apk                ; 3 uses
  %i.bry = fneg float %i.brv
  %i.brz = fmul float %i.brw, %i.bry
  %i.bsa = call float @llvm.fmuladd.f32(float %i.bru, float %i.brx, float %i.brz)
  %i.bsb = getelementptr inbounds nuw i8, ptr %9, i64 15232
  br label %bb.bv

bb.bv:                                            ; preds = %.preheader, %bb.bx
  %indvars.iv234 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next235, %bb.bx ] ; 4 uses
  %i.bsc = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv234
  %i.bsd = load i32, ptr %i.bsc, align 4, !tbaa !15 ; 2 uses
  %i.bse = sext i32 %i.bsd to i64
  %i.bsf = getelementptr inbounds [12 x i8], ptr %i.boj, i64 %i.bse ; 2 uses
  %i.bsg = getelementptr inbounds nuw i8, ptr %i.bsf, i64 4
  %i.bsh = load i8, ptr %i.bsg, align 4, !tbaa !97, !range !82, !noundef !83
  %i.bsi = trunc nuw i8 %i.bsh to i1
  %i.bsj = load i32, ptr %i.bsf, align 4
  %i.bsk = icmp eq i32 %i.bsj, 68
  %i.bsl = select i1 %i.bsi, i1 %i.bsk, i1 false
  br i1 %i.bsl, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.bsm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv234
  %i.bsn = load float, ptr %i.bsm, align 4, !tbaa !88
  %i.bso = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv234
  %i.bsp = load float, ptr %i.bso, align 4, !tbaa !88
  %i.bsq = fsub float %i.bsn, %i.api
  %i.bsr = fsub float %i.bsp, %i.apk              ; 2 uses
  %i.bss = fneg float %i.bsr
  %i.bst = fmul float %i.brw, %i.bss
  %i.bsu = call float @llvm.fmuladd.f32(float %i.bsq, float %i.brx, float %i.bst)
  %i.bsv = fdiv float %i.bsu, %i.bsa              ; 2 uses
  %i.bsw = fneg float %i.bsv
  %i.bsx = call float @llvm.fmuladd.f32(float %i.bsw, float %i.brv, float %i.bsr)
  %i.bsy = fdiv float %i.bsx, %i.brx
  %i.bsz = load i32, ptr %11, align 4, !tbaa !15
  call void @_Z16add_vsite3_paramP18InteractionsOfTypeiiiiff(ptr noundef nonnull %i.bsb, i32 noundef %i.bsd, i32 noundef %i.bog, i32 noundef %i.boi, i32 noundef %i.bsz, float noundef %i.bsv, float noundef %i.bsy)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, 16
  br i1 %exitcond237.not, label %bb.by, label %bb.bv, !llvm.loop !220

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret i32 15

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1477, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1465, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1453, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1441, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1405, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1393, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1381, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1357, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1345, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1333, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1312, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1303, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1294, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1240, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1222, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1204, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn480.pn.pn = phi { ptr, i32 } [ %.pn480.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1489 ], [ %i.bfc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1477 ], [ %i.bel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1465 ], [ %i.bdu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1453 ], [ %i.bdd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1441 ], [ %i.bcm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1429 ], [ %i.bbv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1417 ], [ %i.bbe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1405 ], [ %i.ban, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1393 ], [ %i.azw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1381 ], [ %i.azf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1369 ], [ %i.ayo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1357 ], [ %i.axx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1345 ], [ %i.axg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1333 ], [ %i.awt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1321 ], [ %i.awg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1312 ], [ %i.avt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1303 ], [ %i.avg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1294 ], [ %i.aut, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1285 ], [ %i.aug, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1276 ], [ %i.att, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1267 ], [ %i.atg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1258 ], [ %i.ast, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1249 ], [ %i.asg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1240 ], [ %i.art, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1231 ], [ %i.arg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1222 ], [ %i.aqt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1213 ], [ %i.aqg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1204 ], [ %i.apt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1195 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %.pn480.pn.pn
}

declare noundef zeroext i1 @_Z11is_hydrogenPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 65536) i32 @_ZL9get_atypeiP7t_atomsN3gmx8ArrayRefIK17PreprocessResidueEERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_St4hashISC_ENS1_20EqualCaseInsensitiveESaISt4pairIKSC_SC_EEE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(56) %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.e = sext i32 %0 to i64                       ; 4 uses
  %i.f = getelementptr inbounds [36 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !87
  %i.h = fcmp une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load i32, ptr %i.k, align 4, !tbaa !74
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [32 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !79   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !32
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.95) #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i64 %i.s, ptr %i.b, align 8, !tbaa !33
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc29 unwind label %bb.p   ; 2 uses

.noexc29:                                         ; preds = %.noexc.i
  store ptr %i.u, ptr %5, align 8, !tbaa !31
  %i.v = load i64, ptr %i.b, align 8, !tbaa !33
  store i64 %i.v, ptr %i.q, align 8, !tbaa !25
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc29, %bb.d
  %i.w = phi ptr [ %i.u, %.noexc29 ], [ %i.q, %bb.d ] ; 2 uses
  switch i64 %i.s, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %i.p, align 1, !tbaa !25
  store i8 %i.x, ptr %i.w, align 1, !tbaa !25
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.p, i64 %i.s, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i, %bb.e, %bb.f
  %i.y = load i64, ptr %i.b, align 8, !tbaa !33   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !34
  %i.aa = load ptr, ptr %5, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = ptrtoint ptr %2 to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 %i.ae
  %i.ag = invoke ptr @_Z16getDatabaseEntryRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3gmx8ArrayRefIK17PreprocessResidueEE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %2, ptr %i.af)
          to label %bb.h unwind label %bb.q       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %5, align 8, !tbaa !31    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !25
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.an = getelementptr inbounds [36 x i8], ptr %i.am, i64 %i.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !74
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !79 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.au, ptr %6, align 8, !tbaa !32
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.95) #27
          to label %.noexc32 unwind label %bb.r

.noexc32:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aw = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #26 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.aw, ptr %i.a, align 8, !tbaa !33
  %i.ax = icmp ugt i64 %i.aw, 15
  br i1 %i.ax, label %.noexc.i31, label %._crit_edge.i.i30

.noexc.i31:                                       ; preds = %bb.j
  %i.ay = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc33 unwind label %bb.r   ; 2 uses

.noexc33:                                         ; preds = %.noexc.i31
  store ptr %i.ay, ptr %6, align 8, !tbaa !31
  %i.az = load i64, ptr %i.a, align 8, !tbaa !33
  store i64 %i.az, ptr %i.au, align 8, !tbaa !25
  br label %._crit_edge.i.i30

._crit_edge.i.i30:                                ; preds = %.noexc33, %bb.j
  %i.ba = phi ptr [ %i.ay, %.noexc33 ], [ %i.au, %bb.j ] ; 2 uses
  switch i64 %i.aw, label %bb.l [
end_hunk_1
