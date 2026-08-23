Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/BenchmarkUtil?download=true
inline.NumInlined: 268
inline.NumDeleted: 177
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5folly6detail20bm_llc_size_fallbackEv:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18, !call_target !48, !inline_history !55
  %i.cb = load ptr, ptr %.pre160, align 8, !tbaa !46
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18, !call_target !56, !inline_history !55
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41

bb.v:                                             ; preds = %bb.t
  %i.ce = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i38 = icmp eq i8 %i.ce, 0
  br i1 %.not.i.i.i.i38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = add nsw i32 %i.bw, -1
  store i32 %i.cf, ptr %i.bt, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

bb.x:                                             ; preds = %bb.v
  %i.cg = atomicrmw volatile add ptr %i.bt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i40 = phi i32 [ %i.bw, %bb.w ], [ %i.cg, %bb.x ]
  %i.ch = icmp eq i32 %.0.i.i.i.i.i40, 1
  br i1 %i.ch, label %bb.y, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41, !prof !57

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre160) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41: ; preds = %bb.s, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i39, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  %i.ci = load ptr, ptr %i.bg, align 8, !tbaa !31 ; 8 uses
  %.not.i.i.i42 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i42, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, label %bb.z

bb.z:                                             ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 4 uses
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 4294967297
  %i.cm = trunc i64 %i.ck to i32                  ; 2 uses
  br i1 %i.cl, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cj, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 0, ptr %i.cn, align 4, !tbaa !45
  %i.co = load ptr, ptr %i.ci, align 8, !tbaa !46
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #18, !call_target !48, !inline_history !55
  %i.cr = load ptr, ptr %i.ci, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #18, !call_target !56, !inline_history !55
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46

bb.ab:                                            ; preds = %bb.z
  %i.cu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i43 = icmp eq i8 %i.cu, 0
  br i1 %.not.i.i.i.i43, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = add nsw i32 %i.cm, -1
  store i32 %i.cv, ptr %i.cj, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

bb.ad:                                            ; preds = %bb.ab
  %i.cw = atomicrmw volatile add ptr %i.cj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i45 = phi i32 [ %i.cm, %bb.ac ], [ %i.cw, %bb.ad ]
  %i.cx = icmp eq i32 %.0.i.i.i.i.i45, 1
  br i1 %i.cx, label %bb.ae, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, !prof !57

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ci) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit41, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i44, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.cy = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 8 uses
  %.not.i.i.i47 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i47, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51, label %bb.af

bb.af:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.cz, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !45
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #18, !call_target !48, !inline_history !55
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !46
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #18, !call_target !56, !inline_history !55
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51

bb.ah:                                            ; preds = %bb.af
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i48 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i48, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !35
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

bb.aj:                                            ; preds = %bb.ah
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i.i50 = phi i32 [ %i.dc, %bb.ai ], [ %i.dm, %bb.aj ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i50, 1
  br i1 %i.dn, label %bb.ak, label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51, !prof !57

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #18
  br label %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51

_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51: ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit46, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i49, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !24  ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i52, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53, label %bb.al

bb.al:                                            ; preds = %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull %i.do) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53: ; preds = %bb.al, %_ZNSt10filesystem7__cxx1118directory_iteratorD2Ev.exit51
  %i.dp = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.d
  br i1 %i.dq, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53
  %i.dr = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.ds) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.bt

.body:                                            ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dt = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.du = icmp eq ptr %i.dt, %i.f
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %.body
  %i.dv = load i64, ptr %i.f, align 8, !tbaa !23
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.bs

bb.am:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dx = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.an:                                            ; preds = %bb.r
  %i.dy = call noundef nonnull align 8 dereferenceable(41) ptr @_ZNKSt10filesystem7__cxx1118directory_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  invoke void @_ZNKSt10filesystem7__cxx114path8filenameEv(ptr dead_on_unwind nonnull writable sret(%"class.std::filesystem::__cxx11::path") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %i.dy)
          to label %bb.ao unwind label %bb.bf

bb.ao:                                            ; preds = %bb.an
  %i.dz = load i64, ptr %i.bi, align 8, !tbaa !22
  %.not.i.i.i60 = icmp ult i64 %i.dz, 5
  br i1 %.not.i.i.i60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.ao
  %i.ea = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 1
  %i.ec = xor i32 %i.eb, 1701080681
  %i.ed = getelementptr i8, ptr %i.ea, i64 4
  %i.ee = load i8, ptr %i.ed, align 1
  %i.ef = zext i8 %i.ee to i32
  %i.eg = xor i32 %i.ef, 120
  %i.eh = or i32 %i.ec, %i.eg
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = zext i1 %i.ei to i32
  %i.ek = icmp eq i32 %i.ej, 0
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.ao
  %11 = phi i1 [ false, %bb.ao ], [ %i.ek, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ]
  %i.el = load ptr, ptr %i.bj, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i61 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i61, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62, label %bb.ap

bb.ap:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, ptr noundef nonnull %i.el) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11starts_withEPKc.exit
  %i.em = load ptr, ptr %6, align 8, !tbaa !19    ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.bk
  br i1 %i.en, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62
  %i.eo = load i64, ptr %i.bk, align 8, !tbaa !23
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit66

_ZNSt10filesystem7__cxx114pathD2Ev.exit66:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i62, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br i1 %11, label %bb.aq, label %bb.bo

bb.aq:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA5_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i8 noundef zeroext 2)
          to label %bb.ar unwind label %bb.bg

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZNSt10filesystem7__cxx114pathC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %i.dy)
          to label %.noexc unwind label %bb.bh

.noexc:                                           ; preds = %bb.ar
  %i.eq = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt10filesystem7__cxx114pathdVERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %.noexc
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #18
  br label %.body67

_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit: ; preds = %.noexc
  %i.es = load ptr, ptr %8, align 8, !tbaa !19
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %7, ptr noundef %i.es, i32 noundef 8)
          to label %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit unwind label %bb.bi

_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit: ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.et = load ptr, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i70 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i70, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71, label %bb.at

bb.at:                                            ; preds = %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull %i.et) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71: ; preds = %bb.at, %_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1INSt10filesystem7__cxx114pathES6_EERKT_St13_Ios_Openmode.exit
  %i.eu = load ptr, ptr %8, align 8, !tbaa !19    ; 2 uses
  %i.ev = icmp eq ptr %i.eu, %i.bm
  br i1 %i.ev, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71
  %i.ew = load i64, ptr %i.bm, align 8, !tbaa !23
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ex) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit75

_ZNSt10filesystem7__cxx114pathD2Ev.exit75:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i72
  %i.ey = load ptr, ptr %i.bn, align 8, !tbaa !24 ; 2 uses
  %.not.i.i.i76 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i76, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77, label %bb.au

bb.au:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit75
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.bn, ptr noundef nonnull %i.ey) #18
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77: ; preds = %bb.au, %_ZNSt10filesystem7__cxx114pathD2Ev.exit75
  %i.ez = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.fa = icmp eq ptr %i.ez, %i.bo
  br i1 %i.fa, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit81, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77
  %i.fb = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.fc = add i64 %i.fb, 1
  call void @_ZdlPvm(ptr noundef %i.ez, i64 noundef %i.fc) #19
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit81

_ZNSt10filesystem7__cxx114pathD2Ev.exit81:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i77, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store ptr %i.bp, ptr %10, align 8, !tbaa !15
  store i64 0, ptr %i.bq, align 8, !tbaa !22
  store i8 0, ptr %i.bp, align 8, !tbaa !23
  %i.fd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.av unwind label %bb.bk     ; 0 uses

bb.av:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit81
  %i.fe = load ptr, ptr %10, align 8, !tbaa !19   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ff = tail call ptr @__errno_location() #20   ; 6 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !35 ; 2 uses
  store i32 0, ptr %i.ff, align 4, !tbaa !35
  %i.fh = call noundef i64 @__isoc23_strtoul(ptr noundef %i.fe, ptr noundef nonnull %i.a, i32 noundef 10) ; 3 uses
  %i.fi = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.fj = icmp eq ptr %i.fi, %i.fe
  br i1 %i.fj, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt24__throw_invalid_argumentPKc(ptr noundef nonnull @.str.7) #21
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  unreachable

bb.ay:                                            ; preds = %.critedge.i.i, %bb.aw
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load i32, ptr %i.ff, align 4, !tbaa !35
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.az, label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

bb.az:                                            ; preds = %bb.ay
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !35
  br label %_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i

_ZZN9__gnu_cxx6__stoaImmcJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_EN11_Save_errnoD2Ev.exit.i.i: ; preds = %bb.az, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.body82

bb.ba:                                            ; preds = %bb.av
  %i.fn = load i32, ptr %i.ff, align 4, !tbaa !35
  switch i32 %i.fn, label %bb.bd [
    i32 34, label %.critedge.i.i
    i32 0, label %bb.bc
  ]

.critedge.i.i:                                    ; preds = %bb.ba
  invoke void @_ZSt20__throw_out_of_rangePKc(ptr noundef nonnull @.str.7) #21
          to label %bb.bb unwind label %bb.ay

bb.bb:                                            ; preds = %.critedge.i.i
  unreachable

bb.bc:                                            ; preds = %bb.ba
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !35
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.fo = load i64, ptr %i.bq, align 8, !tbaa !22 ; 2 uses
  %i.fp = load ptr, ptr %10, align 8, !tbaa !19   ; 3 uses
  %i.fq = getelementptr i8, ptr %i.fp, i64 %i.fo
  %i.fr = getelementptr i8, ptr %i.fq, i64 -1
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !23
  switch i8 %i.fs, label %bb.bm [
    i8 75, label %bb.be
    i8 77, label %bb.bl
  ]

bb.be:                                            ; preds = %bb.bd
  %i.ft = shl i64 %i.fh, 10
  br label %bb.bm

bb.bf:                                            ; preds = %bb.an
  %i.fu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bq

bb.bg:                                            ; preds = %bb.aq
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bh:                                            ; preds = %bb.ar
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %.body67

bb.bi:                                            ; preds = %_ZNSt10filesystem7__cxx11dvERKNS0_4pathES3_.exit
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #18
  br label %.body67

.body67:                                          ; preds = %bb.bh, %bb.as, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.fx, %bb.bi ], [ %i.fw, %bb.bh ], [ %i.er, %bb.as ]
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #18
  br label %bb.bj

bb.bj:                                            ; preds = %.body67, %bb.bg
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body67 ], [ %i.fv, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.bn

bb.bk:                                            ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit81
end_hunk_0
