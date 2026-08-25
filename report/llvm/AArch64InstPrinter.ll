Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64InstPrinter?download=true
begin_hunk_0_@_ZN4llvm18AArch64InstPrinter22printMSRSystemRegisterEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, 12
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.134, i64 noundef 12) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.k, ptr noundef nonnull align 1 dereferenceable(12) @.str.134, i64 12, i1 false)
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store ptr %i.r, ptr %i.j, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = icmp ult i64 %i.y, 12
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.133, i64 noundef 12) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.v, ptr noundef nonnull align 1 dereferenceable(12) @.str.133, i64 12, i1 false)
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.a
  %i.ad = trunc i64 %i.f to i16
  %i.ae = tail call { ptr, ptr } @_ZN4llvm13AArch64SysReg22lookupSysRegByEncodingEt(i16 noundef zeroext %i.ad) #22 ; 2 uses
  %i.af = extractvalue { ptr, ptr } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, ptr } %i.ae, 1      ; 2 uses
  %.not19.i = icmp eq ptr %i.af, %i.ag
  br i1 %.not19.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %.sroa.0.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 256
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread.i, %.lr.ph.i
  %.01620.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.aw, %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread.i ] ; 4 uses
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %.01620.i, i64 9
  %.in.i.i = load i8, ptr %.in.in.i.i, align 1, !tbaa !158, !range !61, !noundef !46
  %i.ak = trunc nuw i8 %.in.i.i to i1
  br i1 %i.ak, label %bb.j, label %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.al = load <2 x i64>, ptr %i.ah, align 8
  %.sroa.0.sroa.0.0.copyload.i.i = load i64, ptr %i.ah, align 8
  %i.am = load <2 x i64>, ptr %.sroa.0.sroa.3.0..sroa_idx.i.i, align 8
  %i.an = load <2 x i64>, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8
  %i.ao = and i64 %.sroa.0.sroa.0.0.copyload.i.i, 4096
  %.not.i.i.i = icmp eq i64 %i.ao, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  br i1 %.not.i.i.i, label %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.i, label %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread17.i

_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread17.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZL12lookupSysRegjbRKN4llvm15MCSubtargetInfoE.exit

_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.i: ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %.01620.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ap, i64 48, i1 false), !tbaa.struct !159
  %i.aq = load <2 x i64>, ptr %5, align 16, !tbaa !74, !alias.scope !163
  %i.ar = and <2 x i64> %i.aq, %i.al
  store <2 x i64> %i.ar, ptr %5, align 16, !tbaa !74, !alias.scope !163
  %i.as = load <2 x i64>, ptr %i.ai, align 16, !tbaa !74, !alias.scope !163
  %i.at = and <2 x i64> %i.as, %i.am
  store <2 x i64> %i.at, ptr %i.ai, align 16, !tbaa !74, !alias.scope !163
  %i.au = load <2 x i64>, ptr %i.aj, align 16, !tbaa !74, !alias.scope !163
  %i.av = and <2 x i64> %i.au, %i.an
  store <2 x i64> %i.av, ptr %i.aj, align 16, !tbaa !74, !alias.scope !163
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ap, i64 48)
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZL12lookupSysRegjbRKN4llvm15MCSubtargetInfoE.exit, label %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread.i

_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread.i: ; preds = %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.i, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.01620.i, i64 64 ; 2 uses
  %.not.i = icmp eq ptr %i.aw, %i.ag
  br i1 %.not.i, label %.loopexit, label %bb.i

_ZL12lookupSysRegjbRKN4llvm15MCSubtargetInfoE.exit: ; preds = %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.i, %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread17.i
  %.sroa.0.0.copyload = load i32, ptr %.01620.i, align 8, !tbaa !19
  %i.ax = tail call { ptr, i64 } @_ZN4llvm13AArch64SysReg12getSysRegStrENS_11StringTable6OffsetE(i32 %.sroa.0.0.copyload) #22 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  %i.az = extractvalue { ptr, i64 } %i.ax, 1      ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !27 ; 2 uses
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp ugt i64 %i.az, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZL12lookupSysRegjbRKN4llvm15MCSubtargetInfoE.exit
  %i.bi = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ay, i64 noundef %i.az) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.l:                                             ; preds = %_ZL12lookupSysRegjbRKN4llvm15MCSubtargetInfoE.exit
  %.not.i17 = icmp eq i64 %i.az, 0
  br i1 %.not.i17, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bd, ptr align 1 %i.ay, i64 %i.az, i1 false)
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !27
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.az
  store ptr %i.bk, ptr %i.bc, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

.loopexit:                                        ; preds = %_ZL13isValidSysRegRKN4llvm13AArch64SysReg6SysRegEbRKNS_15MCSubtargetInfoE.exit.thread.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4llvm13AArch64SysReg21genericRegisterStringB5cxx11Ej(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i32 noundef %i.g) #22
  %i.bl = load ptr, ptr %6, align 8, !tbaa !59
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !53
  %i.bo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.bl, i64 noundef %i.bn) #22 ; 0 uses
  %i.bp = load ptr, ptr %6, align 8, !tbaa !59    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !32
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.m, %bb.l, %bb.k, %bb.g, %bb.f, %bb.d, %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18AArch64InstPrinter22printSystemPStateFieldEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %class.anon.45, align 8             ; 4 uses
  %6 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %7 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %8 = alloca %"class.llvm::format_object", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %i.g = trunc i64 %i.f to i8
  %i.h = tail call noundef ptr @_ZN4llvm13AArch64PState29lookupPStateImm0_15ByEncodingEh(i8 noundef zeroext %i.g) #22 ; 3 uses
  %i.i = trunc i64 %i.f to i16
  %i.j = tail call noundef ptr @_ZN4llvm13AArch64PState28lookupPStateImm0_1ByEncodingEt(i16 noundef zeroext %i.i) #22 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.l = load <2 x i64>, ptr %i.k, align 8
  %.sroa.030.sroa.0.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.030.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.m = load <2 x i64>, ptr %.sroa.030.sroa.3.0..sroa_idx, align 8
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.n = load <2 x i64>, ptr %.sroa.030.sroa.5.0..sroa_idx, align 8
  %i.o = and i64 %.sroa.030.sroa.0.0.copyload, 4096
  %.not.i = icmp eq i64 %i.o, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  br i1 %.not.i, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.c

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48, i1 false), !tbaa.struct !159
  %i.q = load <2 x i64>, ptr %7, align 16, !tbaa !74, !alias.scope !166
  %i.r = and <2 x i64> %i.q, %i.l
  store <2 x i64> %i.r, ptr %7, align 16, !tbaa !74, !alias.scope !166
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 16, !tbaa !74, !alias.scope !166
  %i.u = and <2 x i64> %i.t, %i.m
  store <2 x i64> %i.u, ptr %i.s, align 16, !tbaa !74, !alias.scope !166
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.w = load <2 x i64>, ptr %i.v, align 16, !tbaa !74, !alias.scope !166
  %i.x = and <2 x i64> %i.w, %i.n
  store <2 x i64> %i.x, ptr %i.v, align 16, !tbaa !74, !alias.scope !166
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.p, i64 48)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.not9.i.i.i.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread, %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit
  %.sroa.02.0.copyload = load i32, ptr %i.h, align 8, !tbaa !19
  %i.y = tail call { ptr, i64 } @_ZN4llvm13AArch64PState19getPStateImm0_15StrENS_11StringTable6OffsetE(i32 %.sroa.02.0.copyload) #22 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.y, 1       ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !22
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = icmp ugt i64 %i.aa, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.z, i64 noundef %i.aa) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.e:                                             ; preds = %bb.c
  %.not.i22 = icmp eq i64 %i.aa, 0
  br i1 %.not.i22, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.z, i64 %i.aa, i1 false)
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.aa
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.g:                                             ; preds = %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit, %bb.a
  %.not21 = icmp eq ptr %i.j, null
  br i1 %.not21, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.an = load <2 x i64>, ptr %i.am, align 8
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %i.am, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.ao = load <2 x i64>, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.ap = load <2 x i64>, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %i.aq = and i64 %.sroa.0.sroa.0.0.copyload, 4096
  %.not.i23 = icmp eq i64 %i.aq, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  br i1 %.not.i23, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit26, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit26.thread

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit26.thread: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.i

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit26: ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48, i1 false), !tbaa.struct !159
  %i.as = load <2 x i64>, ptr %6, align 16, !tbaa !74, !alias.scope !169
  %i.at = and <2 x i64> %i.as, %i.an
  store <2 x i64> %i.at, ptr %6, align 16, !tbaa !74, !alias.scope !169
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.au, align 16, !tbaa !74, !alias.scope !169
  %i.aw = and <2 x i64> %i.av, %i.ao
  store <2 x i64> %i.aw, ptr %i.au, align 16, !tbaa !74, !alias.scope !169
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.ax, align 16, !tbaa !74, !alias.scope !169
  %i.az = and <2 x i64> %i.ay, %i.ap
  store <2 x i64> %i.az, ptr %i.ax, align 16, !tbaa !74, !alias.scope !169
  %bcmp.i.i.i.i.i.i24 = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.ar, i64 48)
  %.not9.i.i.i.i.i.i25 = icmp eq i32 %bcmp.i.i.i.i.i.i24, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br i1 %.not9.i.i.i.i.i.i25, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit26.thread, %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit26
  %.sroa.0.0.copyload = load i32, ptr %i.j, align 8, !tbaa !19
  %i.ba = tail call { ptr, i64 } @_ZN4llvm13AArch64PState18getPStateImm0_1StrENS_11StringTable6OffsetE(i32 %.sroa.0.0.copyload) #22 ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0      ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1      ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !22
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !27 ; 2 uses
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = icmp ugt i64 %i.bc, %i.bj
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.bb, i64 noundef %i.bc) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %bb.i
  %.not.i27 = icmp eq i64 %i.bc, 0
  br i1 %.not.i27, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bb, i64 %i.bc, i1 false)
  %i.bm = load ptr, ptr %i.bf, align 8, !tbaa !27
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bc
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.m:                                             ; preds = %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit26, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !22
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !27 ; 2 uses
  %i.bs = icmp eq ptr %i.bp, %i.br
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.89, i64 noundef 1) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.o:                                             ; preds = %bb.m
  store i8 35, ptr %i.br, align 1
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !27
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.n, %bb.o
  %.0.i.i = phi ptr [ %i.bt, %bb.n ], [ %4, %bb.o ]
  %i.bw = and i64 %i.f, 4294967295                ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !65, !range !61, !noalias !172, !noundef !46
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @_ZNK4llvm13MCInstPrinter9formatHexEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.bw) #22
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @_ZNK4llvm13MCInstPrinter9formatDecEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.bw) #22
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

_ZNK4llvm13MCInstPrinter9formatImmEl.exit:        ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %8, ptr %5, align 8, !tbaa !69
  %i.ca = ptrtoint ptr %5 to i64
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJlEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.ca) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.l, %bb.k, %bb.j, %bb.f, %bb.e, %bb.d, %_ZNK4llvm13MCInstPrinter9formatImmEl.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18AArch64InstPrinter11printSVCROpEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32
  %i.g = trunc i64 %i.f to i8
  %i.h = tail call noundef ptr @_ZN4llvm11AArch64SVCR20lookupSVCRByEncodingEh(i8 noundef zeroext %i.g) #22
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 8, !tbaa !19
  %i.i = tail call { ptr, i64 } @_ZN4llvm11AArch64SVCR10getSVCRStrENS_11StringTable6OffsetE(i32 %.sroa.0.0.copyload) #22 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.k, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.k) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k
  store ptr %i.v, ptr %i.n, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm18AArch64InstPrinter15printPrefetchOpILb1EEEvPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(320) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.45, align 8             ; 4 uses
  %6 = alloca %"class.llvm::format_object", align 8 ; 4 uses
  %7 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %8 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = trunc i64 %i.f to i8
  %i.h = tail call noundef ptr @_ZN4llvm14AArch64SVEPRFM23lookupSVEPRFMByEncodingEh(i8 noundef zeroext %i.g) #22 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 8, !tbaa !19
  %i.i = tail call { ptr, i64 } @_ZN4llvm14AArch64SVEPRFM13getSVEPRFMStrENS_11StringTable6OffsetE(i32 %.sroa.0.0.copyload) #22 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !27   ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = icmp ugt i64 %i.k, %i.r
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.t = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.j, i64 noundef %i.k) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.d:                                             ; preds = %bb.b
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.j, i64 %i.k, i1 false)
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.k
  store ptr %i.v, ptr %i.n, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48, !nonnull !46, !align !47 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %.not.i.i = icmp ult ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ac = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.x, i8 noundef zeroext 35) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit

bb.g:                                             ; preds = %.critedge
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !27
  store i8 35, ptr %i.z, align 1, !tbaa !32
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit

_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.ae = and i64 %i.f, 4294967295                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !65, !range !61, !noalias !175, !noundef !46
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit
  call void @_ZNK4llvm13MCInstPrinter9formatHexEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.ae) #22
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

bb.i:                                             ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit
  call void @_ZNK4llvm13MCInstPrinter9formatDecEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.ae) #22
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

_ZNK4llvm13MCInstPrinter9formatImmEl.exit:        ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.ai = load ptr, ptr %i.w, align 8, !tbaa !48, !nonnull !46, !align !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %6, ptr %5, align 8, !tbaa !69
  %i.aj = ptrtoint ptr %5 to i64
  %i.ak = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJlEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.aj) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.d, %bb.c, %_ZNK4llvm13MCInstPrinter9formatImmEl.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm18AArch64InstPrinter15printPrefetchOpILb0EEEvPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(320) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %5 = alloca %class.anon.45, align 8             ; 4 uses
  %6 = alloca %"class.llvm::format_object", align 8 ; 4 uses
  %7 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %8 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %9 = alloca %"class.llvm::format_object", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !32   ; 2 uses
  %i.g = trunc i64 %i.f to i8
  %i.h = tail call noundef ptr @_ZN4llvm11AArch64PRFM20lookupPRFMByEncodingEh(i8 noundef zeroext %i.g) #22 ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 240 ; 2 uses
  %i.j = load <2 x i64>, ptr %i.i, align 8
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.k = load <2 x i64>, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.l = load <2 x i64>, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %i.m = and i64 %.sroa.0.sroa.0.0.copyload, 4096
  %.not.i = icmp eq i64 %i.m, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  br i1 %.not.i, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit, label %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false), !tbaa.struct !159
  %i.o = load <2 x i64>, ptr %7, align 16, !tbaa !74, !alias.scope !178
  %i.p = and <2 x i64> %i.o, %i.j
  store <2 x i64> %i.p, ptr %7, align 16, !tbaa !74, !alias.scope !178
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = load <2 x i64>, ptr %i.q, align 16, !tbaa !74, !alias.scope !178
  %i.s = and <2 x i64> %i.r, %i.k
  store <2 x i64> %i.s, ptr %i.q, align 16, !tbaa !74, !alias.scope !178
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.u = load <2 x i64>, ptr %i.t, align 16, !tbaa !74, !alias.scope !178
  %i.v = and <2 x i64> %i.u, %i.l
  store <2 x i64> %i.v, ptr %i.t, align 16, !tbaa !74, !alias.scope !178
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.not9.i.i.i.i.i.i, label %.critedge, label %bb.f

.critedge:                                        ; preds = %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit.thread, %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 8, !tbaa !19
  %i.w = tail call { ptr, i64 } @_ZN4llvm11AArch64PRFM10getPRFMStrENS_11StringTable6OffsetE(i32 %.sroa.0.0.copyload) #22 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.w, 1        ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ugt i64 %i.y, %i.af
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.ah = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.x, i64 noundef %i.y) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.d:                                             ; preds = %.critedge
  %.not.i13 = icmp eq i64 %i.y, 0
  br i1 %.not.i13, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.x, i64 %i.y, i1 false)
  %i.ai = load ptr, ptr %i.ab, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.y
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.f:                                             ; preds = %_ZNK4llvm8SysAlias12haveFeaturesENS_13FeatureBitsetE.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %4, i32 noundef 0) #22
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !48, !nonnull !46, !align !47 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %.not.i.i = icmp ult ptr %i.an, %i.ap
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %i.al, i8 noundef zeroext 35) #22 ; 0 uses
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit

bb.h:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store ptr %i.ar, ptr %i.am, align 8, !tbaa !27
  store i8 35, ptr %i.an, align 1, !tbaa !32
  br label %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit

_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.as = and i64 %i.f, 4294967295                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 51
  %i.au = load i8, ptr %i.at, align 1, !tbaa !65, !range !61, !noalias !181, !noundef !46
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit
  call void @_ZNK4llvm13MCInstPrinter9formatHexEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.as) #22
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

bb.j:                                             ; preds = %_ZN4llvm13MCInstPrinter10WithMarkuplsIcEERS1_RKT_.exit
  call void @_ZNK4llvm13MCInstPrinter9formatDecEl(ptr dead_on_unwind nonnull writable sret(%"class.llvm::format_object") align 8 %9, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.as) #22
  br label %_ZNK4llvm13MCInstPrinter9formatImmEl.exit

_ZNK4llvm13MCInstPrinter9formatImmEl.exit:        ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.aw = load ptr, ptr %i.ak, align 8, !tbaa !48, !nonnull !46, !align !47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %6, ptr %5, align 8, !tbaa !69
  %i.ax = ptrtoint ptr %5 to i64
  %i.ay = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsENS_12function_refIFiPcmEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr nonnull @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJlEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m, i64 %i.ax) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.e, %bb.d, %bb.c, %_ZNK4llvm13MCInstPrinter9formatImmEl.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm18AArch64InstPrinter23printPredicateAsCounterILi8EEEvPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(320) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %i.g = icmp samesign ugt i32 %i.f, 127
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i32 %i.f, 144
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.164, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i16 28272, ptr %i.l, align 1
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %i.k, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ %i.q, %bb.b ], [ %4, %bb.c ]
  %i.t = add nsw i32 %i.f, -128
  %i.u = zext nneg i32 %i.t to i64
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, i64 noundef %i.u) #22 ; 0 uses
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp ult i64 %i.aa, 2
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ac = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.20, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  store i16 25134, ptr %i.x, align 1
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store ptr %i.ae, ptr %i.k, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit5

_ZN4llvm11raw_ostreamlsEPKc.exit5:                ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4llvm18AArch64InstPrinter23printPredicateAsCounterILi64EEEvPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(320) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %i.g = icmp samesign ugt i32 %i.f, 127
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp ult i32 %i.f, 144
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 2
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.164, i64 noundef 2) #22
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i16 28272, ptr %i.l, align 1
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store ptr %i.s, ptr %i.k, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_ZN4llvm10AArch64_AML22decodeLogicalImmediateEmj:bb.a
  ret i64 %.1.lcssa
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4llvm10AArch64_AML17isAnyMOVWMovAliasEmi(i64 noundef %0, i32 noundef range(i32 32, 65) %1) unnamed_addr #9 {
.lr.ph.i:
  %i.a = icmp ult i64 %0, 65536
  br i1 %i.a, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.b = and i64 %0, -4294901761
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  %.not.not.i.1 = icmp samesign ult i32 %1, 48
  %or.cond.i.1 = select i1 %i.c, i1 true, i1 %.not.not.i.1
  br i1 %or.cond.i.1, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.d = and i64 %0, -281470681743361
  %i.e = icmp eq i64 %i.d, 0                      ; 2 uses
  %.not.not.i.2 = icmp samesign ult i32 %1, 64
  %or.cond.i.2 = select i1 %i.e, i1 true, i1 %.not.not.i.2
  br i1 %or.cond.i.2, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.f = and i64 %0, 281474976710655
  %i.g = icmp eq i64 %i.f, 0
  br label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit

_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit: ; preds = %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1
  %.lcssa32 = phi i1 [ %i.g, %.lr.ph.i.3 ], [ %i.c, %.lr.ph.i.1 ], [ %i.e, %.lr.ph.i.2 ]
  br i1 %.lcssa32, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16, label %bb.a

bb.a:                                             ; preds = %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit
  %i.h = icmp eq i32 %1, 32
  br i1 %i.h, label %.lr.ph.i17.preheader, label %.lr.ph.i11

.lr.ph.i17.preheader:                             ; preds = %bb.a
  %i.i = and i64 %0, 4294901760
  %i.j = icmp eq i64 %i.i, 4294901760
  br i1 %i.j, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16.loopexit.loopexit

.lr.ph.i11:                                       ; preds = %bb.a
  %i.k = icmp ugt i64 %0, -65537
  br i1 %i.k, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16, label %.lr.ph.i11.1

.lr.ph.i11.1:                                     ; preds = %.lr.ph.i11
  %i.l = and i64 %0, -4294901761
  %i.m = icmp eq i64 %i.l, -4294901761            ; 2 uses
  %.not.not.i14.1 = icmp samesign ult i32 %1, 48
  %or.cond.i15.1 = select i1 %i.m, i1 true, i1 %.not.not.i14.1
  br i1 %or.cond.i15.1, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16, label %.lr.ph.i11.2

.lr.ph.i11.2:                                     ; preds = %.lr.ph.i11.1
  %i.n = and i64 %0, -281470681743361
  %i.o = icmp eq i64 %i.n, -281470681743361       ; 2 uses
  %.not.not.i14.2 = icmp samesign ult i32 %1, 64
  %or.cond.i15.2 = select i1 %i.o, i1 true, i1 %.not.not.i14.2
  br i1 %or.cond.i15.2, label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16, label %.lr.ph.i11.3

.lr.ph.i11.3:                                     ; preds = %.lr.ph.i11.2
  %i.p = and i64 %0, 281474976710655
  %i.q = icmp eq i64 %i.p, 281474976710655
  br label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16

_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16.loopexit.loopexit: ; preds = %.lr.ph.i17.preheader
  %.masked = and i64 %0, 65535
  %i.r = icmp eq i64 %.masked, 65535
  br label %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16

_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16: ; preds = %.lr.ph.i, %.lr.ph.i11, %.lr.ph.i11.1, %.lr.ph.i11.2, %.lr.ph.i11.3, %.lr.ph.i17.preheader, %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16.loopexit.loopexit, %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit
  %.0 = phi i1 [ true, %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit ], [ %i.r, %_ZN4llvm10AArch64_AML17isAnyMOVZMovAliasEmi.exit16.loopexit.loopexit ], [ true, %.lr.ph.i17.preheader ], [ %i.q, %.lr.ph.i11.3 ], [ true, %.lr.ph.i11 ], [ %i.m, %.lr.ph.i11.1 ], [ %i.o, %.lr.ph.i11.2 ], [ true, %.lr.ph.i ]
  ret i1 %.0
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4llvmL26atomicBarrierDroppedOnZeroEj(i32 noundef range(i32 6059, 6057) %0) unnamed_addr #9 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 4806, label %bb.c
    i32 4807, label %bb.c
    i32 4812, label %bb.c
    i32 4813, label %bb.c
    i32 4808, label %bb.c
    i32 4809, label %bb.c
    i32 4810, label %bb.c
    i32 4811, label %bb.c
    i32 4877, label %bb.c
    i32 4878, label %bb.c
    i32 4883, label %bb.c
    i32 4884, label %bb.c
    i32 4879, label %bb.c
    i32 4880, label %bb.c
    i32 4881, label %bb.c
    i32 4882, label %bb.c
    i32 4897, label %bb.c
    i32 4898, label %bb.c
    i32 4903, label %bb.c
    i32 4904, label %bb.c
    i32 4899, label %bb.c
    i32 4900, label %bb.c
    i32 4901, label %bb.c
    i32 4902, label %bb.c
    i32 5174, label %bb.c
    i32 5175, label %bb.c
    i32 5180, label %bb.c
    i32 5181, label %bb.c
    i32 5176, label %bb.c
    i32 5177, label %bb.c
    i32 5178, label %bb.c
    i32 5179, label %bb.c
    i32 5194, label %bb.c
    i32 5195, label %bb.c
    i32 5200, label %bb.c
    i32 5201, label %bb.c
    i32 5196, label %bb.c
    i32 5197, label %bb.c
    i32 5198, label %bb.c
    i32 5199, label %bb.c
    i32 5210, label %bb.c
    i32 5211, label %bb.c
    i32 5216, label %bb.c
    i32 5217, label %bb.c
    i32 5212, label %bb.c
    i32 5213, label %bb.c
    i32 5214, label %bb.c
    i32 5215, label %bb.c
    i32 5269, label %bb.c
    i32 5270, label %bb.c
    i32 5275, label %bb.c
    i32 5276, label %bb.c
    i32 5271, label %bb.c
    i32 5272, label %bb.c
    i32 5273, label %bb.c
    i32 5274, label %bb.c
    i32 5285, label %bb.c
    i32 5286, label %bb.c
    i32 5291, label %bb.c
    i32 5292, label %bb.c
    i32 5287, label %bb.c
    i32 5288, label %bb.c
    i32 5289, label %bb.c
    i32 5290, label %bb.c
    i32 7876, label %bb.c
    i32 7877, label %bb.c
    i32 7882, label %bb.c
    i32 7883, label %bb.c
    i32 7878, label %bb.c
    i32 7879, label %bb.c
    i32 7880, label %bb.c
    i32 7881, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm23AArch64AppleInstPrinter9printInstEPKNS_6MCInstEmNS_9StringRefERKNS_15MCSubtargetInfoERNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i64 noundef %2, ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(320) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) unnamed_addr #2 align 2 {
bb.a:
  %7 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %8 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %10 = alloca %"class.llvm::StringRef", align 8  ; 3 uses
  %11 = alloca %"class.llvm::MCInstPrinter::WithMarkup", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !8      ; 6 uses
  switch i32 %i.a, label %_ZL19isTblTbxInstructionjRN4llvm9StringRefERb.exit [
    i32 7955, label %.sink.split.i
    i32 7957, label %.sink.split.i
    i32 7956, label %.sink.split.i
    i32 7954, label %.sink.split.i
    i32 7937, label %bb.d
    i32 7939, label %bb.d
    i32 7938, label %bb.d
    i32 7936, label %bb.d
    i32 7951, label %bb.b
    i32 7953, label %bb.b
    i32 7952, label %bb.b
    i32 7950, label %bb.b
    i32 7933, label %bb.c
    i32 7935, label %bb.c
    i32 7934, label %bb.c
    i32 7932, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.d

.sink.split.i:                                    ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.c, %bb.b, %.sink.split.i
  %.0.ph = phi i1 [ true, %.sink.split.i ], [ false, %bb.c ], [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ], [ false, %bb.a ] ; 2 uses
  %.sroa.5.0.ph = phi i64 [ 3, %.sink.split.i ], [ 4, %bb.c ], [ 4, %bb.b ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ], [ 3, %bb.a ] ; 4 uses
  %.sroa.0116.0.ph = phi ptr [ @.str.43, %.sink.split.i ], [ @.str.38, %bb.c ], [ @.str.38, %bb.b ], [ @.str.43, %bb.a ], [ @.str.43, %bb.a ], [ @.str.43, %bb.a ], [ @.str.43, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i64 noundef 1) #22 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.d
  store i8 9, ptr %i.e, align 1
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.e, %bb.f
  %i.j = phi ptr [ %.pre, %bb.e ], [ %i.i, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %i.g, %bb.e ], [ %6, %bb.f ] ; 4 uses
  %.str.102..str.103 = select i1 %.0.ph, ptr @.str.102, ptr @.str.103 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, 3
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.q = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i, ptr noundef nonnull %.str.102..str.103, i64 noundef 3) #22 ; 2 uses
  %.phi.trans.insert127 = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.pre128 = load ptr, ptr %.phi.trans.insert127, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, ptr noundef nonnull align 1 dereferenceable(3) %.str.102..str.103, i64 3, i1 false)
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 2 uses
  store ptr %i.t, ptr %i.r, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

_ZN4llvm11raw_ostreamlsEPKc.exit68:               ; preds = %bb.g, %bb.h
  %i.u = phi ptr [ %.pre128, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %.0.i.i67 = phi ptr [ %i.q, %bb.g ], [ %.0.i.i, %bb.h ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ugt i64 %.sroa.5.0.ph, %i.z
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  %i.ab = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i67, ptr noundef nonnull %.sroa.0116.0.ph, i64 noundef %.sroa.5.0.ph) #22 ; 2 uses
  %.phi.trans.insert129 = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.pre130 = load ptr, ptr %.phi.trans.insert129, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i67, i64 32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0116.0.ph, i64 %.sroa.5.0.ph, i1 false)
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.5.0.ph ; 2 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.i, %bb.j
  %i.af = phi ptr [ %.pre130, %bb.i ], [ %i.ae, %bb.j ] ; 3 uses
  %.0.i69 = phi ptr [ %i.ab, %bb.i ], [ %.0.i.i67, %bb.j ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i69, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !22
  %.not.i70 = icmp ult ptr %i.af, %i.ah
  br i1 %.not.i70, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48) %.0.i69, i8 noundef zeroext 9) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEc.exit

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i69, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !27
  store i8 9, ptr %i.af, align 1, !tbaa !32
  br label %_ZN4llvm11raw_ostreamlsEc.exit

_ZN4llvm11raw_ostreamlsEc.exit:                   ; preds = %bb.k, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %8, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 1) #22
  %i.ap = add i32 %i.ao, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZN4llvm23AArch64AppleInstPrinter15getRegisterNameENS_10MCRegisterEjE16RegAsmOffsetvreg, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZZN4llvm18AArch64InstPrinter15getRegisterNameENS_10MCRegisterEjE11AsmStrsvreg, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !48, !nonnull !46, !align !47 ; 3 uses
  %i.ax = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.au) #22 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 2 uses
  %i.bc = ptrtoint ptr %i.az to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = icmp ugt i64 %i.ax, %i.be
  br i1 %i.bf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %i.bg = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull %i.au, i64 noundef %i.ax) #22 ; 0 uses
  br label %_ZN4llvm18AArch64InstPrinter12printRegNameERNS_11raw_ostreamENS_10MCRegisterEj.exit

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsEc.exit
  %.not.i2.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i2.i.i.i, label %_ZN4llvm18AArch64InstPrinter12printRegNameERNS_11raw_ostreamENS_10MCRegisterEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr nonnull align 1 %i.au, i64 %i.ax, i1 false)
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.ax
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !27
  br label %_ZN4llvm18AArch64InstPrinter12printRegNameERNS_11raw_ostreamENS_10MCRegisterEj.exit

_ZN4llvm18AArch64InstPrinter12printRegNameERNS_11raw_ostreamENS_10MCRegisterEj.exit: ; preds = %bb.m, %bb.n, %bb.o
  call void @_ZN4llvm13MCInstPrinter10WithMarkupD1Ev(ptr noundef nonnull align 8 dead_on_return(18) dereferenceable(18) %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.bj = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = icmp ult i64 %i.bn, 2
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm18AArch64InstPrinter12printRegNameERNS_11raw_ostreamENS_10MCRegisterEj.exit
  %i.bp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit75

bb.q:                                             ; preds = %_ZN4llvm18AArch64InstPrinter12printRegNameERNS_11raw_ostreamENS_10MCRegisterEj.exit
  store i16 8236, ptr %i.bk, align 1
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  store ptr %i.br, ptr %i.d, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit75

_ZN4llvm11raw_ostreamlsEPKc.exit75:               ; preds = %bb.p, %bb.q
  %i.bs = select i1 %.0.ph, i32 2, i32 1          ; 2 uses
  store ptr @.str.104, ptr %9, align 8, !tbaa !56
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.bt, align 8, !tbaa !58
  call void @_ZN4llvm18AArch64InstPrinter15printVectorListEPKNS_6MCInstEjRKNS_15MCSubtargetInfoERNS_11raw_ostreamENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %1, i32 noundef %i.bs, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %9)
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = icmp ult i64 %i.by, 2
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit75
  %i.ca = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i64 noundef 2) #22 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit75
  store i16 8236, ptr %i.bv, align 1
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store ptr %i.cc, ptr %i.d, align 8, !tbaa !27
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit78

_ZN4llvm11raw_ostreamlsEPKc.exit78:               ; preds = %bb.r, %bb.s
  %i.cd = load ptr, ptr %i.al, align 8, !tbaa !28
  %i.ce = zext nneg i32 %i.bs to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @_ZN4llvm13MCInstPrinter6markupERNS_11raw_ostreamENS0_6MarkupE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MCInstPrinter::WithMarkup") align 8 %7, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef 1) #22
  %i.ci = add i32 %i.ch, -1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @_ZZN4llvm23AArch64AppleInstPrinter15getRegisterNameENS_10MCRegisterEjE16RegAsmOffsetvreg, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !32
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @_ZZN4llvm18AArch64InstPrinter15getRegisterNameENS_10MCRegisterEjE11AsmStrsvreg, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !48, !nonnull !46, !align !47 ; 3 uses
  %i.cq = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cn) #22 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27 ; 2 uses
end_hunk_1
