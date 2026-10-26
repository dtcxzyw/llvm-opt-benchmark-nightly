Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/vcpkgpaths?download=true
inline.NumInlined: 3227
inline.NumDeleted: 1368
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5vcpkg14VcpkgPathsImplC2ERKNS_10FilesystemERKNS_17VcpkgCmdArgumentsENS_14BundleSettingsERKNS_4PathESA_:bb.a
  %i.cu = load i64, ptr %i.co, align 8, !tbaa !39
  store i64 %i.cu, ptr %i.cm, align 8, !tbaa !39
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %45, i64 16
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41.i, %bb.r
  %i.cv = phi i64 [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i41.i ], [ %i.cr, %bb.r ]
  %i.cw = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 448
  store i64 %i.cv, ptr %i.cx, align 8, !tbaa !40
  store ptr %i.co, ptr %i.cl, align 8, !tbaa !38
  store i64 0, ptr %i.cw, align 8, !tbaa !40
  store i8 0, ptr %i.co, align 8, !tbaa !39
  br label %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i

_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i, %_ZNO5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEE13value_or_exitERKNS_8LineInfoE.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cz = getelementptr inbounds nuw i8, ptr %45, i64 40 ; 2 uses
  %i.da = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !120
  store <2 x ptr> %i.da, ptr %i.cy, align 8, !tbaa !120
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.dc = getelementptr inbounds nuw i8, ptr %45, i64 56
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !121
  store ptr %i.dd, ptr %i.db, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, i8 0, i64 24, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %45, i64 64
  store i8 0, ptr %i.de, align 8, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 3 uses
  store i8 0, ptr %i.dg, align 8, !tbaa !39
  %i.dh = load i8, ptr %i.df, align 8, !tbaa !44, !range !45, !noundef !46
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.s, label %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10.i.i

bb.s:                                             ; preds = %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i
  store i8 1, ptr %i.de, align 8, !tbaa !44
  %i.dj = getelementptr inbounds nuw i8, ptr %45, i64 72 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  store ptr %i.dk, ptr %i.dg, align 8, !tbaa !41
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !38 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %45, i64 88 ; 5 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i

bb.t:                                             ; preds = %bb.s
  %i.do = getelementptr inbounds nuw i8, ptr %45, i64 80
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !40 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dk, ptr noundef nonnull align 8 dereferenceable(1) %i.dm, i64 %i.dr, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i9.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i: ; preds = %bb.s
  store ptr %i.dl, ptr %i.dg, align 8, !tbaa !38
  %i.ds = load i64, ptr %i.dm, align 8, !tbaa !39
  store i64 %i.ds, ptr %i.dk, align 8, !tbaa !39
  %.phi.trans.insert112.i = getelementptr inbounds nuw i8, ptr %45, i64 80
  %.pre113.i = load i64, ptr %.phi.trans.insert112.i, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i9.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i9.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i, %bb.t
  %i.dt = phi i64 [ %.pre113.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8.i.i ], [ %i.dp, %bb.t ]
  %i.du = getelementptr inbounds nuw i8, ptr %45, i64 80
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !40
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !38
  store i64 0, ptr %i.du, align 8, !tbaa !40
  store i8 0, ptr %i.dm, align 8, !tbaa !39
  br label %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10.i.i

_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i9.i.i, %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.dx = getelementptr inbounds nuw i8, ptr %45, i64 104 ; 2 uses
  %i.dy = load <2 x ptr>, ptr %i.dx, align 8, !tbaa !120
  store <2 x ptr> %i.dy, ptr %i.dw, align 8, !tbaa !120
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ea = getelementptr inbounds nuw i8, ptr %45, i64 120
  %i.eb = getelementptr inbounds nuw i8, ptr %45, i64 128 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %45, i64 136
  %i.ed = load ptr, ptr %i.ea, align 8, !tbaa !121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, i8 0, i64 24, i1 false)
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !165
  %i.ef = load <2 x ptr>, ptr %i.ec, align 8, !tbaa !120
  %i.eg = insertelement <4 x ptr> poison, ptr %i.ed, i64 0
  %i.eh = insertelement <4 x ptr> %i.eg, ptr %i.ee, i64 1
  %i.ei = shufflevector <2 x ptr> %i.ef, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ej = shufflevector <4 x ptr> %i.eh, <4 x ptr> %i.ei, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.ej, ptr %i.dz, align 8, !tbaa !120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, i8 0, i64 24, i1 false)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.el = getelementptr inbounds nuw i8, ptr %45, i64 152
  %i.em = load i8, ptr %i.el, align 8, !tbaa !628, !range !45, !noundef !46
  store i8 %i.em, ptr %i.ek, align 8, !tbaa !628
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %45, i64 160
  store i8 0, ptr %i.en, align 8, !tbaa !44
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 3 uses
  store i8 0, ptr %i.ep, align 8, !tbaa !39
  %i.eq = load i8, ptr %i.eo, align 8, !tbaa !44, !range !45, !noundef !46
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.u, label %_ZN5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEED2Ev.exit.i

bb.u:                                             ; preds = %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10.i.i
  store i8 1, ptr %i.en, align 8, !tbaa !44
  %i.es = getelementptr inbounds nuw i8, ptr %45, i64 168 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 3 uses
  store ptr %i.et, ptr %i.ep, align 8, !tbaa !41
  %i.eu = load ptr, ptr %i.es, align 8, !tbaa !38 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %45, i64 184 ; 5 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i

bb.v:                                             ; preds = %bb.u
  %i.ex = getelementptr inbounds nuw i8, ptr %45, i64 176
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !40 ; 3 uses
  %i.ez = icmp ult i64 %i.ey, 16
  call void @llvm.assume(i1 %i.ez)
  %i.fa = add nuw nsw i64 %i.ey, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.et, ptr noundef nonnull align 8 dereferenceable(1) %i.ev, i64 %i.fa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i12.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i: ; preds = %bb.u
  store ptr %i.eu, ptr %i.ep, align 8, !tbaa !38
  %i.fb = load i64, ptr %i.ev, align 8, !tbaa !39
  store i64 %i.fb, ptr %i.et, align 8, !tbaa !39
  %.phi.trans.insert114.i = getelementptr inbounds nuw i8, ptr %45, i64 176
  %.pre115.i = load i64, ptr %.phi.trans.insert114.i, align 8, !tbaa !40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i12.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i12.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i, %bb.v
  %i.fc = phi i64 [ %.pre115.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i11.i.i ], [ %i.ey, %bb.v ]
  %i.fd = getelementptr inbounds nuw i8, ptr %45, i64 176
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 608
  store i64 %i.fc, ptr %i.fe, align 8, !tbaa !40
  store ptr %i.ev, ptr %i.es, align 8, !tbaa !38
  store i64 0, ptr %i.fd, align 8, !tbaa !40
  store i8 0, ptr %i.ev, align 8, !tbaa !39
  br label %_ZN5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEED2Ev.exit.i

_ZN5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i12.i.i, %_ZN5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS7_.exit10.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #27
  call void @_ZN5vcpkg20AssetCachingSettingsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(201) %45) #27
  %i.ff = load i8, ptr %46, align 8, !tbaa !44, !range !45, !noundef !46
  %i.fg = trunc nuw i8 %i.ff to i1
  br i1 %i.fg, label %bb.w, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

bb.w:                                             ; preds = %_ZN5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEED2Ev.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !38 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %46, i64 24 ; 2 uses
  %i.fk = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fk, label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.w
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !39
  %i.fm = add i64 %i.fl, 1
  call void @_ZdlPvm(ptr noundef %i.fi, i64 noundef %i.fm) #28
  br label %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i

_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZN5vcpkg9ExpectedTINS_20AssetCachingSettingsENS_15LocalizedStringEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #27
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 328
  %i.fp = load i8, ptr %i.fo, align 8, !tbaa !44, !range !45, !noundef !46
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #27
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %48, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.114, i64 5)
          to label %bb.x unwind label %bb.cb

bb.x:                                             ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EED2Ev.exit.i
  %i.fq = trunc nuw i8 %i.fp to i1
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.fs = select i1 %i.fq, ptr %i.fr, ptr null
  %.val.i = load ptr, ptr %48, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %48, i64 8
  %.val39.i = load i64, ptr %i.ft, align 8
  invoke fastcc void @_ZN12_GLOBAL__N_124process_output_directoryERKN5vcpkg18ReadOnlyFilesystemEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_4PathE(ptr dead_on_unwind noalias writable align 8 %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fs, ptr %.val.i, i64 %.val39.i)
          to label %bb.y unwind label %bb.cc

bb.y:                                             ; preds = %bb.x
  %i.fu = load ptr, ptr %48, align 8, !tbaa !38   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %_ZN5vcpkg4PathD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44.i: ; preds = %bb.y
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !39
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fu, i64 noundef %i.fy) #28
  br label %_ZN5vcpkg4PathD2Ev.exit.i

_ZN5vcpkg4PathD2Ev.exit.i:                        ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i44.i
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #27
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #27
  %i.ga = getelementptr inbounds nuw i8, ptr %2, i64 488
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !44, !range !45, !noalias !629, !noundef !46
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %_ZN5vcpkg4PathD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #27, !noalias !629
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 496
  call void @llvm.lifetime.start.p0(ptr nonnull %39), !noalias !629
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27, !noalias !630
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull align 8 dereferenceable(32) %i.gd)
          to label %.noexc46.i unwind label %bb.cd

.noexc46.i:                                       ; preds = %bb.z
  store i32 340, ptr %39, align 8, !tbaa !32, !noalias !630
  %i.ge = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr @.str, ptr %i.ge, align 8, !tbaa !33, !noalias !630
  %i.gf = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr @__func__._ZZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_ENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESL_, ptr %i.gf, align 8, !tbaa !34, !noalias !630
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem16almost_canonicalERKNS_4PathENS_8LineInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %40, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %39)
          to label %bb.aa unwind label %bb.ab, !noalias !629

bb.aa:                                            ; preds = %.noexc46.i
  %i.gg = load ptr, ptr %38, align 8, !tbaa !38, !noalias !630 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_ENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESL_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.aa
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !39, !noalias !630
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #28, !noalias !629
  br label %_ZZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_ENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESL_.exit.i.i

bb.ab:                                            ; preds = %.noexc46.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  %i.gm = load ptr, ptr %38, align 8, !tbaa !38, !noalias !630 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZN5vcpkg4PathD2Ev.exit5.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i.i.i: ; preds = %bb.ab
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !39, !noalias !630
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #28, !noalias !629
  br label %_ZN5vcpkg4PathD2Ev.exit5.i.i.i

_ZN5vcpkg4PathD2Ev.exit5.i.i.i:                   ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i3.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27, !noalias !630
  br label %.body47.i

_ZZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_ENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESL_.exit.i.i: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27, !noalias !630
  call void @llvm.lifetime.end.p0(ptr nonnull %39), !noalias !629
  store i8 1, ptr %49, align 8, !tbaa !117, !alias.scope !629
  %i.gr = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 3 uses
  store ptr %i.gs, ptr %i.gr, align 8, !tbaa !41, !alias.scope !629
  %i.gt = load ptr, ptr %40, align 8, !tbaa !38, !noalias !629 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 3 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %bb.ac, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %_ZZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_ENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESL_.exit.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !40, !noalias !629 ; 3 uses
  %i.gy = icmp ult i64 %i.gx, 16
  call void @llvm.assume(i1 %i.gy)
  %i.gz = add nuw nsw i64 %i.gx, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gs, ptr noundef nonnull align 8 dereferenceable(1) %i.gu, i64 %i.gz, i1 false)
  br label %_ZN5vcpkg4PathD2Ev.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_ENKUlRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE_clESL_.exit.i.i
  store ptr %i.gt, ptr %i.gr, align 8, !tbaa !38, !alias.scope !629
  %i.ha = load i64, ptr %i.gu, align 8, !tbaa !39, !noalias !629
  store i64 %i.ha, ptr %i.gs, align 8, !tbaa !39, !alias.scope !629
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %40, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !40, !noalias !629
  br label %_ZN5vcpkg4PathD2Ev.exit.i.i

_ZN5vcpkg4PathD2Ev.exit.i.i:                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.ac
  %i.hb = phi i64 [ %i.gx, %bb.ac ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.hc = getelementptr inbounds nuw i8, ptr %49, i64 16
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !40, !alias.scope !629
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #27, !noalias !629
  br label %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3mapIZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKNS_10FilesystemERKNS_17VcpkgCmdArgumentsERKNS_14BundleSettingsERKNS_4PathESM_EUlRKS6_E_EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISO_EDTcl9__declvalISQ_ELi0EEEvEEEEEESQ_.exit.i

bb.ad:                                            ; preds = %_ZN5vcpkg4PathD2Ev.exit.i
  store i8 0, ptr %49, align 8, !tbaa !117, !alias.scope !629
  %i.hd = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i8 0, ptr %i.hd, align 8, !tbaa !39, !alias.scope !629
  br label %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3mapIZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKNS_10FilesystemERKNS_17VcpkgCmdArgumentsERKNS_14BundleSettingsERKNS_4PathESM_EUlRKS6_E_EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISO_EDTcl9__declvalISQ_ELi0EEEvEEEEEESQ_.exit.i

_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3mapIZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKNS_10FilesystemERKNS_17VcpkgCmdArgumentsERKNS_14BundleSettingsERKNS_4PathESM_EUlRKS6_E_EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISO_EDTcl9__declvalISQ_ELi0EEEvEEEEEESQ_.exit.i: ; preds = %bb.ad, %_ZN5vcpkg4PathD2Ev.exit.i.i
  %i.he = phi i8 [ 0, %bb.ad ], [ 1, %_ZN5vcpkg4PathD2Ev.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #27
  %i.hf = getelementptr inbounds nuw i8, ptr %50, i64 16 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i8 0, i64 16, i1 false)
  store ptr %i.hf, ptr %50, align 8, !tbaa !41
  %i.hg = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 2 uses
  store i64 0, ptr %i.hg, align 8, !tbaa !40
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %62 = trunc nuw i8 %i.he to i1                  ; 5 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.hi = select i1 %62, ptr %i.hh, ptr %50       ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 5 uses
  store ptr %i.hj, ptr %i.fz, align 8, !tbaa !41, !alias.scope !631
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !38, !noalias !631 ; 2 uses
  %.sroa.gep.i = getelementptr inbounds nuw i8, ptr %49, i64 24 ; 3 uses
  %.sroa.sel.i = select i1 %62, ptr %.sroa.gep.i, ptr %i.hf ; 5 uses
  %i.hl = icmp eq ptr %i.hk, %.sroa.sel.i
  br i1 %i.hl, label %bb.ae, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i

bb.ae:                                            ; preds = %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3mapIZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKNS_10FilesystemERKNS_17VcpkgCmdArgumentsERKNS_14BundleSettingsERKNS_4PathESM_EUlRKS6_E_EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISO_EDTcl9__declvalISQ_ELi0EEEvEEEEEESQ_.exit.i
  %.sroa.gep105.i = getelementptr inbounds nuw i8, ptr %49, i64 16
  %.sroa.gep105.val.i = load i64, ptr %.sroa.gep105.i, align 8
  %i.hm = select i1 %62, i64 %.sroa.gep105.val.i, i64 0 ; 3 uses
  %i.hn = icmp ult i64 %i.hm, 16
  call void @llvm.assume(i1 %i.hn)
  %i.ho = add nuw nsw i64 %i.hm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hj, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.sel.i, i64 %i.ho, i1 false)
  br label %_ZNO5vcpkg8OptionalINS_4PathEE8value_orEOS1_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i: ; preds = %_ZNKR5vcpkg8OptionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3mapIZN12_GLOBAL__N_120VcpkgPathsImplStage1C1ERKNS_10FilesystemERKNS_17VcpkgCmdArgumentsERKNS_14BundleSettingsERKNS_4PathESM_EUlRKS6_E_EENS0_IDTclclsr3stdE7declvalIRT_EEclL_ZSt7declvalISO_EDTcl9__declvalISQ_ELi0EEEvEEEEEESQ_.exit.i
  store ptr %i.hk, ptr %i.fz, align 8, !tbaa !38, !alias.scope !631
  %i.hp = load i64, ptr %.sroa.sel.i, align 8, !tbaa !39, !noalias !631
  store i64 %i.hp, ptr %i.hj, align 8, !tbaa !39, !alias.scope !631
  %.sroa.gep99.i = getelementptr inbounds nuw i8, ptr %49, i64 16
  %.sroa.gep99.val.i = load i64, ptr %.sroa.gep99.i, align 8
  %.pre.i51.i = select i1 %62, i64 %.sroa.gep99.val.i, i64 0
  br label %_ZNO5vcpkg8OptionalINS_4PathEE8value_orEOS1_.exit.i

_ZNO5vcpkg8OptionalINS_4PathEE8value_orEOS1_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i, %bb.ae
  %i.hq = phi i64 [ %i.hm, %bb.ae ], [ %.pre.i51.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49.i ]
  %.sroa.gep102.i = getelementptr inbounds nuw i8, ptr %49, i64 16
  %.sroa.sel104.i = select i1 %62, ptr %.sroa.gep102.i, ptr %i.hg
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 672
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !40, !alias.scope !631
  store ptr %.sroa.sel.i, ptr %i.hi, align 8, !tbaa !38, !noalias !631
  store i64 0, ptr %.sroa.sel104.i, align 8, !tbaa !40, !noalias !631
  store i8 0, ptr %.sroa.sel.i, align 8, !tbaa !39, !noalias !631
  %i.hs = load ptr, ptr %50, align 8, !tbaa !38   ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.hf
  br i1 %i.ht, label %_ZN5vcpkg4PathD2Ev.exit54.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i: ; preds = %_ZNO5vcpkg8OptionalINS_4PathEE8value_orEOS1_.exit.i
  %i.hu = load i64, ptr %i.hf, align 8, !tbaa !39
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hs, i64 noundef %i.hv) #28
  %.pre116.i = load i8, ptr %49, align 8, !tbaa !117, !range !45
  br label %_ZN5vcpkg4PathD2Ev.exit54.i

_ZN5vcpkg4PathD2Ev.exit54.i:                      ; preds = %_ZNO5vcpkg8OptionalINS_4PathEE8value_orEOS1_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i
  %i.hw = phi i8 [ %.pre116.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52.i ], [ %i.he, %_ZNO5vcpkg8OptionalINS_4PathEE8value_orEOS1_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #27
  %i.hx = trunc nuw i8 %i.hw to i1
  br i1 %i.hx, label %bb.af, label %_ZN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EED2Ev.exit.i

bb.af:                                            ; preds = %_ZN5vcpkg4PathD2Ev.exit54.i
  %i.hy = load ptr, ptr %i.hh, align 8, !tbaa !38 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, %.sroa.gep.i
  br i1 %i.hz, label %_ZN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i: ; preds = %bb.af
  %i.ia = load i64, ptr %.sroa.gep.i, align 8, !tbaa !39
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hy, i64 noundef %i.ib) #28
  br label %_ZN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EED2Ev.exit.i

_ZN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EED2Ev.exit.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i56.i, %_ZN5vcpkg4PathD2Ev.exit54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #27
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 696 ; 6 uses
  %i.id = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.ie = load i8, ptr %i.id, align 8, !tbaa !44, !range !45, !noundef !46
  %i.if = trunc nuw i8 %i.ie to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.lifetime.start.p0(ptr nonnull %37)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  store i32 343, ptr %37, align 8
  %.sroa.295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str, ptr %.sroa.295.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %37, i64 16
  store ptr @__func__._ZN12_GLOBAL__N_120VcpkgPathsImplStage1C2ERKN5vcpkg10FilesystemERKNS1_17VcpkgCmdArgumentsERKNS1_14BundleSettingsERKNS1_4PathESD_, ptr %.sroa.3.0..sroa_idx.i, align 8
  store ptr @.str.115, ptr %36, align 8, !noalias !632
  %i.ig = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 7, ptr %i.ig, align 8, !noalias !632
  br i1 %i.if, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EED2Ev.exit.i
  %i.ih = getelementptr inbounds nuw i8, ptr %2, i64 296
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #27, !noalias !633
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull align 8 dereferenceable(32) %i.ih)
          to label %.noexc62.i unwind label %bb.ce

.noexc62.i:                                       ; preds = %bb.ag
  invoke void @_ZNK5vcpkg18ReadOnlyFilesystem16almost_canonicalERKNS_4PathENS_8LineInfoE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.ic, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %35, ptr noundef nonnull byval(%"struct.vcpkg::LineInfo") align 8 %37)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc62.i
  %i.ii = load ptr, ptr %35, align 8, !tbaa !38, !noalias !633 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZN5vcpkg4PathD2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58.i: ; preds = %bb.ah
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !39, !noalias !633
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #28
  br label %_ZN5vcpkg4PathD2Ev.exit.i.i.i

_ZN5vcpkg4PathD2Ev.exit.i.i.i:                    ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i58.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27, !noalias !633
  br label %_ZN12_GLOBAL__N_128process_input_directory_implERKN5vcpkg18ReadOnlyFilesystemERKNS0_4PathEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13StringLiteralENS0_8LineInfoE.exit.i.i

bb.ai:                                            ; preds = %.noexc62.i
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %35, align 8, !tbaa !38, !noalias !633 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZN5vcpkg4PathD2Ev.exit9.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i.i: ; preds = %bb.ai
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !39, !noalias !633
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #28
  br label %_ZN5vcpkg4PathD2Ev.exit9.i.i.i

_ZN5vcpkg4PathD2Ev.exit9.i.i.i:                   ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #27, !noalias !633
  br label %.body63.i

bb.aj:                                            ; preds = %_ZN5vcpkg7details19OptionalStorageDtorINS_4PathELb0EED2Ev.exit.i
  invoke void @_ZNKR5vcpkg4PathdvENS_10StringViewE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::Path") align 8 %i.ic, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.115, i64 7)
          to label %_ZN12_GLOBAL__N_128process_input_directory_implERKN5vcpkg18ReadOnlyFilesystemERKNS0_4PathEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13StringLiteralENS0_8LineInfoE.exit.i.i unwind label %bb.ce

_ZN12_GLOBAL__N_128process_input_directory_implERKN5vcpkg18ReadOnlyFilesystemERKNS0_4PathEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13StringLiteralENS0_8LineInfoE.exit.i.i: ; preds = %bb.aj, %_ZN5vcpkg4PathD2Ev.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27, !noalias !632
  store i8 10, ptr %i.f, align 1, !tbaa !39, !noalias !632
  invoke void @_ZN5vcpkg5Debug5printIJA7_cNS_13StringLiteralEA8_cNS_4PathEcEEEvDpRKT_(ptr noundef nonnull align 1 dereferenceable(7) @.str.117, ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 1 dereferenceable(8) @.str.118, ptr noundef nonnull align 8 dereferenceable(32) %i.ic, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.al unwind label %bb.ak

bb.ak:                                            ; preds = %_ZN12_GLOBAL__N_128process_input_directory_implERKN5vcpkg18ReadOnlyFilesystemERKNS0_4PathEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13StringLiteralENS0_8LineInfoE.exit.i.i
  %i.it = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !632
  %i.iu = load ptr, ptr %i.ic, align 8, !tbaa !38, !alias.scope !632 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.iw = icmp eq ptr %i.iu, %i.iv
  br i1 %i.iw, label %.body63.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59.i: ; preds = %bb.ak
  %i.ix = load i64, ptr %i.iv, align 8, !tbaa !39, !alias.scope !632
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.iy) #28
  br label %.body63.i

bb.al:                                            ; preds = %_ZN12_GLOBAL__N_128process_input_directory_implERKN5vcpkg18ReadOnlyFilesystemERKNS0_4PathEPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_13StringLiteralENS0_8LineInfoE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27, !noalias !632
  call void @llvm.lifetime.end.p0(ptr nonnull %37)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %34)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #27, !noalias !634
  %i.ja = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 10 uses
  store ptr %i.ja, ptr %27, align 8, !tbaa !41, !noalias !634
  %i.jb = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 7 uses
  store i64 0, ptr %i.jb, align 8, !tbaa !40, !noalias !634
  store i8 0, ptr %i.ja, align 8, !tbaa !39, !noalias !634
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 408
  %i.jd = load i8, ptr %i.jc, align 8, !tbaa !44, !range !45, !noalias !634, !noundef !46
  %i.je = trunc nuw i8 %i.jd to i1
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 416
  br i1 %i.je, label %bb.am, label %bb.bf

bb.am:                                            ; preds = %bb.al
  %i.jg = call noundef nonnull align 8 dereferenceable(240) ptr @_ZN5vcpkg28get_global_metrics_collectorEv() #27, !noalias !634
  invoke void @_ZN5vcpkg16MetricsCollector12track_defineENS_12DefineMetricE(ptr noundef nonnull align 8 dereferenceable(240) %i.jg, i32 noundef 26)
          to label %bb.an unwind label %bb.ay, !noalias !634

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #27, !noalias !634
  invoke void @_ZN5vcpkg4PathC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %i.jf)
          to label %bb.ao unwind label %bb.ax, !noalias !634

bb.ao:                                            ; preds = %bb.an
  %i.jh = load ptr, ptr %27, align 8, !tbaa !38, !noalias !634 ; 6 uses
  %i.ji = icmp eq ptr %i.jh, %i.ja
  %i.jj = load ptr, ptr %28, align 8, !tbaa !38, !noalias !634 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  %i.jl = icmp eq ptr %i.jj, %i.jk                ; 2 uses
  br i1 %i.ji, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i67.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71.i: ; preds = %bb.ao
  br i1 %i.jl, label %bb.ap, label %.thread.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i67.i: ; preds = %bb.ao
  br i1 %i.jl, label %bb.ap, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i67.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71.i
  %i.jm = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !40, !noalias !634 ; 3 uses
  %i.jo = icmp ult i64 %i.jn, 16
  call void @llvm.assume(i1 %i.jo)
  switch i64 %i.jn, label %bb.ar [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i
    i64 1, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  %i.jp = load i8, ptr %i.jj, align 1, !tbaa !39, !noalias !634
  store i8 %i.jp, ptr %i.jh, align 1, !tbaa !39, !noalias !634
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jh, ptr align 1 %i.jj, i64 %i.jn, i1 false), !noalias !634
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.jq = load i64, ptr %i.jm, align 8, !tbaa !40, !noalias !634 ; 2 uses
  store i64 %i.jq, ptr %i.jb, align 8, !tbaa !40, !noalias !634
  %i.jr = load ptr, ptr %27, align 8, !tbaa !38, !noalias !634
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 %i.jq
  store i8 0, ptr %i.js, align 1, !tbaa !39, !noalias !634
  %.pre.i.i.i.i = load ptr, ptr %28, align 8, !tbaa !38, !noalias !634
  br label %_ZN5vcpkg4PathaSEOS0_.exit.i.i

.thread.i.i.i.i:                                  ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i71.i
  store ptr %i.jj, ptr %27, align 8, !tbaa !38, !noalias !634
  %i.jt = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ju = load <2 x i64>, ptr %i.jt, align 8, !tbaa !39, !noalias !634
  store <2 x i64> %i.ju, ptr %i.jb, align 8, !tbaa !39, !noalias !634
  br label %bb.at

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i67.i
end_hunk_0
