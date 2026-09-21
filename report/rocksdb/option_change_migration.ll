Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/option_change_migration?download=true
inline.NumInlined: 1368
inline.NumDeleted: 735
begin_hunk_0_@_ZN7rocksdb21OptionChangeMigrationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaISC_EESA_SG_:bb.a
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xb) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i, %bb.dv
  %.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.vn, %bb.dv ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i269.i ], [ %.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268.i ]
  %i.xc = load ptr, ptr %39, align 8, !tbaa !31, !noalias !272 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !32, !noalias !272
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18, !noalias !272
  br label %common.resume

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.bh
  %i.xh = add nuw i64 %.018293.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.xh, %i.g
  br i1 %exitcond.not.i, label %.thread218, label %.lr.ph.i, !llvm.loop !224

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i246.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18, !noalias !272
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #18, !noalias !272
  br label %bb.ee

.thread218:                                       ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %.preheader.i
  %i.xi = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr null, ptr %i.xi, align 8, !tbaa !37, !alias.scope !302
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 6, i1 false), !alias.scope !302
  br label %bb.eh

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i, %_ZN7rocksdb6StatusD2Ev.exit174
  %common.resume.op = phi { ptr, i32 } [ %.pn27.pn.pn.pn.pn, %_ZN7rocksdb6StatusD2Ev.exit174 ], [ %.pn42.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116.i ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.i ]
  resume { ptr, i32 } %common.resume.op

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i246.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.i
  %.pr = load i8, ptr %41, align 8, !tbaa !48     ; 2 uses
  %i.xj = icmp eq i8 %.pr, 0
  br i1 %i.xj, label %._crit_edge, label %bb.ef

._crit_edge:                                      ; preds = %bb.ee
  %.pre273 = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !303
  %.pre274 = load ptr, ptr %3, align 8, !tbaa !24, !noalias !303
  br label %bb.eh

bb.ef:                                            ; preds = %bb.ee
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.xk, align 8, !tbaa !37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %.not.i.i = icmp eq ptr %0, %41
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusC2EOS0_.exit, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  store i8 %.pr, ptr %0, align 8, !tbaa !48
  %i.xl = getelementptr inbounds nuw i8, ptr %41, i64 1
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.xn = getelementptr inbounds nuw i8, ptr %41, i64 4
  %i.xo = load <4 x i8>, ptr %i.xl, align 1, !tbaa !32
  store <4 x i8> zeroinitializer, ptr %41, align 8, !tbaa !32
  store <4 x i8> %i.xo, ptr %i.xm, align 1, !tbaa !32
  store i8 0, ptr %i.xn, align 4, !tbaa !49
  %i.xp = getelementptr inbounds nuw i8, ptr %41, i64 5 ; 2 uses
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !32
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.xq, ptr %i.xr, align 1, !tbaa !50
  store i8 0, ptr %i.xp, align 1, !tbaa !50
  %i.xs = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !51
  store ptr null, ptr %i.xs, align 8, !tbaa !51
  store ptr %i.xt, ptr %i.xk, align 8, !tbaa !51
  br label %_ZN7rocksdb6StatusC2EOS0_.exit

bb.eh:                                            ; preds = %._crit_edge, %.thread218
  %i.xu = phi ptr [ %.pre274, %._crit_edge ], [ %i.c, %.thread218 ] ; 2 uses
  %i.xv = phi ptr [ %.pre273, %._crit_edge ], [ %i.b, %.thread218 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !303)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false), !alias.scope !303
  %.not.i34 = icmp eq ptr %i.xv, %i.xu
  br i1 %.not.i34, label %_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit, label %.lr.ph.i35

.lr.ph.i35:                                       ; preds = %bb.eh
  %i.xw = getelementptr inbounds nuw i8, ptr %17, i64 976 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %17, i64 144 ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %18, i64 144
  %i.xz = getelementptr inbounds nuw i8, ptr %18, i64 192
  %i.ya = getelementptr inbounds nuw i8, ptr %19, i64 760 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %20, i64 760 ; 3 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %20, i64 1648
  %i.yd = getelementptr inbounds nuw i8, ptr %20, i64 892
  %i.ye = getelementptr inbounds nuw i8, ptr %20, i64 896
  %i.yf = getelementptr inbounds nuw i8, ptr %20, i64 960
  %i.yg = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 3 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i, %.lr.ph.i35
  %.0 = phi i1 [ false, %.lr.ph.i35 ], [ %spec.select, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ]
  %i.yi = phi ptr [ %i.xu, %.lr.ph.i35 ], [ %i.zu, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ]
  %.02345.i = phi i64 [ 0, %.lr.ph.i35 ], [ %i.zs, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ] ; 3 uses
  %i.yj = getelementptr inbounds nuw [1008 x i8], ptr %i.yi, i64 %.02345.i ; 4 uses
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 32 ; 3 uses
  %i.yl = load ptr, ptr %5, align 8, !tbaa !24, !noalias !303
  %i.ym = getelementptr inbounds nuw [1008 x i8], ptr %i.yl, i64 %.02345.i ; 7 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18, !noalias !303
  call void @llvm.experimental.noalias.scope.decl(metadata !304)
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC1Ev(ptr noundef nonnull align 8 dereferenceable(977) %17)
          to label %.noexc.i37 unwind label %bb.eu

.noexc.i37:                                       ; preds = %bb.ei
  store i8 1, ptr %i.xw, align 8, !tbaa !306, !alias.scope !304, !noalias !303
  %i.yo = getelementptr inbounds nuw i8, ptr %i.ym, i64 248 ; 2 uses
  %i.yp = load i8, ptr %i.yo, align 8, !tbaa !307, !noalias !304
  %i.yq = icmp eq i8 %i.yp, 0
  br i1 %i.yq, label %bb.ej, label %bb.es

bb.ej:                                            ; preds = %.noexc.i37
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ym, i64 189
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !308, !range !123, !noalias !304, !noundef !124
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %bb.en, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.yu = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yk)
          to label %bb.el unwind label %bb.em     ; 0 uses

bb.el:                                            ; preds = %bb.ek
  %i.yv = getelementptr inbounds nuw i8, ptr %i.ym, i64 176
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !309, !noalias !304
  store i64 %i.yw, ptr %i.xx, align 8, !tbaa !309, !alias.scope !304, !noalias !303
  br label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i

bb.em:                                            ; preds = %bb.es, %bb.eq, %bb.eo, %bb.ek
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(977) %17) #18
  br label %.body.i

bb.en:                                            ; preds = %bb.ej
  %i.yy = getelementptr inbounds nuw i8, ptr %i.ym, i64 160
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !310, !noalias !304
  %i.za = getelementptr inbounds nuw i8, ptr %i.yj, i64 160
  %i.zb = load i32, ptr %i.za, align 8, !tbaa !310, !noalias !304
  %i.zc = icmp sgt i32 %i.yz, %i.zb
  br i1 %i.zc, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.zd = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yn)
          to label %bb.ep unwind label %bb.em     ; 0 uses

bb.ep:                                            ; preds = %bb.eo
  store i8 0, ptr %i.xw, align 8, !tbaa !306, !alias.scope !304, !noalias !303
  br label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i

bb.eq:                                            ; preds = %bb.en
  %i.ze = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yk)
          to label %bb.er unwind label %bb.em     ; 0 uses

bb.er:                                            ; preds = %bb.eq
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ym, i64 176
  %i.zg = load i64, ptr %i.zf, align 8, !tbaa !309, !noalias !304
  store i64 %i.zg, ptr %i.xx, align 8, !tbaa !309, !alias.scope !304, !noalias !303
  br label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i

bb.es:                                            ; preds = %.noexc.i37
  %i.zh = invoke noundef nonnull align 8 dereferenceable(976) ptr @_ZN7rocksdb19ColumnFamilyOptionsaSERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %17, ptr noundef nonnull align 8 dereferenceable(976) %i.yk)
          to label %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i unwind label %bb.em ; 0 uses

_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i: ; preds = %bb.es, %bb.er, %bb.ep, %bb.el
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18, !noalias !303
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %18, ptr noundef nonnull align 8 dereferenceable(976) %17)
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i
  %i.zi = load i8, ptr %i.xw, align 8, !tbaa !306, !range !123, !noalias !303, !noundef !124
  %i.zj = trunc nuw i8 %i.zi to i1
  %spec.select = select i1 %i.zj, i1 true, i1 %.0 ; 2 uses
  %52 = getelementptr i8, ptr %i.ym, i64 160
  %.val.i = load i32, ptr %52, align 8
  %.val29.i = load i8, ptr %i.yo, align 8, !tbaa !307 ; 2 uses
  %switch.i.i = icmp ult i8 %.val29.i, 2
  %53 = icmp eq i32 %.val.i, 1
  %or.cond.i.i = select i1 %switch.i.i, i1 %53, i1 false
  %54 = icmp eq i8 %.val29.i, 2
  %or.cond9.i.i = or i1 %54, %or.cond.i.i
  br i1 %or.cond9.i.i, label %bb.ew, label %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i

bb.eu:                                            ; preds = %bb.ei
  %i.zk = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ev:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_120DetermineBaseOptionsERKNS_19ColumnFamilyOptionsES3_.exit.i
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fi

bb.ew:                                            ; preds = %bb.et
  store i64 999999999999999, ptr %i.xy, align 8, !tbaa !309, !noalias !303
  store i64 999999999999999, ptr %i.xz, align 8, !tbaa !311, !noalias !303
  br label %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i

_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i: ; preds = %bb.ew, %bb.et
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #18, !noalias !303
  invoke void @_ZN7rocksdb9DBOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1736) %19, ptr noundef nonnull align 8 dereferenceable(753) %2)
          to label %.noexc30.i unwind label %bb.fd

.noexc30.i:                                       ; preds = %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.ya, ptr noundef nonnull align 8 dereferenceable(976) %18)
          to label %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i unwind label %bb.ex

bb.ex:                                            ; preds = %.noexc30.i
  %i.zm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %19) #18
  br label %.body31.i

_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i: ; preds = %.noexc30.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #18, !noalias !303
  invoke void @_ZN7rocksdb9DBOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(1736) %20, ptr noundef nonnull align 8 dereferenceable(1736) %19)
          to label %.noexc33.i unwind label %bb.fe

.noexc33.i:                                       ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(976) %i.yb, ptr noundef nonnull align 8 dereferenceable(976) %i.ya)
          to label %bb.ez unwind label %bb.ey

bb.ey:                                            ; preds = %.noexc33.i
  %i.zn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %20) #18
  br label %.body34.i

bb.ez:                                            ; preds = %.noexc33.i
  store i8 1, ptr %i.yc, align 8, !tbaa !312, !alias.scope !313, !noalias !303
  store i32 999999, ptr %i.yd, align 4, !tbaa !314, !alias.scope !313, !noalias !303
  store i32 999999, ptr %i.ye, align 8, !tbaa !315, !alias.scope !313, !noalias !303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i8 0, i64 16, i1 false), !alias.scope !313, !noalias !303
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #18, !noalias !303
  invoke void @_ZN7rocksdb19ColumnFamilyOptionsC1ERKNS_7OptionsE(ptr noundef nonnull align 8 dereferenceable(976) %21, ptr noundef nonnull align 8 dereferenceable(1736) %20)
          to label %bb.fa unwind label %bb.ff

bb.fa:                                            ; preds = %bb.ez
  %i.zo = load ptr, ptr %i.yg, align 8, !tbaa !23, !alias.scope !303 ; 3 uses
  %i.zp = load ptr, ptr %i.yh, align 8, !tbaa !125, !alias.scope !303
  %.not.i.i42 = icmp eq ptr %i.zo, %i.zp
  br i1 %.not.i.i42, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  invoke void @_ZN7rocksdb22ColumnFamilyDescriptorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19ColumnFamilyOptionsE(ptr noundef nonnull align 8 dereferenceable(1008) %i.zo, ptr noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull align 8 dereferenceable(976) %21)
          to label %.noexc36.i unwind label %bb.fg

.noexc36.i:                                       ; preds = %bb.fb
  %i.zq = load ptr, ptr %i.yg, align 8, !tbaa !23, !alias.scope !303
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 1008
  store ptr %i.zr, ptr %i.yg, align 8, !tbaa !23, !alias.scope !303
  br label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i

bb.fc:                                            ; preds = %bb.fa
  invoke void @_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr %i.zo, ptr noundef nonnull align 8 dereferenceable(32) %i.yj, ptr noundef nonnull align 8 dereferenceable(976) %21)
          to label %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i unwind label %bb.fg

_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i: ; preds = %bb.fc, %.noexc36.i
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %21) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.yb) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %20) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.ya) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %19) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %18) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(977) %17) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !303
  %i.zs = add nuw i64 %.02345.i, 1                ; 2 uses
  %i.zt = load ptr, ptr %i.a, align 8, !tbaa !23, !noalias !303
  %i.zu = load ptr, ptr %3, align 8, !tbaa !24, !noalias !303 ; 2 uses
  %i.zv = ptrtoint ptr %i.zt to i64
  %i.zw = ptrtoint ptr %i.zu to i64
  %i.zx = sub i64 %i.zv, %i.zw
  %i.zy = sdiv exact i64 %i.zx, 1008
  %i.zz = icmp ult i64 %i.zs, %i.zy
  br i1 %i.zz, label %bb.ei, label %_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit, !llvm.loop !233

bb.fd:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_131ApplySpecialSingleLevelSettingsERKNS_19ColumnFamilyOptionsEPS1_.exit.i
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i

bb.fe:                                            ; preds = %_ZN7rocksdb7OptionsC2ERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE.exit.i
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %.body34.i

bb.ff:                                            ; preds = %bb.ez
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fg:                                            ; preds = %bb.fc, %bb.fb
  %i.aad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %21) #18
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.ff
  %.pn.i41 = phi { ptr, i32 } [ %i.aad, %bb.fg ], [ %i.aac, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.yb) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %20) #18
  br label %.body34.i

.body34.i:                                        ; preds = %bb.fh, %bb.fe, %bb.ey
  %.pn.pn.i40 = phi { ptr, i32 } [ %.pn.i41, %bb.fh ], [ %i.aab, %bb.fe ], [ %i.zn, %bb.ey ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %i.ya) #18
  call void @_ZN7rocksdb9DBOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(753) dereferenceable(1736) %19) #18
  br label %.body31.i

.body31.i:                                        ; preds = %.body34.i, %bb.fd, %bb.ex
  %.pn.pn.pn.i39 = phi { ptr, i32 } [ %.pn.pn.i40, %.body34.i ], [ %i.aaa, %bb.fd ], [ %i.zm, %bb.ex ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(976) %18) #18
  br label %bb.fi

bb.fi:                                            ; preds = %.body31.i, %bb.ev
  %.pn.pn.pn.pn.i38 = phi { ptr, i32 } [ %.pn.pn.pn.i39, %.body31.i ], [ %i.zl, %bb.ev ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #18, !noalias !303
  call void @_ZN7rocksdb19ColumnFamilyOptionsD2Ev(ptr noundef nonnull align 8 dead_on_return(976) dereferenceable(977) %17) #18
  br label %.body.i

.body.i:                                          ; preds = %bb.fi, %bb.eu, %bb.em
  %.pn.pn.pn.pn.pn.i36 = phi { ptr, i32 } [ %.pn.pn.pn.pn.i38, %bb.fi ], [ %i.zk, %bb.eu ], [ %i.yx, %bb.em ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #18, !noalias !303
  br label %.body

_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit: ; preds = %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i, %bb.eh
  %.2 = phi i1 [ false, %bb.eh ], [ %spec.select, %_ZNSt6vectorIN7rocksdb22ColumnFamilyDescriptorESaIS1_EE12emplace_backIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_19ColumnFamilyOptionsEEEERS1_DpOT_.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #18
  store ptr null, ptr %43, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.aae = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 10 uses
  invoke void @_ZN7rocksdb2DB4OpenERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSC_IPNS_18ColumnFamilyHandleESaISJ_EEPSt10unique_ptrIS0_St14default_deleteIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %45, ptr noundef nonnull align 8 dereferenceable(753) %2, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull %44, ptr noundef nonnull %43)
          to label %.noexc unwind label %bb.fo

.noexc:                                           ; preds = %_ZN7rocksdb12_GLOBAL__N_132PrepareNoCompactionCFDescriptorsERKNS_9DBOptionsERKSt6vectorINS_22ColumnFamilyDescriptorESaIS5_EES9_Pb.exit
  %i.aaf = load i8, ptr %45, align 8, !tbaa !48, !alias.scope !319
  %i.aag = icmp eq i8 %i.aaf, 0
  br i1 %i.aag, label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit, label %bb.fj

bb.fj:                                            ; preds = %.noexc
  %i.aah = load ptr, ptr %44, align 8, !tbaa !128, !noalias !319 ; 2 uses
  %i.aai = load ptr, ptr %i.aae, align 8, !tbaa !128, !noalias !319 ; 2 uses
  %i.aaj = icmp eq ptr %i.aah, %i.aai
  br i1 %i.aaj, label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit, label %.lr.ph.i44

._crit_edge.i45:                                  ; preds = %bb.fl
  %.pre.i46 = load ptr, ptr %44, align 8, !tbaa !130, !noalias !319 ; 2 uses
  %.pre21.i = load ptr, ptr %i.aae, align 8, !tbaa !131, !noalias !319
  %i.aak = icmp eq ptr %.pre21.i, %.pre.i46
  br i1 %i.aak, label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit, label %_ZSt8_DestroyIPPN7rocksdb18ColumnFamilyHandleES2_EvT_S4_RSaIT0_E.exit.i.i14.i

_ZSt8_DestroyIPPN7rocksdb18ColumnFamilyHandleES2_EvT_S4_RSaIT0_E.exit.i.i14.i: ; preds = %._crit_edge.i45
  store ptr %.pre.i46, ptr %i.aae, align 8, !tbaa !131, !noalias !319
  br label %_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit

.lr.ph.i44:                                       ; preds = %bb.fj, %bb.fl
  %.sroa.017.020.i = phi ptr [ %i.aaq, %bb.fl ], [ %i.aah, %bb.fj ] ; 2 uses
  %i.aal = load ptr, ptr %.sroa.017.020.i, align 8, !tbaa !133 ; 3 uses
  %i.aam = icmp eq ptr %i.aal, null
  br i1 %i.aam, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i44
  %i.aan = load ptr, ptr %i.aal, align 8, !tbaa !135
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 8
  %i.aap = load ptr, ptr %i.aao, align 8
  call void %i.aap(ptr noundef nonnull align 8 dereferenceable(8) %i.aal) #18, !inline_history !236
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %.lr.ph.i44
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.017.020.i, i64 8 ; 2 uses
  %i.aar = icmp eq ptr %i.aaq, %i.aai
  br i1 %i.aar, label %._crit_edge.i45, label %.lr.ph.i44

_ZN7rocksdb12_GLOBAL__N_113OpenDBWithCFsERKNS_9DBOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorINS_22ColumnFamilyDescriptorESaISD_EEPSt10unique_ptrINS_2DBESt14default_deleteISJ_EEPSC_IPNS_18ColumnFamilyHandleESaISP_EE.exit: ; preds = %_ZSt8_DestroyIPPN7rocksdb18ColumnFamilyHandleES2_EvT_S4_RSaIT0_E.exit.i.i14.i, %._crit_edge.i45, %bb.fj, %.noexc
  %i.aas = getelementptr inbounds nuw i8, ptr %41, i64 1 ; 4 uses
  %i.aat = load <4 x i8>, ptr %45, align 8, !tbaa !32
  store <4 x i8> %i.aat, ptr %41, align 8, !tbaa !32
  store <4 x i8> zeroinitializer, ptr %45, align 8, !tbaa !32
  %i.aau = getelementptr inbounds nuw i8, ptr %45, i64 4 ; 2 uses
  %i.aav = load i8, ptr %i.aau, align 4, !tbaa !320, !range !123, !noundef !124
  %i.aaw = getelementptr inbounds nuw i8, ptr %41, i64 4 ; 7 uses
  store i8 %i.aav, ptr %i.aaw, align 4, !tbaa !49
  store i8 0, ptr %i.aau, align 4, !tbaa !49
  %i.aax = getelementptr inbounds nuw i8, ptr %45, i64 5 ; 2 uses
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !32
  %i.aaz = getelementptr inbounds nuw i8, ptr %41, i64 5 ; 11 uses
  store i8 %i.aay, ptr %i.aaz, align 1, !tbaa !50
  store i8 0, ptr %i.aax, align 1, !tbaa !50
  %i.aba = getelementptr inbounds nuw i8, ptr %45, i64 8 ; 3 uses
end_hunk_0
