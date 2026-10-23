Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachOUtils?download=true
inline.NumInlined: 1485
inline.NumDeleted: 754
begin_hunk_0_@_ZN4llvm8dsymutil10MachOUtils21generateDsymCompanionENS_18IntrusiveRefCntPtrINS_3vfs10FileSystemEEERKNS0_8DebugMapERNS_10MCStreamerERNS_14raw_fd_ostreamERKSt6vectorINS1_30DwarfRelocationApplicationInfoESaISE_EEb:bb.a
  %i.af = inttoptr i64 %i.ae to ptr
  store ptr null, ptr %44, align 8, !tbaa !57, !noalias !228
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #19
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.ah = load i64, ptr %i.z, align 8, !tbaa !26
  store ptr @.str.15, ptr %46, align 8, !alias.scope !229
  %i.ai = getelementptr inbounds nuw i8, ptr %46, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !alias.scope !229
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %46, i64 24
  store i64 %i.ah, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !21, !alias.scope !229
  %i.aj = getelementptr inbounds nuw i8, ptr %46, i64 32
  store i8 3, ptr %i.aj, align 8, !tbaa !22, !alias.scope !229
  %i.ak = getelementptr inbounds nuw i8, ptr %46, i64 33
  store i8 5, ptr %i.ak, align 1, !tbaa !20, !alias.scope !229
  store ptr %46, ptr %45, align 8, !alias.scope !230
  %i.al = getelementptr inbounds nuw i8, ptr %45, i64 16
  store ptr @.str.6, ptr %i.al, align 8, !alias.scope !230
  %i.am = getelementptr inbounds nuw i8, ptr %45, i64 32
  store i8 2, ptr %i.am, align 8, !tbaa !22, !alias.scope !230
  %i.an = getelementptr inbounds nuw i8, ptr %45, i64 33
  store i8 3, ptr %i.an, align 1, !tbaa !20, !alias.scope !230
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #19
  store ptr %i.af, ptr %48, align 8, !tbaa !29
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %47, ptr nofree noundef nonnull align 8 dereferenceable(8) %48) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  store ptr %45, ptr %41, align 8
  %.sroa.5737.0..sroa_idx740 = getelementptr inbounds nuw i8, ptr %41, i64 16
  store ptr %47, ptr %.sroa.5737.0..sroa_idx740, align 8
  %.sroa.7747.0..sroa_idx750 = getelementptr inbounds nuw i8, ptr %41, i64 32
  store i8 2, ptr %.sroa.7747.0..sroa_idx750, align 8
  %.sroa.9752.0..sroa_idx755 = getelementptr inbounds nuw i8, ptr %41, i64 33
  store i8 4, ptr %.sroa.9752.0..sroa_idx755, align 1
  %i.ao = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #19
  store ptr %41, ptr %38, align 8, !alias.scope !231
  %i.ap = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr @.str.7, ptr %i.ap, align 8, !alias.scope !231
  %i.aq = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i8 2, ptr %i.aq, align 8, !tbaa !58
  %i.ar = getelementptr inbounds nuw i8, ptr %38, i64 33
  store i8 3, ptr %i.ar, align 1, !tbaa !58
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %38, ptr noundef nonnull align 8 dereferenceable(48) %i.ao) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #19
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor4noteEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #19
  store ptr @.str.26, ptr %40, align 8, !alias.scope !232
  %i.at = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr @.str.16, ptr %i.at, align 8, !alias.scope !232
  %i.au = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i8 3, ptr %i.au, align 8, !tbaa !22, !alias.scope !232
  %i.av = getelementptr inbounds nuw i8, ptr %40, i64 33
  store i8 3, ptr %i.av, align 1, !tbaa !20, !alias.scope !232
  store ptr %40, ptr %39, align 8, !alias.scope !233
  %i.aw = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr @.str.7, ptr %i.aw, align 8, !alias.scope !233
  %i.ax = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i8 2, ptr %i.ax, align 8, !tbaa !22, !alias.scope !233
  %i.ay = getelementptr inbounds nuw i8, ptr %39, i64 33
  store i8 3, ptr %i.ay, align 1, !tbaa !20, !alias.scope !233
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull align 8 dereferenceable(48) %i.as) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  %i.az = load ptr, ptr %47, align 8, !tbaa !30   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm8dsymutil5errorENS_5TwineES1_.exit
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !21
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm8dsymutil5errorENS_5TwineES1_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.be = load ptr, ptr %48, align 8, !tbaa !29   ; 3 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN4llvm5ErrorD2Ev.exit321, label %bb.e

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !43
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #19, !inline_history !1
  br label %_ZN4llvm5ErrorD2Ev.exit321

_ZN4llvm5ErrorD2Ev.exit321:                       ; preds = %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #19
  br label %_ZN4llvm8ExpectedIRKNS_6object15MachOObjectFileEED2Ev.exit

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrINS_3vfs10FileSystemEED2Ev.exit
  %i.bj = load ptr, ptr %44, align 8, !tbaa !235
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19, !noalias !236
  call void @_ZNK4llvm8dsymutil12BinaryHolder11ObjectEntry9getObjectERKNS_6TripleE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Expected.408") align 8 %37, ptr noundef nonnull align 8 dereferenceable(72) %i.bj, ptr noundef nonnull align 8 dereferenceable(56) %i.bk) #19, !noalias !236
  %i.bl = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.bm = load i8, ptr %i.bl, align 8, !noalias !236
  %i.bn = trunc i8 %i.bm to i1
  br i1 %i.bn, label %_ZN4llvm8dsymutil5errorENS_5TwineES1_.exit394, label %bb.h

_ZN4llvm8dsymutil5errorENS_5TwineES1_.exit394:    ; preds = %bb.f
  %i.bo = load i64, ptr %37, align 8, !tbaa !57, !noalias !237
  %i.bp = inttoptr i64 %i.bo to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !236
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #19
  %i.bq = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.br = load i64, ptr %i.z, align 8, !tbaa !26
  store ptr @.str.15, ptr %50, align 8, !alias.scope !238
  %i.bs = getelementptr inbounds nuw i8, ptr %50, i64 16
  store ptr %i.bq, ptr %i.bs, align 8, !alias.scope !238
  %.sroa.2.0..sroa_idx.i.i.i341 = getelementptr inbounds nuw i8, ptr %50, i64 24
  store i64 %i.br, ptr %.sroa.2.0..sroa_idx.i.i.i341, align 8, !tbaa !21, !alias.scope !238
  %i.bt = getelementptr inbounds nuw i8, ptr %50, i64 32
  store i8 3, ptr %i.bt, align 8, !tbaa !22, !alias.scope !238
  %i.bu = getelementptr inbounds nuw i8, ptr %50, i64 33
  store i8 5, ptr %i.bu, align 1, !tbaa !20, !alias.scope !238
  store ptr %50, ptr %49, align 8, !alias.scope !239
  %i.bv = getelementptr inbounds nuw i8, ptr %49, i64 16
  store ptr @.str.6, ptr %i.bv, align 8, !alias.scope !239
  %i.bw = getelementptr inbounds nuw i8, ptr %49, i64 32
  store i8 2, ptr %i.bw, align 8, !tbaa !22, !alias.scope !239
  %i.bx = getelementptr inbounds nuw i8, ptr %49, i64 33
  store i8 3, ptr %i.bx, align 1, !tbaa !20, !alias.scope !239
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #19
  store ptr %i.bp, ptr %52, align 8, !tbaa !29
  call void @_ZN4llvm8toStringB5cxx11ENS_5ErrorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %51, ptr nofree noundef nonnull align 8 dereferenceable(8) %52) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  store ptr %49, ptr %36, align 8
  %.sroa.5694.0..sroa_idx697 = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %51, ptr %.sroa.5694.0..sroa_idx697, align 8
  %.sroa.7704.0..sroa_idx707 = getelementptr inbounds nuw i8, ptr %36, i64 32
  store i8 2, ptr %.sroa.7704.0..sroa_idx707, align 8
  %.sroa.9.0..sroa_idx711 = getelementptr inbounds nuw i8, ptr %36, i64 33
  store i8 4, ptr %.sroa.9.0..sroa_idx711, align 1
  %i.by = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  store ptr %36, ptr %33, align 8, !alias.scope !240
  %i.bz = getelementptr inbounds nuw i8, ptr %33, i64 16
  store ptr @.str.7, ptr %i.bz, align 8, !alias.scope !240
  %i.ca = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 2, ptr %i.ca, align 8, !tbaa !58
  %i.cb = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 3, ptr %i.cb, align 1, !tbaa !58
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %33, ptr noundef nonnull align 8 dereferenceable(48) %i.by) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #19
  %i.cc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor4noteEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  store ptr @.str.26, ptr %35, align 8, !alias.scope !241
  %i.cd = getelementptr inbounds nuw i8, ptr %35, i64 16
  store ptr @.str.16, ptr %i.cd, align 8, !alias.scope !241
  %i.ce = getelementptr inbounds nuw i8, ptr %35, i64 32
  store i8 3, ptr %i.ce, align 8, !tbaa !22, !alias.scope !241
  %i.cf = getelementptr inbounds nuw i8, ptr %35, i64 33
  store i8 3, ptr %i.cf, align 1, !tbaa !20, !alias.scope !241
  store ptr %35, ptr %34, align 8, !alias.scope !242
  %i.cg = getelementptr inbounds nuw i8, ptr %34, i64 16
  store ptr @.str.7, ptr %i.cg, align 8, !alias.scope !242
  %i.ch = getelementptr inbounds nuw i8, ptr %34, i64 32
  store i8 2, ptr %i.ch, align 8, !tbaa !22, !alias.scope !242
  %i.ci = getelementptr inbounds nuw i8, ptr %34, i64 33
  store i8 3, ptr %i.ci, align 1, !tbaa !20, !alias.scope !242
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %34, ptr noundef nonnull align 8 dereferenceable(48) %i.cc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.cj = load ptr, ptr %51, align 8, !tbaa !30   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %51, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %_ZN4llvm8dsymutil5errorENS_5TwineES1_.exit394
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !21
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397: ; preds = %_ZN4llvm8dsymutil5errorENS_5TwineES1_.exit394, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  %i.co = load ptr, ptr %52, align 8, !tbaa !29   ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.eo, label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit397
  %i.cq = load ptr, ptr %i.co, align 8, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %i.co) #19, !inline_history !1
  br label %bb.eo

bb.h:                                             ; preds = %bb.f
  %i.ct = load ptr, ptr %37, align 8, !tbaa !244, !noalias !236 ; 31 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19, !noalias !236
  %i.cu = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !246
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load i8, ptr %i.cw, align 8
  %i.cy = trunc i8 %i.cx to i1                    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #19
  call void @_ZNK4llvm6object15MachOObjectFile20getSymtabLoadCommandEv(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::symtab_command") align 4 %53, ptr noundef nonnull align 8 dereferenceable(360) %i.ct) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #19
  %i.cz = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  store ptr %i.cz, ptr %55, align 8, !tbaa !35
  %i.da = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 5 uses
  store i32 0, ptr %i.da, align 8, !tbaa !34
  %i.db = getelementptr inbounds nuw i8, ptr %55, i64 12 ; 2 uses
  store i32 2, ptr %i.db, align 4, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  %i.dc = call { ptr, ptr } @_ZNK4llvm6object15MachOObjectFile13load_commandsEv(ptr noundef nonnull align 8 dereferenceable(360) %i.ct) #19 ; 2 uses
  %i.dd = extractvalue { ptr, ptr } %i.dc, 0      ; 2 uses
  %i.de = extractvalue { ptr, ptr } %i.dc, 1      ; 2 uses
  %.not931 = icmp eq ptr %i.dd, %i.de
  br i1 %.not931, label %.thread830, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %57, i64 20
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.p
  %.0238935 = phi i1 [ false, %.lr.ph ], [ %.2240.ph, %bb.p ] ; 3 uses
  %.0242934 = phi ptr [ %i.dd, %.lr.ph ], [ %i.du, %bb.p ] ; 4 uses
  %.0795933 = phi i32 [ 0, %.lr.ph ], [ %.1796.ph, %bb.p ] ; 4 uses
  %.0802932 = phi i32 [ 0, %.lr.ph ], [ %.1803.ph, %bb.p ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0242934, i64 8
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !249
  switch i32 %i.dh, label %bb.p [
    i32 27, label %bb.j
    i32 50, label %bb.l
    i32 2, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  %i.di = load i32, ptr %54, align 4, !tbaa !251
  %.not274 = icmp eq i32 %i.di, 0
  br i1 %.not274, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #19
  call void @_ZNK4llvm6object15MachOObjectFile14getUuidCommandERKNS1_15LoadCommandInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::uuid_command") align 4 %56, ptr noundef nonnull align 8 dereferenceable(360) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %.0242934) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %54, ptr noundef nonnull align 4 dereferenceable(24) %56, i64 24, i1 false), !tbaa.struct !252
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #19
  %i.dj = add i32 %.0802932, 1
  %i.dk = add i32 %.0795933, 24
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %57, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #19
  call void @_ZNK4llvm6object15MachOObjectFile26getBuildVersionLoadCommandERKNS1_15LoadCommandInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::build_version_command") align 4 %58, ptr noundef nonnull align 8 dereferenceable(360) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %.0242934) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %57, ptr noundef nonnull align 4 dereferenceable(24) %58, i64 20, i1 false), !tbaa.struct !253
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #19
  %i.dl = add i32 %.0802932, 1
  %i.dm = add i32 %.0795933, 24
  store i32 0, ptr %i.df, align 4, !tbaa !255
  %i.dn = load i32, ptr %i.da, align 8, !tbaa !34 ; 2 uses
  %i.do = load i32, ptr %i.db, align 4, !tbaa !44
  %.not.i = icmp ult i32 %i.dn, %i.do
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !45

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE15growAndPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 4 dereferenceable(24) %57)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE9push_backERKS2_.exit

bb.n:                                             ; preds = %bb.l
  %i.dp = zext i32 %i.dn to i64
  %i.dq = load ptr, ptr %55, align 8, !tbaa !35
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dr, ptr noundef nonnull align 4 dereferenceable(24) %57, i64 24, i1 false)
  %i.ds = load i32, ptr %i.da, align 8, !tbaa !34
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.da, align 8, !tbaa !34
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE9push_backERKS2_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE9push_backERKS2_.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #19
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE9push_backERKS2_.exit, %bb.k
  %.1803.ph = phi i32 [ %.0802932, %bb.o ], [ %i.dl, %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE9push_backERKS2_.exit ], [ %i.dj, %bb.k ], [ %.0802932, %bb.i ] ; 4 uses
  %.1796.ph = phi i32 [ %.0795933, %bb.o ], [ %i.dm, %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE9push_backERKS2_.exit ], [ %i.dk, %bb.k ], [ %.0795933, %bb.i ] ; 4 uses
  %.2240.ph = phi i1 [ true, %bb.o ], [ %.0238935, %_ZN4llvm23SmallVectorTemplateBaseINS_5MachO21build_version_commandELb1EE9push_backERKS2_.exit ], [ %.0238935, %bb.k ], [ %.0238935, %bb.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0242934, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.du, %i.de
  br i1 %.not, label %._crit_edge, label %bb.i

bb.q:                                             ; preds = %bb.j
  %i.dv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor5errorEv() #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  store ptr @.str.17, ptr %32, align 8, !alias.scope !256
  %i.dw = getelementptr inbounds nuw i8, ptr %32, i64 16
  store ptr @.str.7, ptr %i.dw, align 8, !alias.scope !256
  %i.dx = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i8 3, ptr %i.dx, align 8, !tbaa !58
  %i.dy = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 3, ptr %i.dy, align 1, !tbaa !58
  call void @_ZNK4llvm5Twine5printERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(34) %32, ptr noundef nonnull align 8 dereferenceable(48) %i.dv) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #19
  br label %bb.el

._crit_edge:                                      ; preds = %bb.p
  br i1 %.2240.ph, label %bb.r, label %.thread830

bb.r:                                             ; preds = %._crit_edge
  %i.dz = load ptr, ptr %i.ct, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 64
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = call noundef zeroext i1 %i.eb(ptr noundef nonnull align 8 dereferenceable(360) %i.ct) #19, !inline_history !183
  br i1 %i.ec, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = call noundef nonnull align 4 dereferenceable(32) ptr @_ZNK4llvm6object15MachOObjectFile11getHeader64Ev(ptr noundef nonnull align 8 dereferenceable(360) %i.ct) #19
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ee = call noundef nonnull align 4 dereferenceable(28) ptr @_ZNK4llvm6object15MachOObjectFile9getHeaderEv(ptr noundef nonnull align 8 dereferenceable(360) %i.ct) #19
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn.i = phi ptr [ %i.ed, %bb.s ], [ %i.ee, %bb.t ]
  %.0.in.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 12
  %.0.in.i = load i32, ptr %.0.in.in.i, align 4, !tbaa !54
  %.0.i.not = icmp eq i32 %.0.in.i, 1
  br i1 %.0.i.not, label %.thread830, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = add i32 %.1796.ph, 24
  %i.eg = add i32 %.1803.ph, 1
  br label %.thread830

.thread830:                                       ; preds = %bb.h, %._crit_edge, %bb.v, %bb.u
  %i.eh = phi i1 [ true, %bb.v ], [ false, %bb.u ], [ false, %._crit_edge ], [ false, %bb.h ] ; 3 uses
  %.3805 = phi i32 [ %i.eg, %bb.v ], [ %.1803.ph, %bb.u ], [ %.1803.ph, %._crit_edge ], [ 0, %bb.h ] ; 2 uses
  %.3798 = phi i32 [ %i.ef, %bb.v ], [ %.1796.ph, %bb.u ], [ %.1796.ph, %._crit_edge ], [ 0, %bb.h ] ; 2 uses
  %i.ei = load ptr, ptr %i.ct, align 8, !tbaa !43, !noalias !257
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 352
  %i.ek = load ptr, ptr %i.ej, align 8, !noalias !257
  %i.el = call { i64, ptr } %i.ek(ptr noundef nonnull align 8 dereferenceable(48) %i.ct) #19, !noalias !257, !inline_history !186 ; 2 uses
  %i.em = extractvalue { i64, ptr } %i.el, 0      ; 3 uses
  %i.en = extractvalue { i64, ptr } %i.el, 1      ; 3 uses
  %i.eo = load ptr, ptr %i.ct, align 8, !tbaa !43, !noalias !257
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 360
  %i.eq = load ptr, ptr %i.ep, align 8, !noalias !257
  %i.er = call { i64, ptr } %i.eq(ptr noundef nonnull align 8 dereferenceable(48) %i.ct) #19, !noalias !257, !inline_history !186 ; 2 uses
  %i.es = extractvalue { i64, ptr } %i.er, 0      ; 2 uses
  %i.et = extractvalue { i64, ptr } %i.er, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #19
  store i64 %i.em, ptr %59, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 9 uses
  store ptr %i.en, ptr %i.eu, align 8
  %i.ev = icmp ne ptr %i.en, %i.et
  %.not.i.i.i.i939 = icmp ne i64 %i.em, %i.es
  %.not2.i940 = select i1 %i.ev, i1 true, i1 %.not.i.i.i.i939
  br i1 %.not2.i940, label %.lr.ph951, label %._crit_edge952

.lr.ph951:                                        ; preds = %.thread830
  %i.ew = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %61, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.fc = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %26, i64 8
  br label %bb.aa

._crit_edge952:                                   ; preds = %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491, %.thread830
  %.sroa.0668.0.lcssa = phi ptr [ null, %.thread830 ], [ %.sroa.0668.3, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 2 uses
  %.sroa.5669.0.lcssa = phi i64 [ 0, %.thread830 ], [ %.sroa.5669.3, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 5 uses
  %.sroa.0666.0.lcssa = phi ptr [ null, %.thread830 ], [ %.sroa.0666.3, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 2 uses
  %.sroa.5667.0.lcssa = phi i64 [ 0, %.thread830 ], [ %.sroa.5667.3, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 5 uses
  %.sroa.0665.0.lcssa = phi ptr [ null, %.thread830 ], [ %.sroa.0665.3, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 2 uses
  %.sroa.5.0.lcssa = phi i64 [ 0, %.thread830 ], [ %.sroa.5.3, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 5 uses
  %.0253.lcssa = phi i64 [ 0, %.thread830 ], [ %.3256, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ]
  %.0249.lcssa = phi i64 [ 0, %.thread830 ], [ %.3252, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 2 uses
  %.0245.lcssa = phi i64 [ 0, %.thread830 ], [ %.3248, %_ZN4llvm8ExpectedINS_9StringRefEED2Ev.exit491 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #19
  %i.fe = add i64 %.0249.lcssa, %.0253.lcssa      ; 5 uses
  %.neg1002 = select i1 %i.cy, i32 -32, i32 -28
  call void @llvm.lifetime.start.p0(ptr nonnull %31)
  %i.ff = call { ptr, ptr } @_ZNK4llvm6object15MachOObjectFile13load_commandsEv(ptr noundef nonnull align 8 dereferenceable(360) %i.ct) #19 ; 2 uses
  %i.fg = extractvalue { ptr, ptr } %i.ff, 0      ; 2 uses
  %i.fh = extractvalue { ptr, ptr } %i.ff, 1      ; 2 uses
  %.not28.i = icmp eq ptr %i.fg, %i.fh
  br i1 %.not28.i, label %"_ZN4llvm8dsymutil10MachOUtilsL17iterateOnSegmentsIZNS1_21generateDsymCompanionENS_18IntrusiveRefCntPtrINS_3vfs10FileSystemEEERKNS0_8DebugMapERNS_10MCStreamerERNS_14raw_fd_ostreamERKSt6vectorINS1_30DwarfRelocationApplicationInfoESaISF_EEbE3$_0EEvRKNS_6object15MachOObjectFileET_.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge952
  %.sroa.519.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %31, i64 24
  %.sroa.822.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %31, i64 32
  %.sroa.1024.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %31, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 24
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %30, i64 40
end_hunk_0
begin_hunk_1_@_ZN4llvm8dsymutil10MachOUtils21generateDsymCompanionENS_18IntrusiveRefCntPtrINS_3vfs10FileSystemEEERKNS0_8DebugMapERNS_10MCStreamerERNS_14raw_fd_ostreamERKSt6vectorINS1_30DwarfRelocationApplicationInfoESaISE_EEb:bb.a
  %i.qn = getelementptr inbounds nuw i8, ptr %i.m, i64 2048 ; 6 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.m, i64 2056 ; 6 uses
  br label %bb.bx

._crit_edge974:                                   ; preds = %bb.bx, %bb.bw
  %i.qp = mul i32 %.0259, %i.lm
  %i.qq = zext i32 %i.qp to i64
  %i.qr = add nuw nsw i64 %i.pw, %i.qq            ; 2 uses
  br i1 %i.eh, label %bb.by, label %bb.bz

bb.bx:                                            ; preds = %.lr.ph973, %bb.bx
  %.0257971 = phi ptr [ %i.qj, %.lr.ph973 ], [ %i.rp, %bb.bx ] ; 6 uses
  %.sroa.066.0.copyload = load i32, ptr %.0257971, align 4, !tbaa !54 ; 2 uses
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0257971, i64 8
  %.sroa.467.0.copyload = load i32, ptr %.sroa.467.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0257971, i64 12
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0257971, i64 16
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.0257971, i64 20
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !54 ; 2 uses
  %i.qs = load ptr, ptr %i.qn, align 8, !tbaa !335, !nonnull !52, !align !336
  %i.qt = load i32, ptr %i.qo, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.not.i.i.i501.a = icmp eq i32 %i.qt, 1
  %i.qu = call i32 @llvm.bswap.i32(i32 %.sroa.066.0.copyload)
  %spec.select.i.i.i502.a = select i1 %.not.i.i.i501.a, i32 %.sroa.066.0.copyload, i32 %i.qu
  store i32 %spec.select.i.i.i502.a, ptr %i.f, align 4, !tbaa !54
  %i.qv = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qs, ptr noundef nonnull %i.f, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.qw = load ptr, ptr %i.qn, align 8, !tbaa !335, !nonnull !52, !align !336
  %i.qx = load i32, ptr %i.qo, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.not.i.i.i503.a = icmp eq i32 %i.qx, 1
  %spec.select.i.i.i504.a = select i1 %.not.i.i.i503.a, i32 24, i32 402653184
  store i32 %spec.select.i.i.i504.a, ptr %i.e, align 4, !tbaa !54
  %i.qy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qw, ptr noundef nonnull %i.e, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.qz = load ptr, ptr %i.qn, align 8, !tbaa !335, !nonnull !52, !align !336
  %i.ra = load i32, ptr %i.qo, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.not.i.i.i505.a = icmp eq i32 %i.ra, 1
  %i.rb = call i32 @llvm.bswap.i32(i32 %.sroa.467.0.copyload)
  %spec.select.i.i.i506.a = select i1 %.not.i.i.i505.a, i32 %.sroa.467.0.copyload, i32 %i.rb
  store i32 %spec.select.i.i.i506.a, ptr %i.d, align 4, !tbaa !54
  %i.rc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.qz, ptr noundef nonnull %i.d, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.rd = load ptr, ptr %i.qn, align 8, !tbaa !335, !nonnull !52, !align !336
  %i.re = load i32, ptr %i.qo, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i.i.i507.a = icmp eq i32 %i.re, 1
  %i.rf = call i32 @llvm.bswap.i32(i32 %.sroa.5.0.copyload)
  %spec.select.i.i.i508.a = select i1 %.not.i.i.i507.a, i32 %.sroa.5.0.copyload, i32 %i.rf
  store i32 %spec.select.i.i.i508.a, ptr %i.c, align 4, !tbaa !54
  %i.rg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.rd, ptr noundef nonnull %i.c, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.rh = load ptr, ptr %i.qn, align 8, !tbaa !335, !nonnull !52, !align !336
  %i.ri = load i32, ptr %i.qo, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not.i.i.i509.a = icmp eq i32 %i.ri, 1
  %i.rj = call i32 @llvm.bswap.i32(i32 %.sroa.6.0.copyload)
  %spec.select.i.i.i510.a = select i1 %.not.i.i.i509.a, i32 %.sroa.6.0.copyload, i32 %i.rj
  store i32 %spec.select.i.i.i510.a, ptr %i.b, align 4, !tbaa !54
  %i.rk = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.rh, ptr noundef nonnull %i.b, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.rl = load ptr, ptr %i.qn, align 8, !tbaa !335, !nonnull !52, !align !336
  %i.rm = load i32, ptr %i.qo, align 8, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i.i.i511 = icmp eq i32 %i.rm, 1
  %i.rn = call i32 @llvm.bswap.i32(i32 %.sroa.7.0.copyload)
  %spec.select.i.i.i512 = select i1 %.not.i.i.i511, i32 %.sroa.7.0.copyload, i32 %i.rn
  store i32 %spec.select.i.i.i512, ptr %i.a, align 4, !tbaa !54
  %i.ro = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.rl, ptr noundef nonnull %i.a, i64 noundef 4) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.rp = getelementptr inbounds nuw i8, ptr %.0257971, i64 24 ; 2 uses
  %.not278 = icmp eq ptr %i.rp, %i.qm
  br i1 %.not278, label %._crit_edge974, label %bb.bx

bb.by:                                            ; preds = %._crit_edge974
  %i.rq = trunc i64 %i.pw to i32
  %i.rr = trunc i64 %i.qr to i32
  %i.rs = trunc i64 %.0258 to i32
  call void @_ZN4llvm16MachObjectWriter22writeSymtabLoadCommandEjjjj(ptr noundef nonnull align 8 dereferenceable(2064) %i.m, i32 noundef %i.rq, i32 noundef %.0259, i32 noundef %i.rr, i32 noundef %i.rs) #19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %._crit_edge974
  %i.rt = add i64 %i.qr, %.0258                   ; 5 uses
  %i.ru = icmp ne i64 %i.rt, 0                    ; 2 uses
  %.neg = sext i1 %i.ru to i64
  %i.rv = add i64 %i.rt, %.neg
  %i.rw = select i1 %i.ru, i64 4096, i64 0
  %i.rx = add i64 %i.rv, %i.rw
  %i.ry = and i64 %i.rx, -4096                    ; 6 uses
  %.not279 = icmp ne i64 %i.fe, 0                 ; 4 uses
  %i.rz = add i64 %i.ry, %.0245.lcssa             ; 3 uses
  br i1 %.not279, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.sa = icmp ne i64 %i.rz, 0                    ; 2 uses
  %.neg908.a = sext i1 %i.sa to i64
  %i.sb = add i64 %i.rz, %.neg908.a
  %i.sc = select i1 %i.sa, i64 4096, i64 0
  %i.sd = add i64 %i.sb, %i.sc
  %i.se = and i64 %i.sd, -4096
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %i.sf = phi i64 [ %i.se, %bb.ca ], [ %i.rz, %bb.bz ] ; 7 uses
  %i.sg = add i64 %i.sf, %i.fe                    ; 2 uses
  %i.sh = icmp ne i64 %i.sg, 0                    ; 2 uses
  %.neg909 = sext i1 %i.sh to i64
  %i.si = add i64 %i.sg, %.neg909
  %i.sj = select i1 %i.sh, i64 4096, i64 0
  %i.sk = add i64 %i.si, %i.sj
  %i.sl = and i64 %i.sk, -4096                    ; 5 uses
  %i.sm = call { ptr, ptr } @_ZNK4llvm6object15MachOObjectFile13load_commandsEv(ptr noundef nonnull align 8 dereferenceable(360) %i.ct) #19 ; 2 uses
  %i.sn = extractvalue { ptr, ptr } %i.sm, 0      ; 2 uses
  %i.so = extractvalue { ptr, ptr } %i.sm, 1      ; 2 uses
  %.not280975 = icmp eq ptr %i.sn, %i.so
  br i1 %.not280975, label %._crit_edge986, label %.lr.ph985

.lr.ph985:                                        ; preds = %bb.cb
  %i.sp = add i64 %i.sf, %.0249.lcssa             ; 2 uses
  %i.sq = sub i64 %i.rt, %i.pw                    ; 6 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 9 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  %i.st = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 4 uses
  %i.su = icmp ne i64 %i.sq, 0                    ; 2 uses
  %.neg.i544 = sext i1 %i.su to i64
  %i.sv = add i64 %i.sq, %.neg.i544
  %i.sw = select i1 %i.su, i64 4096, i64 0
  %i.sx = add i64 %i.sv, %i.sw
  %i.sy = and i64 %i.sx, -4096
  %i.sz = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  %i.ta = icmp ne i64 %.0245.lcssa, 0             ; 2 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.te = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %10, i64 60 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %10, i64 68 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.m, i64 2048 ; 4 uses
  %i.tj = icmp ne i64 %i.sf, 0                    ; 2 uses
  %i.tk = icmp ne i64 %i.sp, 0                    ; 2 uses
  %i.tl = trunc i64 %i.sp to i32                  ; 4 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 5 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %9, i64 60 ; 5 uses
  %i.to = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 5 uses
  %i.tp = trunc i64 %i.sf to i32                  ; 6 uses
  %i.tq = trunc i64 %i.ry to i32                  ; 6 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %9, i64 68 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 9 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 5 uses
  %i.tz = trunc i64 %i.fe to i32                  ; 2 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 5 uses
  %i.ub = trunc i64 %i.pw to i32                  ; 2 uses
  %i.uc = trunc i64 %i.sq to i32                  ; 2 uses
  %i.ud = icmp ne i64 %i.rt, %i.pw                ; 2 uses
  %.neg.i = sext i1 %i.ud to i64
  %i.ue = add i64 %i.sq, %.neg.i
  %i.uf = select i1 %i.ud, i64 4096, i64 0
  %i.ug = add i64 %i.ue, %i.uf
  %i.uh = trunc i64 %i.ug to i32
  %i.ui = and i32 %i.uh, -4096
  %i.uj = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 3 uses
  %i.uk = trunc i64 %.0245.lcssa to i32           ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %12, i64 52 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 5 uses
  %i.us = getelementptr inbounds nuw i8, ptr %11, i64 52 ; 5 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %11, i64 36 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 2 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %11, i64 60 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  br label %bb.cc

._crit_edge986:                                   ; preds = %bb.ct, %bb.cb
  %.0773.lcssa = phi i64 [ 0, %bb.cb ], [ %.1774, %bb.ct ] ; 2 uses
  %.0768.lcssa = phi i64 [ -1, %bb.cb ], [ %.1769, %bb.ct ] ; 2 uses
  %i.va = icmp ne i64 %.0773.lcssa, 0             ; 2 uses
  %.neg910.a = sext i1 %i.va to i64
  %i.vb = add i64 %.0773.lcssa, %.neg910.a
  %i.vc = select i1 %i.va, i64 4096, i64 0
  %i.vd = add i64 %i.vb, %i.vc
  %i.ve = and i64 %i.vd, -4096                    ; 3 uses
  %i.vf = add i64 %i.ve, %.0261.lcssa1106         ; 2 uses
  %i.vg = icmp ugt i64 %i.vf, 4294967295
  %not. = xor i1 %i.cy, true
  %.not282 = select i1 %not., i1 %i.vg, i1 false
  %i.vh = icmp ult i64 %i.vf, %i.ve
  %or.cond = select i1 %.not282, i1 true, i1 %i.vh
  br i1 %or.cond, label %bb.cu, label %bb.cw

bb.cc:                                            ; preds = %.lr.ph985, %bb.ct
  %.0244982 = phi ptr [ %i.sn, %.lr.ph985 ], [ %i.aea, %bb.ct ] ; 6 uses
  %.0768979 = phi i64 [ -1, %.lr.ph985 ], [ %.1769, %bb.ct ] ; 7 uses
  %.0773976 = phi i64 [ 0, %.lr.ph985 ], [ %.1774, %bb.ct ] ; 9 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.0244982, i64 8
  %i.vj = load i32, ptr %i.vi, align 8, !tbaa !249
  switch i32 %i.vj, label %bb.ct [
    i32 1, label %bb.cd
    i32 25, label %bb.cl
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNK4llvm6object15MachOObjectFile21getSegmentLoadCommandERKNS1_15LoadCommandInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::segment_command") align 4 %64, ptr noundef nonnull align 8 dereferenceable(360) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %.0244982) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull align 8 dereferenceable(56) %64, i64 56, i1 false)
  %i.vk = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tx) #19
  switch i64 %i.vk, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i [
    i64 7, label %_ZN4llvmeqENS_9StringRefES0_.exit.i
    i64 6, label %_ZN4llvmeqENS_9StringRefES0_.exit53.i
    i64 10, label %_ZN4llvmeqENS_9StringRefES0_.exit58.i
    i64 14, label %_ZN4llvmeqENS_9StringRefES0_.exit63.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.cd
  %i.vl = load i32, ptr %i.tx, align 1
  %i.vm = xor i32 1464098655, %i.vl
  %i.vn = getelementptr i8, ptr %i.tx, i64 3
  %i.vo = load i32, ptr %i.vn, align 1
  %i.vp = xor i32 1179795799, %i.vo
  %i.vq = or i32 %i.vm, %i.vp
  %i.vr = icmp ne i32 %i.vq, 0
  %i.vs = zext i1 %i.vr to i32
  %i.vt = icmp eq i32 %i.vs, 0
  br i1 %i.vt, label %_ZN4llvm8dsymutil10MachOUtilsL26transferSegmentAndSectionsINS_5MachO15segment_commandEEEvRKNS_6object15MachOObjectFile15LoadCommandInfoET_RKS6_RNS_16MachObjectWriterEmmmmmmmmmRmSF_.exit, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit53.i:            ; preds = %bb.cd
  %i.vu = load i32, ptr %i.tx, align 1
  %i.vv = xor i32 1163157343, %i.vu
  %i.vw = getelementptr i8, ptr %i.tx, i64 4
  %i.vx = load i16, ptr %i.vw, align 1
  %i.vy = zext i16 %i.vx to i32
  %i.vz = xor i32 21592, %i.vy
  %i.wa = or i32 %i.vv, %i.vz
  %i.wb = icmp ne i32 %i.wa, 0
  %i.wc = zext i1 %i.wb to i32
  %i.wd = icmp eq i32 %i.wc, 0
  %or.cond.i = and i1 %i.ta, %i.wd
  br i1 %or.cond.i, label %bb.ce, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i

bb.ce:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit53.i
  store i32 %i.tq, ptr %i.ty, align 8, !tbaa !339
  store i32 %i.uk, ptr %i.ua, align 4, !tbaa !340
  br label %bb.cg

_ZN4llvmeqENS_9StringRefES0_.exit58.i:            ; preds = %bb.cd
  %i.we = load i64, ptr %i.tx, align 1
  %i.wf = xor i64 4919420967581409119, %i.we
  %i.wg = getelementptr i8, ptr %i.tx, i64 8
  %i.wh = load i16, ptr %i.wg, align 1
  %i.wi = zext i16 %i.wh to i64
  %i.wj = xor i64 21577, %i.wi
  %i.wk = or i64 %i.wf, %i.wj
  %i.wl = icmp ne i64 %i.wk, 0
  %i.wm = zext i1 %i.wl to i32
  %i.wn = icmp eq i32 %i.wm, 0
  br i1 %i.wn, label %_ZN4llvmeqENS_9StringRefES0_.exit58.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit58.thread.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit58.i
  store i32 %i.ub, ptr %i.ty, align 8, !tbaa !339
  store i32 %i.uc, ptr %i.ua, align 4, !tbaa !340
  store i32 %i.ui, ptr %i.uj, align 4, !tbaa !341
  br label %bb.cg

_ZN4llvmeqENS_9StringRefES0_.exit63.i:            ; preds = %bb.cd
  %i.wo = load i64, ptr %i.tx, align 1
  %i.wp = xor i64 5711783983651512159, %i.wo
  %i.wq = getelementptr i8, ptr %i.tx, i64 6
  %i.wr = load i64, ptr %i.wq, align 1
  %i.ws = xor i64 4990638552034266948, %i.wr
  %i.wt = or i64 %i.wp, %i.ws
  %i.wu = icmp ne i64 %i.wt, 0
  %i.wv = zext i1 %i.wu to i32
  %i.ww = icmp eq i32 %i.wv, 0
  %or.cond3.i = and i1 %.not279, %i.ww
  br i1 %or.cond3.i, label %bb.cf, label %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i

bb.cf:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit63.i
  store i32 %i.tp, ptr %i.ty, align 8, !tbaa !339
  store i32 %i.tz, ptr %i.ua, align 4, !tbaa !340
  br label %bb.cg

_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit63.i, %_ZN4llvmeqENS_9StringRefES0_.exit58.i, %_ZN4llvmeqENS_9StringRefES0_.exit53.i, %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.cd
  store i32 0, ptr %i.ua, align 4, !tbaa !340
  store i32 0, ptr %i.ty, align 8, !tbaa !339
  br label %bb.cg

bb.cg:                                            ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i, %bb.cf, %_ZN4llvmeqENS_9StringRefES0_.exit58.thread.i, %bb.ce
  %i.wx = phi i32 [ %i.uc, %_ZN4llvmeqENS_9StringRefES0_.exit58.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i ], [ %i.tz, %bb.cf ], [ %i.uk, %bb.ce ]
  %i.wy = phi i32 [ %i.ub, %_ZN4llvmeqENS_9StringRefES0_.exit58.thread.i ], [ 0, %_ZN4llvmeqENS_9StringRefES0_.exit63.thread.i ], [ %i.tp, %bb.cf ], [ %i.tq, %bb.ce ]
  %i.wz = icmp eq i64 %.0768979, -1
  %i.xa = load i32, ptr %i.ul, align 8, !tbaa !342 ; 3 uses
  br i1 %i.wz, label %bb.ch, label %._crit_edge.i513

bb.ch:                                            ; preds = %bb.cg
  %i.xb = icmp ne i64 %.0773976, 0                ; 2 uses
  %.neg126.i = sext i1 %i.xb to i64
  %i.xc = add i64 %.0773976, %.neg126.i
  %i.xd = select i1 %i.xb, i64 4096, i64 0
  %i.xe = add i64 %i.xc, %i.xd
  %i.xf = and i64 %i.xe, -4096                    ; 3 uses
  %i.xg = zext i32 %i.xa to i64                   ; 2 uses
  %i.xh = icmp uge i64 %i.xf, %i.xg
  %i.xi = sub nuw nsw i64 %i.xg, %i.xf
  %.not.i516 = icmp ult i64 %i.xi, %.0261.lcssa1106
  %or.cond48.i = select i1 %i.xh, i1 true, i1 %.not.i516
  %spec.select = select i1 %or.cond48.i, i64 -1, i64 %i.xf
  br label %._crit_edge.i513

._crit_edge.i513:                                 ; preds = %bb.ch, %bb.cg
  %.2770 = phi i64 [ %spec.select, %bb.ch ], [ %.0768979, %bb.cg ] ; 2 uses
  %i.xj = load i32, ptr %i.uj, align 4, !tbaa !341 ; 2 uses
  %i.xk = add i32 %i.xj, %i.xa
  %i.xl = zext i32 %i.xk to i64
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %.0773976, i64 %i.xl) ; 2 uses
  %i.xm = load i32, ptr %i.um, align 8, !tbaa !343 ; 3 uses
  %i.xn = load i32, ptr %i.td, align 8, !tbaa !312
  switch i32 %i.xn, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.thread.i [
    i32 14, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514
    i32 16, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514
    i32 18, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514
    i32 20, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514
    i32 11, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514
    i32 12, label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514
  ]

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514: ; preds = %._crit_edge.i513, %._crit_edge.i513, %._crit_edge.i513, %._crit_edge.i513, %._crit_edge.i513, %._crit_edge.i513
  %i.xo = load i32, ptr %12, align 8, !tbaa !54
  %i.xp = call noundef i32 @llvm.bswap.i32(i32 %i.xo)
  store i32 %i.xp, ptr %12, align 8, !tbaa !54
  %i.xq = load i32, ptr %i.un, align 4, !tbaa !54
  %i.xr = call noundef i32 @llvm.bswap.i32(i32 %i.xq)
  store i32 %i.xr, ptr %i.un, align 4, !tbaa !54
  %i.xs = call noundef i32 @llvm.bswap.i32(i32 %i.xa)
  store i32 %i.xs, ptr %i.ul, align 8, !tbaa !54
  %i.xt = call noundef i32 @llvm.bswap.i32(i32 %i.xj)
  store i32 %i.xt, ptr %i.uj, align 4, !tbaa !54
  %i.xu = call noundef i32 @llvm.bswap.i32(i32 %i.wy)
  store i32 %i.xu, ptr %i.ty, align 8, !tbaa !54
  %i.xv = call noundef i32 @llvm.bswap.i32(i32 %i.wx)
  store i32 %i.xv, ptr %i.ua, align 4, !tbaa !54
  %i.xw = load i32, ptr %i.uo, align 8, !tbaa !54
  %i.xx = call noundef i32 @llvm.bswap.i32(i32 %i.xw)
  store i32 %i.xx, ptr %i.uo, align 8, !tbaa !54
  %i.xy = load i32, ptr %i.up, align 4, !tbaa !54
  %i.xz = call noundef i32 @llvm.bswap.i32(i32 %i.xy)
  store i32 %i.xz, ptr %i.up, align 4, !tbaa !54
  %i.ya = call noundef i32 @llvm.bswap.i32(i32 %i.xm)
  store i32 %i.ya, ptr %i.um, align 8, !tbaa !54
  %i.yb = load i32, ptr %i.uq, align 4, !tbaa !54
  %i.yc = call noundef i32 @llvm.bswap.i32(i32 %i.yb)
  store i32 %i.yc, ptr %i.uq, align 4, !tbaa !54
  br label %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.thread.i

_ZNK4llvm6object6Binary14isLittleEndianEv.exit.thread.i: ; preds = %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.i514, %._crit_edge.i513
  %i.yd = load ptr, ptr %i.ti, align 8, !tbaa !409, !nonnull !52, !align !336
  %i.ye = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.yd, ptr noundef nonnull align 8 %12, i64 noundef 56) #19 ; 0 uses
  %.not128.i = icmp eq i32 %i.xm, 0
  br i1 %.not128.i, label %_ZN4llvm8dsymutil10MachOUtilsL26transferSegmentAndSectionsINS_5MachO15segment_commandEEEvRKNS_6object15MachOObjectFile15LoadCommandInfoET_RKS6_RNS_16MachObjectWriterEmmmmmmmmmRmSF_.exit, label %.lr.ph.i515

.lr.ph.i515:                                      ; preds = %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.thread.i, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit79.thread.i
  %.0127.i = phi i32 [ %i.zu, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit79.thread.i ], [ 0, %_ZNK4llvm6object6Binary14isLittleEndianEv.exit.thread.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @_ZNK4llvm6object15MachOObjectFile10getSectionERKNS1_15LoadCommandInfoEj(ptr dead_on_unwind nonnull writable sret(%"struct.llvm::MachO::section") align 4 %11, ptr noundef nonnull align 8 dereferenceable(360) %i.ct, ptr noundef nonnull align 8 dereferenceable(16) %.0244982, i32 noundef %.0127.i) #19
  %i.yf = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #19
  switch i64 %i.yf, label %_ZN4llvmeqENS_9StringRefES0_.exit78.thread.i [
    i64 10, label %_ZN4llvmeqENS_9StringRefES0_.exit68.i
    i64 8, label %_ZN4llvmeqENS_9StringRefES0_.exit73.i
    i64 13, label %_ZN4llvmeqENS_9StringRefES0_.exit78.i
  ]

_ZN4llvmeqENS_9StringRefES0_.exit68.i:            ; preds = %.lr.ph.i515
  %i.yg = load i64, ptr %11, align 4
  %i.yh = xor i64 7021787328983424863, %i.yg
  %i.yi = getelementptr i8, ptr %11, i64 8
  %i.yj = load i16, ptr %i.yi, align 4
  %i.yk = zext i16 %i.yj to i64
  %i.yl = xor i64 25965, %i.yk
  %i.ym = or i64 %i.yh, %i.yl
  %i.yn = icmp ne i64 %i.ym, 0
  %i.yo = zext i1 %i.yn to i32
  %i.yp = icmp eq i32 %i.yo, 0
  br i1 %i.yp, label %_ZN4llvmeqENS_9StringRefES0_.exit68.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit78.thread.i

_ZN4llvmeqENS_9StringRefES0_.exit68.thread.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit68.i
  store i32 %i.tq, ptr %i.ur, align 4, !tbaa !411
end_hunk_1
