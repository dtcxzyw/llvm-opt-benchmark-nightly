Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/Selector?download=true
inline.NumInlined: 282
inline.NumDeleted: 251
begin_hunk_0_@__gxx_personality_v0
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN6openzl13FunctionGraphELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !324  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !329
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !330
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !332
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11, !call_target !337, !inline_history !7698
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !332
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11, !call_target !339, !inline_history !7698
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !326
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !327
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !340

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #11
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6openzl8Selector5graphERNS_10GraphStateE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.openzl::SelectorState", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7701 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store ptr %1, ptr %2, align 8, !tbaa !7708
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 3 uses
  store i8 0, ptr %i.c, align 8, !tbaa !343
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %0, align 8, !tbaa !332
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = invoke i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(328) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.b unwind label %bb.e, !call_target !357

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  invoke void @_ZN6openzl4Edge14setDestinationE10ZL_GraphIDRKSt8optionalINS_15GraphParametersEE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 %i.h, ptr noundef nonnull align 8 dereferenceable(320) %i.i)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr %i.c, align 8, !tbaa !343, !range !7663, !noundef !474
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN6openzl13SelectorStateD2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZNSt22_Optional_payload_baseIN6openzl15GraphParametersEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(320) %i.i) #11
  br label %_ZN6openzl13SelectorStateD2Ev.exit

_ZN6openzl13SelectorStateD2Ev.exit:               ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i8, ptr %i.c, align 8, !tbaa !343, !range !7663, !noundef !474
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.f, label %_ZN6openzl13SelectorStateD2Ev.exit7

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_ZNSt22_Optional_payload_baseIN6openzl15GraphParametersEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(320) %i.o) #11
  br label %_ZN6openzl13SelectorStateD2Ev.exit7

_ZN6openzl13SelectorStateD2Ev.exit7:              ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN6openzl4Edge14setDestinationE10ZL_GraphIDRKSt8optionalINS_15GraphParametersEE(ptr noundef nonnull align 8 dereferenceable(24), i32, ptr noundef nonnull align 8 dereferenceable(320)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_ZNK6openzl8Selector24functionGraphDescriptionEv(ptr dead_on_unwind noalias writable sret(%"struct.openzl::FunctionGraphDescription") align 8 initializes((32, 33)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.openzl::SelectorDescription", align 8 ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.a = load ptr, ptr %1, align 8, !tbaa !332
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"struct.openzl::SelectorDescription") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %1), !call_target !6972
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.e, align 8, !tbaa !7665
  %i.f = load i8, ptr %i.d, align 8, !tbaa !7665, !range !7663, !noundef !474
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.b, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7709
  %i.i = load ptr, ptr %2, align 8, !tbaa !7670   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !7710 ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  store ptr %i.i, ptr %0, align 8, !tbaa !7670
  %i.p = load i64, ptr %i.j, align 8, !tbaa !326
  store i64 %i.p, ptr %i.h, align 8, !tbaa !326
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !7710
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i, %bb.c
  %i.q = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i ], [ %i.m, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.s, align 8, !tbaa !7710
  store ptr %i.j, ptr %2, align 8, !tbaa !7670
  store i64 0, ptr %i.r, align 8, !tbaa !7710
  store i8 0, ptr %i.j, align 8, !tbaa !326
  store i8 1, ptr %i.e, align 8, !tbaa !7665
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit: ; preds = %bb.a, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJS5_EEEvDpOT_.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !7724
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #12
          to label %bb.d unwind label %bb.k       ; 3 uses

bb.d:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  store ptr %i.w, ptr %i.t, align 8, !tbaa !7726
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.x, ptr %i.y, align 8, !tbaa !7727
  store i32 %i.v, ptr %i.w, align 4, !tbaa !7728
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.x, ptr %i.z, align 8, !tbaa !7729
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.aa, align 8, !tbaa !7737
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !325
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !325
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7674
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !7674
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !7675, !range !7663, !noundef !474
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store i8 0, ptr %i.al, align 8, !tbaa !7675
  %i.am = trunc nuw i8 %i.ak to i1
  br i1 %i.am, label %bb.e, label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i.thread

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.an, ptr noundef nonnull align 8 dereferenceable(208) %i.ai, i64 48, i1 false), !tbaa.struct !7739
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 2 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !325
  store <2 x ptr> %i.aq, ptr %i.ao, align 8, !tbaa !325
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !7677
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i8 0, i64 24, i1 false)
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !7679
  %i.ax = load <2 x ptr>, ptr %i.au, align 8, !tbaa !325
  %i.ay = insertelement <4 x ptr> poison, ptr %i.av, i64 0
  %i.az = insertelement <4 x ptr> %i.ay, ptr %i.aw, i64 1
  %i.ba = shufflevector <2 x ptr> %i.ax, <2 x ptr> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x ptr> %i.az, <4 x ptr> %i.ba, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  store <4 x ptr> %i.bb, ptr %i.ar, align 8, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !7681
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !7681
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.bh = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !325
  store <2 x ptr> %i.bh, ptr %i.bf, align 8, !tbaa !325
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !7689 ; 3 uses
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !7689
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 200 ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !7690 ; 2 uses
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !7690
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !7691 ; 3 uses
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !7692
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !7740
  store i64 %i.bt, ptr %i.br, align 8, !tbaa !7740
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !7742
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  store ptr null, ptr %i.bw, align 8, !tbaa !7743
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 4 uses
  %i.by = icmp eq ptr %i.bk, %i.bx
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.bw, ptr %i.bi, align 8, !tbaa !7689
  %i.bz = load ptr, ptr %i.bx, align 8, !tbaa !7743
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !7743
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ca = phi ptr [ %i.bw, %bb.f ], [ %i.bk, %bb.e ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !327
  %i.cd = sext i32 %i.cc to i64
  %i.ce = urem i64 %i.cd, %i.bn
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.ce
  store ptr %i.bo, ptr %i.cf, align 8, !tbaa !7744
  br label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i.thread: ; preds = %bb.d
  store i8 0, ptr %i.aj, align 8, !tbaa !7675
  br label %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i

_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i: ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 232
  store i64 0, ptr %i.cg, align 8, !tbaa !7745
  store i64 1, ptr %i.bm, align 8, !tbaa !7690
  store ptr null, ptr %i.bx, align 8, !tbaa !7743
  store ptr %i.bx, ptr %i.bj, align 8, !tbaa !7689
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 248 ; 2 uses
  %i.cj = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !7746
  store <2 x ptr> %i.cj, ptr %i.ch, align 8, !tbaa !7746
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !7695
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !7695
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.al, align 8, !tbaa !7675
  store i8 0, ptr %i.aj, align 8, !tbaa !7675
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(208) %i.ai) #11
  %.pre4 = load ptr, ptr %i.ac, align 8, !tbaa !7696 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pre4, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !7674
  %i.co = ptrtoint ptr %i.cn to i64
  %i.cp = ptrtoint ptr %.pre4 to i64
  %i.cq = sub i64 %i.co, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.pre4, i64 noundef %i.cq) #13
  br label %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i

_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i:     ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i.thread, %bb.i, %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i
  %i.cr = load i8, ptr %i.d, align 8, !tbaa !7665, !range !7663, !noundef !474
  %i.cs = trunc nuw i8 %i.cr to i1
  store i8 0, ptr %i.d, align 8, !tbaa !7665
  br i1 %i.cs, label %bb.j, label %_ZN6openzl19SelectorDescriptionD2Ev.exit

bb.j:                                             ; preds = %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i
  %i.ct = load ptr, ptr %2, align 8, !tbaa !7670  ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZN6openzl19SelectorDescriptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.j
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !326
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #13
  br label %_ZN6openzl19SelectorDescriptionD2Ev.exit

_ZN6openzl19SelectorDescriptionD2Ev.exit:         ; preds = %bb.j, %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  ret void

bb.k:                                             ; preds = %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EOS6_.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #11
  call void @_ZN6openzl19SelectorDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  resume { ptr, i32 } %i.cy
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7665, !range !7663, !noundef !474
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !7665
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !7670   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !326
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #13
  br label %_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.b, %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl19SelectorDescriptionD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !7675, !range !7663, !noundef !474
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !7675
  br i1 %i.c, label %bb.b, label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(208) %i.d) #11
  br label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !7696 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7674
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #13
  br label %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit

_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit:       ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !7665, !range !7663, !noundef !474
  %i.n = trunc nuw i8 %i.m to i1
  store i8 0, ptr %i.l, align 8, !tbaa !7665
  br i1 %i.n, label %bb.d, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit
  %i.o = load ptr, ptr %0, align 8, !tbaa !7670   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !326
  %i.s = add i64 %i.r, 1
  tail call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #13
  br label %_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit: ; preds = %bb.d, %_ZNSt6vectorI10ZL_GraphIDSaIS0_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl13FunctionGraphD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl8SelectorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !332
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #11, !call_target !337, !inline_history !7747
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !326
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !327  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !327
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !332
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #11, !call_target !339, !inline_history !7747
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseIN6openzl15GraphParametersEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(313) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i8 0, ptr %i.a, align 8, !tbaa !343
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !7675, !range !7663, !noundef !474
  %i.d = trunc nuw i8 %i.c to i1
  store i8 0, ptr %i.b, align 8, !tbaa !7675
  br i1 %i.d, label %bb.b, label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(208) %i.e) #11
  br label %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !7749, !range !7663, !noundef !474
  %i.h = trunc nuw i8 %i.g to i1
  store i8 0, ptr %i.f, align 8, !tbaa !7749
  br i1 %i.h, label %bb.c, label %_ZNSt14_Optional_baseISt6vectorI9ZL_NodeIDSaIS1_EELb0ELb0EED2Ev.exit.i

bb.c:                                             ; preds = %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7750 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt6vectorI9ZL_NodeIDSaIS1_EELb0ELb0EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7751
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #13
  br label %_ZNSt14_Optional_baseISt6vectorI9ZL_NodeIDSaIS1_EELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseISt6vectorI9ZL_NodeIDSaIS1_EELb0ELb0EED2Ev.exit.i: ; preds = %bb.d, %bb.c, %_ZNSt14_Optional_baseIN6openzl11LocalParamsELb0ELb0EED2Ev.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !7753, !range !7663, !noundef !474
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !7753
  br i1 %i.r, label %bb.e, label %_ZNSt14_Optional_baseISt6vectorI10ZL_GraphIDSaIS1_EELb0ELb0EED2Ev.exit.i

bb.e:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorI9ZL_NodeIDSaIS1_EELb0ELb0EED2Ev.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7696 ; 3 uses
  %.not.i.i.i.i.i.i.i1.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i1.i, label %_ZNSt14_Optional_baseISt6vectorI10ZL_GraphIDSaIS1_EELb0ELb0EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !7674
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #13
  br label %_ZNSt14_Optional_baseISt6vectorI10ZL_GraphIDSaIS1_EELb0ELb0EED2Ev.exit.i

_ZNSt14_Optional_baseISt6vectorI10ZL_GraphIDSaIS1_EELb0ELb0EED2Ev.exit.i: ; preds = %bb.f, %bb.e, %_ZNSt14_Optional_baseISt6vectorI9ZL_NodeIDSaIS1_EELb0ELb0EED2Ev.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !7665, !range !7663, !noundef !474
  %i.ab = trunc nuw i8 %i.aa to i1
  store i8 0, ptr %i.z, align 8, !tbaa !7665
  br i1 %i.ab, label %bb.g, label %_ZN6openzl15GraphParametersD2Ev.exit

bb.g:                                             ; preds = %_ZNSt14_Optional_baseISt6vectorI10ZL_GraphIDSaIS1_EELb0ELb0EED2Ev.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !7670  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN6openzl15GraphParametersD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !326
  %i.ag = add i64 %i.af, 1
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #13
  br label %_ZN6openzl15GraphParametersD2Ev.exit

_ZN6openzl15GraphParametersD2Ev.exit:             ; preds = %bb.g, %_ZNSt14_Optional_baseISt6vectorI10ZL_GraphIDSaIS1_EELb0ELb0EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7756 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7757 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7758 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #13
  br label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7754

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !7756
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7695
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #13
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !7691 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit ] ; 2 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !7692 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #13
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !7755

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !7689
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !7690
  %i.t = shl i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.t, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !7689 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.x = load i64, ptr %i.r, align 8, !tbaa !7690
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #13
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7681 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7760
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #13
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit:      ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !7679 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !7761
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #13
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit

_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit:     ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7762 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !7677
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #13
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!310, !311, !312, !313, !314}
!llvm.ident = !{!315}
!llvm.errno.tbaa = !{!320}

!0 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Sp_counted_base<(__gnu_cxx::_Lock_policy)2>", scope: !338, file: !333, line: 125, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE")
!1 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Input", scope: !346, file: !358, line: 19, size: 128, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6openzl5InputE")
!2 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !463, line: 239, size: 64, flags: DIFlagTypePassByValue, elements: !465, identifier: "_ZTS19ZL_GraphPerformance")
!3 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Construct", scope: !4, file: !408, line: 82, baseType: !382, size: 32, flags: DIFlagEnumClass, elements: !472, identifier: "_ZTSNSt9nullopt_t10_ConstructE")
!4 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nullopt_t", scope: !338, file: !408, line: 75, size: 8, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !470, identifier: "_ZTSSt9nullopt_t")
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Enable_copy_move<true, true, true, true, std::optional<ZL_GraphPerformance> >", scope: !338, file: !473, line: 87, size: 8, flags: DIFlagTypePassByValue, elements: !474, templateParams: !480, identifier: "_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalI19ZL_GraphPerformanceEE")
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Empty_byte", scope: !8, file: !408, line: 204, size: 8, flags: DIFlagTypePassByValue, elements: !474, identifier: "_ZTSNSt22_Optional_payload_baseI19ZL_GraphPerformanceE11_Empty_byteE")
!7 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Storage<ZL_GraphPerformance, true>", scope: !8, file: !408, line: 207, size: 64, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !557, templateParams: !560, identifier: "_ZTSNSt22_Optional_payload_baseI19ZL_GraphPerformanceE8_StorageIS0_Lb1EEE")
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_payload_base<ZL_GraphPerformance>", scope: !338, file: !408, line: 116, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !550, templateParams: !562, identifier: "_ZTSSt22_Optional_payload_baseI19ZL_GraphPerformanceE")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_payload<ZL_GraphPerformance, true, true, true>", scope: !338, file: !408, line: 338, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !509, templateParams: !563, identifier: "_ZTSSt17_Optional_payloadI19ZL_GraphPerformanceLb1ELb1ELb1EE")
!10 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Optional_base_impl<ZL_GraphPerformance, std::_Optional_base<ZL_GraphPerformance, true, true> >", scope: !338, file: !408, line: 447, size: 8, flags: DIFlagTypePassByValue, elements: !580, templateParams: !582, identifier: "_ZTSSt19_Optional_base_implI19ZL_GraphPerformanceSt14_Optional_baseIS0_Lb1ELb1EEE")
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_base<ZL_GraphPerformance, true, true>", scope: !338, file: !408, line: 641, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !503, templateParams: !583, identifier: "_ZTSSt14_Optional_baseI19ZL_GraphPerformanceLb1ELb1EE")
!12 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "optional<ZL_GraphPerformance>", scope: !338, file: !408, line: 707, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !462, templateParams: !562, identifier: "_ZTSSt8optionalI19ZL_GraphPerformanceE")
!13 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const unsigned char *>", scope: !338, file: !714, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKhE")
!14 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<const openzl::Edge *>", scope: !338, file: !714, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPKN6openzl4EdgeEE")
!15 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "reverse_iterator<openzl::Edge *>", scope: !338, file: !714, line: 136, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSSt16reverse_iteratorIPN6openzl4EdgeEE")
!16 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "Edge", scope: !346, file: !789, line: 20, size: 192, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSN6openzl4EdgeE")
!17 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "span<openzl::Edge, 18446744073709551615UL>", scope: !639, file: !637, line: 72, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !788, templateParams: !792, identifier: "_ZTSN6openzl4poly4impl4spanINS_4EdgeELm18446744073709551615EEE")
!18 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "span<const unsigned char, 18446744073709551615UL>", scope: !639, file: !637, line: 72, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !713, templateParams: !794, identifier: "_ZTSN6openzl4poly4impl4spanIKhLm18446744073709551615EEE")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Enable_copy_move<true, true, true, true, std::optional<openzl::poly::impl::span<const unsigned char, 18446744073709551615UL> > >", scope: !338, file: !473, line: 87, size: 8, flags: DIFlagTypePassByValue, elements: !474, templateParams: !796, identifier: "_ZTSSt17_Enable_copy_moveILb1ELb1ELb1ELb1ESt8optionalIN6openzl4poly4impl4spanIKhLm18446744073709551615EEEEE")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Empty_byte", scope: !22, file: !408, line: 204, size: 8, flags: DIFlagTypePassByValue, elements: !474, identifier: "_ZTSNSt22_Optional_payload_baseIN6openzl4poly4impl4spanIKhLm18446744073709551615EEEE11_Empty_byteE")
!21 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_Storage<openzl::poly::impl::span<const unsigned char, 18446744073709551615UL>, true>", scope: !22, file: !408, line: 207, size: 128, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !873, templateParams: !875, identifier: "_ZTSNSt22_Optional_payload_baseIN6openzl4poly4impl4spanIKhLm18446744073709551615EEEE8_StorageIS5_Lb1EEE")
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_payload_base<openzl::poly::impl::span<const unsigned char, 18446744073709551615UL> >", scope: !338, file: !408, line: 116, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !866, templateParams: !877, identifier: "_ZTSSt22_Optional_payload_baseIN6openzl4poly4impl4spanIKhLm18446744073709551615EEEE")
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_payload<openzl::poly::impl::span<const unsigned char, 18446744073709551615UL>, true, true, true>", scope: !338, file: !408, line: 338, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !825, templateParams: !878, identifier: "_ZTSSt17_Optional_payloadIN6openzl4poly4impl4spanIKhLm18446744073709551615EEELb1ELb1ELb1EE")
!24 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "_Optional_base_impl<openzl::poly::impl::span<const unsigned char, 18446744073709551615UL>, std::_Optional_base<openzl::poly::impl::span<const unsigned char, 18446744073709551615UL>, true, true> >", scope: !338, file: !408, line: 447, size: 8, flags: DIFlagTypePassByValue, elements: !895, templateParams: !897, identifier: "_ZTSSt19_Optional_base_implIN6openzl4poly4impl4spanIKhLm18446744073709551615EEESt14_Optional_baseIS5_Lb1ELb1EEE")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Optional_base<openzl::poly::impl::span<const unsigned char, 18446744073709551615UL>, true, true>", scope: !338, file: !408, line: 641, size: 192, flags: DIFlagTypePassByValue | DIFlagNonTrivial, elements: !819, templateParams: !898, identifier: "_ZTSSt14_Optional_baseIN6openzl4poly4impl4spanIKhLm18446744073709551615EEELb1ELb1EE")
end_hunk_0
