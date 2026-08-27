Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/NeonEmitter?download=true
inline.NumInlined: 5131
inline.NumDeleted: 1927
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12_GLOBAL__N_19Intrinsic10DagEmitter7emitDagB5cxx11EPKN4llvm7DagInitE:bb.a
  %i.dzf = add i64 %i.dze, 1
  call void @_ZdlPvm(ptr noundef %i.dzc, i64 noundef %i.dzf) #28, !inline_history !1094
  br label %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.peel.i.i

_ZN12_GLOBAL__N_14TypeD2Ev.exit169.peel.i.i:      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.peel.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.peel.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !1091
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !1091
  %.val37.peel.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  %.val38.peel.i.i = load ptr, ptr %i.dvd, align 8, !tbaa !184
  %i.dzg = ptrtoint ptr %.val38.peel.i.i to i64
  %i.dzh = ptrtoint ptr %.val37.peel.i.i to i64
  %i.dzi = sub i64 %i.dzg, %i.dzh
  %i.dzj = sdiv exact i64 %i.dzi, 56
  %i.dzk = add nsw i64 %i.dzj, 4294967295
  %i.dzl = and i64 %i.dzk, 4294967294
  %.not376.i.i = icmp eq i64 %i.dzl, 0
  br i1 %.not376.i.i, label %._crit_edge264.i.i, label %.split28.i.i

._crit_edge264.i.i:                               ; preds = %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.i.i, %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.peel.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit154.i.i
  %i.dzm = load i64, ptr %i.dnu, align 8, !tbaa !18, !noalias !1091
  %i.dzn = and i64 %i.dzm, -2
  %i.dzo = icmp eq i64 %i.dzn, 4611686018427387902
  br i1 %i.dzo, label %bb.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit156.i.i

bb.rh:                                            ; preds = %._crit_edge264.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31, !inline_history !1094
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit156.i.i: ; preds = %._crit_edge264.i.i
  %i.dzp = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.194, i64 noundef 2) #27, !inline_history !1094 ; 0 uses
  %i.dzq = load i8, ptr %i.djo, align 8, !tbaa !1110, !range !189, !noalias !1091, !noundef !42
  %i.dzr = trunc nuw i8 %i.dzq to i1
  br i1 %i.dzr, label %bb.rm, label %.critedge.thread.i.i

.split28.i.i:                                     ; preds = %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.peel.i.i, %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.i.i ], [ 1, %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.peel.i.i ] ; 2 uses
  %i.dzs = load i64, ptr %i.dnu, align 8, !tbaa !18, !noalias !1091
  %i.dzt = and i64 %i.dzs, -2
  %i.dzu = icmp eq i64 %i.dzt, 4611686018427387902
  br i1 %i.dzu, label %.loopexit.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit159.i.i

.loopexit.i.i:                                    ; preds = %.split28.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31, !inline_history !1094
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit159.i.i: ; preds = %.split28.i.i
  %i.dzv = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.108, i64 noundef 2) #27, !inline_history !1094 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #27, !noalias !1091
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #27, !noalias !1091
  %.val.i.i1252 = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.experimental.noalias.scope.decl(metadata !1176)
  %i.dzw = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i1252, i64 %indvars.iv.i.i ; 3 uses
  %i.dzx = getelementptr inbounds nuw i8, ptr %i.dzw, i64 56
  store ptr %i.dph, ptr %43, align 8, !tbaa !16, !alias.scope !1176, !noalias !1091
  %i.dzy = load ptr, ptr %i.dzx, align 8, !tbaa !22, !noalias !1176 ; 2 uses
  %i.dzz = getelementptr inbounds nuw i8, ptr %i.dzw, i64 64
  %i.eaa = load i64, ptr %i.dzz, align 8, !tbaa !18, !noalias !1176 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #27, !noalias !1179
  store i64 %i.eaa, ptr %i.q, align 8, !tbaa !56, !noalias !1179
  %i.eab = icmp ugt i64 %i.eaa, 15
  br i1 %i.eab, label %bb.ri, label %._crit_edge.i.i.i.i.i160.i.i

bb.ri:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit159.i.i
  %i.eac = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %43, ptr noundef nonnull align 8 dereferenceable(8) %i.q, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.eac, ptr %43, align 8, !tbaa !22, !alias.scope !1176, !noalias !1091
  %i.ead = load i64, ptr %i.q, align 8, !tbaa !56, !noalias !1179
  store i64 %i.ead, ptr %i.dph, align 8, !tbaa !21, !alias.scope !1176, !noalias !1091
  br label %._crit_edge.i.i.i.i.i160.i.i

._crit_edge.i.i.i.i.i160.i.i:                     ; preds = %bb.ri, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit159.i.i
  %i.eae = phi ptr [ %i.eac, %bb.ri ], [ %i.dph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit159.i.i ] ; 2 uses
  switch i64 %i.eaa, label %bb.rk [
    i64 1, label %bb.rj
    i64 0, label %bb.rl
  ]

bb.rj:                                            ; preds = %._crit_edge.i.i.i.i.i160.i.i
  %i.eaf = load i8, ptr %i.dzy, align 1, !tbaa !21
  store i8 %i.eaf, ptr %i.eae, align 1, !tbaa !21
  br label %bb.rl

bb.rk:                                            ; preds = %._crit_edge.i.i.i.i.i160.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eae, ptr align 1 %i.dzy, i64 %i.eaa, i1 false)
  br label %bb.rl

bb.rl:                                            ; preds = %bb.rk, %bb.rj, %._crit_edge.i.i.i.i.i160.i.i
  %i.eag = load i64, ptr %i.q, align 8, !tbaa !56, !noalias !1179 ; 2 uses
  store i64 %i.eag, ptr %i.dpi, align 8, !tbaa !18, !alias.scope !1176, !noalias !1091
  %i.eah = load ptr, ptr %43, align 8, !tbaa !22, !alias.scope !1176, !noalias !1091
  %i.eai = getelementptr inbounds nuw i8, ptr %i.eah, i64 %i.eag
  store i8 0, ptr %i.eai, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #27, !noalias !1179
  %i.eaj = getelementptr inbounds nuw i8, ptr %i.dzw, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dpj, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eaj, i64 24, i1 false)
  call fastcc void @_ZNK12_GLOBAL__N_14Type3strB5cxx11Ev(ptr dead_on_unwind noalias writable align 8 %42, ptr noundef nonnull align 8 dereferenceable(56) %43), !inline_history !1094
  %i.eak = load i64, ptr %i.dpk, align 8, !tbaa !18, !noalias !1091 ; 2 uses
  %i.eal = load i64, ptr %i.dnu, align 8, !tbaa !18, !noalias !1091
  %i.eam = sub i64 4611686018427387903, %i.eal
  %i.ean = icmp ult i64 %i.eam, %i.eak
  br i1 %i.ean, label %.loopexit281.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit163.i.i

.loopexit281.i.i:                                 ; preds = %bb.rg, %bb.rl
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31, !inline_history !1094
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit163.i.i: ; preds = %bb.rl
  %i.eao = load ptr, ptr %42, align 8, !tbaa !22, !noalias !1091
  %i.eap = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef %i.eao, i64 noundef %i.eak) #27, !inline_history !1094 ; 0 uses
  %i.eaq = load ptr, ptr %42, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.ear = icmp eq ptr %i.eaq, %i.dpl
  br i1 %i.ear, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit163.i.i
  %i.eas = load i64, ptr %i.dpl, align 8, !tbaa !21, !noalias !1091
  %i.eat = add i64 %i.eas, 1
  call void @_ZdlPvm(ptr noundef %i.eaq, i64 noundef %i.eat) #28, !inline_history !1094
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_.exit163.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164.i.i
  %i.eau = load ptr, ptr %43, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.eav = icmp eq ptr %i.eau, %i.dph
  br i1 %i.eav, label %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i.i
  %i.eaw = load i64, ptr %i.dph, align 8, !tbaa !21, !noalias !1091
  %i.eax = add i64 %i.eaw, 1
  call void @_ZdlPvm(ptr noundef %i.eau, i64 noundef %i.eax) #28, !inline_history !1094
  br label %_ZN12_GLOBAL__N_14TypeD2Ev.exit169.i.i

_ZN12_GLOBAL__N_14TypeD2Ev.exit169.i.i:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i167.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #27, !noalias !1091
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #27, !noalias !1091
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val37.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  %.val38.i.i = load ptr, ptr %i.dvd, align 8, !tbaa !184
  %i.eay = ptrtoint ptr %.val38.i.i to i64
  %i.eaz = ptrtoint ptr %.val37.i.i to i64
  %i.eba = sub i64 %i.eay, %i.eaz
  %i.ebb = sdiv exact i64 %i.eba, 56
  %i.ebc = add nsw i64 %i.ebb, 4294967295
  %i.ebd = and i64 %i.ebc, 4294967295
  %i.ebe = icmp samesign ult i64 %indvars.iv.next.i.i, %i.ebd
  br i1 %i.ebe, label %.split28.i.i, label %._crit_edge264.i.i, !llvm.loop !1180

bb.rm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit156.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #27, !noalias !1091
  call fastcc void @_ZNK12_GLOBAL__N_19Intrinsic10mangleNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_9ClassKindE(ptr dead_on_unwind noalias nonnull writable align 8 %44, ptr noundef nonnull align 8 dereferenceable(1008) %.sroa.0214.0271.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.dvf, i32 noundef 2), !inline_history !1094
  %i.ebf = load i8, ptr %i.djo, align 8, !tbaa !1110, !range !189, !noalias !1091, !noundef !42
  %i.ebg = trunc nuw i8 %i.ebf to i1
  br i1 %i.ebg, label %bb.rn, label %bb.rq

bb.rn:                                            ; preds = %bb.rm
  %i.ebh = load i64, ptr %i.dpm, align 8, !tbaa !18, !noalias !1091 ; 3 uses
  %i.ebi = load i64, ptr %i.dpn, align 8, !tbaa !18, !noalias !1091
  %i.ebj = icmp eq i64 %i.ebh, %i.ebi
  br i1 %i.ebj, label %bb.ro, label %bb.rq

bb.ro:                                            ; preds = %bb.rn
  %i.ebk = icmp eq i64 %i.ebh, 0
  br i1 %i.ebk, label %bb.rq, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.ebl = load ptr, ptr %44, align 8, !tbaa !22, !noalias !1091
  %i.ebm = load ptr, ptr %57, align 8, !tbaa !22, !noalias !1091
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.ebm, ptr %i.ebl, i64 %i.ebh), !inline_history !1094
  %i.ebn = icmp ne i32 %bcmp.i.i.i.i.i, 0
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rp, %bb.ro, %bb.rn, %bb.rm
  %.ph.i.i = phi i1 [ false, %bb.ro ], [ %i.ebn, %bb.rp ], [ true, %bb.rn ], [ true, %bb.rm ]
  %i.ebo = load ptr, ptr %44, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.ebp = icmp eq ptr %i.ebo, %i.dpo
  br i1 %i.ebp, label %.critedge.i.i1265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i.i: ; preds = %bb.rq
  %i.ebq = load i64, ptr %i.dpo, align 8, !tbaa !21, !noalias !1091
  %i.ebr = add i64 %i.ebq, 1
  call void @_ZdlPvm(ptr noundef %i.ebo, i64 noundef %i.ebr) #28, !inline_history !1094
  br label %.critedge.i.i1265

.critedge.i.i1265:                                ; preds = %bb.rq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i173.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #27, !noalias !1091
  br i1 %.ph.i.i, label %_ZNSt6vectorIPN12_GLOBAL__N_19IntrinsicESaIS2_EE9push_backEOS2_.exit.i.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i1265, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit156.i.i
  %.val35.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  %.val36.i.i = load ptr, ptr %i.dvd, align 8, !tbaa !184
  %i.ebs = ptrtoint ptr %.val36.i.i to i64
  %i.ebt = ptrtoint ptr %.val35.i.i to i64
  %i.ebu = sub i64 %i.ebs, %i.ebt
  %i.ebv = sdiv exact i64 %i.ebu, 56
  %i.ebw = add nsw i64 %i.ebv, 4294967295
  %i.ebx = and i64 %i.ebw, 4294967295
  %.not.i72.i = icmp eq i64 %i.djn, %i.ebx
  br i1 %.not.i72.i, label %bb.rr, label %_ZNSt6vectorIPN12_GLOBAL__N_19IntrinsicESaIS2_EE9push_backEOS2_.exit.i.i

bb.rr:                                            ; preds = %.critedge.thread.i.i
  br i1 %.not233.i.i, label %._crit_edge.i.i.i.i.i176.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.rr, %bb.sh
  %indvars.iv284.i.i = phi i64 [ %indvars.iv.next285.i.i, %bb.sh ], [ 0, %bb.rr ] ; 4 uses
  %.045.i.i.i.i.i.i.i = phi i64 [ %i.eet, %bb.sh ], [ %i.dpp, %bb.rr ] ; 2 uses
  %.02944.i.i.i.i.i.i.i = phi ptr [ %i.ees, %bb.sh ], [ %.sroa.0146.0.lcssa.i, %bb.rr ] ; 6 uses
  %.val41.val.i.i.i.i.i.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27, !noalias !1091
  call void @llvm.experimental.noalias.scope.decl(metadata !1181)
  %224 = getelementptr inbounds nuw [56 x i8], ptr %.val41.val.i.i.i.i.i.i.i, i64 %indvars.iv284.i.i ; 3 uses
  %225 = getelementptr inbounds nuw i8, ptr %224, i64 56
  store ptr %i.dpq, ptr %16, align 8, !tbaa !16, !alias.scope !1181, !noalias !1091
  %i.eby = load ptr, ptr %225, align 8, !tbaa !22, !noalias !1181 ; 2 uses
  %i.ebz = getelementptr inbounds nuw i8, ptr %224, i64 64
  %i.eca = load i64, ptr %i.ebz, align 8, !tbaa !18, !noalias !1181 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #27, !noalias !1184
  store i64 %i.eca, ptr %i.j, align 8, !tbaa !56, !noalias !1184
  %i.ecb = icmp ugt i64 %i.eca, 15
  br i1 %i.ecb, label %bb.rs, label %._crit_edge.i.i.i.i.i.i.i203.i.i

bb.rs:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ecc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.ecc, ptr %16, align 8, !tbaa !22, !alias.scope !1181, !noalias !1091
  %i.ecd = load i64, ptr %i.j, align 8, !tbaa !56, !noalias !1184
  store i64 %i.ecd, ptr %i.dpq, align 8, !tbaa !21, !alias.scope !1181, !noalias !1091
  br label %._crit_edge.i.i.i.i.i.i.i203.i.i

._crit_edge.i.i.i.i.i.i.i203.i.i:                 ; preds = %bb.rs, %.lr.ph.i.i.i.i.i.i.i
  %i.ece = phi ptr [ %i.ecc, %bb.rs ], [ %i.dpq, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.eca, label %bb.ru [
    i64 1, label %bb.rt
    i64 0, label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i204.i.i
  ]

bb.rt:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i203.i.i
  %i.ecf = load i8, ptr %i.eby, align 1, !tbaa !21
  store i8 %i.ecf, ptr %i.ece, align 1, !tbaa !21
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i204.i.i

bb.ru:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i203.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ece, ptr align 1 %i.eby, i64 %i.eca, i1 false)
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i204.i.i

_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i204.i.i: ; preds = %bb.ru, %bb.rt, %._crit_edge.i.i.i.i.i.i.i203.i.i
  %i.ecg = load i64, ptr %i.j, align 8, !tbaa !56, !noalias !1184 ; 2 uses
  store i64 %i.ecg, ptr %i.dpr, align 8, !tbaa !18, !alias.scope !1181, !noalias !1091
  %i.ech = load ptr, ptr %16, align 8, !tbaa !22, !alias.scope !1181, !noalias !1091
  %i.eci = getelementptr inbounds nuw i8, ptr %i.ech, i64 %i.ecg
  store i8 0, ptr %i.eci, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #27, !noalias !1184
  %i.ecj = getelementptr inbounds nuw i8, ptr %224, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dps, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ecj, i64 24, i1 false)
  %i.eck = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.02944.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %16), !inline_history !1094
  %i.ecl = load ptr, ptr %16, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.ecm = icmp eq ptr %i.ecl, %i.dpq
  br i1 %i.ecm, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit207.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i205.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i205.i.i: ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i204.i.i
  %i.ecn = load i64, ptr %i.dpq, align 8, !tbaa !21, !noalias !1091
  %i.eco = add i64 %i.ecn, 1
  call void @_ZdlPvm(ptr noundef %i.ecl, i64 noundef %i.eco) #28, !inline_history !1094
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit207.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit207.i.i": ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i204.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i205.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27, !noalias !1091
  br i1 %i.eck, label %bb.rv, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIN12_GLOBAL__N_14TypeEEEZNS2_11NeonEmitter12getIntrinsicENS_9StringRefES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EEbOT_T0_.exit.i.i"

bb.rv:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit207.i.i"
  %i.ecp = getelementptr inbounds nuw i8, ptr %.02944.i.i.i.i.i.i.i, i64 56 ; 2 uses
  %.val39.val.i.i.i.i.i.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27, !noalias !1091
  call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %226 = getelementptr inbounds nuw [56 x i8], ptr %.val39.val.i.i.i.i.i.i.i, i64 %indvars.iv284.i.i ; 3 uses
  %227 = getelementptr inbounds nuw i8, ptr %226, i64 112
  store ptr %i.dpt, ptr %17, align 8, !tbaa !16, !alias.scope !1185, !noalias !1091
  %i.ecq = load ptr, ptr %227, align 8, !tbaa !22, !noalias !1185 ; 2 uses
  %i.ecr = getelementptr inbounds nuw i8, ptr %226, i64 120
  %i.ecs = load i64, ptr %i.ecr, align 8, !tbaa !18, !noalias !1185 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #27, !noalias !1188
  store i64 %i.ecs, ptr %i.k, align 8, !tbaa !56, !noalias !1188
  %i.ect = icmp ugt i64 %i.ecs, 15
  br i1 %i.ect, label %bb.rw, label %._crit_edge.i.i.i.i.i.i.i198.i.i

bb.rw:                                            ; preds = %bb.rv
  %i.ecu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.ecu, ptr %17, align 8, !tbaa !22, !alias.scope !1185, !noalias !1091
  %i.ecv = load i64, ptr %i.k, align 8, !tbaa !56, !noalias !1188
  store i64 %i.ecv, ptr %i.dpt, align 8, !tbaa !21, !alias.scope !1185, !noalias !1091
  br label %._crit_edge.i.i.i.i.i.i.i198.i.i

._crit_edge.i.i.i.i.i.i.i198.i.i:                 ; preds = %bb.rw, %bb.rv
  %i.ecw = phi ptr [ %i.ecu, %bb.rw ], [ %i.dpt, %bb.rv ] ; 2 uses
  switch i64 %i.ecs, label %bb.ry [
    i64 1, label %bb.rx
    i64 0, label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i199.i.i
  ]

bb.rx:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i198.i.i
  %i.ecx = load i8, ptr %i.ecq, align 1, !tbaa !21
  store i8 %i.ecx, ptr %i.ecw, align 1, !tbaa !21
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i199.i.i

bb.ry:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i198.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ecw, ptr align 1 %i.ecq, i64 %i.ecs, i1 false)
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i199.i.i

_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i199.i.i: ; preds = %bb.ry, %bb.rx, %._crit_edge.i.i.i.i.i.i.i198.i.i
  %i.ecy = load i64, ptr %i.k, align 8, !tbaa !56, !noalias !1188 ; 2 uses
  store i64 %i.ecy, ptr %i.dpu, align 8, !tbaa !18, !alias.scope !1185, !noalias !1091
  %i.ecz = load ptr, ptr %17, align 8, !tbaa !22, !alias.scope !1185, !noalias !1091
  %i.eda = getelementptr inbounds nuw i8, ptr %i.ecz, i64 %i.ecy
  store i8 0, ptr %i.eda, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #27, !noalias !1188
  %i.edb = getelementptr inbounds nuw i8, ptr %226, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dpv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.edb, i64 24, i1 false)
  %i.edc = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.ecp, ptr noundef nonnull align 8 dereferenceable(56) %17), !inline_history !1094
  %i.edd = load ptr, ptr %17, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.ede = icmp eq ptr %i.edd, %i.dpt
  br i1 %i.ede, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit202.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200.i.i: ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i199.i.i
  %i.edf = load i64, ptr %i.dpt, align 8, !tbaa !21, !noalias !1091
  %i.edg = add i64 %i.edf, 1
  call void @_ZdlPvm(ptr noundef %i.edd, i64 noundef %i.edg) #28, !inline_history !1094
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit202.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit202.i.i": ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i199.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27, !noalias !1091
  br i1 %i.edc, label %bb.rz, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIN12_GLOBAL__N_14TypeEEEZNS2_11NeonEmitter12getIntrinsicENS_9StringRefES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EEbOT_T0_.exit.i.i"

bb.rz:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit202.i.i"
  %i.edh = getelementptr inbounds nuw i8, ptr %.02944.i.i.i.i.i.i.i, i64 112 ; 2 uses
  %.val37.val.i.i.i.i.i.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27, !noalias !1091
  call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %228 = getelementptr inbounds nuw [56 x i8], ptr %.val37.val.i.i.i.i.i.i.i, i64 %indvars.iv284.i.i ; 3 uses
  %229 = getelementptr inbounds nuw i8, ptr %228, i64 168
  store ptr %i.dpw, ptr %18, align 8, !tbaa !16, !alias.scope !1189, !noalias !1091
  %i.edi = load ptr, ptr %229, align 8, !tbaa !22, !noalias !1189 ; 2 uses
  %i.edj = getelementptr inbounds nuw i8, ptr %228, i64 176
  %i.edk = load i64, ptr %i.edj, align 8, !tbaa !18, !noalias !1189 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #27, !noalias !1192
  store i64 %i.edk, ptr %i.l, align 8, !tbaa !56, !noalias !1192
  %i.edl = icmp ugt i64 %i.edk, 15
  br i1 %i.edl, label %bb.sa, label %._crit_edge.i.i.i.i.i.i.i193.i.i

bb.sa:                                            ; preds = %bb.rz
  %i.edm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.edm, ptr %18, align 8, !tbaa !22, !alias.scope !1189, !noalias !1091
  %i.edn = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !1192
  store i64 %i.edn, ptr %i.dpw, align 8, !tbaa !21, !alias.scope !1189, !noalias !1091
  br label %._crit_edge.i.i.i.i.i.i.i193.i.i

._crit_edge.i.i.i.i.i.i.i193.i.i:                 ; preds = %bb.sa, %bb.rz
  %i.edo = phi ptr [ %i.edm, %bb.sa ], [ %i.dpw, %bb.rz ] ; 2 uses
  switch i64 %i.edk, label %bb.sc [
    i64 1, label %bb.sb
    i64 0, label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i194.i.i
  ]

bb.sb:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i193.i.i
  %i.edp = load i8, ptr %i.edi, align 1, !tbaa !21
  store i8 %i.edp, ptr %i.edo, align 1, !tbaa !21
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i194.i.i

bb.sc:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i193.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.edo, ptr align 1 %i.edi, i64 %i.edk, i1 false)
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i194.i.i

_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i194.i.i: ; preds = %bb.sc, %bb.sb, %._crit_edge.i.i.i.i.i.i.i193.i.i
  %i.edq = load i64, ptr %i.l, align 8, !tbaa !56, !noalias !1192 ; 2 uses
  store i64 %i.edq, ptr %i.dpx, align 8, !tbaa !18, !alias.scope !1189, !noalias !1091
  %i.edr = load ptr, ptr %18, align 8, !tbaa !22, !alias.scope !1189, !noalias !1091
  %i.eds = getelementptr inbounds nuw i8, ptr %i.edr, i64 %i.edq
  store i8 0, ptr %i.eds, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #27, !noalias !1192
  %i.edt = getelementptr inbounds nuw i8, ptr %228, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dpy, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.edt, i64 24, i1 false)
  %i.edu = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.edh, ptr noundef nonnull align 8 dereferenceable(56) %18), !inline_history !1094
  %i.edv = load ptr, ptr %18, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.edw = icmp eq ptr %i.edv, %i.dpw
  br i1 %i.edw, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit197.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i195.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i195.i.i: ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i194.i.i
  %i.edx = load i64, ptr %i.dpw, align 8, !tbaa !21, !noalias !1091
  %i.edy = add i64 %i.edx, 1
  call void @_ZdlPvm(ptr noundef %i.edv, i64 noundef %i.edy) #28, !inline_history !1094
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit197.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit197.i.i": ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i194.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i195.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27, !noalias !1091
  br i1 %i.edu, label %bb.sd, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIN12_GLOBAL__N_14TypeEEEZNS2_11NeonEmitter12getIntrinsicENS_9StringRefES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EEbOT_T0_.exit.i.i"

bb.sd:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit197.i.i"
  %i.edz = getelementptr inbounds nuw i8, ptr %.02944.i.i.i.i.i.i.i, i64 168 ; 2 uses
  %.val35.val.i.i.i.i.i.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27, !noalias !1091
  %indvars.iv.next285.i.i = add nuw nsw i64 %indvars.iv284.i.i, 4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %230 = and i64 %indvars.iv.next285.i.i, 4294967292
  %i.eea = getelementptr inbounds nuw [56 x i8], ptr %.val35.val.i.i.i.i.i.i.i, i64 %230 ; 3 uses
  store ptr %i.dpz, ptr %19, align 8, !tbaa !16, !alias.scope !1193, !noalias !1091
  %i.eeb = load ptr, ptr %i.eea, align 8, !tbaa !22, !noalias !1193 ; 2 uses
  %i.eec = getelementptr inbounds nuw i8, ptr %i.eea, i64 8
  %i.eed = load i64, ptr %i.eec, align 8, !tbaa !18, !noalias !1193 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #27, !noalias !1196
  store i64 %i.eed, ptr %i.m, align 8, !tbaa !56, !noalias !1196
  %i.eee = icmp ugt i64 %i.eed, 15
  br i1 %i.eee, label %bb.se, label %._crit_edge.i.i.i.i.i.i.i188.i.i

bb.se:                                            ; preds = %bb.sd
  %i.eef = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.eef, ptr %19, align 8, !tbaa !22, !alias.scope !1193, !noalias !1091
  %i.eeg = load i64, ptr %i.m, align 8, !tbaa !56, !noalias !1196
  store i64 %i.eeg, ptr %i.dpz, align 8, !tbaa !21, !alias.scope !1193, !noalias !1091
  br label %._crit_edge.i.i.i.i.i.i.i188.i.i

._crit_edge.i.i.i.i.i.i.i188.i.i:                 ; preds = %bb.se, %bb.sd
  %i.eeh = phi ptr [ %i.eef, %bb.se ], [ %i.dpz, %bb.sd ] ; 2 uses
  switch i64 %i.eed, label %bb.sg [
    i64 1, label %bb.sf
    i64 0, label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i189.i.i
  ]

bb.sf:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i188.i.i
  %i.eei = load i8, ptr %i.eeb, align 1, !tbaa !21
  store i8 %i.eei, ptr %i.eeh, align 1, !tbaa !21
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i189.i.i

bb.sg:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i188.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eeh, ptr align 1 %i.eeb, i64 %i.eed, i1 false)
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i189.i.i

_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i189.i.i: ; preds = %bb.sg, %bb.sf, %._crit_edge.i.i.i.i.i.i.i188.i.i
  %i.eej = load i64, ptr %i.m, align 8, !tbaa !56, !noalias !1196 ; 2 uses
  store i64 %i.eej, ptr %i.dqa, align 8, !tbaa !18, !alias.scope !1193, !noalias !1091
  %i.eek = load ptr, ptr %19, align 8, !tbaa !22, !alias.scope !1193, !noalias !1091
  %i.eel = getelementptr inbounds nuw i8, ptr %i.eek, i64 %i.eej
  store i8 0, ptr %i.eel, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #27, !noalias !1196
  %i.eem = getelementptr inbounds nuw i8, ptr %i.eea, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dqb, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eem, i64 24, i1 false)
  %i.een = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(56) %i.edz, ptr noundef nonnull align 8 dereferenceable(56) %19), !inline_history !1094
  %i.eeo = load ptr, ptr %19, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.eep = icmp eq ptr %i.eeo, %i.dpz
  br i1 %i.eep, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit192.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190.i.i: ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i189.i.i
  %i.eeq = load i64, ptr %i.dpz, align 8, !tbaa !21, !noalias !1091
  %i.eer = add i64 %i.eeq, 1
  call void @_ZdlPvm(ptr noundef %i.eeo, i64 noundef %i.eer) #28, !inline_history !1094
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit192.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit192.i.i": ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i189.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i190.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27, !noalias !1091
  br i1 %i.een, label %bb.sh, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIN12_GLOBAL__N_14TypeEEEZNS2_11NeonEmitter12getIntrinsicENS_9StringRefES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EEbOT_T0_.exit.i.i"

bb.sh:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit192.i.i"
  %i.ees = getelementptr inbounds nuw i8, ptr %.02944.i.i.i.i.i.i.i, i64 224 ; 3 uses
  %i.eet = add nsw i64 %.045.i.i.i.i.i.i.i, -1
  %i.eeu = icmp sgt i64 %.045.i.i.i.i.i.i.i, 1
  br i1 %i.eeu, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !1197

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.sh
  %indvars.le.i.i = trunc i64 %indvars.iv.next285.i.i to i32
  %.pre.i.i.i.i.i.i74.i = ptrtoint ptr %i.ees to i64
  %.pre46.i.i.i.i.i.i.i = sub i64 %i.djk, %.pre.i.i.i.i.i.i74.i
  %i.eev = sdiv exact i64 %.pre46.i.i.i.i.i.i.i, 56
  br label %._crit_edge.i.i.i.i.i176.i.i

._crit_edge.i.i.i.i.i176.i.i:                     ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.rr
  %.0228.i.i = phi i32 [ %indvars.le.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ 0, %bb.rr ] ; 3 uses
  %.pre-phi47.i.i.i.i.i.i.i = phi i64 [ %i.eev, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %i.djn, %bb.rr ]
  %.029.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ees, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.sroa.0146.0.lcssa.i, %bb.rr ] ; 5 uses
  switch i64 %.pre-phi47.i.i.i.i.i.i.i, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIN12_GLOBAL__N_14TypeEEEZNS2_11NeonEmitter12getIntrinsicENS_9StringRefES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EEbOT_T0_.exit.thread.i.i" [
    i64 3, label %bb.si
    i64 2, label %bb.sn
    i64 1, label %bb.ss
  ]

bb.si:                                            ; preds = %._crit_edge.i.i.i.i.i176.i.i
  %.val33.val.i.i.i.i.i.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27, !noalias !1091
  %i.eew = add i32 %.0228.i.i, 1                  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.eex = zext i32 %i.eew to i64
  %i.eey = getelementptr inbounds nuw [56 x i8], ptr %.val33.val.i.i.i.i.i.i.i, i64 %i.eex ; 3 uses
  store ptr %i.dqc, ptr %20, align 8, !tbaa !16, !alias.scope !1198, !noalias !1091
  %i.eez = load ptr, ptr %i.eey, align 8, !tbaa !22, !noalias !1198 ; 2 uses
  %i.efa = getelementptr inbounds nuw i8, ptr %i.eey, i64 8
  %i.efb = load i64, ptr %i.efa, align 8, !tbaa !18, !noalias !1198 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #27, !noalias !1201
  store i64 %i.efb, ptr %i.n, align 8, !tbaa !56, !noalias !1201
  %i.efc = icmp ugt i64 %i.efb, 15
  br i1 %i.efc, label %bb.sj, label %._crit_edge.i.i.i.i.i.i.i183.i.i

bb.sj:                                            ; preds = %bb.si
  %i.efd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.efd, ptr %20, align 8, !tbaa !22, !alias.scope !1198, !noalias !1091
  %i.efe = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !1201
  store i64 %i.efe, ptr %i.dqc, align 8, !tbaa !21, !alias.scope !1198, !noalias !1091
  br label %._crit_edge.i.i.i.i.i.i.i183.i.i

._crit_edge.i.i.i.i.i.i.i183.i.i:                 ; preds = %bb.sj, %bb.si
  %i.eff = phi ptr [ %i.efd, %bb.sj ], [ %i.dqc, %bb.si ] ; 2 uses
  switch i64 %i.efb, label %bb.sl [
    i64 1, label %bb.sk
    i64 0, label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i184.i.i
  ]

bb.sk:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i183.i.i
  %i.efg = load i8, ptr %i.eez, align 1, !tbaa !21
  store i8 %i.efg, ptr %i.eff, align 1, !tbaa !21
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i184.i.i

bb.sl:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i183.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eff, ptr align 1 %i.eez, i64 %i.efb, i1 false)
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i184.i.i

_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i184.i.i: ; preds = %bb.sl, %bb.sk, %._crit_edge.i.i.i.i.i.i.i183.i.i
  %i.efh = load i64, ptr %i.n, align 8, !tbaa !56, !noalias !1201 ; 2 uses
  store i64 %i.efh, ptr %i.dqd, align 8, !tbaa !18, !alias.scope !1198, !noalias !1091
  %i.efi = load ptr, ptr %20, align 8, !tbaa !22, !alias.scope !1198, !noalias !1091
  %i.efj = getelementptr inbounds nuw i8, ptr %i.efi, i64 %i.efh
  store i8 0, ptr %i.efj, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #27, !noalias !1201
  %i.efk = getelementptr inbounds nuw i8, ptr %i.eey, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dqe, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.efk, i64 24, i1 false)
  %i.efl = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.029.lcssa.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %20), !inline_history !1094
  %i.efm = load ptr, ptr %20, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.efn = icmp eq ptr %i.efm, %i.dqc
  br i1 %i.efn, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit187.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i: ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i184.i.i
  %i.efo = load i64, ptr %i.dqc, align 8, !tbaa !21, !noalias !1091
  %i.efp = add i64 %i.efo, 1
  call void @_ZdlPvm(ptr noundef %i.efm, i64 noundef %i.efp) #28, !inline_history !1094
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit187.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit187.i.i": ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i184.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i185.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27, !noalias !1091
  br i1 %i.efl, label %bb.sm, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIN12_GLOBAL__N_14TypeEEEZNS2_11NeonEmitter12getIntrinsicENS_9StringRefES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EEbOT_T0_.exit.i.i"

bb.sm:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit187.i.i"
  %i.efq = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i.i, i64 56
  br label %bb.sn

bb.sn:                                            ; preds = %bb.sm, %._crit_edge.i.i.i.i.i176.i.i
  %.2.i.i = phi i32 [ %i.eew, %bb.sm ], [ %.0228.i.i, %._crit_edge.i.i.i.i.i176.i.i ]
  %.1.i.i.i.i.i.i.i = phi ptr [ %i.efq, %bb.sm ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i176.i.i ] ; 3 uses
  %.val31.val.i.i.i.i.i.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27, !noalias !1091
  %i.efr = add i32 %.2.i.i, 1                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  %i.efs = zext i32 %i.efr to i64
  %i.eft = getelementptr inbounds nuw [56 x i8], ptr %.val31.val.i.i.i.i.i.i.i, i64 %i.efs ; 3 uses
  store ptr %i.dqf, ptr %21, align 8, !tbaa !16, !alias.scope !1202, !noalias !1091
  %i.efu = load ptr, ptr %i.eft, align 8, !tbaa !22, !noalias !1202 ; 2 uses
  %i.efv = getelementptr inbounds nuw i8, ptr %i.eft, i64 8
  %i.efw = load i64, ptr %i.efv, align 8, !tbaa !18, !noalias !1202 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #27, !noalias !1205
  store i64 %i.efw, ptr %i.o, align 8, !tbaa !56, !noalias !1205
  %i.efx = icmp ugt i64 %i.efw, 15
  br i1 %i.efx, label %bb.so, label %._crit_edge.i.i.i.i.i.i.i178.i.i

bb.so:                                            ; preds = %bb.sn
  %i.efy = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.efy, ptr %21, align 8, !tbaa !22, !alias.scope !1202, !noalias !1091
  %i.efz = load i64, ptr %i.o, align 8, !tbaa !56, !noalias !1205
  store i64 %i.efz, ptr %i.dqf, align 8, !tbaa !21, !alias.scope !1202, !noalias !1091
  br label %._crit_edge.i.i.i.i.i.i.i178.i.i

._crit_edge.i.i.i.i.i.i.i178.i.i:                 ; preds = %bb.so, %bb.sn
  %i.ega = phi ptr [ %i.efy, %bb.so ], [ %i.dqf, %bb.sn ] ; 2 uses
  switch i64 %i.efw, label %bb.sq [
    i64 1, label %bb.sp
    i64 0, label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i179.i.i
  ]

bb.sp:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i178.i.i
  %i.egb = load i8, ptr %i.efu, align 1, !tbaa !21
  store i8 %i.egb, ptr %i.ega, align 1, !tbaa !21
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i179.i.i

bb.sq:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i178.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ega, ptr align 1 %i.efu, i64 %i.efw, i1 false)
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i179.i.i

_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i179.i.i: ; preds = %bb.sq, %bb.sp, %._crit_edge.i.i.i.i.i.i.i178.i.i
  %i.egc = load i64, ptr %i.o, align 8, !tbaa !56, !noalias !1205 ; 2 uses
  store i64 %i.egc, ptr %i.dqg, align 8, !tbaa !18, !alias.scope !1202, !noalias !1091
  %i.egd = load ptr, ptr %21, align 8, !tbaa !22, !alias.scope !1202, !noalias !1091
  %i.ege = getelementptr inbounds nuw i8, ptr %i.egd, i64 %i.egc
  store i8 0, ptr %i.ege, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #27, !noalias !1205
  %i.egf = getelementptr inbounds nuw i8, ptr %i.eft, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dqh, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.egf, i64 24, i1 false)
  %i.egg = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.1.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %21), !inline_history !1094
  %i.egh = load ptr, ptr %21, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.egi = icmp eq ptr %i.egh, %i.dqf
  br i1 %i.egi, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit182.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180.i.i: ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i179.i.i
  %i.egj = load i64, ptr %i.dqf, align 8, !tbaa !21, !noalias !1091
  %i.egk = add i64 %i.egj, 1
  call void @_ZdlPvm(ptr noundef %i.egh, i64 noundef %i.egk) #28, !inline_history !1094
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit182.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit182.i.i": ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i179.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i180.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27, !noalias !1091
  br i1 %i.egg, label %bb.sr, label %"_ZN4llvm6all_ofIRNS_8ArrayRefIN12_GLOBAL__N_14TypeEEEZNS2_11NeonEmitter12getIntrinsicENS_9StringRefES4_St8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EEbOT_T0_.exit.i.i"

bb.sr:                                            ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit182.i.i"
  %i.egl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i.i, i64 56
  br label %bb.ss

bb.ss:                                            ; preds = %bb.sr, %._crit_edge.i.i.i.i.i176.i.i
  %.1.i.i = phi i32 [ %i.efr, %bb.sr ], [ %.0228.i.i, %._crit_edge.i.i.i.i.i176.i.i ]
  %.2.i.i.i.i.i.i.i = phi ptr [ %i.egl, %bb.sr ], [ %.029.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i176.i.i ] ; 2 uses
  %.val.val.i.i.i.i.i.i.i = load ptr, ptr %i.dtq, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #27, !noalias !1091
  %i.egm = add i32 %.1.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.egn = zext i32 %i.egm to i64
  %i.ego = getelementptr inbounds nuw [56 x i8], ptr %.val.val.i.i.i.i.i.i.i, i64 %i.egn ; 3 uses
  store ptr %i.dqi, ptr %22, align 8, !tbaa !16, !alias.scope !1206, !noalias !1091
  %i.egp = load ptr, ptr %i.ego, align 8, !tbaa !22, !noalias !1206 ; 2 uses
  %i.egq = getelementptr inbounds nuw i8, ptr %i.ego, i64 8
  %i.egr = load i64, ptr %i.egq, align 8, !tbaa !18, !noalias !1206 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #27, !noalias !1209
  store i64 %i.egr, ptr %i.p, align 8, !tbaa !56, !noalias !1209
  %i.egs = icmp ugt i64 %i.egr, 15
  br i1 %i.egs, label %bb.st, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.st:                                            ; preds = %bb.ss
  %i.egt = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %22, ptr noundef nonnull align 8 dereferenceable(8) %i.p, i64 noundef 0) #27, !inline_history !1094 ; 2 uses
  store ptr %i.egt, ptr %22, align 8, !tbaa !22, !alias.scope !1206, !noalias !1091
  %i.egu = load i64, ptr %i.p, align 8, !tbaa !56, !noalias !1209
  store i64 %i.egu, ptr %i.dqi, align 8, !tbaa !21, !alias.scope !1206, !noalias !1091
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.st, %bb.ss
  %i.egv = phi ptr [ %i.egt, %bb.st ], [ %i.dqi, %bb.ss ] ; 2 uses
  switch i64 %i.egr, label %bb.sv [
    i64 1, label %bb.su
    i64 0, label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i.i.i
  ]

bb.su:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.egw = load i8, ptr %i.egp, align 1, !tbaa !21
  store i8 %i.egw, ptr %i.egv, align 1, !tbaa !21
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i.i.i

bb.sv:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.egv, ptr align 1 %i.egp, i64 %i.egr, i1 false)
  br label %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i.i.i

_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i.i.i: ; preds = %bb.sv, %bb.su, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.egx = load i64, ptr %i.p, align 8, !tbaa !56, !noalias !1209 ; 2 uses
  store i64 %i.egx, ptr %i.dqj, align 8, !tbaa !18, !alias.scope !1206, !noalias !1091
  %i.egy = load ptr, ptr %22, align 8, !tbaa !22, !alias.scope !1206, !noalias !1091
  %i.egz = getelementptr inbounds nuw i8, ptr %i.egy, i64 %i.egx
  store i8 0, ptr %i.egz, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #27, !noalias !1209
  %i.eha = getelementptr inbounds nuw i8, ptr %i.ego, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dqk, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eha, i64 24, i1 false)
  %i.ehb = call fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14TypeeqERKS0_(ptr noundef nonnull readonly align 8 dereferenceable(56) %.2.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %22), !inline_history !1094
  %i.ehc = load ptr, ptr %22, align 8, !tbaa !22, !noalias !1091 ; 2 uses
  %i.ehd = icmp eq ptr %i.ehc, %i.dqi
  br i1 %i.ehd, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZN12_GLOBAL__N_111NeonEmitter12getIntrinsicEN4llvm9StringRefENS4_8ArrayRefINS2_4TypeEEESt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE3$_0EclIPKS7_EEbT_.exit.i.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNK12_GLOBAL__N_19Intrinsic12getParamTypeEj.exit.i.i.i.i
end_hunk_0
