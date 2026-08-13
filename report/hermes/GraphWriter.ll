inline.NumInlined: 399
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4llvh12DisplayGraphENS_9StringRefEbNS_12GraphProgram4NameE:bb.a
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit80

bb.k:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.bh, ptr noundef nonnull align 1 dereferenceable(30) @.str.31, i64 30, i1 false)
  %i.bn = load ptr, ptr %i.bg, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 30
  store ptr %i.bo, ptr %i.bg, align 8, !tbaa !33
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit80

_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit80: ; preds = %bb.j, %bb.k
  %i.bp = load ptr, ptr %6, align 8, !tbaa !17
  %i.bq = load i64, ptr %i.p, align 8, !tbaa !20
  %i.br = load ptr, ptr %4, align 8, !tbaa !17
  %i.bs = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.bt = call fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.bp, i64 %i.bq, ptr nonnull %i.ba, ptr nonnull %i.bc, ptr %i.br, i64 %i.bs, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef 32) #18
  br label %bb.ax

bb.l:                                             ; preds = %bb.i
  %i.bu = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112GraphSession14TryFindProgramEN4llvh9StringRefERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr nonnull @.str.32, i64 12, ptr noundef nonnull align 8 dereferenceable(32) %6)
  br i1 %i.bu, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit122, label %bb.o

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit122: ; preds = %bb.l
  %i.bv = load ptr, ptr %6, align 8, !tbaa !17
  %i.bw = load i64, ptr %i.p, align 8, !tbaa !20
  %i.bx = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !25
  %.sroa.5519.0..sroa_idx520 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %i.bw, ptr %.sroa.5519.0..sroa_idx520, align 8, !tbaa !21
  %i.by = load ptr, ptr %4, align 8, !tbaa !17
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
  %i.et = icmp ult i64 %i.es, %i.er
  %i.eu = call i64 @llvm.umin.i64(i64 %i.es, i64 576460752303423487)
  %i.ev = select i1 %i.et, i64 576460752303423487, i64 %i.eu ; 3 uses
  %.not.i.i.i.i231 = icmp ne i64 %i.ev, 0
  call void @llvm.assume(i1 %.not.i.i.i.i231)
  %i.ew = shl nuw nsw i64 %i.ev, 4
  %i.ex = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ew) #19 ; 5 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ep ; 2 uses
  store ptr %i.el, ptr %i.ey, align 8, !tbaa !25
  %.sroa.5411.0..sroa_idx412 = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store i64 %i.em, ptr %.sroa.5411.0..sroa_idx412, align 8, !tbaa !21
  %.not10.i.i.i.i.i.i232 = icmp eq ptr %i.ei, %i.ek
  br i1 %.not10.i.i.i.i.i.i232, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240, label %.lr.ph.i.i.i.i.i.i233

.lr.ph.i.i.i.i.i.i233:                            ; preds = %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229, %.lr.ph.i.i.i.i.i.i233
  %.012.i.i.i.i.i.i234 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i.i233 ], [ %i.ex, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229 ] ; 2 uses
  %.0911.i.i.i.i.i.i235 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i.i233 ], [ %i.ei, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i234, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i235, i64 16, i1 false), !tbaa.struct !52, !alias.scope !87
  %i.ez = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i235, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i234, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i236 = icmp eq ptr %i.ez, %i.ek
  br i1 %.not.i.i.i.i.i.i236, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240, label %.lr.ph.i.i.i.i.i.i233, !llvm.loop !91

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240: ; preds = %.lr.ph.i.i.i.i.i.i233, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229
  %.0.lcssa.i.i.i.i.i.i238 = phi ptr [ %i.ex, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i229 ], [ %i.fa, %.lr.ph.i.i.i.i.i.i233 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.ep) #18
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ex, i64 %i.ev
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241: ; preds = %bb.v, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240
  %.sroa.77.8 = phi ptr [ %i.fb, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240 ], [ %i.ek, %bb.v ] ; 4 uses
  %.0.lcssa.i.i.i.i.i.i238.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i238, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240 ], [ %.sroa.29.6, %bb.v ]
  %.sroa.0444.8 = phi ptr [ %i.ex, %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i240 ], [ %i.ei, %bb.v ] ; 7 uses
  %.sroa.29.7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i238.pn, i64 16 ; 3 uses
  %i.fc = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #16 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !30
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !33 ; 2 uses
  %i.fh = ptrtoint ptr %i.fe to i64
  %i.fi = ptrtoint ptr %i.fg to i64
  %i.fj = sub i64 %i.fh, %i.fi
  %i.fk = icmp ult i64 %i.fj, 9
  br i1 %i.fk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241
  %i.fl = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fc, ptr noundef nonnull @.str.44, i64 noundef 9) #16
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit244

bb.z:                                             ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.fg, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false)
  %i.fm = load ptr, ptr %i.ff, align 8, !tbaa !33
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 9
  store ptr %i.fn, ptr %i.ff, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit244

_ZN4llvh11raw_ostreamlsEPKc.exit244:              ; preds = %bb.y, %bb.z
  %.0.i.i243 = phi ptr [ %i.fl, %bb.y ], [ %i.fc, %bb.z ]
  %i.fo = load ptr, ptr %8, align 8, !tbaa !17
  %i.fp = load i64, ptr %i.df, align 8, !tbaa !20
  %i.fq = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i243, ptr noundef %i.fo, i64 noundef %i.fp) #16 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !30
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 24 ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !33 ; 2 uses
  %i.fv = ptrtoint ptr %i.fs to i64
  %i.fw = ptrtoint ptr %i.fu to i64
  %i.fx = sub i64 %i.fv, %i.fw
  %i.fy = icmp ult i64 %i.fx, 13
  br i1 %i.fy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit244
  %i.fz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.fq, ptr noundef nonnull @.str.45, i64 noundef 13) #16 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit247

bb.ab:                                            ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.fu, ptr noundef nonnull align 1 dereferenceable(13) @.str.45, i64 13, i1 false)
  %i.ga = load ptr, ptr %i.ft, align 8, !tbaa !33
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 13
  store ptr %i.gb, ptr %i.ft, align 8, !tbaa !33
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit247

_ZN4llvh11raw_ostreamlsEPKc.exit247:              ; preds = %bb.aa, %bb.ab
  %i.gc = load ptr, ptr %8, align 8, !tbaa !17
  %i.gd = load i64, ptr %i.df, align 8, !tbaa !20
  %i.ge = load ptr, ptr %4, align 8, !tbaa !17
  %i.gf = load i64, ptr %i.dm, align 8, !tbaa !20
  %i.gg = call fastcc noundef zeroext i1 @_ZL15ExecGraphViewerN4llvh9StringRefERSt6vectorIS0_SaIS0_EES0_bRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr %i.gc, i64 %i.gd, ptr nonnull %.sroa.0444.8, ptr nonnull %.sroa.29.7, ptr %i.ge, i64 %i.gf, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br i1 %i.gg, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EED2Ev.exit306, label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit247
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.gh = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  store ptr %i.gh, ptr %10, align 8, !tbaa !14
  %i.gi = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.gi, align 8, !tbaa !20
  store i8 0, ptr %i.gh, align 8, !tbaa !22
  %.not.i.i248 = icmp eq ptr %.sroa.29.7, %.sroa.0444.8
  %spec.select = select i1 %.not.i.i248, ptr %.sroa.29.7, ptr %.sroa.0444.8 ; 4 uses
  %i.gj = load ptr, ptr %6, align 8, !tbaa !17    ; 2 uses
  %i.gk = load i64, ptr %i.p, align 8, !tbaa !20  ; 2 uses
  %.not.i.i249 = icmp eq ptr %spec.select, %.sroa.77.8
  br i1 %.not.i.i249, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit
  store ptr %i.gj, ptr %spec.select, align 8, !tbaa !25
  %.sroa.5402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  store i64 %i.gk, ptr %.sroa.5402.0..sroa_idx, align 8, !tbaa !21
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262

bb.ad:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE5clearEv.exit
  %i.gl = ptrtoint ptr %.sroa.77.8 to i64
  %i.gm = ptrtoint ptr %.sroa.0444.8 to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 4 uses
  %i.go = icmp eq i64 %i.gn, 9223372036854775792
  br i1 %i.go, label %bb.ae, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250

bb.ae:                                            ; preds = %bb.ad
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250: ; preds = %bb.ad
  %i.gp = ashr exact i64 %i.gn, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i251 = call i64 @llvm.umax.i64(i64 %i.gp, i64 1)
  %i.gq = add nsw i64 %.sroa.speculated.i.i.i.i251, %i.gp ; 2 uses
  %i.gr = icmp ult i64 %i.gq, %i.gp
  %i.gs = call i64 @llvm.umin.i64(i64 %i.gq, i64 576460752303423487)
  %i.gt = select i1 %i.gr, i64 576460752303423487, i64 %i.gs ; 3 uses
  %.not.i.i.i.i252 = icmp ne i64 %i.gt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i252)
  %i.gu = shl nuw nsw i64 %i.gt, 4
  %i.gv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gu) #19 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gn ; 2 uses
  store ptr %i.gj, ptr %i.gw, align 8, !tbaa !25
  %.sroa.5402.0..sroa_idx403 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.gk, ptr %.sroa.5402.0..sroa_idx403, align 8, !tbaa !21
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0444.8, i64 noundef %i.gn) #18
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gt
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262

_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262: ; preds = %bb.ac, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250
  %.sroa.77.9 = phi ptr [ %i.gx, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250 ], [ %.sroa.77.8, %bb.ac ] ; 8 uses
  %.pn = phi ptr [ %i.gv, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250 ], [ %spec.select, %bb.ac ] ; 8 uses
  %.sroa.0444.9 = phi ptr [ %i.gv, %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i250 ], [ %.sroa.0444.8, %bb.ac ] ; 12 uses
  %.pn685 = ptrtoaddr ptr %.pn to i64             ; 2 uses
  %.sroa.29.9 = getelementptr inbounds nuw i8, ptr %.pn, i64 16 ; 4 uses
  br i1 %i.cz, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit262
  %i.gy = load ptr, ptr %9, align 8, !tbaa !17    ; 2 uses
  %i.gz = load i64, ptr %i.dp, align 8, !tbaa !20 ; 2 uses
  %.not.i.i263 = icmp eq ptr %.sroa.29.9, %.sroa.77.9
  br i1 %.not.i.i263, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %i.gy, ptr %.sroa.29.9, align 8, !tbaa !25
  %.sroa.5397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn, i64 24
  store i64 %i.gz, ptr %.sroa.5397.0..sroa_idx, align 8, !tbaa !21
  %i.ha = getelementptr inbounds nuw i8, ptr %.pn, i64 32
  br label %_ZNSt6vectorIN4llvh9StringRefESaIS1_EE9push_backEOS1_.exit276

bb.ah:                                            ; preds = %bb.af
  %i.hb = ptrtoint ptr %.sroa.77.9 to i64
  %i.hc = ptrtoint ptr %.sroa.0444.9 to i64       ; 2 uses
  %i.hd = sub i64 %i.hb, %i.hc                    ; 4 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775792
  br i1 %i.he, label %bb.ai, label %_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i264

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #20
  unreachable

_ZNKSt6vectorIN4llvh9StringRefESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i264: ; preds = %bb.ah
  %i.hf = ashr exact i64 %i.hd, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i265 = call i64 @llvm.umax.i64(i64 %i.hf, i64 1)
  %i.hg = add nsw i64 %.sroa.speculated.i.i.i.i265, %i.hf ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.hf
  %i.hi = call i64 @llvm.umin.i64(i64 %i.hg, i64 576460752303423487)
  %i.hj = select i1 %i.hh, i64 576460752303423487, i64 %i.hi ; 3 uses
  %.not.i.i.i.i266 = icmp ne i64 %i.hj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i266)
  %i.hk = shl nuw nsw i64 %i.hj, 4
end_hunk_0
