Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-jitlink?download=true
inline.NumInlined: 18035
inline.NumDeleted: 8565
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL16addSessionInputsRN4llvm7SessionE:bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %125, i64 24 ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %126, i64 8 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %127, i64 8 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %129, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.bn, %.lr.ph.i78
  %i.rl = phi ptr [ %i.rb, %.lr.ph.i78 ], [ %i.wb, %bb.bn ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %123) #38, !noalias !2872
  store ptr %122, ptr %123, align 8, !tbaa !2873, !noalias !2872
  store ptr %151, ptr %i.rd, align 8, !tbaa !2874, !noalias !2872
  store ptr %1, ptr %i.re, align 8, !tbaa !378, !noalias !2872
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #38, !noalias !2872
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !117, !noalias !2872
  store ptr %i.rm, ptr %124, align 8, !tbaa !156, !noalias !2872
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !148, !noalias !2872
  store i64 %i.ro, ptr %i.rf, align 8, !tbaa !155, !noalias !2872
  call void @llvm.lifetime.start.p0(ptr nonnull %125) #38, !noalias !2872
  call void @llvm.experimental.noalias.scope.decl(metadata !2875)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2872
  store i8 61, ptr %i.o, align 1, !tbaa !118, !noalias !2876
  call void @llvm.experimental.noalias.scope.decl(metadata !2877)
  %i.rp = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr nonnull %i.o, i64 1, i64 noundef 0) #38, !noalias !2878 ; 3 uses
  %i.rq = icmp eq i64 %i.rp, -1
  br i1 %i.rq, label %_ZNK4llvm9StringRef5splitEc.exit.thread.i, label %_ZNK4llvm9StringRef5splitEc.exit.i

_ZNK4llvm9StringRef5splitEc.exit.thread.i:        ; preds = %bb.ax
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, i8 0, i64 16, i1 false), !alias.scope !2879, !noalias !2872
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %125, ptr noundef nonnull align 8 dereferenceable(16) %124, i64 16, i1 false), !tbaa.struct !615, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2872
  br label %.critedge.i79

_ZNK4llvm9StringRef5splitEc.exit.i:               ; preds = %bb.ax
  %i.rr = load i64, ptr %i.rf, align 8, !tbaa !155, !noalias !2878 ; 4 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.rp, i64 %i.rr)
  %i.rs = load ptr, ptr %124, align 8, !tbaa !156, !noalias !2878 ; 2 uses
  %i.rt = add nuw i64 %i.rp, 1                    ; 2 uses
  %.sroa.speculated4.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.rr, i64 %i.rt) ; 2 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.sroa.speculated4.i.i.i.i
  %i.rv = sub nuw i64 %i.rr, %.sroa.speculated4.i.i.i.i
  store ptr %i.rs, ptr %125, align 8, !tbaa !157, !alias.scope !2879, !noalias !2872
  store i64 %.sroa.speculated.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !tbaa !147, !alias.scope !2879, !noalias !2872
  store ptr %i.ru, ptr %i.rg, align 8, !tbaa !157, !alias.scope !2879, !noalias !2872
  store i64 %i.rv, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !147, !alias.scope !2879, !noalias !2872
  %.not250.i = icmp ugt i64 %i.rr, %i.rt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2872
  br i1 %.not250.i, label %bb.bc, label %.critedge.i79

.critedge.i79:                                    ; preds = %_ZNK4llvm9StringRef5splitEc.exit.i, %_ZNK4llvm9StringRef5splitEc.exit.thread.i
  %.val.val.i = load ptr, ptr %122, align 8, !tbaa !682, !noalias !2872 ; 2 uses
  %.val.val.val.i = load ptr, ptr %.val.val.i, align 8, !tbaa !117, !noalias !2880
  %i.rw = getelementptr i8, ptr %.val.val.i, i64 8
  %.val.val.val57.i = load i64, ptr %i.rw, align 8, !tbaa !148, !noalias !2880 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #38, !noalias !2882
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #38, !noalias !2882
  %i.rx = getelementptr inbounds nuw i8, ptr %120, i64 16 ; 4 uses
  store ptr %i.rx, ptr %120, align 8, !tbaa !146, !alias.scope !2883, !noalias !2882
  %i.ry = getelementptr inbounds nuw i8, ptr %120, i64 8 ; 4 uses
  store i64 0, ptr %i.ry, align 8, !tbaa !148, !alias.scope !2883, !noalias !2882
  store i8 0, ptr %i.rx, align 8, !tbaa !118, !alias.scope !2883, !noalias !2882
  %i.rz = add i64 %.val.val.val57.i, 26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %120, i64 noundef %i.rz) #38, !noalias !2882
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !148, !alias.scope !2883, !noalias !2882
  %i.sb = add i64 %i.sa, -4611686018427387878
  %i.sc = icmp ult i64 %i.sb, 26
  br i1 %i.sc, label %bb.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i

bb.ay:                                            ; preds = %.critedge.i79
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.282) #40, !noalias !2882
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i: ; preds = %.critedge.i79
  %i.sd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %120, ptr noundef nonnull @.str.349, i64 noundef 26) #38, !noalias !2882 ; 0 uses
  %i.se = load i64, ptr %i.ry, align 8, !tbaa !148, !alias.scope !2883, !noalias !2882
  %i.sf = sub i64 4611686018427387903, %i.se
  %i.sg = icmp ult i64 %i.sf, %.val.val.val57.i
  br i1 %i.sg, label %bb.az, label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i

bb.az:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.282) #40, !noalias !2882
  unreachable

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i.i
  %i.sh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %120, ptr noundef %.val.val.val.i, i64 noundef %.val.val.val57.i) #38, !noalias !2882 ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2884)
  %i.si = load i64, ptr %i.ry, align 8, !tbaa !148, !noalias !2885
  %i.sj = add i64 %i.si, -4611686018427387854
  %i.sk = icmp ult i64 %i.sj, 50
  br i1 %i.sk, label %bb.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.ba:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.282) #40, !noalias !2885
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit.i.i
  %i.sl = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %120, ptr noundef nonnull @.str.350, i64 noundef 50) #38, !noalias !2885 ; 6 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %119, i64 16 ; 5 uses
  store ptr %i.sm, ptr %119, align 8, !tbaa !146, !alias.scope !2884, !noalias !2882
  %i.sn = load ptr, ptr %i.sl, align 8, !tbaa !117, !noalias !2882 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sl, i64 16 ; 5 uses
  %i.sp = icmp eq ptr %i.sn, %i.so
  br i1 %i.sp, label %bb.bb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.bb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !148, !noalias !2882 ; 3 uses
  %i.ss = icmp ult i64 %i.sr, 16
  call void @llvm.assume(i1 %i.ss)
  %i.st = add nuw nsw i64 %i.sr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sm, ptr noundef nonnull align 8 dereferenceable(1) %i.so, i64 %i.st, i1 false), !noalias !2882
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.sn, ptr %119, align 8, !tbaa !117, !alias.scope !2884, !noalias !2882
  %i.su = load i64, ptr %i.so, align 8, !tbaa !118, !noalias !2882
  store i64 %i.su, ptr %i.sm, align 8, !tbaa !118, !alias.scope !2884, !noalias !2882
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !148, !noalias !2882
  br label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bb
  %i.sv = phi i64 [ %i.sr, %bb.bb ], [ %.pre.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %119, i64 8
  store i64 %i.sv, ptr %i.sx, align 8, !tbaa !148, !alias.scope !2884, !noalias !2882
  store ptr %i.so, ptr %i.sl, align 8, !tbaa !117, !noalias !2882
  store i64 0, ptr %i.sw, align 8, !tbaa !148, !noalias !2882
  store i8 0, ptr %i.so, align 8, !tbaa !118, !noalias !2882
  %i.sy = call { i32, ptr } @_ZN4llvm22inconvertibleErrorCodeEv() #38, !noalias !2882 ; 2 uses
  %i.sz = extractvalue { i32, ptr } %i.sy, 0
  %i.ta = extractvalue { i32, ptr } %i.sy, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  %i.tb = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #41, !noalias !2887 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #38, !noalias !2887
  %i.tc = getelementptr inbounds nuw i8, ptr %118, i64 32
  store i8 4, ptr %i.tc, align 8, !tbaa !161, !noalias !2887
  %i.td = getelementptr inbounds nuw i8, ptr %118, i64 33
  store i8 1, ptr %i.td, align 1, !tbaa !160, !noalias !2887
  store ptr %119, ptr %118, align 8, !tbaa !118, !noalias !2887
  call void @_ZN4llvm11StringErrorC1ERKNS_5TwineESt10error_code(ptr noundef nonnull align 8 dereferenceable(57) %i.tb, ptr noundef nonnull align 8 dereferenceable(34) %118, i32 %i.sz, ptr %i.ta) #38, !noalias !2887
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #38, !noalias !2887
  store ptr %i.tb, ptr %0, align 8, !tbaa !168, !alias.scope !2888
  %i.te = load ptr, ptr %119, align 8, !tbaa !117, !noalias !2882 ; 2 uses
  %i.tf = icmp eq ptr %i.te, %i.sm
  br i1 %i.tf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i
  %i.tg = load i64, ptr %i.sm, align 8, !tbaa !118, !noalias !2882
  %i.th = add i64 %i.tg, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.th) #39, !noalias !2882
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.ti = load ptr, ptr %120, align 8, !tbaa !117, !noalias !2882 ; 2 uses
  %i.tj = icmp eq ptr %i.ti, %i.rx
  br i1 %i.tj, label %"_ZZL10addAliasesRN4llvm7SessionERKSt3mapIjPNS_3orc8JITDylibESt4lessIjESaISt4pairIKjS5_EEEENK3$_0clEv.exit.i", label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.tk = load i64, ptr %i.rx, align 8, !tbaa !118, !noalias !2882
  %i.tl = add i64 %i.tk, 1
  call void @_ZdlPvm(ptr noundef %i.ti, i64 noundef %i.tl) #39, !noalias !2882
  br label %"_ZZL10addAliasesRN4llvm7SessionERKSt3mapIjPNS_3orc8JITDylibESt4lessIjESaISt4pairIKjS5_EEEENK3$_0clEv.exit.i"

"_ZZL10addAliasesRN4llvm7SessionERKSt3mapIjPNS_3orc8JITDylibESt4lessIjESaISt4pairIKjS5_EEEENK3$_0clEv.exit.i": ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #38, !noalias !2882
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #38, !noalias !2882
  br label %.loopexit.sink.split.i

bb.bc:                                            ; preds = %_ZNK4llvm9StringRef5splitEc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2872
  store i8 58, ptr %i.n, align 1, !tbaa !118, !noalias !2889
  %i.tm = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %125, ptr nonnull %i.n, i64 1, i64 noundef 0) #38, !noalias !2890 ; 3 uses
  %i.tn = icmp eq i64 %i.tm, -1
  br i1 %i.tn, label %_ZNK4llvm9StringRef5splitEc.exit62.thread.i, label %_ZNK4llvm9StringRef5splitEc.exit62.i

_ZNK4llvm9StringRef5splitEc.exit62.thread.i:      ; preds = %bb.bc
  %.sroa.0129.sroa.0.0.copyload.i = load ptr, ptr %125, align 8, !tbaa !157, !noalias !2872
  %.sroa.0129.sroa.9.0.copyload.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !tbaa !147, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2872
  br label %bb.be

_ZNK4llvm9StringRef5splitEc.exit62.i:             ; preds = %bb.bc
  %i.to = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !2890 ; 3 uses
  %.sroa.speculated.i.i.i58.i = call i64 @llvm.umin.i64(i64 %i.tm, i64 %i.to) ; 2 uses
  %i.tp = load ptr, ptr %125, align 8, !tbaa !156, !noalias !2890 ; 3 uses
  %i.tq = add nuw i64 %i.tm, 1
  %.sroa.speculated4.i.i.i59.i = call i64 @llvm.umin.i64(i64 %i.to, i64 %i.tq) ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tp, i64 %.sroa.speculated4.i.i.i59.i ; 2 uses
  %i.ts = sub nuw i64 %i.to, %.sroa.speculated4.i.i.i59.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2872
  %i.tt = icmp eq i64 %i.ts, 0
  br i1 %i.tt, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %_ZNK4llvm9StringRef5splitEc.exit62.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZNK4llvm9StringRef5splitEc.exit62.i, %_ZNK4llvm9StringRef5splitEc.exit62.thread.i
  %.sroa.14.0.i = phi ptr [ %i.tr, %_ZNK4llvm9StringRef5splitEc.exit62.i ], [ %.sroa.0129.sroa.0.0.copyload.i, %_ZNK4llvm9StringRef5splitEc.exit62.thread.i ], [ %i.tp, %bb.bd ]
  %.sroa.19.0.i = phi i64 [ %i.ts, %_ZNK4llvm9StringRef5splitEc.exit62.i ], [ %.sroa.0129.sroa.9.0.copyload.i, %_ZNK4llvm9StringRef5splitEc.exit62.thread.i ], [ %.sroa.speculated.i.i.i58.i, %bb.bd ]
  %.sroa.9129.0.i = phi i64 [ %.sroa.speculated.i.i.i58.i, %_ZNK4llvm9StringRef5splitEc.exit62.i ], [ 0, %_ZNK4llvm9StringRef5splitEc.exit62.thread.i ], [ 0, %bb.bd ] ; 3 uses
  %.sroa.0127.0.i = phi ptr [ %i.tp, %_ZNK4llvm9StringRef5splitEc.exit62.i ], [ null, %_ZNK4llvm9StringRef5splitEc.exit62.thread.i ], [ %i.tr, %bb.bd ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %126) #38, !noalias !2872
  call fastcc void @"_ZZL10addAliasesRN4llvm7SessionERKSt3mapIjPNS_3orc8JITDylibESt4lessIjESaISt4pairIKjS5_EEEENK3$_1clENS_9StringRefE"(ptr dead_on_unwind noalias writable align 8 %126, ptr noundef nonnull align 8 dereferenceable(24) %123, ptr %.sroa.0127.0.i, i64 %.sroa.9129.0.i), !noalias !2872
  %i.tu = load i8, ptr %i.rh, align 8, !noalias !2872
  %i.tv = trunc i8 %i.tu to i1
  br i1 %i.tv, label %.critedge56.i, label %bb.bf

.critedge56.i:                                    ; preds = %bb.be
  call void @llvm.experimental.noalias.scope.decl(metadata !2891)
  %i.tw = load i64, ptr %126, align 8, !tbaa !169, !noalias !2892
  %i.tx = inttoptr i64 %i.tw to ptr
  store ptr %i.tx, ptr %0, align 8, !tbaa !168, !alias.scope !2892
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #38, !noalias !2872
  br label %.loopexit.sink.split.i

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2872
  store i8 58, ptr %i.m, align 1, !tbaa !118, !noalias !2893
  %i.ty = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %i.rg, ptr nonnull %i.m, i64 1, i64 noundef 0) #38, !noalias !2894 ; 3 uses
  %i.tz = icmp eq i64 %i.ty, -1
  br i1 %i.tz, label %_ZNK4llvm9StringRef5splitEc.exit68.thread.i, label %_ZNK4llvm9StringRef5splitEc.exit68.i

_ZNK4llvm9StringRef5splitEc.exit68.thread.i:      ; preds = %bb.bf
  %.sroa.0114.sroa.0.0.copyload.i = load ptr, ptr %i.rg, align 8, !tbaa !157, !noalias !2872
  %.sroa.0114.sroa.8.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !147, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2872
  br label %.thread.i

_ZNK4llvm9StringRef5splitEc.exit68.i:             ; preds = %bb.bf
  %i.ua = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !155, !noalias !2894 ; 3 uses
  %.sroa.speculated.i.i.i64.i = call i64 @llvm.umin.i64(i64 %i.ty, i64 %i.ua) ; 3 uses
  %i.ub = load ptr, ptr %i.rg, align 8, !tbaa !156, !noalias !2894 ; 4 uses
  %i.uc = add nuw i64 %i.ty, 1
  %.sroa.speculated4.i.i.i65.i = call i64 @llvm.umin.i64(i64 %i.ua, i64 %i.uc) ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 %.sroa.speculated4.i.i.i65.i ; 3 uses
  %i.ue = sub nuw i64 %i.ua, %.sroa.speculated4.i.i.i65.i ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2872
  %i.uf = icmp eq i64 %i.ue, 0
  br i1 %i.uf, label %.thread.i, label %bb.bg

bb.bg:                                            ; preds = %_ZNK4llvm9StringRef5splitEc.exit68.i
  %i.ug = icmp eq i64 %.sroa.speculated.i.i.i64.i, 0
  br i1 %i.ug, label %.thread.i, label %bb.bh

.thread.i:                                        ; preds = %bb.bg, %_ZNK4llvm9StringRef5splitEc.exit68.i, %_ZNK4llvm9StringRef5splitEc.exit68.thread.i
  %.sroa.0115.0167.i = phi ptr [ %i.ub, %bb.bg ], [ null, %_ZNK4llvm9StringRef5splitEc.exit68.thread.i ], [ %i.ud, %_ZNK4llvm9StringRef5splitEc.exit68.i ]
  %.sroa.11.sroa.7.0175.i = phi i64 [ %i.ue, %bb.bg ], [ %.sroa.0114.sroa.8.0.copyload.i, %_ZNK4llvm9StringRef5splitEc.exit68.thread.i ], [ %.sroa.speculated.i.i.i64.i, %_ZNK4llvm9StringRef5splitEc.exit68.i ]
  %.sroa.11.sroa.0.0173.i = phi ptr [ %i.ud, %bb.bg ], [ %.sroa.0114.sroa.0.0.copyload.i, %_ZNK4llvm9StringRef5splitEc.exit68.thread.i ], [ %i.ub, %_ZNK4llvm9StringRef5splitEc.exit68.i ]
  %i.uh = icmp eq i64 %.sroa.9129.0.i, 0
  %spec.select176.i = select i1 %i.uh, ptr %.sroa.0115.0167.i, ptr %.sroa.0127.0.i
  br label %bb.bh

bb.bh:                                            ; preds = %.thread.i, %bb.bg
  %.sroa.11.sroa.7.0174.i = phi i64 [ %.sroa.11.sroa.7.0175.i, %.thread.i ], [ %i.ue, %bb.bg ]
  %.sroa.11.sroa.0.0172.i = phi ptr [ %.sroa.11.sroa.0.0173.i, %.thread.i ], [ %i.ud, %bb.bg ]
  %.sroa.0114.sroa.8.1.i = phi i64 [ %.sroa.9129.0.i, %.thread.i ], [ %.sroa.speculated.i.i.i64.i, %bb.bg ]
  %.sroa.0114.sroa.0.1.i = phi ptr [ %spec.select176.i, %.thread.i ], [ %i.ub, %bb.bg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %127) #38, !noalias !2872
  call fastcc void @"_ZZL10addAliasesRN4llvm7SessionERKSt3mapIjPNS_3orc8JITDylibESt4lessIjESaISt4pairIKjS5_EEEENK3$_1clENS_9StringRefE"(ptr dead_on_unwind noalias writable align 8 %127, ptr noundef nonnull align 8 dereferenceable(24) %123, ptr %.sroa.0114.sroa.0.1.i, i64 %.sroa.0114.sroa.8.1.i), !noalias !2872
  %i.ui = load i8, ptr %i.ri, align 8, !noalias !2872
  %i.uj = trunc i8 %i.ui to i1                    ; 2 uses
  br i1 %i.uj, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.thread.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.uk = load ptr, ptr %i.rj, align 8, !tbaa !185, !noalias !2895
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !380, !noalias !2896
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %128, ptr noundef nonnull align 8 dereferenceable(64) %i.um, ptr %.sroa.11.sroa.0.0172.i, i64 %.sroa.11.sroa.7.0174.i), !noalias !2872
  %i.un = load ptr, ptr %128, align 8, !tbaa !423, !noalias !2872
  store ptr null, ptr %128, align 8, !tbaa !423, !noalias !2872
  call void @llvm.lifetime.start.p0(ptr nonnull %129) #38, !noalias !2872
  %i.uo = load ptr, ptr %126, align 8, !tbaa !574, !noalias !2872
  store ptr %i.uo, ptr %129, align 8, !tbaa !684, !noalias !2872
  %i.up = load ptr, ptr %127, align 8, !tbaa !574, !noalias !2872 ; 4 uses
  store ptr %i.up, ptr %i.rk, align 8, !tbaa !685, !noalias !2872
  %i.uq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc8JITDylibES5_ENS1_INS3_15SymbolStringPtrENS3_19SymbolAliasMapEntryENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEENS9_IS6_vEENSC_IS6_SE_EEEES6_SE_SF_SG_E24lookupOrInsertIntoBucketIS6_JEEES2_IPSG_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %121, ptr noundef nonnull align 8 dereferenceable(16) %129), !noalias !2872
  %.fca.0.extract.i.i80 = extractvalue { ptr, i8 } %i.uq, 0
  %i.ur = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i80, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %130) #38, !noalias !2872
  %i.us = load ptr, ptr %i.rj, align 8, !tbaa !185, !noalias !2897
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !380, !noalias !2898
  call void @_ZN4llvm3orc16SymbolStringPool6internENS_9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::orc::SymbolStringPtr") align 8 %130, ptr noundef nonnull align 8 dereferenceable(64) %i.uu, ptr %.sroa.14.0.i, i64 %.sroa.19.0.i), !noalias !2872
  %i.uv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.ur, ptr noundef nonnull align 8 dereferenceable(8) %130), !noalias !2872
  %.fca.0.extract.i72.i = extractvalue { ptr, i8 } %i.uv, 0 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i72.i, i64 8 ; 2 uses
  %i.ux = load ptr, ptr %i.uw, align 8, !tbaa !397, !noalias !2872 ; 2 uses
  %i.uy = ptrtoint ptr %i.ux to i64
  %notsub.i.i.i.i.i = add i64 %i.uy, -1
  %i.uz = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.uz, label %bb.bj, label %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.va = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vb = atomicrmw add ptr %i.va, i64 -1 seq_cst, align 8, !noalias !2872 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit.i

_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit.i:  ; preds = %bb.bj, %bb.bi
  store ptr %i.un, ptr %i.uw, align 8, !tbaa !423, !noalias !2872
  %i.vc = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i72.i, i64 16
  store i16 4096, ptr %i.vc, align 8, !noalias !2872
  %i.vd = load ptr, ptr %130, align 8, !tbaa !397, !noalias !2872 ; 2 uses
  %i.ve = ptrtoint ptr %i.vd to i64
  %notsub.i.i.i.i81 = add i64 %i.ve, -1
  %i.vf = icmp ult i64 %notsub.i.i.i.i81, -32
  br i1 %i.vf, label %bb.bk, label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i

bb.bk:                                            ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit.i
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vh = atomicrmw add ptr %i.vg, i64 -1 seq_cst, align 8, !noalias !2872 ; 0 uses
  br label %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i

_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i:     ; preds = %bb.bk, %_ZN4llvm3orc19SymbolAliasMapEntryaSEOS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #38, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #38, !noalias !2872
  %i.vi = load ptr, ptr %128, align 8, !tbaa !397, !noalias !2872 ; 2 uses
  %i.vj = ptrtoint ptr %i.vi to i64
  %notsub.i.i.i74.i = add i64 %i.vj, -1
  %i.vk = icmp ult i64 %notsub.i.i.i74.i, -32
  br i1 %i.vk, label %bb.bl, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.i

bb.bl:                                            ; preds = %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vm = atomicrmw add ptr %i.vl, i64 -1 seq_cst, align 8, !noalias !2872 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.i:       ; preds = %bb.bl, %_ZN4llvm3orc19SymbolAliasMapEntryD2Ev.exit.i
  %i.vn = load i8, ptr %i.ri, align 8, !noalias !2872
  %i.vo = trunc i8 %i.vn to i1
  %.not.i.i77.i = icmp ne ptr %i.up, null
  %or.cond249.not.i = select i1 %i.vo, i1 %.not.i.i77.i, i1 false
  br i1 %or.cond249.not.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i78.i, label %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit79.i

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.thread.i: ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !2899)
  %i.vp = load i64, ptr %127, align 8, !tbaa !169, !noalias !2900
  %i.vq = inttoptr i64 %i.vp to ptr
  store ptr %i.vq, ptr %0, align 8, !tbaa !168, !alias.scope !2900
  br label %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit79.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i78.i: ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.i
  %i.vr = load ptr, ptr %i.up, align 8, !tbaa !103, !noalias !2872
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8, !noalias !2872
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(8) %i.up) #38, !noalias !2872, !inline_history !2574
  br label %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit79.i

_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit79.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i78.i, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.thread.i, %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit75.i
  call void @llvm.lifetime.end.p0(ptr nonnull %127) #38, !noalias !2872
  %i.vu = load i8, ptr %i.rh, align 8, !noalias !2872
  %i.vv = trunc i8 %i.vu to i1
  br i1 %i.vv, label %bb.bm, label %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit83.i

bb.bm:                                            ; preds = %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit79.i
  %i.vw = load ptr, ptr %126, align 8, !tbaa !169, !noalias !2872 ; 3 uses
  %.not.i.i81.i = icmp eq ptr %i.vw, null
  br i1 %.not.i.i81.i, label %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit83.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i82.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i82.i: ; preds = %bb.bm
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !103, !noalias !2872
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8, !noalias !2872
  call void %i.vz(ptr noundef nonnull align 8 dereferenceable(8) %i.vw) #38, !noalias !2872, !inline_history !2574
  br label %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit83.i

_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit83.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i.i82.i, %bb.bm, %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit79.i
  call void @llvm.lifetime.end.p0(ptr nonnull %126) #38, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #38, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #38, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #38, !noalias !2872
  br i1 %i.uj, label %.loopexit.i, label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit83.i
  %i.wa = load ptr, ptr %122, align 8, !tbaa !682, !noalias !2872
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 32 ; 3 uses
  store ptr %i.wb, ptr %122, align 8, !tbaa !682, !noalias !2872
  %.not.i82 = icmp eq ptr %i.wb, %i.rc
  br i1 %.not.i82, label %._crit_edge.i83, label %bb.ax, !llvm.loop !2575

.loopexit.sink.split.i:                           ; preds = %.critedge56.i, %"_ZZL10addAliasesRN4llvm7SessionERKSt3mapIjPNS_3orc8JITDylibESt4lessIjESaISt4pairIKjS5_EEEENK3$_0clEv.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %125) #38, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #38, !noalias !2872
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #38, !noalias !2872
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %_ZN4llvm8ExpectedIPNS_3orc8JITDylibEED2Ev.exit83.i, %.loopexit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #38, !noalias !2872
  br label %.critedge52.i

._crit_edge.i83:                                  ; preds = %bb.bn
  %.pre.i84 = load ptr, ptr %121, align 8, !tbaa !688, !noalias !2901
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %121, i64 8
  %.pre193.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !689, !noalias !2901 ; 4 uses
  %.phi.trans.insert194.i = getelementptr inbounds nuw i8, ptr %121, i64 20
  %.pre195.i = load i32, ptr %.phi.trans.insert194.i, align 4, !tbaa !690, !noalias !2901 ; 2 uses
  %.phi.trans.insert196.i = getelementptr inbounds nuw i8, ptr %121, i64 16
  %.pre197.i = load i32, ptr %.phi.trans.insert196.i, align 8, !tbaa !691, !noalias !2901
  %i.wc = icmp eq i32 %.pre197.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #38, !noalias !2872
  %i.wd = zext i32 %.pre195.i to i64              ; 3 uses
  %.idx251.i = mul nuw nsw i64 %i.wd, 40          ; 2 uses
  %.not.i.not.i.i.i = icmp eq i32 %.pre195.i, 0
  %or.cond.i = select i1 %i.wc, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm5ErrorD2Ev.exit89.i, label %bb.bo

bb.bo:                                            ; preds = %._crit_edge.i83
  %i.we = add nuw nsw i64 %i.wd, 31
  %i.wf = lshr i64 %i.we, 5                       ; 4 uses
  %i.wg = load i32, ptr %.pre193.i, align 4, !tbaa !338, !noalias !2902 ; 2 uses
  %i.wh = icmp eq i32 %i.wg, 0
  br i1 %i.wh, label %.lr.ph.i.i.i.i98.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc8JITDylibES5_ENS1_INS3_15SymbolStringPtrENS3_19SymbolAliasMapEntryENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEENS9_IS6_vEENSC_IS6_SE_EEEES6_SE_SF_SG_E5beginEv.exit.i

.lr.ph.i.i.i.i98.preheader:                       ; preds = %bb.bo
  %i.wi = icmp eq i64 %i.wf, 1
  br i1 %i.wi, label %_ZN4llvm5ErrorD2Ev.exit89.i, label %.lr.ph867

.lr.ph.i.i.i.i98:                                 ; preds = %.lr.ph867
  %i.wj = add nuw nsw i64 %i.wl, 1                ; 2 uses
  %i.wk = icmp eq i64 %i.wj, %i.wf
  br i1 %i.wk, label %_ZN4llvm5ErrorD2Ev.exit89.i, label %.lr.ph867, !llvm.loop !2580

.lr.ph867:                                        ; preds = %.lr.ph.i.i.i.i98.preheader, %.lr.ph.i.i.i.i98
  %i.wl = phi i64 [ %i.wj, %.lr.ph.i.i.i.i98 ], [ 1, %.lr.ph.i.i.i.i98.preheader ] ; 3 uses
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.pre193.i, i64 %i.wl
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !338, !noalias !2902 ; 2 uses
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %.lr.ph.i.i.i.i98, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !2580

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph867
  %i.wp = mul i64 %i.wl, 1280
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc8JITDylibES5_ENS1_INS3_15SymbolStringPtrENS3_19SymbolAliasMapEntryENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEENS9_IS6_vEENSC_IS6_SE_EEEES6_SE_SF_SG_E5beginEv.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc8JITDylibES5_ENS1_INS3_15SymbolStringPtrENS3_19SymbolAliasMapEntryENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEENS9_IS6_vEENSC_IS6_SE_EEEES6_SE_SF_SG_E5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i, %bb.bo
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.bo ], [ %i.wp, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.wg, %bb.bo ], [ %i.wn, %._crit_edge.i.loopexit.i.i.i ]
  %i.wq = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow.i = mul nuw nsw i32 %i.wq, 40
  %.idx.i = zext nneg i32 %narrow.i to i64
  %i.wr = add i64 %.012.lcssa.i.i.i.i, %.idx.i    ; 2 uses
  %.not177185.i = icmp eq i64 %i.wr, %.idx251.i
  br i1 %.not177185.i, label %_ZN4llvm5ErrorD2Ev.exit89.i, label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_3orc8JITDylibES5_ENS1_INS3_15SymbolStringPtrENS3_19SymbolAliasMapEntryENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEENS9_IS6_vEENSC_IS6_SE_EEEES6_SE_SF_SG_E5beginEv.exit.i
  %i.ws = getelementptr inbounds nuw i8, ptr %116, i64 8
  %i.wt = getelementptr inbounds nuw i8, ptr %116, i64 16
  %i.wu = getelementptr inbounds nuw i8, ptr %116, i64 20 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %117, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %117, i64 16
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN4llvm16DenseMapIteratorISt4pairIPNS_3orc8JITDylibES4_ENS_8DenseMapINS2_15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEENS9_IS5_vEENSC_IS5_SE_EELb0EEppEv.exit.i, %.lr.ph187.i
  %.pn.i = phi i64 [ %i.wr, %.lr.ph187.i ], [ %i.zu, %_ZN4llvm16DenseMapIteratorISt4pairIPNS_3orc8JITDylibES4_ENS_8DenseMapINS2_15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_S8_EEEENS9_IS5_vEENSC_IS5_SE_EELb0EEppEv.exit.i ] ; 2 uses
  %.sroa.0106.0186.i = getelementptr i8, ptr %.pre.i84, i64 %.pn.i ; 6 uses
  %.sroa.0102.0.copyload.i = load ptr, ptr %.sroa.0106.0186.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %.sroa.0106.0186.i, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i85, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %131) #38, !noalias !2872
  %i.wx = getelementptr inbounds nuw i8, ptr %.sroa.0106.0186.i, i64 16 ; 2 uses
  %i.wy = getelementptr inbounds nuw i8, ptr %.sroa.0106.0186.i, i64 24
  %i.wz = getelementptr inbounds nuw i8, ptr %.sroa.0106.0186.i, i64 32 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %.sroa.0106.0186.i, i64 36
  call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %i.xb = load <2 x i32>, ptr %i.wz, align 8, !tbaa !338
  store i32 0, ptr %i.wz, align 8, !tbaa !338
  store i32 0, ptr %i.xa, align 4, !tbaa !338
  %i.xc = load <2 x ptr>, ptr %i.wx, align 8, !tbaa !174
  store ptr null, ptr %i.wx, align 8, !tbaa !692
  store ptr null, ptr %i.wy, align 8, !tbaa !513
  call void @llvm.lifetime.start.p0(ptr nonnull %116), !noalias !2872
  %i.xd = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #41, !noalias !2903 ; 2 uses
  store <2 x ptr> %i.xc, ptr %116, align 16, !tbaa !174, !noalias !2904
  store <2 x i32> %i.xb, ptr %i.wt, align 16, !tbaa !338, !noalias !2904
  call void @_ZN4llvm3orc28ReExportsMaterializationUnitC1EPNS0_8JITDylibENS0_19JITDylibLookupFlagsENS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S7_EEEE(ptr noundef nonnull align 8 dereferenceable(80) %i.xd, ptr noundef %.sroa.5.0.copyload.i, i32 noundef 0, ptr nofree noundef nonnull align 8 dereferenceable(24) %116) #38, !noalias !2903
  store ptr %i.xd, ptr %131, align 8, !tbaa !694, !alias.scope !2903, !noalias !2872
  %i.xe = load i32, ptr %i.wu, align 4, !tbaa !486, !noalias !2904 ; 2 uses
  %i.xf = icmp eq i32 %i.xe, 0
  br i1 %i.xf, label %_ZSt11make_uniqueIN4llvm3orc28ReExportsMaterializationUnitEJPNS1_8JITDylibERNS1_19JITDylibLookupFlagsENS0_8DenseMapINS1_15SymbolStringPtrENS1_19SymbolAliasMapEntryENS0_12DenseMapInfoIS8_vEENS0_6detail12DenseMapPairIS8_S9_EEEEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit.i, label %.lr.ph7.preheader.i.i.i.i86

.lr.ph7.preheader.i.i.i.i86:                      ; preds = %bb.bp
  %i.xg = load ptr, ptr %116, align 16, !tbaa !487, !noalias !2904
  %i.xh = load ptr, ptr %i.ws, align 8, !tbaa !488, !noalias !2904
  %i.xi = zext i32 %i.xe to i64
  %i.xj = add nuw nsw i64 %i.xi, 31
end_hunk_0
