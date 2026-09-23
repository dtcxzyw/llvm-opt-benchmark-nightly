Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/defmodel?download=true
inline.NumInlined: 4674
inline.NumDeleted: 1744
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorIN16DeformationModel10MasterFile4LinkESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !30
  store ptr %i.g, ptr %1, align 8, !tbaa !26
  store i64 0, ptr %i.n, align 8, !tbaa !30
  store i8 0, ptr %i.g, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.s, ptr %i.q, align 8, !tbaa !27
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !26   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  tail call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.s, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.t, ptr %i.q, align 8, !tbaa !26
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !29
  store i64 %i.aa, ptr %i.s, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i5.i, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !30
  store ptr %i.u, ptr %i.r, align 8, !tbaa !26
  store i64 0, ptr %i.ab, align 8, !tbaa !30
  store i8 0, ptr %i.u, align 8, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !27
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !26 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 5 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !30 ; 2 uses
  %i.am = icmp ult i64 %i.al, 16
  tail call void @llvm.assume(i1 %i.am)
  %i.an = add nuw nsw i64 %i.al, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ag, ptr noundef nonnull align 8 dereferenceable(1) %i.ai, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit6.i
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !26
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !29
  store i64 %i.ao, ptr %i.ag, align 8, !tbaa !29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7.i, %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !30
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !26
  store i64 0, ptr %i.ap, align 8, !tbaa !30
  store i8 0, ptr %i.ai, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  store ptr %i.au, ptr %i.as, align 8, !tbaa !27
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !26 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 5 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !30 ; 2 uses
  %i.ba = icmp ult i64 %i.az, 16
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = add nuw nsw i64 %i.az, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.au, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.bb, i1 false)
  br label %_ZN16DeformationModel10MasterFile4LinkC2EOS1_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit8.i
  store ptr %i.av, ptr %i.as, align 8, !tbaa !26
  %i.bc = load i64, ptr %i.aw, align 8, !tbaa !29
  store i64 %i.bc, ptr %i.au, align 8, !tbaa !29
  br label %_ZN16DeformationModel10MasterFile4LinkC2EOS1_.exit

_ZN16DeformationModel10MasterFile4LinkC2EOS1_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !30
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !26
  store i64 0, ptr %i.bd, align 8, !tbaa !30
  store i8 0, ptr %i.aw, align 8, !tbaa !29
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !100
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 128 ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !100
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN16DeformationModel10MasterFile4LinkESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(128) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !343
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN16DeformationModel10MasterFile4LinkC2EOS1_.exit
  %i.bi = phi ptr [ %.pre, %bb.g ], [ %i.bh, %_ZN16DeformationModel10MasterFile4LinkC2EOS1_.exit ]
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -128
  ret ptr %i.bj
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16DeformationModel10MasterFile4LinkD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !29
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !29
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !26   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !29
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.v = load i64, ptr %i.t, align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  tail call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16DeformationModel13SpatialExtent5parseERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS1_14adl_serializerES4_IhSaIhEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.DeformationModel::SpatialExtent") align 8 captures(none) initializes((0, 64)) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 9 uses
  %6 = alloca %"class.proj_nlohmann::basic_json", align 8 ; 19 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double +qnan), ptr %0, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> splat (double +qnan), ptr %i.f, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store <2 x double> splat (double +qnan), ptr %i.h, align 8, !tbaa !61
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store <2 x double> splat (double +qnan), ptr %i.i, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  call fastcc void @_ZN16DeformationModelL9getStringERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKcb(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.37, i1 noundef zeroext false)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !26
  %i.n = load i32, ptr %i.m, align 1
  %i.o = icmp ne i32 %i.n, 2020565602
  %i.p = zext i1 %i.o to i32
  %.not61 = icmp eq i32 %i.p, 0
  br i1 %.not61, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %bb.a, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.q = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.66, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.an unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.012 = phi i1 [ false, %bb.c ], [ true, %bb.b ] ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.012, label %bb.e, label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.012, label %bb.e, label %bb.am

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3152 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.q) #37
  br label %bb.am

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  invoke fastcc void @_ZN16DeformationModelL15getObjectMemberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.67)
          to label %bb.f unwind label %bb.l

bb.f:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke fastcc void @_ZN16DeformationModelL14getArrayMemberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.65)
          to label %bb.g unwind label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.y = load i8, ptr %6, align 8, !tbaa !42
  switch i8 %i.y, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread [
    i8 1, label %bb.i
    i8 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !29  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !89
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !90
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 4
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !29
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !81
  br label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit: ; preds = %bb.h, %bb.i
  %.0.i = phi i64 [ %i.ah, %bb.h ], [ %i.al, %bb.i ]
  %.not = icmp eq i64 %.0.i, 4
  br i1 %.not, label %.preheader.preheader, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread

.preheader.preheader:                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit
  %i.am = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
          to label %bb.t unwind label %bb.x

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread: ; preds = %bb.g, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit
  %i.an = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread

bb.j:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.an, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.an unwind label %bb.n

bb.l:                                             ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread49
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.m:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4sizeEv.exit.thread
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  %.010 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.as = load ptr, ptr %7, align 8, !tbaa !26    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.n
  %i.av = load i64, ptr %i.at, align 8, !tbaa !29
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.010, label %bb.o, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #37
  br i1 %.010, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn2657 = phi { ptr, i32 } [ %i.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ]
  call void @__cxa_free_exception(ptr %i.an) #37
  br label %bb.aj

.preheader.1:                                     ; preds = %bb.t
  %i.ax = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %.preheader.1
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !42
  %i.az = add i8 %i.ay, -5
  %spec.select.i.1 = icmp ult i8 %i.az, 3
  br i1 %spec.select.i.1, label %.preheader.2, label %bb.u

.preheader.2:                                     ; preds = %bb.p
  %i.ba = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 2)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %.preheader.2
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !42
  %i.bc = add i8 %i.bb, -5
  %spec.select.i.2 = icmp ult i8 %i.bc, 3
  br i1 %spec.select.i.2, label %.preheader.3, label %bb.u

.preheader.3:                                     ; preds = %bb.q
  %i.bd = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 3)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %.preheader.3
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !42
  %i.bf = add i8 %i.be, -5
  %spec.select.i.3 = icmp ult i8 %i.bf, 3
  br i1 %spec.select.i.3, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bg = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 0)
          to label %bb.aa unwind label %bb.ai

bb.t:                                             ; preds = %.preheader.preheader
  %i.bh = load i8, ptr %i.am, align 8, !tbaa !42
  %i.bi = add i8 %i.bh, -5
  %spec.select.i = icmp ult i8 %i.bi, 3
  br i1 %spec.select.i, label %.preheader.1, label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.t
  %i.bj = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.68, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.an unwind label %bb.y

bb.x:                                             ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread: ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %.0 = phi i1 [ false, %bb.w ], [ true, %bb.v ]  ; 2 uses
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bn = load ptr, ptr %9, align 8, !tbaa !26    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bp = icmp eq ptr %i.bn, %i.bo
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37: ; preds = %bb.y
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !29
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.br) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %.0, label %bb.z, label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #37
  br i1 %.0, label %bb.z, label %bb.aj

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn60 = phi { ptr, i32 } [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.thread ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  call void @__cxa_free_exception(ptr %i.bj) #37
  br label %bb.aj

bb.aa:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load double, ptr %i.d, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  store double %i.bs, ptr %0, align 8, !tbaa !344
  %i.bt = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 1)
          to label %bb.ac unwind label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.ad unwind label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bu = load double, ptr %i.c, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  store double %i.bu, ptr %i.e, align 8, !tbaa !345
  %i.bv = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 2)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.af unwind label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bw = load double, ptr %i.b, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  store double %i.bw, ptr %i.f, align 8, !tbaa !346
  %i.bx = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEixEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef 3)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  invoke void @_ZN13proj_nlohmann6detail20get_arithmetic_valueINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEdTnNSt9enable_ifIXaasr3std13is_arithmeticIT0_EE5valuentsr3std7is_sameISG_NT_9boolean_tEEE5valueEiE4typeELi0EEEvRKSH_RSG_(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.by = load double, ptr %i.a, align 8, !tbaa !61 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  store double %i.by, ptr %i.g, align 8, !tbaa !347
  %11 = insertelement <2 x double> poison, double %i.bs, i64 0
  %12 = insertelement <2 x double> %11, double %i.bu, i64 1
  %13 = fmul <2 x double> %12, splat (double f0x3F91DF46A2529D39)
  store <2 x double> %13, ptr %i.h, align 8, !tbaa !61
  %14 = insertelement <2 x double> poison, double %i.bw, i64 0
  %15 = insertelement <2 x double> %14, double %i.by, i64 1
  %16 = fmul <2 x double> %15, splat (double f0x3F91DF46A2529D39)
  store <2 x double> %16, ptr %i.i, align 8, !tbaa !61
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ca = load i8, ptr %6, align 8, !tbaa !42
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i8 noundef zeroext %i.ca) #37, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = load i8, ptr %5, align 8, !tbaa !42
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, i8 noundef zeroext %i.cc) #37, !inline_history !0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  %i.cd = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43: ; preds = %bb.ah
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !29
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit45: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  ret void

bb.ai:                                            ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.af, %bb.ad, %bb.ab, %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %bb.x, %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.o, %bb.ai
  %.pn26.pn = phi { ptr, i32 } [ %.pn2657, %bb.o ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ci, %bb.ai ], [ %.pn60, %bb.z ], [ %i.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %i.bk, %bb.x ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %i.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37 ]
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ck = load i8, ptr %6, align 8, !tbaa !42
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i8 noundef zeroext %i.ck) #37, !inline_history !0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.m
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %bb.aj ], [ %i.ap, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = load i8, ptr %5, align 8, !tbaa !42
  call void @_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE10json_value7destroyENS_6detail7value_tE(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef zeroext %i.cm) #37, !inline_history !0
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.l
  %.pn26.pn.pn.pn = phi { ptr, i32 } [ %.pn26.pn.pn, %bb.ak ], [ %i.ao, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.am

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.e, %bb.al
  %.pn31.pn = phi { ptr, i32 } [ %.pn3152, %bb.e ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn26.pn.pn.pn, %bb.al ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cn = load ptr, ptr %2, align 8, !tbaa !26    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46: ; preds = %bb.am
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !29
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  resume { ptr, i32 } %.pn31.pn

bb.an:                                            ; preds = %bb.w, %bb.k, %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN16DeformationModelL15getObjectMemberERKN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEEPKc(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::allocator", align 1   ; 5 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !96
  %i.b = load i8, ptr %1, align 8, !tbaa !42
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_M_find_trIPKcvEESt23_Rb_tree_const_iteratorISG_ERKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread, label %bb.i

_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread: ; preds = %bb.a, %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit
  %i.i = call ptr @__cxa_allocate_exception(i64 40) #37 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.115, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread

bb.b:                                             ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !96
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.j)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.116)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN16DeformationModel16ParsingExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN16DeformationModel16ParsingExceptionE, ptr nonnull @_ZN16DeformationModel16ParsingExceptionD2Ev) #36
          to label %bb.u unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread: ; preds = %_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE8containsIRPKcTnNSt9enable_ifIXntsr3std7is_sameINSt5decayIT_E4typeENS_12json_pointerISC_EEEE5valueEiE4typeELi0EEEbOSJ_.exit.thread
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  %.06 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.q = load i64, ptr %i.o, align 8, !tbaa !29
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.g ] ; 4 uses
  %.17 = phi i1 [ true, %bb.f ], [ %.06, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.06, %bb.g ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.v = load i64, ptr %i.t, align 8, !tbaa !29
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  %i.x = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread: ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %5, align 8, !tbaa !26    ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !29
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #38
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !29
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ah) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.17, label %bb.h, label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br i1 %.17, label %bb.h, label %bb.t

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread
  %.pn.pn.pn46.ph = phi { ptr, i32 } [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32.thread ], [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34.thread ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
end_hunk_0
begin_hunk_1_@_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE6insertIS9_IS3_S6_EEENSt9enable_ifIXsr16is_constructibleISB_T_EE5valueES9_ISt17_Rb_tree_iteratorISB_EbEE4typeEOSH_:bb.a
  %i.aj = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i20) #40 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !201
  %i.am = icmp ult ptr %i.al, %i.m
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %i.aj, i64 24
  %.val10.i.i.i = load ptr, ptr %i.an, align 8, !tbaa !87
  %i.ao = icmp eq ptr %.val10.i.i.i, null         ; 2 uses
  %spec.select.i.i.i = select i1 %i.ao, ptr null, ptr %.08.lcssa.i.i.i20
  %spec.select22.i.i.i = select i1 %i.ao, ptr %i.aj, ptr %.08.lcssa.i.i.i20
  br label %.thread.i.i

bb.l:                                             ; preds = %bb.j
  %.01113.i16.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %.not14.i17.i.i.i = icmp eq ptr %.01113.i16.i.i.i, null
  br i1 %.not14.i17.i.i.i, label %._crit_edge.thread.i33.i.i.i, label %.lr.ph.i18.i.i.i

.lr.ph.i18.i.i.i:                                 ; preds = %bb.l, %.lr.ph.i18.i.i.i
  %.01115.i19.i.i.i = phi ptr [ %.011.i22.i.i.i, %.lr.ph.i18.i.i.i ], [ %.01113.i16.i.i.i, %bb.l ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01115.i19.i.i.i, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !201 ; 2 uses
  %i.ar = icmp ult ptr %i.m, %i.aq                ; 2 uses
  %.in.v.i20.i.i.i = select i1 %i.ar, i64 16, i64 24
  %.in.i21.i.i.i = getelementptr i8, ptr %.01115.i19.i.i.i, i64 %.in.v.i20.i.i.i
  %.011.i22.i.i.i = load ptr, ptr %.in.i21.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %.011.i22.i.i.i, null
  br i1 %.not.i23.i.i.i, label %._crit_edge.i24.i.i.i, label %.lr.ph.i18.i.i.i, !llvm.loop !542

._crit_edge.i24.i.i.i:                            ; preds = %.lr.ph.i18.i.i.i
  br i1 %i.ar, label %._crit_edge.thread.i33.i.i.i, label %bb.n

._crit_edge.thread.i33.i.i.i:                     ; preds = %._crit_edge.i24.i.i.i, %bb.l
  %.010.lcssa20.i34.i.i.i = phi ptr [ %.01115.i19.i.i.i, %._crit_edge.i24.i.i.i ], [ %i.b, %bb.l ] ; 4 uses
  %i.as = icmp eq ptr %.010.lcssa20.i34.i.i.i, %i.ah
  br i1 %i.as, label %.thread.i.i, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i33.i.i.i
  %i.at = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i34.i.i.i) #40 ; 2 uses
  %.phi.trans.insert29.i.i.i = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.pre30.i.i.i = load ptr, ptr %.phi.trans.insert29.i.i.i, align 8, !tbaa !201
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i24.i.i.i
  %i.au = phi ptr [ %.pre30.i.i.i, %bb.m ], [ %i.aq, %._crit_edge.i24.i.i.i ]
  %.010.lcssa19.i25.i.i.i = phi ptr [ %.010.lcssa20.i34.i.i.i, %bb.m ], [ %.01115.i19.i.i.i, %._crit_edge.i24.i.i.i ]
  %.sroa.01.0.i26.i.i.i = phi ptr [ %i.at, %bb.m ], [ %.01115.i19.i.i.i, %._crit_edge.i24.i.i.i ]
  %i.av = icmp ult ptr %i.au, %i.m
  br i1 %i.av, label %.thread.i.i, label %.thread25.i.i

bb.o:                                             ; preds = %bb.h
  %i.aw = icmp ult ptr %i.ae, %i.m
  br i1 %i.aw, label %bb.p, label %.thread25.i.i

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !67 ; 2 uses
  %i.az = icmp eq ptr %i.ay, %.08.lcssa.i.i.i20
  br i1 %i.az, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.08.lcssa.i.i.i20) #40 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !201
  %i.bd = icmp ult ptr %i.m, %i.bc
  br i1 %i.bd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr i8, ptr %.08.lcssa.i.i.i20, i64 24
  %.val.i.i.i = load ptr, ptr %i.be, align 8, !tbaa !87
  %i.bf = icmp eq ptr %.val.i.i.i, null           ; 2 uses
  %spec.select23.i.i.i = select i1 %i.bf, ptr null, ptr %i.ba
  %spec.select24.i.i.i = select i1 %i.bf, ptr %.08.lcssa.i.i.i20, ptr %i.ba
  br label %.thread.i.i

bb.s:                                             ; preds = %bb.q
  %.01113.i37.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !67 ; 2 uses
  %.not14.i38.i.i.i = icmp eq ptr %.01113.i37.i.i.i, null
  br i1 %.not14.i38.i.i.i, label %._crit_edge.thread.i54.i.i.i, label %.lr.ph.i39.i.i.i

.lr.ph.i39.i.i.i:                                 ; preds = %bb.s, %.lr.ph.i39.i.i.i
  %.01115.i40.i.i.i = phi ptr [ %.011.i43.i.i.i, %.lr.ph.i39.i.i.i ], [ %.01113.i37.i.i.i, %bb.s ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.01115.i40.i.i.i, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !201 ; 2 uses
  %i.bi = icmp ult ptr %i.m, %i.bh                ; 2 uses
  %.in.v.i41.i.i.i = select i1 %i.bi, i64 16, i64 24
  %.in.i42.i.i.i = getelementptr i8, ptr %.01115.i40.i.i.i, i64 %.in.v.i41.i.i.i
  %.011.i43.i.i.i = load ptr, ptr %.in.i42.i.i.i, align 8, !tbaa !67 ; 2 uses
  %.not.i44.i.i.i = icmp eq ptr %.011.i43.i.i.i, null
  br i1 %.not.i44.i.i.i, label %._crit_edge.i45.i.i.i, label %.lr.ph.i39.i.i.i, !llvm.loop !542

._crit_edge.i45.i.i.i:                            ; preds = %.lr.ph.i39.i.i.i
  br i1 %i.bi, label %._crit_edge.thread.i54.i.i.i, label %bb.u

._crit_edge.thread.i54.i.i.i:                     ; preds = %._crit_edge.i45.i.i.i, %bb.s
  %.010.lcssa20.i55.i.i.i = phi ptr [ %.01115.i40.i.i.i, %._crit_edge.i45.i.i.i ], [ %i.b, %bb.s ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val9.i56.i.i.i = load ptr, ptr %i.bj, align 8, !tbaa !66
  %i.bk = icmp eq ptr %.010.lcssa20.i55.i.i.i, %.val9.i56.i.i.i
  br i1 %i.bk, label %.thread.i.i, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i54.i.i.i
  %i.bl = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.010.lcssa20.i55.i.i.i) #40 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !201
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i45.i.i.i
  %i.bm = phi ptr [ %.pre.i.i.i, %bb.t ], [ %i.bh, %._crit_edge.i45.i.i.i ]
  %.010.lcssa19.i46.i.i.i = phi ptr [ %.010.lcssa20.i55.i.i.i, %bb.t ], [ %.01115.i40.i.i.i, %._crit_edge.i45.i.i.i ]
  %.sroa.01.0.i47.i.i.i = phi ptr [ %i.bl, %bb.t ], [ %.01115.i40.i.i.i, %._crit_edge.i45.i.i.i ]
  %i.bn = icmp ult ptr %i.bm, %i.m
  br i1 %i.bn, label %.thread.i.i, label %.thread25.i.i

bb.v:                                             ; preds = %bb.p, %bb.i
  %.sroa.021.2.i.i.i = phi ptr [ null, %bb.p ], [ %i.ah, %bb.i ] ; 2 uses
  %.sroa.12.2.i.i.i = phi ptr [ %i.ay, %bb.p ], [ %i.ah, %bb.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.12.2.i.i.i, null
  br i1 %.not.i.i, label %.thread25.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.v, %bb.u, %._crit_edge.thread.i54.i.i.i, %bb.r, %bb.n, %._crit_edge.thread.i33.i.i.i, %bb.k, %bb.g, %._crit_edge.thread.i.i.i.i, %bb.d
  %.sroa.12.2.i22.i.i = phi ptr [ %.sroa.12.2.i.i.i, %bb.v ], [ %.010.lcssa19.i25.i.i.i, %bb.n ], [ %.010.lcssa19.i.i.i.i, %bb.g ], [ %spec.select22.i.i.i, %bb.k ], [ %.010.lcssa20.i55.i.i.i, %._crit_edge.thread.i54.i.i.i ], [ %.010.lcssa20.i34.i.i.i, %._crit_edge.thread.i33.i.i.i ], [ %.010.lcssa20.i.i.i.i, %._crit_edge.thread.i.i.i.i ], [ %spec.select24.i.i.i, %bb.r ], [ %i.r, %bb.d ], [ %.010.lcssa19.i46.i.i.i, %bb.u ] ; 3 uses
  %.sroa.021.2.i21.i.i = phi ptr [ %.sroa.021.2.i.i.i, %bb.v ], [ null, %bb.n ], [ null, %bb.g ], [ %spec.select.i.i.i, %bb.k ], [ null, %._crit_edge.thread.i54.i.i.i ], [ null, %._crit_edge.thread.i33.i.i.i ], [ null, %._crit_edge.thread.i.i.i.i ], [ %spec.select23.i.i.i, %bb.r ], [ null, %bb.d ], [ null, %bb.u ]
  %.not.i.i9.i.i = icmp ne ptr %.sroa.021.2.i21.i.i, null
  %i.bo = icmp eq ptr %.sroa.12.2.i22.i.i, %i.b
  %or.cond.i.i.i.i = select i1 %.not.i.i9.i.i, i1 true, i1 %i.bo
  br i1 %or.cond.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.12.2.i22.i.i, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !201
  %i.br = icmp ult ptr %i.m, %i.bq
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread.i.i
  %i.bs = phi i1 [ %i.br, %bb.w ], [ true, %.thread.i.i ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.bs, ptr noundef nonnull %i.k, ptr noundef nonnull %.sroa.12.2.i22.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !81
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !81
  br label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE12emplace_hintIJS9_IS3_S6_EEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit

.thread25.i.i:                                    ; preds = %bb.v, %bb.u, %bb.o, %bb.n, %bb.g
  %.sroa.013.0.ph.i.i = phi ptr [ %.sroa.021.2.i.i.i, %bb.v ], [ %.sroa.01.0.i26.i.i.i, %bb.n ], [ %.sroa.01.0.i.i.i.i, %bb.g ], [ %.sroa.01.0.i47.i.i.i, %bb.u ], [ %.08.lcssa.i.i.i20, %bb.o ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 224) #38
  br label %_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE12emplace_hintIJS9_IS3_S6_EEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit

_ZNSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE12emplace_hintIJS9_IS3_S6_EEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_.exit: ; preds = %bb.b, %.thread25.i.i, %bb.x
  %.sroa.018.0 = phi ptr [ %.sroa.013.0.ph.i.i, %.thread25.i.i ], [ %i.k, %bb.x ], [ %.19.i.i.i, %bb.b ]
  ret ptr %.sroa.018.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal fastcc void @_ZN16DeformationModel6GridExIN12_GLOBAL__N_14GridEE21getBilinearGeocentricEiiddddddddddddRdS4_S4_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(184) %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12, double noundef %13, double noundef %14, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %15, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %16, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %17) unnamed_addr #25 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !546
  %.not = icmp eq i32 %1, %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %.not71 = icmp eq i32 %2, %i.d                  ; 2 uses
  %or.cond = select i1 %.not, i1 %.not71, i1 false
  br i1 %or.cond, label %._crit_edge80, label %bb.b

._crit_edge80:                                    ; preds = %bb.a
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre82 = load double, ptr %.phi.trans.insert81, align 8, !tbaa !547
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.pre84 = load double, ptr %.phi.trans.insert83, align 8, !tbaa !548
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre86 = load double, ptr %.phi.trans.insert85, align 8, !tbaa !549
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.pre88 = load double, ptr %.phi.trans.insert87, align 8, !tbaa !550
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !546
  br i1 %.not71, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !551
  %.phi.trans.insert74 = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.pre75 = load double, ptr %.phi.trans.insert74, align 8, !tbaa !552
  %.phi.trans.insert76 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.e = load <2 x double>, ptr %.phi.trans.insert76, align 8, !tbaa !61
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !553    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !554
  %i.i = sitofp i32 %2 to double
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load double, ptr %i.j, align 8, !tbaa !213
  %i.l = tail call double @llvm.fmuladd.f64(double %i.i, double %i.k, double %i.h) ; 2 uses
  %i.m = tail call double @sin(double noundef %i.l) #37 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.m, ptr %i.n, align 8, !tbaa !551
  %18 = tail call double @cos(double noundef %i.l) #37 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %18, ptr %i.o, align 8, !tbaa !552
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %19 = load <2 x double>, ptr %i.p, align 8
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load double, ptr %20, align 8, !tbaa !555 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.r = fneg double %i.q
  %i.s = insertelement <2 x double> poison, double %18, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.m, i64 1 ; 2 uses
  %i.u = insertelement <2 x double> poison, double %i.q, i64 0
  %i.v = insertelement <2 x double> %i.u, double %i.r, i64 1
  %i.w = fmul <2 x double> %i.t, %i.v
  %i.x = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.y = shufflevector <2 x double> %19, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.y, <2 x double> %i.w) ; 2 uses
  store <2 x double> %i.z, ptr %21, align 8, !tbaa !61
  store i32 %2, ptr %i.c, align 4, !tbaa !556
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.aa = phi double [ %.pre75, %._crit_edge ], [ %18, %bb.c ] ; 2 uses
  %i.ab = phi double [ %.pre, %._crit_edge ], [ %i.m, %bb.c ] ; 2 uses
  %i.ac = phi <2 x double> [ %i.e, %._crit_edge ], [ %i.z, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = fmul double %4, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load <2 x double>, ptr %i.ad, align 8, !tbaa !61 ; 6 uses
  %i.ah = insertelement <2 x double> poison, double %i.ae, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = insertelement <2 x double> poison, double %3, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul double %4, %i.aa
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.al, ptr %i.am, align 8, !tbaa !557
  %i.an = extractelement <2 x double> %i.ac, i64 0 ; 2 uses
  %i.ao = fmul double %6, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aq = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = insertelement <2 x double> poison, double %5, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = extractelement <2 x double> %i.ac, i64 1 ; 2 uses
  %i.av = fmul double %6, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.av, ptr %i.aw, align 8, !tbaa !558
  %i.ax = fmul double %8, %i.ab
  %i.ay = fneg double %7
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = fneg <2 x double> %i.ag                 ; 3 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> %i.ag, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bc = fmul <2 x double> %i.ai, %i.bb
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ak, <2 x double> %i.ag, <2 x double> %i.bc) ; 2 uses
  store <2 x double> %i.bd, ptr %i.af, align 8, !tbaa !61
  %i.be = fmul <2 x double> %i.ar, %i.bb
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.ag, <2 x double> %i.be) ; 2 uses
  store <2 x double> %i.bf, ptr %i.ap, align 8, !tbaa !61
  %i.bg = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fmul <2 x double> %i.bh, %i.bi
  %i.bk = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %7, i64 1
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.ag, <2 x double> %i.bj) ; 2 uses
  store <2 x double> %i.bm, ptr %i.az, align 8, !tbaa !61
  %i.bn = fmul double %8, %i.aa
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %i.bn, ptr %i.bo, align 8, !tbaa !559
  %i.bp = fmul double %10, %i.an
  %i.bq = fneg double %9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bs = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bu = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bv = fmul <2 x double> %i.bt, %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %9, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.ag, <2 x double> %i.bv) ; 2 uses
  store <2 x double> %i.by, ptr %i.br, align 8, !tbaa !61
  %i.bz = fmul double %10, %i.au
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.bz, ptr %i.ca, align 8, !tbaa !560
  %i.cb = extractelement <2 x double> %i.bd, i64 0
  %i.cc = extractelement <2 x double> %i.bf, i64 0
  %i.cd = extractelement <2 x double> %i.bm, i64 0
  %i.ce = extractelement <2 x double> %i.by, i64 0
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge80, %bb.d
  %i.cf = phi double [ %.pre88, %._crit_edge80 ], [ %i.ce, %bb.d ]
  %i.cg = phi double [ %.pre86, %._crit_edge80 ], [ %i.cd, %bb.d ]
  %i.ch = phi double [ %.pre84, %._crit_edge80 ], [ %i.cc, %bb.d ]
  %i.ci = phi double [ %.pre82, %._crit_edge80 ], [ %i.cb, %bb.d ]
  %i.cj = fmul double %12, %i.ch
  %i.ck = tail call double @llvm.fmuladd.f64(double %11, double %i.ci, double %i.cj)
  %i.cl = tail call double @llvm.fmuladd.f64(double %13, double %i.cg, double %i.ck)
  %i.cm = tail call double @llvm.fmuladd.f64(double %14, double %i.cf, double %i.cl)
  store double %i.cm, ptr %15, align 8, !tbaa !61
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.co = load double, ptr %i.cn, align 8, !tbaa !561
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !562
  %i.cr = fmul double %12, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %11, double %i.co, double %i.cr)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !563
  %i.cv = tail call double @llvm.fmuladd.f64(double %13, double %i.cu, double %i.cs)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !564
  %i.cy = tail call double @llvm.fmuladd.f64(double %14, double %i.cx, double %i.cv)
  store double %i.cy, ptr %16, align 8, !tbaa !61
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.da = load double, ptr %i.cz, align 8, !tbaa !557
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dc = load double, ptr %i.db, align 8, !tbaa !558
  %i.dd = fmul double %12, %i.dc
  %i.de = tail call double @llvm.fmuladd.f64(double %11, double %i.da, double %i.dd)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.dg = load double, ptr %i.df, align 8, !tbaa !559
  %i.dh = tail call double @llvm.fmuladd.f64(double %13, double %i.dg, double %i.de)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.dj = load double, ptr %i.di, align 8, !tbaa !560
  %i.dk = tail call double @llvm.fmuladd.f64(double %14, double %i.dj, double %i.dh)
  store double %i.dk, ptr %17, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #20

declare void @_ZN5osgeo4proj19GenericShiftGridSet4openEP6pj_ctxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.139") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #21

declare void @_Z6pj_logP6pj_ctxiPKcz(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #21

declare noundef ptr @_ZNK5osgeo4proj19GenericShiftGridSet6gridAtEdd(ptr noundef nonnull align 8 dereferenceable(96), double noundef, double noundef) local_unnamed_addr #21

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #24

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #24

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #26

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZNK12_GLOBAL__N_14Grid15checkHorizontalERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !208, !range !92, !noundef !93
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(144) %i.e) ; 2 uses
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !206
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !207
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  tail call void (ptr, i32, ptr, ...) @_Z6pj_logP6pj_ctxiPKcz(ptr noundef %i.p, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef %i.s)
  br label %.thread

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not = xor i1 %spec.select, true
  %or.cond = select i1 %.123, i1 %.121, i1 false
  %or.cond28 = select i1 %.not, i1 true, i1 %or.cond
  br i1 %or.cond28, label %bb.g, label %bb.f

bb.e:                                             ; preds = %.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.01744 = phi i32 [ 0, %.preheader ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.01843 = phi i1 [ false, %.preheader ], [ %spec.select, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.02042 = phi i1 [ false, %.preheader ], [ %.121, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  %.02241 = phi i1 [ false, %.preheader ], [ %.123, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #37
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !207  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(144) %i.t, i32 noundef %.01744)
  %i.x = load i64, ptr %i.k, align 8, !tbaa !30   ; 3 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !26    ; 6 uses
  switch i64 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30.thread38 [
    i64 11, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 12, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit30
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
end_hunk_1
begin_hunk_2_@llvm.fmuladd.v2f64
!147 = !{!138, !21, i64 152}
!148 = !{!"_ZTSSt10_Head_baseILm0EPN16DeformationModel10MasterFileELb0EE", !38, i64 0}
!149 = !{!"_ZTSSt11_Tuple_implILm0EJPN16DeformationModel10MasterFileESt14default_deleteIS1_EEE", !148, i64 0}
!150 = !{!"_ZTSSt5tupleIJPN16DeformationModel10MasterFileESt14default_deleteIS1_EEE", !149, i64 0}
!151 = !{!"_ZTSSt15__uniq_ptr_implIN16DeformationModel10MasterFileESt14default_deleteIS1_EE", !150, i64 0}
!152 = !{!"_ZTSSt15__uniq_ptr_dataIN16DeformationModel10MasterFileESt14default_deleteIS1_ELb1ELb1EE", !151, i64 0}
!153 = !{!"_ZTSSt10unique_ptrIN16DeformationModel10MasterFileESt14default_deleteIS1_EE", !152, i64 0}
!154 = !{!"p1 _ZTSSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EE", !21, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!156 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE12_Vector_implE", !155, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE", !156, i64 0}
!158 = !{!"_ZTSSt6vectorISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EESaIS9_EE", !157, i64 0}
!159 = !{!"_ZTSN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS1_7GridSetENS1_14EvaluatorIfaceEEE", !153, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !126, i64 32, !126, i64 33, !126, i64 34, !158, i64 40}
!160 = !{!159, !31, i64 24}
!161 = !{!159, !126, i64 32}
!162 = !{!159, !126, i64 33}
!163 = !{!159, !126, i64 34}
!164 = !{!69, !68, i64 0}
!165 = !{!155, !154, i64 0}
!166 = !{!155, !154, i64 8}
!167 = !{!"p1 _ZTSN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEEE", !21, i64 0}
!168 = !{!167, !167, i64 0}
!169 = !{!155, !154, i64 16}
!170 = !{!"_ZTSN16DeformationModel16DisplacementTypeE", !17, i64 0}
!171 = !{!"p1 _ZTSN12_GLOBAL__N_17GridSetE", !21, i64 0}
!172 = !{!"_ZTSSt10_Head_baseILm0EPN12_GLOBAL__N_17GridSetELb0EE", !171, i64 0}
!173 = !{!"_ZTSSt11_Tuple_implILm0EJPN12_GLOBAL__N_17GridSetESt14default_deleteIS1_EEE", !172, i64 0}
!174 = !{!"_ZTSSt5tupleIJPN12_GLOBAL__N_17GridSetESt14default_deleteIS1_EEE", !173, i64 0}
!175 = !{!"_ZTSSt15__uniq_ptr_implIN12_GLOBAL__N_17GridSetESt14default_deleteIS1_EE", !174, i64 0}
!176 = !{!"_ZTSSt15__uniq_ptr_dataIN12_GLOBAL__N_17GridSetESt14default_deleteIS1_ELb1ELb1EE", !175, i64 0}
!177 = !{!"_ZTSSt10unique_ptrIN12_GLOBAL__N_17GridSetESt14default_deleteIS1_EE", !176, i64 0}
!178 = !{!"_ZTSSt4lessIPKN12_GLOBAL__N_14GridEE"}
!179 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKN12_GLOBAL__N_14GridEEE", !178, i64 0}
!180 = !{!"_ZTSNSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !179, i64 0, !65, i64 8}
!181 = !{!"_ZTSSt8_Rb_treeIPKN12_GLOBAL__N_14GridESt4pairIKS3_N16DeformationModel6GridExIS1_EEESt10_Select1stIS9_ESt4lessIS3_ESaIS9_EE", !180, i64 0}
!182 = !{!"_ZTSSt3mapIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EESt4lessIS3_ESaISt4pairIKS3_S6_EEE", !181, i64 0}
!183 = !{!"_ZTSN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS1_7GridSetEEE", !68, i64 0, !126, i64 8, !170, i64 12, !177, i64 16, !182, i64 24, !31, i64 72, !31, i64 80}
!184 = !{!183, !126, i64 8}
!185 = !{!183, !170, i64 12}
!186 = !{!141, !141, i64 0}
!187 = !{!154, !154, i64 0}
!188 = !{!171, !171, i64 0}
!189 = !{!"p1 _ZTSN5osgeo4proj19GenericShiftGridSetE", !21, i64 0}
!190 = !{!189, !189, i64 0}
!191 = !{i64 0, i64 32, !29}
!192 = !{!107, !106, i64 0}
!193 = !{!99, !98, i64 0}
!194 = !{!"_ZTSSt9exception"}
!195 = !{!"_ZTSSt12__cow_string", !17, i64 0}
!196 = !{!"_ZTSSt13runtime_error", !194, i64 0, !195, i64 8}
!197 = !{!"_ZTSN13proj_nlohmann6detail9exceptionE", !194, i64 0, !18, i64 8, !196, i64 16}
!198 = !{!197, !18, i64 8}
!199 = !{ptr @_ZN13proj_nlohmann6detail9exceptionD2Ev}
!200 = !{!"p1 _ZTSN12_GLOBAL__N_14GridE", !21, i64 0}
!201 = !{!200, !200, i64 0}
!202 = !{i64 8}
!203 = !{!"p1 _ZTSN5osgeo4proj16GenericShiftGridE", !21, i64 0}
!204 = !{!"_ZTSN16DeformationModel13GridPrototypeE", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24, !18, i64 32, !18, i64 36}
!205 = !{!"_ZTSN12_GLOBAL__N_14GridE", !204, i64 0, !116, i64 40, !203, i64 48, !126, i64 56, !126, i64 57, !18, i64 60, !18, i64 64, !18, i64 68}
!206 = !{!205, !116, i64 40}
!207 = !{!205, !203, i64 48}
!208 = !{!205, !126, i64 56}
!209 = !{!205, !126, i64 57}
!210 = !{!205, !18, i64 60}
!211 = !{!205, !18, i64 64}
!212 = !{!205, !18, i64 68}
!213 = !{!204, !31, i64 24}
!214 = !{!"_ZTSN16DeformationModel6GridExIN12_GLOBAL__N_14GridEEE", !200, i64 0, !126, i64 8, !31, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !18, i64 48, !18, i64 52, !31, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112, !31, i64 120, !31, i64 128, !31, i64 136, !31, i64 144, !31, i64 152, !31, i64 160, !31, i64 168, !31, i64 176}
!215 = !{!126, !126, i64 0}
!216 = !{!"float", !17, i64 0}
!217 = !{!216, !216, i64 0}
!218 = !{!21, !21, i64 0}
!219 = !{!"_ZTSN13proj_nlohmann6detail10lexer_baseINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEE10token_typeE", !17, i64 0}
!220 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !22, i64 0}
!221 = !{!"_ZTSN13proj_nlohmann6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEE", !220, i64 0, !220, i64 8}
!222 = !{!"_ZTSN13proj_nlohmann6detail10position_tE", !24, i64 0, !24, i64 8, !24, i64 16}
!223 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !77, i64 0}
!224 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !223, i64 0}
!225 = !{!"_ZTSSt6vectorIcSaIcEE", !224, i64 0}
!226 = !{!"_ZTSN13proj_nlohmann6detail5lexerINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEEE", !221, i64 0, !126, i64 16, !18, i64 20, !126, i64 24, !222, i64 32, !225, i64 56, !25, i64 80, !22, i64 112, !24, i64 120, !24, i64 128, !31, i64 136, !18, i64 144}
!227 = !{!"_ZTSN13proj_nlohmann6detail6parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEENS0_22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcSA_EEEEEE", !75, i64 0, !219, i64 32, !226, i64 40, !126, i64 192}
!228 = !{!227, !126, i64 192}
!229 = !{!227, !219, i64 32}
!230 = !{i64 0, i64 8, !28, i64 8, i64 8, !28, i64 16, i64 8, !28}
!231 = !{!"any p2 pointer", !21, i64 0}
!232 = !{!"p2 _ZTSN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEEE", !231, i64 0}
!233 = !{!"_ZTSNSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE17_Vector_impl_dataE", !232, i64 0, !232, i64 8, !232, i64 16}
!234 = !{!"_ZTSNSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE12_Vector_implE", !233, i64 0}
!235 = !{!"_ZTSSt12_Vector_baseIPN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES3_IhSaIhEEEESaISE_EE", !234, i64 0}
!236 = !{!"_ZTSSt6vectorIPN13proj_nlohmann10basic_jsonISt3mapS_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS0_14adl_serializerES_IhSaIhEEEESaISD_EE", !235, i64 0}
!237 = !{!"p1 long", !21, i64 0}
!238 = !{!"_ZTSSt18_Bit_iterator_base", !237, i64 0, !18, i64 8}
!239 = !{!"_ZTSSt13_Bit_iterator", !238, i64 0}
!240 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !239, i64 0, !239, i64 16, !237, i64 32}
!241 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !240, i64 0}
!242 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !241, i64 0}
!243 = !{!"_ZTSSt6vectorIbSaIbEE", !242, i64 0}
!244 = !{!"_ZTSN13proj_nlohmann6detail28json_sax_dom_callback_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !49, i64 0, !236, i64 8, !243, i64 32, !243, i64 72, !49, i64 112, !126, i64 120, !75, i64 128, !126, i64 160, !41, i64 168}
!245 = !{!244, !126, i64 120}
!246 = !{!244, !126, i64 160}
!247 = !{!"_ZTSN13proj_nlohmann6detail11parse_errorE", !197, i64 0, !24, i64 32}
!248 = !{!247, !24, i64 32}
!249 = !{!"_ZTSN13proj_nlohmann6detail19json_sax_dom_parserINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !49, i64 0, !236, i64 8, !49, i64 32, !126, i64 40, !126, i64 41}
!250 = !{!249, !126, i64 41}
!251 = !{!249, !126, i64 40}
!252 = !{!233, !232, i64 0}
!253 = !{!233, !232, i64 16}
!254 = !{!226, !126, i64 16}
!255 = !{!226, !18, i64 20}
!256 = !{!226, !126, i64 24}
!257 = !{!226, !22, i64 112}
!258 = !{!226, !18, i64 144}
!259 = !{!226, !24, i64 32}
!260 = !{!226, !24, i64 40}
!261 = !{!226, !24, i64 48}
!262 = !{!77, !22, i64 8}
!263 = !{!220, !22, i64 0}
!264 = !{!226, !24, i64 128}
!265 = !{!226, !24, i64 120}
!266 = !{!238, !237, i64 0}
!267 = !{!240, !237, i64 32}
!268 = !{!238, !18, i64 8}
!269 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!270 = !{!226, !31, i64 136}
!271 = !{!"std::nullptr_t", !17, i64 0}
!272 = !{!271, !271, i64 0}
!273 = !{!233, !232, i64 8}
!274 = !{!232, !232, i64 0}
!275 = !{!249, !49, i64 32}
!276 = !{!"_ZTSN13proj_nlohmann6detail13parse_event_tE", !17, i64 0}
!277 = !{!276, !276, i64 0}
!278 = !{!"_ZTSN13proj_nlohmann6detail9iter_implINS_10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES4_IhSaIhEEEEEE", !49, i64 0, !54, i64 8}
!279 = !{!278, !49, i64 0}
!280 = !{!244, !49, i64 112}
!281 = !{!244, !49, i64 0}
!282 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!283 = !{!282, !282, i64 0}
!284 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN13proj_nlohmann10basic_jsonISt3mapSt6vectorS6_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEEE", !21, i64 0}
!285 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N13proj_nlohmann10basic_jsonISt3mapSt6vectorS5_blmdSaNS8_14adl_serializerESB_IhSaIhEEEEESt10_Select1stISG_ESt4lessIvESaISG_EE10_Auto_nodeE", !84, i64 0, !284, i64 8}
!286 = !{!285, !284, i64 8}
!287 = !{!249, !49, i64 0}
!288 = distinct !{!288, !35, !36, !37}
!289 = distinct !{!289, !35, !37, !36}
!290 = distinct !{!290, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!291 = distinct !{!291, !290, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!292 = distinct !{!292, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv"}
!293 = distinct !{!293, !292, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0"}
!294 = distinct !{!294, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!295 = distinct !{!295, !294, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!296 = distinct !{!296, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!297 = distinct !{!297, !296, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0"}
!298 = distinct !{!298, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!299 = distinct !{!299, !298, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!300 = distinct !{!300, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv"}
!301 = distinct !{!301, !300, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0"}
!302 = distinct !{!302, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!303 = distinct !{!303, !302, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!304 = distinct !{!304, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!305 = distinct !{!305, !304, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!306 = distinct !{!306, !302, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!307 = distinct !{!307, !304, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0"}
!308 = distinct !{!308, !302, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!309 = distinct !{!309, !304, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!310 = distinct !{!310, !302, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!311 = distinct !{!311, !304, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!312 = !{!291}
!313 = !{!293}
!314 = !{!293, !291}
!315 = !{!295}
!316 = !{!297}
!317 = !{!297, !295}
!318 = !{!299}
!319 = !{!301}
!320 = !{!301, !299}
!321 = !{!305, !303}
!322 = !{!307, !306}
!323 = !{!309, !308}
!324 = !{!306}
!325 = !{!307}
!326 = !{!307, !306, !311, !310}
!327 = distinct !{!327, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6parserINS_6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS8_EEEEEENSE_6parserISC_T_EESN_St8functionIFbiNSE_13parse_event_tERSC_EEbb"}
!328 = distinct !{!328, !327, !"_ZN13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6parserINS_6detail22iterator_input_adapterIN9__gnu_cxx17__normal_iteratorIPKcS8_EEEEEENSE_6parserISC_T_EESN_St8functionIFbiNSE_13parse_event_tERSC_EEbb: argument 0"}
!329 = !{!328}
!330 = !{i64 0, i64 16, !29}
!331 = distinct !{null, null}
!332 = distinct !{null, null, null, null, null, null}
!333 = distinct !{!333, !35}
!334 = distinct !{!334, !35}
!335 = distinct !{null, null}
!336 = distinct !{null, null, null}
!337 = distinct !{null, null, null, null, null, null, null}
!338 = distinct !{!338, !35}
!339 = distinct !{null, null, null, null, null, null}
!340 = distinct !{null, null, null, null, null, null, null, null, null, null}
!341 = !{!65, !63, i64 0}
!342 = !{!94, !22, i64 8}
!343 = !{!98, !98, i64 0}
!344 = !{!102, !31, i64 0}
!345 = !{!102, !31, i64 8}
!346 = !{!102, !31, i64 16}
!347 = !{!102, !31, i64 24}
!348 = distinct !{null, null, null, null}
!349 = distinct !{null, null, null, null}
!350 = distinct !{null, null}
!351 = distinct !{null, null, null, null}
!352 = distinct !{null, null}
!353 = distinct !{null, null, null, null}
!354 = distinct !{null, null}
!355 = distinct !{!355, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv"}
!356 = distinct !{!356, !355, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE5beginEv: argument 0"}
!357 = distinct !{!357, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv"}
!358 = distinct !{!358, !357, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE6cbeginEv: argument 0"}
!359 = distinct !{!359, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv"}
!360 = distinct !{!360, !359, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!361 = distinct !{!361, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv"}
!362 = distinct !{!362, !361, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!363 = distinct !{!363, !359, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0"}
!364 = distinct !{!364, !361, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0"}
!365 = distinct !{!365, !359, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!366 = distinct !{!366, !361, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!367 = distinct !{!367, !359, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3endEv: argument 0:thread"}
!368 = distinct !{!368, !361, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE4cendEv: argument 0:thread"}
!369 = distinct !{null, null, null, null}
!370 = distinct !{null, null}
!371 = distinct !{null, null, null, null}
!372 = distinct !{null, null}
!373 = !{!"_ZTSSt10_Head_baseILm0EPN16DeformationModel9Component12TimeFunctionELb0EE", !72, i64 0}
!374 = !{!373, !72, i64 0}
!375 = !{!"_ZTSN16DeformationModel9Component12SpatialModelE", !25, i64 0, !25, i64 32, !25, i64 64, !25, i64 96}
!376 = !{!"_ZTSSt11_Tuple_implILm0EJPN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EEE", !373, i64 0}
!377 = !{!"_ZTSSt5tupleIJPN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EEE", !376, i64 0}
!378 = !{!"_ZTSSt15__uniq_ptr_implIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EE", !377, i64 0}
!379 = !{!"_ZTSSt15__uniq_ptr_dataIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_ELb1ELb1EE", !378, i64 0}
!380 = !{!"_ZTSSt10unique_ptrIN16DeformationModel9Component12TimeFunctionESt14default_deleteIS2_EE", !379, i64 0}
!381 = !{!"_ZTSN16DeformationModel9ComponentE", !25, i64 0, !102, i64 32, !25, i64 96, !25, i64 128, !31, i64 160, !31, i64 168, !375, i64 176, !380, i64 304}
!382 = !{!381, !31, i64 160}
!383 = !{!381, !31, i64 168}
!384 = !{!356}
!385 = !{!358}
!386 = !{!358, !356}
!387 = !{!362, !360}
!388 = !{!364, !363}
!389 = !{!366, !365}
!390 = !{!363}
!391 = !{!364}
!392 = !{!364, !363, !368, !367}
!393 = distinct !{null, null}
!394 = distinct !{!394, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!395 = distinct !{!395, !394, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!396 = !{!395}
!397 = distinct !{!397, !35}
!398 = !{!106, !106, i64 0}
!399 = !{!138, !22, i64 8}
!400 = !{!138, !22, i64 16}
!401 = !{!138, !18, i64 360}
!402 = distinct !{!402, !"_ZSt19__relocate_object_aISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_"}
!403 = distinct !{!403, !402, !"_ZSt19__relocate_object_aISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!404 = distinct !{!404, !402, !"_ZSt19__relocate_object_aISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!405 = distinct !{!405, !"LVerDomain"}
!406 = distinct !{!406, !405}
!407 = distinct !{!407, !405}
!408 = distinct !{!408, !35, !36, !37}
!409 = distinct !{!409, !35, !36}
!410 = distinct !{!410, !"_ZSt19__relocate_object_aISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_"}
!411 = distinct !{!411, !410, !"_ZSt19__relocate_object_aISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 0"}
!412 = distinct !{!412, !410, !"_ZSt19__relocate_object_aISt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS3_7GridSetEEESt14default_deleteIS6_EES9_SaIS9_EEvPT_PT0_RT1_: argument 1"}
!413 = distinct !{!413, !"LVerDomain"}
!414 = distinct !{!414, !413}
!415 = distinct !{!415, !413}
!416 = distinct !{!416, !35, !36, !37}
!417 = distinct !{!417, !35, !36}
!418 = distinct !{null, null}
!419 = !{!138, !116, i64 0}
!420 = !{!142, !141, i64 0}
!421 = !{!138, !21, i64 160}
!422 = !{!138, !117, i64 24}
!423 = !{!"p1 _ZTSN5osgeo4proj4FileE", !21, i64 0}
!424 = !{!423, !423, i64 0}
!425 = !{!403}
!426 = !{!404}
!427 = !{!404, !406}
!428 = !{!403, !407}
!429 = !{!411}
!430 = !{!412}
!431 = !{!412, !414}
!432 = !{!411, !415}
!433 = !{!138, !21, i64 136}
!434 = !{!138, !21, i64 144}
!435 = distinct !{null, null, null, null, null, null, null, null}
!436 = !{!"_ZTSSt11_Tuple_implILm0EJPN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEESt14default_deleteIS6_EEE", !142, i64 0}
!437 = !{!"_ZTSSt5tupleIJPN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEESt14default_deleteIS6_EEE", !436, i64 0}
!438 = !{!"_ZTSSt15__uniq_ptr_implIN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEESt14default_deleteIS6_EE", !437, i64 0}
!439 = !{!"_ZTSSt15__uniq_ptr_dataIN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEESt14default_deleteIS6_ELb1ELb1EE", !438, i64 0}
!440 = !{!"_ZTSSt10unique_ptrIN16DeformationModel9EvaluatorIN12_GLOBAL__N_14GridENS2_7GridSetENS2_14EvaluatorIfaceEEESt14default_deleteIS6_EE", !439, i64 0}
!441 = !{!"_ZTSN12_GLOBAL__N_112defmodelDataE", !440, i64 0, !143, i64 8}
!442 = !{!441, !116, i64 8}
!443 = distinct !{!443, !35}
!444 = !{ptr @_ZN16DeformationModel16ParsingExceptionD2Ev}
!445 = !{ptr @_ZN16DeformationModel22UnimplementedExceptionD2Ev}
!446 = !{ptr @_ZN16DeformationModel18EvaluatorExceptionD2Ev}
!447 = !{ptr @_ZN16DeformationModel9Component20VelocityTimeFunctionD2Ev}
!448 = !{ptr @_ZN16DeformationModel9Component20VelocityTimeFunctionD2Ev, ptr @_ZN16DeformationModel9Component12TimeFunctionD2Ev}
!449 = !{ptr @_ZN16DeformationModel9Component16StepTimeFunctionD2Ev}
!450 = !{ptr @_ZN16DeformationModel9Component16StepTimeFunctionD2Ev, ptr @_ZN16DeformationModel9Component12TimeFunctionD2Ev}
!451 = !{ptr @_ZN16DeformationModel9Component23ReverseStepTimeFunctionD2Ev}
!452 = !{ptr @_ZN16DeformationModel9Component23ReverseStepTimeFunctionD2Ev, ptr @_ZN16DeformationModel9Component12TimeFunctionD2Ev}
!453 = distinct !{!453, !35}
!454 = !{ptr @_ZN16DeformationModel9Component23ExponentialTimeFunctionD2Ev}
!455 = !{ptr @_ZN16DeformationModel9Component23ExponentialTimeFunctionD2Ev, ptr @_ZN16DeformationModel9Component12TimeFunctionD2Ev}
!456 = distinct !{!456, !35}
!457 = distinct !{!457, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v"}
!458 = distinct !{!458, !457, !"_ZNK13proj_nlohmann10basic_jsonISt3mapSt6vectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEblmdSaNS_14adl_serializerES2_IhSaIhEEE3getIS8_S8_TnNSt9enable_ifIXaaaantsr6detail13is_basic_jsonIT0_EE5valuesr6detail13has_from_jsonISC_SF_EE5valuentsr6detail25has_non_default_from_jsonISC_SF_EE5valueEiE4typeELi0EEESF_v: argument 0"}
!459 = !{!458}
!460 = distinct !{!460, !35}
!461 = distinct !{!461, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!462 = distinct !{!462, !461, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!463 = !{!462}
!464 = distinct !{!464, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!465 = distinct !{!465, !464, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!466 = distinct !{!466, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!467 = distinct !{!467, !466, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!468 = distinct !{!468, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!469 = distinct !{!469, !468, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!470 = distinct !{!470, !"_ZNSt7__cxx119to_stringEi"}
!471 = distinct !{!471, !470, !"_ZNSt7__cxx119to_stringEi: argument 0"}
!472 = distinct !{!472, !35}
!473 = distinct !{!473, !35}
!474 = distinct !{!474, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!475 = distinct !{!475, !474, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!476 = distinct !{!476, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!477 = distinct !{!477, !476, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!478 = !{!465}
!479 = !{!467, !465}
!480 = !{!469}
!481 = !{!471}
!482 = !{!475}
!483 = !{!477}
!484 = distinct !{null, null, null, ptr @_ZNSt10unique_ptrIN16DeformationModel11ComponentExIN12_GLOBAL__N_14GridENS2_7GridSetEEESt14default_deleteIS5_EED2Ev, null, null, null, null, null, null, null}
!485 = distinct !{!485, !35}
!486 = distinct !{null, null, null, null, null, null, null}
!487 = distinct !{!487, !35}
!488 = distinct !{!488, !35}
!489 = distinct !{!489, !35}
!490 = distinct !{!490, !35}
!491 = distinct !{null}
!492 = distinct !{!492, !"_ZN12_GLOBAL__N_114EvaluatorIface4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!493 = distinct !{!493, !492, !"_ZN12_GLOBAL__N_114EvaluatorIface4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!494 = distinct !{null, null, null}
!495 = distinct !{null, null, null, null, null, null, null, null}
!496 = distinct !{!496, !35}
!497 = distinct !{!497, !35}
!498 = distinct !{null}
!499 = distinct !{null}
!500 = !{!183, !68, i64 0}
!501 = !{!183, !31, i64 72}
!502 = !{!183, !31, i64 80}
!503 = !{!493}
!504 = !{!"_ZTSSt10_Head_baseILm0EPN5osgeo4proj19GenericShiftGridSetELb0EE", !189, i64 0}
!505 = !{!"_ZTSSt11_Tuple_implILm0EJPN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EEE", !504, i64 0}
!506 = !{!"_ZTSSt5tupleIJPN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EEE", !505, i64 0}
!507 = !{!"_ZTSSt15__uniq_ptr_implIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EE", !506, i64 0}
!508 = !{!"_ZTSSt15__uniq_ptr_dataIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_ELb1ELb1EE", !507, i64 0}
!509 = !{!"_ZTSSt10unique_ptrIN5osgeo4proj19GenericShiftGridSetESt14default_deleteIS2_EE", !508, i64 0}
!510 = !{!"_ZTSSt4lessIPKN5osgeo4proj16GenericShiftGridEE"}
!511 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIPKN5osgeo4proj16GenericShiftGridEEE", !510, i64 0}
!512 = !{!"_ZTSNSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE13_Rb_tree_implISH_Lb1EEE", !511, i64 0, !65, i64 8}
!513 = !{!"_ZTSSt8_Rb_treeIPKN5osgeo4proj16GenericShiftGridESt4pairIKS4_St10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS9_EEESt10_Select1stISD_ESt4lessIS4_ESaISD_EE", !512, i64 0}
!514 = !{!"_ZTSSt3mapIPKN5osgeo4proj16GenericShiftGridESt10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS7_EESt4lessIS4_ESaISt4pairIKS4_SA_EEE", !513, i64 0}
!515 = !{!"_ZTSN12_GLOBAL__N_17GridSetE", !116, i64 0, !509, i64 8, !514, i64 16}
!516 = !{!515, !116, i64 0}
!517 = !{!203, !203, i64 0}
!518 = !{!"_ZTSSt10_Head_baseILm0EPN12_GLOBAL__N_14GridELb0EE", !200, i64 0}
!519 = !{!"_ZTSSt11_Tuple_implILm0EJPN12_GLOBAL__N_14GridESt14default_deleteIS1_EEE", !518, i64 0}
!520 = !{!"_ZTSSt5tupleIJPN12_GLOBAL__N_14GridESt14default_deleteIS1_EEE", !519, i64 0}
!521 = !{!"_ZTSSt15__uniq_ptr_implIN12_GLOBAL__N_14GridESt14default_deleteIS1_EE", !520, i64 0}
!522 = !{!"_ZTSSt15__uniq_ptr_dataIN12_GLOBAL__N_14GridESt14default_deleteIS1_ELb1ELb1EE", !521, i64 0}
!523 = !{!"_ZTSSt10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS1_EE", !522, i64 0}
!524 = !{!"_ZTSSt4pairIKPKN5osgeo4proj16GenericShiftGridESt10unique_ptrIN12_GLOBAL__N_14GridESt14default_deleteIS8_EEE", !203, i64 0, !523, i64 8}
!525 = !{!524, !203, i64 0}
!526 = !{!204, !18, i64 32}
!527 = !{!204, !18, i64 36}
!528 = !{!204, !31, i64 16}
!529 = !{!"_ZTSSt4pairIPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EEE", !200, i64 0, !214, i64 8}
!530 = !{!529, !200, i64 0}
!531 = !{!214, !126, i64 8}
!532 = !{!138, !21, i64 120}
!533 = !{!"_ZTS6PJ_XYZ", !31, i64 0, !31, i64 8, !31, i64 16}
!534 = !{!533, !31, i64 16}
!535 = !{!138, !21, i64 128}
!536 = !{!"_ZTS6PJ_LPZ", !31, i64 0, !31, i64 8, !31, i64 16}
!537 = !{!536, !31, i64 0}
!538 = !{!536, !31, i64 8}
!539 = distinct !{!539, !35}
!540 = !{ptr @_ZNK12_GLOBAL__N_14Grid16getLongLatOffsetEiiRdS1_}
!541 = !{ptr @_ZNK12_GLOBAL__N_14Grid24getEastingNorthingOffsetEiiRdS1_}
!542 = distinct !{!542, !35}
!543 = !{!"_ZTSSt4pairIKPKN12_GLOBAL__N_14GridEN16DeformationModel6GridExIS1_EEE", !200, i64 0, !214, i64 8}
!544 = !{!543, !200, i64 0}
!545 = !{i64 0, i64 8, !201, i64 8, i64 1, !215, i64 16, i64 8, !61, i64 24, i64 8, !61, i64 32, i64 8, !61, i64 40, i64 8, !61, i64 48, i64 4, !34, i64 52, i64 4, !34, i64 56, i64 8, !61, i64 64, i64 8, !61, i64 72, i64 8, !61, i64 80, i64 8, !61, i64 88, i64 8, !61, i64 96, i64 8, !61, i64 104, i64 8, !61, i64 112, i64 8, !61, i64 120, i64 8, !61, i64 128, i64 8, !61, i64 136, i64 8, !61, i64 144, i64 8, !61, i64 152, i64 8, !61, i64 160, i64 8, !61, i64 168, i64 8, !61, i64 176, i64 8, !61}
!546 = !{!214, !18, i64 48}
!547 = !{!214, !31, i64 56}
end_hunk_2
