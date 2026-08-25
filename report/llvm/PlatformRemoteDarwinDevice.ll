Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PlatformRemoteDarwinDevice?download=true
begin_hunk_0_@_ZN12lldb_private26PlatformRemoteDarwinDevice13GetSymbolFileERKNS_8FileSpecEPKNS_4UUIDERS1_:bb.a
  store ptr %i.ac, ptr %5, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aq = load <2 x i64>, ptr %i.ap, align 8, !tbaa !17
  store <2 x i64> %i.aq, ptr %i.o, align 8, !tbaa !17
  %.not.i103 = icmp eq ptr %i.z, null
  br i1 %.not.i103, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.z, ptr %8, align 8, !tbaa !116
  store i64 %i.ao, ptr %i.ad, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %8, align 8, !tbaa !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.q, %bb.r
  %i.ar = phi ptr [ %i.z, %bb.q ], [ %i.ad, %bb.r ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.as, align 8, !tbaa !22
  store i8 0, ptr %i.ar, align 1, !tbaa !17
  %i.at = load ptr, ptr %8, align 8, !tbaa !116   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !17
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %i.ay = load ptr, ptr %5, align 8, !tbaa !116
  %i.az = load i64, ptr %i.o, align 8, !tbaa !22
  call void @_ZN12lldb_private8FileSpec7SetFileEN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ay, i64 %i.az, i32 noundef 0) #18
  %i.ba = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() #18
  call void @_ZN12lldb_private10FileSystem7ResolveERNS_8FileSpecEb(ptr noundef nonnull align 8 dereferenceable(48) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false) #18
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() #18
  %i.bc = call noundef zeroext i1 @_ZNK12lldb_private10FileSystem6ExistsERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  br i1 %i.bc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not41 = icmp eq ptr %.0.i.i, null
  br i1 %.not41, label %bb.ad, label %.sink.split

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.bd = load i8, ptr %i.g, align 1, !tbaa !17
  %.not.i104 = icmp eq i8 %i.bd, 0                ; 2 uses
  br i1 %.not.i104, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr @.str.12, ptr %13, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit122

bb.v:                                             ; preds = %bb.t
  store ptr %i.g, ptr %13, align 8, !alias.scope !147
  %i.be = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.12, ptr %i.be, align 8, !alias.scope !147
  br label %_ZN4llvmplERKNS_5TwineES2_.exit122

_ZN4llvmplERKNS_5TwineES2_.exit122:               ; preds = %bb.u, %bb.v
  %.sink251 = phi i8 [ 1, %bb.u ], [ 3, %bb.v ]
  %.sroa.05.0.i.i130 = phi ptr [ @.str.12, %bb.u ], [ %13, %bb.v ]
  %.sroa.7179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i8 3, ptr %.sroa.7179.0..sroa_idx, align 8, !tbaa !126
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 33
  store i8 %.sink251, ptr %.sroa.11.0..sroa_idx, align 1, !tbaa !126
  %i.bf = load i8, ptr %i.a, align 16, !tbaa !17
  %.not.i123 = icmp eq i8 %i.bf, 0
  br i1 %.not.i123, label %bb.w, label %_ZN4llvm5TwineC2EPKc.exit125

bb.w:                                             ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit122
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13, i64 40, i1 false), !tbaa.struct !128
  br label %_ZN4llvmplERKNS_5TwineES2_.exit140

_ZN4llvm5TwineC2EPKc.exit125:                     ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit122
  %.014.i.i129 = select i1 %.not.i104, i8 3, i8 2
  store ptr %.sroa.05.0.i.i130, ptr %12, align 8, !alias.scope !152
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.bg, align 8, !alias.scope !152
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i8 %.014.i.i129, ptr %i.bh, align 8, !tbaa !134, !alias.scope !152
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 33
  store i8 3, ptr %i.bi, align 1, !tbaa !136, !alias.scope !152
  br label %_ZN4llvmplERKNS_5TwineES2_.exit140

_ZN4llvmplERKNS_5TwineES2_.exit140:               ; preds = %bb.w, %_ZN4llvm5TwineC2EPKc.exit125
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(34) %12) #18
  %i.bj = load ptr, ptr %5, align 8, !tbaa !116   ; 6 uses
  %i.bk = icmp eq ptr %i.bj, %i.aa
  %i.bl = load ptr, ptr %11, align 8, !tbaa !116  ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm                ; 2 uses
  br i1 %i.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i146: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit140
  br i1 %i.bn, label %bb.x, label %.thread.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i141: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit140
  br i1 %i.bn, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i142

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i146
  %i.bo = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !22 ; 3 uses
  %i.bq = icmp ult i64 %i.bp, 16
  call void @llvm.assume(i1 %i.bq)
  switch i64 %i.bp, label %bb.z [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i144
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
  %i.br = load i8, ptr %i.bl, align 1, !tbaa !17
  store i8 %i.br, ptr %i.bj, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i144

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bj, ptr align 1 %i.bl, i64 %i.bp, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i144: ; preds = %bb.z, %bb.y, %bb.x
  %i.bs = load i64, ptr %i.bo, align 8, !tbaa !22 ; 2 uses
  store i64 %i.bs, ptr %i.o, align 8, !tbaa !22
  %i.bt = load ptr, ptr %5, align 8, !tbaa !116
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 0, ptr %i.bu, align 1, !tbaa !17
  %.pre.i145 = load ptr, ptr %11, align 8, !tbaa !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit148

.thread.i147:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i146
  store ptr %i.bl, ptr %5, align 8, !tbaa !116
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !17
  store <2 x i64> %i.bw, ptr %i.o, align 8, !tbaa !17
  br label %bb.ab

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i142: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i141
  %i.bx = load i64, ptr %i.aa, align 8, !tbaa !17
  store ptr %i.bl, ptr %5, align 8, !tbaa !116
  %i.by = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bz = load <2 x i64>, ptr %i.by, align 8, !tbaa !17
  store <2 x i64> %i.bz, ptr %i.o, align 8, !tbaa !17
  %.not.i143 = icmp eq ptr %i.bj, null
  br i1 %.not.i143, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i142
  store ptr %i.bj, ptr %11, align 8, !tbaa !116
  store i64 %i.bx, ptr %i.bm, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit148

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i142, %.thread.i147
  store ptr %i.bm, ptr %11, align 8, !tbaa !116
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit148

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit148: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i144, %bb.aa, %bb.ab
  %i.ca = phi ptr [ %i.bj, %bb.aa ], [ %i.bm, %bb.ab ], [ %.pre.i145, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i144 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 0, ptr %i.cb, align 8, !tbaa !22
  store i8 0, ptr %i.ca, align 1, !tbaa !17
  %i.cc = load ptr, ptr %11, align 8, !tbaa !116  ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit148
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !17
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit148, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i149
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18
  %i.ch = load ptr, ptr %5, align 8, !tbaa !116
  %i.ci = load i64, ptr %i.o, align 8, !tbaa !22
  call void @_ZN12lldb_private8FileSpec7SetFileEN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %i.ch, i64 %i.ci, i32 noundef 0) #18
  %i.cj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() #18
  call void @_ZN12lldb_private10FileSystem7ResolveERNS_8FileSpecEb(ptr noundef nonnull align 8 dereferenceable(48) %i.cj, ptr noundef nonnull align 8 dereferenceable(24) %4, i1 noundef zeroext false) #18
  %i.ck = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() #18
  %i.cl = call noundef zeroext i1 @_ZNK12lldb_private10FileSystem6ExistsERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151
  %.not40 = icmp eq ptr %.0.i.i, null
  br i1 %.not40, label %bb.ad, label %.sink.split

.sink.split:                                      ; preds = %bb.ac, %bb.s, %bb.i
  %.str.13.sink = phi ptr [ @.str.11, %bb.s ], [ @.str.9, %bb.i ], [ @.str.13, %bb.ac ]
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.6, i64 100, ptr nonnull @__func__._ZN12lldb_private26PlatformRemoteDarwinDevice13GetSymbolFileERKNS_8FileSpecEPKNS_4UUIDERS1_, i64 13, ptr noundef nonnull %.str.13.sink, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g) #18
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151, %bb.ac, %bb.s, %bb.i
  %cond1.a = phi i1 [ false, %bb.ac ], [ false, %bb.i ], [ false, %bb.s ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ false, %.sink.split ]
  %.0 = phi i1 [ true, %bb.ac ], [ true, %bb.i ], [ true, %bb.s ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit151 ], [ true, %.sink.split ]
  %i.cm = load ptr, ptr %5, align 8, !tbaa !116   ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.co = icmp eq ptr %i.cm, %i.cn
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152: ; preds = %bb.ad
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !17
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i152
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %cond1.a, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !8
  %i.cr = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN12lldb_private10FileSystem8InstanceEv() #18
  %i.cs = call noundef zeroext i1 @_ZNK12lldb_private10FileSystem6ExistsERKNS_8FileSpecE(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %4) #18
  br i1 %i.cs, label %.critedge45, label %.critedge.critedge

.critedge.critedge:                               ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  %i.ct = load ptr, ptr %1, align 8, !tbaa !28
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = call { ptr, i64 } %i.cv(ptr noundef nonnull align 8 dereferenceable(8) %1) #18 ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 0
  store ptr %i.cx, ptr %15, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.cz = extractvalue { ptr, i64 } %i.cw, 1
  store i64 %i.cz, ptr %i.cy, align 8
  call void @_ZN12lldb_private6Status26FromErrorStringWithFormatvIJRA4096_cN4llvm9StringRefEEEES0_PKcDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %14, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(4096) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %15)
  %i.da = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %14) #18 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.critedge

bb.af:                                            ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %16, ptr noundef nonnull @.str.15)
  %i.db = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %16) #18 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.critedge, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ai

bb.ag:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.0, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #18
  br label %bb.ai

.critedge45:                                      ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ai

bb.ai:                                            ; preds = %.critedge45, %.critedge, %bb.ah, %bb.ag
  ret void
}

declare void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

declare noundef i64 @_ZNK12lldb_private8FileSpec7GetPathEPcmb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6Status26FromErrorStringWithFormatvIJRA4096_cN4llvm9StringRefEEEES0_PKcDpOT_(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(4096) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.llvm::formatv_object", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %_ZN4llvm7formatvIJRA4096_cNS_9StringRefEEEEDaPKcDpOT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18, !noalias !163
  br label %_ZN4llvm7formatvIJRA4096_cNS_9StringRefEEEEDaPKcDpOT_.exit

_ZN4llvm7formatvIJRA4096_cNS_9StringRefEEEEDaPKcDpOT_.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  %i.b = ptrtoint ptr %2 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store ptr %1, ptr %6, align 8, !tbaa !9, !alias.scope !163
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %.sroa.0.0.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !163
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.c, ptr %i.d, align 8, !tbaa !164, !alias.scope !163
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !18, !alias.scope !163
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i8 1, ptr %i.e, align 8, !tbaa !166, !alias.scope !163
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  store i64 %i.b, ptr %i.g, align 8, !tbaa !9, !alias.scope !163
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRA4096_cEEEEvlS2_S3_, ptr %i.c, align 8, !alias.scope !163
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 %i.h, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !163
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i, align 8, !alias.scope !163
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 %i.i, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !tbaa !17, !alias.scope !163
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !20, !alias.scope !176
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !22, !alias.scope !176
  store i8 0, ptr %i.j, align 8, !tbaa !17, !alias.scope !176
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18, !noalias !176
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.l, align 8, !tbaa !177, !noalias !176
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.m, align 8, !tbaa !181, !noalias !176
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.n, align 4, !tbaa !182, !noalias !176
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false), !noalias !176
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !28, !noalias !176
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %5, ptr %i.p, align 8, !tbaa !183, !noalias !176
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #18
  %i.q = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(33) %6) #18 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18, !noalias !176
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %5) #18
  %i.r = load ptr, ptr %5, align 8, !tbaa !116    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm7formatvIJRA4096_cNS_9StringRefEEEEDaPKcDpOT_.exit
  %i.t = load i64, ptr %i.j, align 8, !tbaa !17
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm7formatvIJRA4096_cNS_9StringRefEEEEDaPKcDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %._crit_edge.i.i2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !20
  %i.c = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.c, ptr %i.a, align 8, !tbaa !18
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #18 ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !116
  %i.f = load i64, ptr %i.a, align 8, !tbaa !18
  store i64 %i.f, ptr %i.b, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c, %bb.b
  %i.g = phi ptr [ %i.e, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.c, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.h, ptr %i.g, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.i = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !22
  %i.k = load ptr, ptr %2, align 8, !tbaa !116
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %2) #18
  %i.m = load ptr, ptr %2, align 8, !tbaa !116    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.b
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

._crit_edge.i.i2:                                 ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.p, ptr noundef nonnull align 1 dereferenceable(10) @.str.17, i64 10, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 10, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 26
  store i8 0, ptr %i.r, align 2, !tbaa !17
  call void @_ZN12lldb_private6StatusC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %3) #18
  %i.s = load ptr, ptr %3, align 8, !tbaa !116    ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %._crit_edge.i.i2
  %i.u = load i64, ptr %i.p, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %.sink13 = phi i64 [ %i.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %.sink = phi ptr [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.v = add i64 %.sink13, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.v) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.sink.split, %._crit_edge.i.i2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private26PlatformRemoteDarwinDevice15GetSharedModuleERKNS_10ModuleSpecEPNS_7ProcessERSt10shared_ptrINS_6ModuleEEPN4llvm15SmallVectorImplIS8_EEPb(ptr dead_on_unwind noalias writable sret(%"class.lldb_private::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(880) %1, ptr noundef nonnull align 8 dereferenceable(440) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %7 = alloca %"class.llvm::formatv_object.230", align 8 ; 14 uses
  %8 = alloca %"class.llvm::formatv_object.230", align 8 ; 14 uses
  %9 = alloca %"class.llvm::formatv_object.230", align 8 ; 14 uses
  %10 = alloca %"class.llvm::formatv_object.230", align 8 ; 14 uses
  %i.a = alloca [4096 x i8], align 16             ; 8 uses
  %11 = alloca %"class.lldb_private::ModuleSpec", align 8 ; 16 uses
end_hunk_0
