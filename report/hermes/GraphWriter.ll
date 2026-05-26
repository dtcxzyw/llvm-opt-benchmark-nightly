inline.NumInlined: 399
inline.NumDeleted: 182
begin_hunk_0_@_ZN4llvh12DisplayGraphENS_9StringRefEbNS_12GraphProgram4NameE:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cb = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.by, ptr %i.cc, align 8, !tbaa !25
  %.sroa.5514.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store i64 %i.ca, ptr %.sroa.5514.0..sroa_idx515, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %i.bx, i64 16, i1 false), !tbaa.struct !52, !alias.scope !61
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 16) #18
  %i.cd = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 8 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr @.str.33, ptr %i.ce, align 8, !tbaa !25
  %.sroa.5509.0..sroa_idx510 = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i64 2, ptr %.sroa.5509.0..sroa_idx510, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, ptr noundef nonnull align 8 dereferenceable(32) %i.cb, i64 32, i1 false), !alias.scope !65
  call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 32) #18
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = zext nneg i32 %3 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh12DisplayGraphENS_9StringRefEbNS_12GraphProgram4NameE.2, i64 %i.cf
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 2 uses
  %i.cg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #17
  store ptr %switch.load, ptr %.sroa.13.2, align 8, !tbaa !25
  %.sroa.5504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  store i64 %i.cg, ptr %.sroa.5504.0..sroa_idx, align 8, !tbaa !21
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.ci = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !30
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !33 ; 2 uses
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = icmp ult i64 %i.cp, 29
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit122
  %i.cr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.ci, ptr noundef nonnull @.str.34, i64 noundef 29) #16 ; 0 uses
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit141

bb.n:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.cm, ptr noundef nonnull align 1 dereferenceable(29) @.str.34, i64 29, i1 false)
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !33
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 29
  store ptr %i.ct, ptr %i.cl, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit141

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit141: ; preds = %bb.m, %bb.n
  %i.cu = load ptr, ptr %6, align 8, !tbaa !17
  %i.cv = load i64, ptr %i.p, align 8, !tbaa !20
  %i.cw = load ptr, ptr %4, align 8, !tbaa !17
  %i.cx = load i64, ptr %i.bz, align 8, !tbaa !20
  %i.cy = call fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.cu, i64 %i.cv, ptr nonnull %i.cd, ptr nonnull %i.ch, ptr %i.cw, i64 %i.cx, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef 64) #18
  br label %bb.ax

bb.o:                                             ; preds = %bb.l
  %i.cz = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.35, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 2 uses
  br i1 %i.cz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.da = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.28, i64 8, ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.db, ptr %8, align 8, !tbaa !14
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.dc, align 8, !tbaa !20
  store i8 0, ptr %i.db, align 8, !tbaa !22
  br i1 %i.da, label %switch.lookup, label %.thread

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.dd, ptr %8, align 8, !tbaa !14
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.de, align 8, !tbaa !20
  store i8 0, ptr %i.dd, align 8, !tbaa !22
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.q, %bb.p
  %i.df = phi ptr [ %i.de, %bb.q ], [ %i.dc, %bb.p ] ; 3 uses
  %i.dg = phi ptr [ %i.dd, %bb.q ], [ %i.db, %bb.p ] ; 2 uses
  %i.dh = zext nneg i32 %3 to i64
  %switch.gep680 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4llvh12DisplayGraphENS_9StringRefEbNS_12GraphProgram4NameE.2, i64 %i.dh
  %switch.load681 = load ptr, ptr %switch.gep680, align 8 ; 2 uses
  %i.di = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load681) #17
  %i.dj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull %switch.load681, i64 %i.di, ptr noundef nonnull align 8 dereferenceable(32) %8)
  br i1 %i.dj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %switch.lookup
  %i.dk = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.36, i64 25, ptr noundef nonnull align 8 dereferenceable(32) %8)
  br i1 %i.dk, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r, %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.dl = load ptr, ptr %4, align 8, !tbaa !17, !noalias !69
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !20, !noalias !69 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  store ptr %i.do, ptr %9, align 8, !tbaa !14, !alias.scope !72
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 7 uses
  store i64 0, ptr %i.dp, align 8, !tbaa !20, !alias.scope !72
  store i8 0, ptr %i.do, align 8, !tbaa !22, !alias.scope !72
  %i.dq = add i64 %i.dn, 3
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %9, i64 noundef %i.dq) #16
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !20, !alias.scope !72
  %i.ds = sub i64 4611686018427387903, %i.dr
  %i.dt = icmp ult i64 %i.ds, %i.dn
  br i1 %i.dt, label %bb.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.t:                                             ; preds = %bb.s
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #20
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.s
  %i.du = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.dl, i64 noundef %i.dn) #16 ; 0 uses
  %i.dv = load i64, ptr %i.dp, align 8, !tbaa !20, !alias.scope !72
  %i.dw = add i64 %i.dv, -4611686018427387901
  %i.dx = icmp ult i64 %i.dw, 3
  br i1 %i.dx, label %bb.u, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit199

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.65) #20
  unreachable

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit199: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.dy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.38, i64 noundef 3) #16 ; 0 uses
  %i.dz = load ptr, ptr %8, align 8, !tbaa !17
  %i.ea = load i64, ptr %i.df, align 8, !tbaa !20
  %i.eb = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !25
  %.sroa.5441.0..sroa_idx442 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ea, ptr %.sroa.5441.0..sroa_idx442, align 8, !tbaa !21
  %i.ec = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr @.str.40, ptr %i.ed, align 8, !tbaa !25
  %.sroa.5436.0..sroa_idx437 = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store i64 4, ptr %.sroa.5436.0..sroa_idx437, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !tbaa.struct !52, !alias.scope !75
  call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef 16) #18
  %i.ee = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #19 ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store ptr @.str.41, ptr %i.ef, align 8, !tbaa !25
  %.sroa.5431.0..sroa_idx432 = getelementptr inbounds nuw i8, ptr %i.ee, i64 40
  store i64 18, ptr %.sroa.5431.0..sroa_idx432, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ee, ptr noundef nonnull align 8 dereferenceable(32) %i.ec, i64 32, i1 false), !alias.scope !79
  call void @_ZdlPvm(ptr noundef nonnull %i.ec, i64 noundef 32) #18
  %.sroa.29.3 = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  store ptr @.str.42, ptr %.sroa.29.3, align 8, !tbaa !25
  %.sroa.5426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  store i64 13, ptr %.sroa.5426.0..sroa_idx, align 8, !tbaa !21
  %i.eg = load ptr, ptr %4, align 8, !tbaa !17
  %i.eh = load i64, ptr %i.dm, align 8, !tbaa !20
  %i.ei = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #19 ; 15 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !25
  %.sroa.5421.0..sroa_idx422 = getelementptr inbounds nuw i8, ptr %i.ei, i64 72
  store i64 %i.eh, ptr %.sroa.5421.0..sroa_idx422, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ei, ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i64 16, i1 false), !tbaa.struct !52, !alias.scope !83
  %.012.i.i.i.i.i.i206.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %.0911.i.i.i.i.i.i207.ptr.1 = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i206.ptr.1, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i207.ptr.1, i64 16, i1 false), !tbaa.struct !52, !alias.scope !83
  %.012.i.i.i.i.i.i206.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %.0911.i.i.i.i.i.i207.ptr.2 = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i206.ptr.2, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i207.ptr.2, i64 16, i1 false), !tbaa.struct !52, !alias.scope !83
  %.012.i.i.i.i.i.i206.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %.0911.i.i.i.i.i.i207.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i206.ptr.3, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i207.ptr.3, i64 16, i1 false), !tbaa.struct !52, !alias.scope !83
  call void @_ZdlPvm(ptr noundef nonnull %i.ee, i64 noundef 64) #18
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.ei, i64 64 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 128 ; 5 uses
  %.sroa.29.5.ptr = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  store ptr @.str.43, ptr %.sroa.29.5.ptr, align 8, !tbaa !25
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 88
  store i64 2, ptr %.sroa.5416.0..sroa_idx, align 8, !tbaa !21
  %.sroa.29.6 = getelementptr inbounds nuw i8, ptr %.ptr.3, i64 32 ; 3 uses
  %i.el = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.em = load i64, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %.not.i.i228 = icmp eq ptr %.sroa.29.6, %i.ek
  br i1 %.not.i.i228, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit199
  store ptr %i.el, ptr %.sroa.29.6, align 8, !tbaa !25
  %.sroa.5411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.ptr.3, i64 40
  store i64 %i.em, ptr %.sroa.5411.0..sroa_idx, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241

bb.w:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit199
  %i.en = ptrtoint ptr %i.ek to i64
  %i.eo = ptrtoint ptr %i.ei to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp eq i64 %i.ep, 9223372036854775792
  br i1 %i.eq, label %bb.x, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229

bb.x:                                             ; preds = %bb.w
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229: ; preds = %bb.w
  %i.er = ashr exact i64 %i.ep, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i230 = call i64 @llvm.umax.i64(i64 %i.er, i64 1)
  %i.es = add nsw i64 %.sroa.speculated.i.i.i.i230, %i.er ; 2 uses
  %11 = icmp ult i64 %i.es, %i.er
  %i.et = call i64 @llvm.umin.i64(i64 %i.es, i64 576460752303423487)
  %12 = select i1 %11, i64 576460752303423487, i64 %i.et ; 3 uses
  %.not.i.i.i.i231 = icmp ne i64 %12, 0
  call void @llvm.assume(i1 %.not.i.i.i.i231)
  %i.eu = shl nuw nsw i64 %12, 4
  %i.ev = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eu) #19 ; 5 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ep ; 2 uses
  store ptr %i.el, ptr %i.ew, align 8, !tbaa !25
  %.sroa.5411.0..sroa_idx412 = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.em, ptr %.sroa.5411.0..sroa_idx412, align 8, !tbaa !21
  %.not10.i.i.i.i.i.i232 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not10.i.i.i.i.i.i232, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240, label %.lr.ph.i.i.i.i.i.i233

.lr.ph.i.i.i.i.i.i233:                            ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229, %.lr.ph.i.i.i.i.i.i233
  %.012.i.i.i.i.i.i234 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i233 ], [ %i.ev, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229 ] ; 2 uses
  %.0911.i.i.i.i.i.i235 = phi ptr [ %i.ex, %.lr.ph.i.i.i.i.i.i233 ], [ %i.ei, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i234, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i235, i64 16, i1 false), !tbaa.struct !52, !alias.scope !87
  %i.ex = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i235, i64 16 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i234, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i236 = icmp eq ptr %i.ex, %i.ek
  br i1 %.not.i.i.i.i.i.i236, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240, label %.lr.ph.i.i.i.i.i.i233, !llvm.loop !91

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240: ; preds = %.lr.ph.i.i.i.i.i.i233, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229
  %.0.lcssa.i.i.i.i.i.i238 = phi ptr [ %i.ev, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229 ], [ %i.ey, %.lr.ph.i.i.i.i.i.i233 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.ep) #18
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ev, i64 %12
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241: ; preds = %bb.v, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240
  %.sroa.77.8 = phi ptr [ %i.ez, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240 ], [ %i.ek, %bb.v ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i238.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i238, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240 ], [ %.sroa.29.6, %bb.v ]
  %.sroa.0444.8 = phi ptr [ %i.ev, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240 ], [ %i.ei, %bb.v ] ; 7 uses
  %.sroa.29.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i238.pn, i64 16 ; 3 uses
  %i.fa = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !33 ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = icmp ult i64 %i.fh, 9
  br i1 %i.fi, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241
  %i.fj = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fa, ptr noundef nonnull @.str.44, i64 noundef 9) #16
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit244

bb.z:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fe, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 9
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit244

_ZN4llvh11raw_ostreamlsEPKc.exit244:              ; preds = %bb.y, %bb.z
  %.0.i.i243 = phi ptr [ %i.fj, %bb.y ], [ %i.fa, %bb.z ]
  %i.fm = load ptr, ptr %8, align 8, !tbaa !17
  %i.fn = load i64, ptr %i.df, align 8, !tbaa !20
  %i.fo = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i243, ptr noundef %i.fm, i64 noundef %i.fn) #16 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !30
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 24 ; 3 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !33 ; 2 uses
  %i.ft = ptrtoint ptr %i.fq to i64
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = sub i64 %i.ft, %i.fu
  %i.fw = icmp ult i64 %i.fv, 13
  br i1 %i.fw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit244
  %i.fx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fo, ptr noundef nonnull @.str.45, i64 noundef 13) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit247

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.fs, ptr noundef nonnull align 1 dereferenceable(13) @.str.45, i64 13, i1 false)
  %i.fy = load ptr, ptr %i.fr, align 8, !tbaa !33
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 13
  store ptr %i.fz, ptr %i.fr, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit247

_ZN4llvh11raw_ostreamlsEPKc.exit247:              ; preds = %bb.aa, %bb.ab
  %i.ga = load ptr, ptr %8, align 8, !tbaa !17
  %i.gb = load i64, ptr %i.df, align 8, !tbaa !20
  %i.gc = load ptr, ptr %4, align 8, !tbaa !17
  %i.gd = load i64, ptr %i.dm, align 8, !tbaa !20
  %i.ge = call fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.ga, i64 %i.gb, ptr nonnull %.sroa.0444.8, ptr nonnull %.sroa.29.7, ptr %i.gc, i64 %i.gd, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br i1 %i.ge, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit306, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit247
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.gf = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.gf, ptr %10, align 8, !tbaa !14
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.gg, align 8, !tbaa !20
  store i8 0, ptr %i.gf, align 8, !tbaa !22
  %.not.i.i248 = icmp eq ptr %.sroa.29.7, %.sroa.0444.8
  %spec.select = select i1 %.not.i.i248, ptr %.sroa.29.7, ptr %.sroa.0444.8 ; 4 uses
  %i.gh = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.gi = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.not.i.i249 = icmp eq ptr %spec.select, %.sroa.77.8
  br i1 %.not.i.i249, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit
  store ptr %i.gh, ptr %spec.select, align 8, !tbaa !25
  %.sroa.5402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  store i64 %i.gi, ptr %.sroa.5402.0..sroa_idx, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262

bb.ad:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit
  %i.gj = ptrtoint ptr %.sroa.77.8 to i64
  %i.gk = ptrtoint ptr %.sroa.0444.8 to i64
  %i.gl = sub i64 %i.gj, %i.gk                    ; 4 uses
  %i.gm = icmp eq i64 %i.gl, 9223372036854775792
  br i1 %i.gm, label %bb.ae, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250: ; preds = %bb.ad
  %i.gn = ashr exact i64 %i.gl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i251 = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i251, %i.gn ; 2 uses
  %13 = icmp ult i64 %i.go, %i.gn
  %i.gp = call i64 @llvm.umin.i64(i64 %i.go, i64 576460752303423487)
  %14 = select i1 %13, i64 576460752303423487, i64 %i.gp ; 3 uses
  %.not.i.i.i.i252 = icmp ne i64 %14, 0
  call void @llvm.assume(i1 %.not.i.i.i.i252)
  %i.gq = shl nuw nsw i64 %14, 4
  %i.gr = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #19 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gl ; 2 uses
  store ptr %i.gh, ptr %i.gs, align 8, !tbaa !25
  %.sroa.5402.0..sroa_idx403 = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i64 %i.gi, ptr %.sroa.5402.0..sroa_idx403, align 8, !tbaa !21
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0444.8, i64 noundef %i.gl) #18
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %14
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262: ; preds = %bb.ac, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250
  %.sroa.77.9 = phi ptr [ %i.gt, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250 ], [ %.sroa.77.8, %bb.ac ] ; 8 uses
  %.pn = phi ptr [ %i.gr, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250 ], [ %spec.select, %bb.ac ] ; 8 uses
  %.sroa.0444.9 = phi ptr [ %i.gr, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250 ], [ %.sroa.0444.8, %bb.ac ] ; 12 uses
  %.pn685 = ptrtoint ptr %.pn to i64              ; 2 uses
  %.sroa.29.9 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 4 uses
  br i1 %i.cz, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262
  %i.gu = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.gv = load i64, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %.not.i.i263 = icmp eq ptr %.sroa.29.9, %.sroa.77.9
  br i1 %.not.i.i263, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.gu, ptr %.sroa.29.9, align 8, !tbaa !25
  %.sroa.5397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  store i64 %i.gv, ptr %.sroa.5397.0..sroa_idx, align 8, !tbaa !21
  %i.gw = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276

bb.ah:                                            ; preds = %bb.af
  %i.gx = ptrtoint ptr %.sroa.77.9 to i64
  %i.gy = ptrtoint ptr %.sroa.0444.9 to i64       ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775792
  br i1 %i.ha, label %bb.ai, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i264

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i264: ; preds = %bb.ah
  %i.hb = ashr exact i64 %i.gz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i265 = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %i.hc = add nsw i64 %.sroa.speculated.i.i.i.i265, %i.hb ; 2 uses
  %15 = icmp ult i64 %i.hc, %i.hb
  %i.hd = call i64 @llvm.umin.i64(i64 %i.hc, i64 576460752303423487)
  %16 = select i1 %15, i64 576460752303423487, i64 %i.hd ; 3 uses
  %.not.i.i.i.i266 = icmp ne i64 %16, 0
  call void @llvm.assume(i1 %.not.i.i.i.i266)
  %i.he = shl nuw nsw i64 %16, 4
  %i.hf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #19 ; 6 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.gz ; 2 uses
  store ptr %i.gu, ptr %i.hg, align 8, !tbaa !25
  %.sroa.5397.0..sroa_idx398 = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  store i64 %i.gv, ptr %.sroa.5397.0..sroa_idx398, align 8, !tbaa !21
  %.not10.i.i.i.i.i.i267 = icmp eq ptr %.sroa.0444.9, %.sroa.77.9
  br i1 %.not10.i.i.i.i.i.i267, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275, label %.lr.ph.i.i.i.i.i.i268.preheader

.lr.ph.i.i.i.i.i.i268.preheader:                  ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i264
  %i.hh = sub i64 %.pn685, %i.gy                  ; 2 uses
  %i.hi = lshr i64 %i.hh, 4
  %i.hj = add nuw nsw i64 %i.hi, 1
  %xtraiter = and i64 %i.hj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i268.prol.loopexit, label %.lr.ph.i.i.i.i.i.i268.prol

.lr.ph.i.i.i.i.i.i268.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i268.preheader, %.lr.ph.i.i.i.i.i.i268.prol
  %.012.i.i.i.i.i.i269.prol = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i.i268.prol ], [ %i.hf, %.lr.ph.i.i.i.i.i.i268.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i270.prol = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i.i268.prol ], [ %.sroa.0444.9, %.lr.ph.i.i.i.i.i.i268.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i268.prol ], [ 0, %.lr.ph.i.i.i.i.i.i268.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i269.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i270.prol, i64 16, i1 false), !tbaa.struct !52, !alias.scope !92
  %i.hk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i270.prol, i64 16 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i269.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i268.prol.loopexit, label %.lr.ph.i.i.i.i.i.i268.prol, !llvm.loop !96

.lr.ph.i.i.i.i.i.i268.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i268.prol, %.lr.ph.i.i.i.i.i.i268.preheader
  %.lcssa683.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i268.preheader ], [ %i.hl, %.lr.ph.i.i.i.i.i.i268.prol ]
  %.012.i.i.i.i.i.i269.unr = phi ptr [ %i.hf, %.lr.ph.i.i.i.i.i.i268.preheader ], [ %i.hl, %.lr.ph.i.i.i.i.i.i268.prol ]
  %.0911.i.i.i.i.i.i270.unr = phi ptr [ %.sroa.0444.9, %.lr.ph.i.i.i.i.i.i268.preheader ], [ %i.hk, %.lr.ph.i.i.i.i.i.i268.prol ]
  %i.hm = icmp ult i64 %i.hh, 48
  br i1 %i.hm, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275, label %.lr.ph.i.i.i.i.i.i268

.lr.ph.i.i.i.i.i.i268:                            ; preds = %.lr.ph.i.i.i.i.i.i268.prol.loopexit, %.lr.ph.i.i.i.i.i.i268
  %.012.i.i.i.i.i.i269 = phi ptr [ %i.hu, %.lr.ph.i.i.i.i.i.i268 ], [ %.012.i.i.i.i.i.i269.unr, %.lr.ph.i.i.i.i.i.i268.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i270 = phi ptr [ %i.ht, %.lr.ph.i.i.i.i.i.i268 ], [ %.0911.i.i.i.i.i.i270.unr, %.lr.ph.i.i.i.i.i.i268.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i269, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i270, i64 16, i1 false), !tbaa.struct !52, !alias.scope !92
  %i.hn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i270, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i269, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ho, ptr noundef nonnull align 8 dereferenceable(16) %i.hn, i64 16, i1 false), !tbaa.struct !52, !alias.scope !92
  %i.hp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i270, i64 32
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i269, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 8 dereferenceable(16) %i.hp, i64 16, i1 false), !tbaa.struct !52, !alias.scope !92
  %i.hr = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i270, i64 48 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i269, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hs, ptr noundef nonnull align 8 dereferenceable(16) %i.hr, i64 16, i1 false), !tbaa.struct !52, !alias.scope !92
  %i.ht = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i270, i64 64
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i269, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i271.3 = icmp eq ptr %i.hr, %.pn
  br i1 %.not.i.i.i.i.i.i271.3, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275, label %.lr.ph.i.i.i.i.i.i268, !llvm.loop !91

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275: ; preds = %.lr.ph.i.i.i.i.i.i268.prol.loopexit, %.lr.ph.i.i.i.i.i.i268, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i264
  %.0.lcssa.i.i.i.i.i.i273 = phi ptr [ %i.hf, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i264 ], [ %.lcssa683.unr, %.lr.ph.i.i.i.i.i.i268.prol.loopexit ], [ %i.hu, %.lr.ph.i.i.i.i.i.i268 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i273, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0444.9, i64 noundef %i.gz) #18
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %16
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276

bb.aj:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262
  %.not.i.i277 = icmp eq ptr %.sroa.29.9, %.sroa.77.9
  br i1 %.not.i.i277, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr @.str.47, ptr %.sroa.29.9, align 8, !tbaa !25
  %.sroa.5392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  store i64 9, ptr %.sroa.5392.0..sroa_idx, align 8, !tbaa !21
  %i.hx = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit290

bb.al:                                            ; preds = %bb.aj
  %i.hy = ptrtoint ptr %.sroa.77.9 to i64
  %i.hz = ptrtoint ptr %.sroa.0444.9 to i64       ; 2 uses
  %i.ia = sub i64 %i.hy, %i.hz                    ; 4 uses
  %i.ib = icmp eq i64 %i.ia, 9223372036854775792
  br i1 %i.ib, label %bb.am, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i278

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i278: ; preds = %bb.al
  %i.ic = ashr exact i64 %i.ia, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i279 = call i64 @llvm.umax.i64(i64 %i.ic, i64 1)
  %i.id = add nsw i64 %.sroa.speculated.i.i.i.i279, %i.ic ; 2 uses
  %17 = icmp ult i64 %i.id, %i.ic
  %i.ie = call i64 @llvm.umin.i64(i64 %i.id, i64 576460752303423487)
  %18 = select i1 %17, i64 576460752303423487, i64 %i.ie ; 3 uses
  %.not.i.i.i.i280 = icmp ne i64 %18, 0
  call void @llvm.assume(i1 %.not.i.i.i.i280)
  %i.if = shl nuw nsw i64 %18, 4
  %i.ig = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.if) #19 ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ia ; 2 uses
  store ptr @.str.47, ptr %i.ih, align 8, !tbaa !25
  %.sroa.5392.0..sroa_idx393 = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i64 9, ptr %.sroa.5392.0..sroa_idx393, align 8, !tbaa !21
  %.not10.i.i.i.i.i.i281 = icmp eq ptr %.sroa.0444.9, %.sroa.77.9
  br i1 %.not10.i.i.i.i.i.i281, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289, label %.lr.ph.i.i.i.i.i.i282.preheader

.lr.ph.i.i.i.i.i.i282.preheader:                  ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i278
  %i.ii = sub i64 %.pn685, %i.hz                  ; 2 uses
  %i.ij = lshr i64 %i.ii, 4
  %i.ik = add nuw nsw i64 %i.ij, 1
  %xtraiter686 = and i64 %i.ik, 3                 ; 2 uses
  %lcmp.mod687.not = icmp eq i64 %xtraiter686, 0
  br i1 %lcmp.mod687.not, label %.lr.ph.i.i.i.i.i.i282.prol.loopexit, label %.lr.ph.i.i.i.i.i.i282.prol

.lr.ph.i.i.i.i.i.i282.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i282.preheader, %.lr.ph.i.i.i.i.i.i282.prol
  %.012.i.i.i.i.i.i283.prol = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i.i282.prol ], [ %i.ig, %.lr.ph.i.i.i.i.i.i282.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.i284.prol = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i.i282.prol ], [ %.sroa.0444.9, %.lr.ph.i.i.i.i.i.i282.preheader ] ; 2 uses
  %prol.iter688 = phi i64 [ %prol.iter688.next, %.lr.ph.i.i.i.i.i.i282.prol ], [ 0, %.lr.ph.i.i.i.i.i.i282.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i283.prol, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i284.prol, i64 16, i1 false), !tbaa.struct !52, !alias.scope !98
  %i.il = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i284.prol, i64 16 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i283.prol, i64 16 ; 3 uses
  %prol.iter688.next = add i64 %prol.iter688, 1   ; 2 uses
  %prol.iter688.cmp.not = icmp eq i64 %prol.iter688.next, %xtraiter686
  br i1 %prol.iter688.cmp.not, label %.lr.ph.i.i.i.i.i.i282.prol.loopexit, label %.lr.ph.i.i.i.i.i.i282.prol, !llvm.loop !102

.lr.ph.i.i.i.i.i.i282.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i282.prol, %.lr.ph.i.i.i.i.i.i282.preheader
  %.lcssa682.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i282.preheader ], [ %i.im, %.lr.ph.i.i.i.i.i.i282.prol ]
  %.012.i.i.i.i.i.i283.unr = phi ptr [ %i.ig, %.lr.ph.i.i.i.i.i.i282.preheader ], [ %i.im, %.lr.ph.i.i.i.i.i.i282.prol ]
  %.0911.i.i.i.i.i.i284.unr = phi ptr [ %.sroa.0444.9, %.lr.ph.i.i.i.i.i.i282.preheader ], [ %i.il, %.lr.ph.i.i.i.i.i.i282.prol ]
  %i.in = icmp ult i64 %i.ii, 48
  br i1 %i.in, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289, label %.lr.ph.i.i.i.i.i.i282

.lr.ph.i.i.i.i.i.i282:                            ; preds = %.lr.ph.i.i.i.i.i.i282.prol.loopexit, %.lr.ph.i.i.i.i.i.i282
  %.012.i.i.i.i.i.i283 = phi ptr [ %i.iv, %.lr.ph.i.i.i.i.i.i282 ], [ %.012.i.i.i.i.i.i283.unr, %.lr.ph.i.i.i.i.i.i282.prol.loopexit ] ; 5 uses
  %.0911.i.i.i.i.i.i284 = phi ptr [ %i.iu, %.lr.ph.i.i.i.i.i.i282 ], [ %.0911.i.i.i.i.i.i284.unr, %.lr.ph.i.i.i.i.i.i282.prol.loopexit ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i283, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i284, i64 16, i1 false), !tbaa.struct !52, !alias.scope !98
  %i.io = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i284, i64 16
  %i.ip = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i283, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ip, ptr noundef nonnull align 8 dereferenceable(16) %i.io, i64 16, i1 false), !tbaa.struct !52, !alias.scope !98
  %i.iq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i284, i64 32
  %i.ir = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i283, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.iq, i64 16, i1 false), !tbaa.struct !52, !alias.scope !98
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i284, i64 48 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i283, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(16) %i.is, i64 16, i1 false), !tbaa.struct !52, !alias.scope !98
  %i.iu = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i284, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i283, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i285.3 = icmp eq ptr %i.is, %.pn
  br i1 %.not.i.i.i.i.i.i285.3, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289, label %.lr.ph.i.i.i.i.i.i282, !llvm.loop !91

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289: ; preds = %.lr.ph.i.i.i.i.i.i282.prol.loopexit, %.lr.ph.i.i.i.i.i.i282, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i278
  %.0.lcssa.i.i.i.i.i.i287 = phi ptr [ %i.ig, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i278 ], [ %.lcssa682.unr, %.lr.ph.i.i.i.i.i.i282.prol.loopexit ], [ %i.iv, %.lr.ph.i.i.i.i.i.i282 ]
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i287, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0444.9, i64 noundef %i.ia) #18
  %i.ix = getelementptr inbounds nuw [16 x i8], ptr %i.ig, i64 %18
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit290

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit290: ; preds = %bb.ak, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289
  %.sroa.77.11 = phi ptr [ %i.ix, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289 ], [ %.sroa.77.9, %bb.ak ] ; 5 uses
  %.sroa.29.11 = phi ptr [ %i.iw, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289 ], [ %i.hx, %bb.ak ] ; 4 uses
  %.sroa.0444.11 = phi ptr [ %i.ig, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i289 ], [ %.sroa.0444.9, %bb.ak ] ; 5 uses
  %i.iy = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.iz = load i64, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %.not.i.i291 = icmp eq ptr %.sroa.29.11, %.sroa.77.11
  br i1 %.not.i.i291, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit290
  store ptr %i.iy, ptr %.sroa.29.11, align 8, !tbaa !25
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.29.11, i64 8
  store i64 %i.iz, ptr %.sroa.5387.0..sroa_idx, align 8, !tbaa !21
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.29.11, i64 16
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276

bb.ao:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit290
  %i.jb = ptrtoint ptr %.sroa.77.11 to i64
  %i.jc = ptrtoint ptr %.sroa.0444.11 to i64
  %i.jd = sub i64 %i.jb, %i.jc                    ; 4 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775792
  br i1 %i.je, label %bb.ap, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292

bb.ap:                                            ; preds = %bb.ao
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292: ; preds = %bb.ao
  %i.jf = ashr exact i64 %i.jd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i293 = call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i.i.i293, %i.jf ; 2 uses
  %19 = icmp ult i64 %i.jg, %i.jf
  %i.jh = call i64 @llvm.umin.i64(i64 %i.jg, i64 576460752303423487)
  %20 = select i1 %19, i64 576460752303423487, i64 %i.jh ; 3 uses
  %.not.i.i.i.i294 = icmp ne i64 %20, 0
  call void @llvm.assume(i1 %.not.i.i.i.i294)
  %i.ji = shl nuw nsw i64 %20, 4
  %i.jj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ji) #19 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jd ; 2 uses
  store ptr %i.iy, ptr %i.jk, align 8, !tbaa !25
  %.sroa.5387.0..sroa_idx388 = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  store i64 %i.iz, ptr %.sroa.5387.0..sroa_idx388, align 8, !tbaa !21
  %.not10.i.i.i.i.i.i295 = icmp eq ptr %.sroa.0444.11, %.sroa.77.11
  br i1 %.not10.i.i.i.i.i.i295, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303, label %.lr.ph.i.i.i.i.i.i296

.lr.ph.i.i.i.i.i.i296:                            ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292, %.lr.ph.i.i.i.i.i.i296
  %.012.i.i.i.i.i.i297 = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i.i296 ], [ %i.jj, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292 ] ; 2 uses
  %.0911.i.i.i.i.i.i298 = phi ptr [ %i.jl, %.lr.ph.i.i.i.i.i.i296 ], [ %.sroa.0444.11, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i297, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i298, i64 16, i1 false), !tbaa.struct !52, !alias.scope !103
  %i.jl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i298, i64 16 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i297, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i299 = icmp eq ptr %i.jl, %.sroa.77.11
  br i1 %.not.i.i.i.i.i.i299, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303, label %.lr.ph.i.i.i.i.i.i296, !llvm.loop !91

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303: ; preds = %.lr.ph.i.i.i.i.i.i296, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292
  %.0.lcssa.i.i.i.i.i.i301 = phi ptr [ %i.jj, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i292 ], [ %i.jm, %.lr.ph.i.i.i.i.i.i296 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i301, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0444.11, i64 noundef %i.jd) #18
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jj, i64 %20
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303, %bb.an, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275, %bb.ag
  %.sroa.77.0 = phi ptr [ %.sroa.77.9, %bb.ag ], [ %i.hw, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275 ], [ %i.jo, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303 ], [ %.sroa.77.11, %bb.an ]
  %.sroa.29.0 = phi ptr [ %i.gw, %bb.ag ], [ %i.hv, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275 ], [ %i.jn, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303 ], [ %i.ja, %bb.an ]
  %.sroa.0444.0 = phi ptr [ %.sroa.0444.9, %bb.ag ], [ %i.hf, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275 ], [ %i.jj, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303 ], [ %.sroa.0444.11, %bb.an ] ; 2 uses
  %.018.shrunk = phi i1 [ false, %bb.ag ], [ false, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i275 ], [ %2, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i303 ], [ %2, %bb.an ]
  store i64 0, ptr %i.n, align 8, !tbaa !20
  %i.jp = load ptr, ptr %5, align 8, !tbaa !17
  store i8 0, ptr %i.jp, align 1, !tbaa !22
  %i.jq = load ptr, ptr %6, align 8, !tbaa !17
  %i.jr = load i64, ptr %i.p, align 8, !tbaa !20
  %i.js = load ptr, ptr %9, align 8, !tbaa !17
  %i.jt = load i64, ptr %i.dp, align 8, !tbaa !20
  %i.ju = call fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.jq, i64 %i.jr, ptr nonnull %.sroa.0444.0, ptr nonnull %.sroa.29.0, ptr %i.js, i64 %i.jt, i1 noundef zeroext %.018.shrunk, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.jv = load ptr, ptr %10, align 8, !tbaa !17   ; 2 uses
  %i.jw = icmp eq ptr %i.jv, %i.gf
  br i1 %i.jw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276
  %i.jx = load i64, ptr %i.gf, align 8, !tbaa !22
  %i.jy = add i64 %i.jx, 1
  call void @_ZdlPvm(ptr noundef %i.jv, i64 noundef %i.jy) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit306

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit306: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.77.1 = phi ptr [ %.sroa.77.8, %_ZN4llvh11raw_ostreamlsEPKc.exit247 ], [ %.sroa.77.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.sroa.0444.1 = phi ptr [ %.sroa.0444.8, %_ZN4llvh11raw_ostreamlsEPKc.exit247 ], [ %.sroa.0444.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.117 = phi i1 [ true, %_ZN4llvh11raw_ostreamlsEPKc.exit247 ], [ %i.ju, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.jz = ptrtoint ptr %.sroa.77.1 to i64
  %i.ka = ptrtoint ptr %.sroa.0444.1 to i64
  %i.kb = sub i64 %i.jz, %i.ka
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0444.1, i64 noundef %i.kb) #18
  %i.kc = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.kd = icmp eq ptr %i.kc, %i.do
  br i1 %i.kd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit306
  %i.ke = load i64, ptr %i.do, align 8, !tbaa !22
  %i.kf = add i64 %i.ke, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kf) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309: ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit306, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i307
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit348

.thread:                                          ; preds = %bb.p, %bb.r
  %i.kg = phi ptr [ %i.dg, %bb.r ], [ %i.db, %bb.p ] ; 3 uses
  %i.kh = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.52, i64 5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br i1 %i.kh, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit323, label %bb.as

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit323: ; preds = %.thread
  %i.ki = load ptr, ptr %6, align 8, !tbaa !17
  %i.kj = load i64, ptr %i.p, align 8, !tbaa !20
  %i.kk = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  store ptr %i.ki, ptr %i.kk, align 8, !tbaa !25
  %.sroa.5369.0..sroa_idx370 = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i64 %i.kj, ptr %.sroa.5369.0..sroa_idx370, align 8, !tbaa !21
  %i.kl = load ptr, ptr %4, align 8, !tbaa !17
  %i.km = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !20
  %i.ko = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 6 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  store ptr %i.kl, ptr %i.kp, align 8, !tbaa !25
  %.sroa.5.0..sroa_idx365 = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  store i64 %i.kn, ptr %.sroa.5.0..sroa_idx365, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 8 dereferenceable(16) %i.kk, i64 16, i1 false), !tbaa.struct !52, !alias.scope !107
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 32
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef 16) #18
  %i.kr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !30
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 24 ; 3 uses
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !33 ; 2 uses
  %i.kw = ptrtoint ptr %i.kt to i64
  %i.kx = ptrtoint ptr %i.kv to i64
  %i.ky = sub i64 %i.kw, %i.kx
  %i.kz = icmp ult i64 %i.ky, 27
  br i1 %i.kz, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit323
  %i.la = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.kr, ptr noundef nonnull @.str.53, i64 noundef 27) #16 ; 0 uses
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit342

bb.ar:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.kv, ptr noundef nonnull align 1 dereferenceable(27) @.str.53, i64 27, i1 false)
  %i.lb = load ptr, ptr %i.ku, align 8, !tbaa !33
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 27
  store ptr %i.lc, ptr %i.ku, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit342

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit342: ; preds = %bb.aq, %bb.ar
  %i.ld = load ptr, ptr %6, align 8, !tbaa !17
  %i.le = load i64, ptr %i.p, align 8, !tbaa !20
  %i.lf = load ptr, ptr %4, align 8, !tbaa !17
  %i.lg = load i64, ptr %i.km, align 8, !tbaa !20
  %i.lh = call fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.ld, i64 %i.le, ptr nonnull %i.ko, ptr nonnull %i.kq, ptr %i.lf, i64 %i.lg, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @_ZdlPvm(ptr noundef nonnull %i.ko, i64 noundef 32) #18
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit348

bb.as:                                            ; preds = %.thread
  %i.li = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !30
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 24 ; 3 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !33 ; 2 uses
  %i.ln = ptrtoint ptr %i.lk to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = icmp ult i64 %i.lp, 52
  br i1 %i.lq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.lr = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.li, ptr noundef nonnull @.str.54, i64 noundef 52) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit345

bb.au:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.lm, ptr noundef nonnull align 1 dereferenceable(52) @.str.54, i64 52, i1 false)
  %i.ls = load ptr, ptr %i.ll, align 8, !tbaa !33
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 52
  store ptr %i.lt, ptr %i.ll, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit345

_ZN4llvh11raw_ostreamlsEPKc.exit345:              ; preds = %bb.at, %bb.au
  %i.lu = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16
  %i.lv = load ptr, ptr %7, align 8, !tbaa !17
  %i.lw = load i64, ptr %i.r, align 8, !tbaa !20
  %i.lx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.lu, ptr noundef %i.lv, i64 noundef %i.lw) #16 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !30
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 24 ; 3 uses
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !33 ; 2 uses
  %i.mc = icmp eq ptr %i.lz, %i.mb
  br i1 %i.mc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit345
  %i.md = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.lx, ptr noundef nonnull @.str.24, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit348

bb.aw:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit345
  store i8 10, ptr %i.mb, align 1
  %i.me = load ptr, ptr %i.ma, align 8, !tbaa !33
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  store ptr %i.mf, ptr %i.ma, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit348

_ZN4llvh11raw_ostreamlsEPKc.exit348:              ; preds = %bb.aw, %bb.av, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit342, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309
  %i.mg = phi ptr [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ %i.kg, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit342 ], [ %i.kg, %bb.av ], [ %i.kg, %bb.aw ] ; 2 uses
  %.2 = phi i1 [ %.117, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ], [ %i.lh, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit342 ], [ true, %bb.av ], [ true, %bb.aw ]
  %i.mh = load ptr, ptr %8, align 8, !tbaa !17    ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.mg
  br i1 %i.mi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit348
  %i.mj = load i64, ptr %i.mg, align 8, !tbaa !22
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit141, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit80
  %.3 = phi i1 [ %i.bt, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit80 ], [ %i.cy, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit141 ], [ %.2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351 ], [ false, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit ]
  %i.ml = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.mm = icmp eq ptr %i.ml, %i.q
  br i1 %i.mm, label %_ZN12_GLOBAL__N_112GraphSessionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ax
  %i.mn = load i64, ptr %i.q, align 8, !tbaa !22
  %i.mo = add i64 %i.mn, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mo) #18
  br label %_ZN12_GLOBAL__N_112GraphSessionD2Ev.exit

_ZN12_GLOBAL__N_112GraphSessionD2Ev.exit:         ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.mp = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.mq = icmp eq ptr %i.mp, %i.o
  br i1 %i.mq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352: ; preds = %_ZN12_GLOBAL__N_112GraphSessionD2Ev.exit
  %i.mr = load i64, ptr %i.o, align 8, !tbaa !22
  %i.ms = add i64 %i.mr, 1
  call void @_ZdlPvm(ptr noundef %i.mp, i64 noundef %i.ms) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354: ; preds = %_ZN12_GLOBAL__N_112GraphSessionD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.mt = load ptr, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.mu = icmp eq ptr %i.mt, %i.m
  br i1 %i.mu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit357, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i355: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354
  %i.mv = load i64, ptr %i.m, align 8, !tbaa !22
end_hunk_0
