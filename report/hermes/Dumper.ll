Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Dumper?download=true
inline.NumInlined: 1690
inline.NumDeleted: 895
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEEixERS6_:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !44     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = icmp ult ptr %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit, label %bb.b, !llvm.loop !0

_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48
  %i.k = icmp ult ptr %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIPN6hermes5ValueEjSt4lessIS2_ESaISt4pairIKS2_jEEE11lower_boundERS6_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #19 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !44
  store ptr %i.n, ptr %i.m, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i32 0, ptr %i.o, align 8, !tbaa !47
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = icmp ult ptr %i.t, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #15
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !42
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !42
  br label %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #16
  br label %_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit

_ZNSt8_Rb_treeIPN6hermes5ValueESt4pairIKS2_jESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS4_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9IRPrinter14printTypeLabelENS_4TypeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::Type", align 4      ; 2 uses
  store i32 %1, ptr %2, align 4
  %i.a = and i32 %1, 65535
  %i.b = icmp eq i32 %i.a, 1023
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !49, !nonnull !36, !align !50 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.d, ptr noundef nonnull @.str.4, i64 noundef 3) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.h, ptr noundef nonnull align 1 dereferenceable(3) @.str.4, i64 3, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store ptr %i.o, ptr %i.g, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.m, %bb.c ], [ %i.d, %bb.d ]
  %i.p = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvhlsERNS_11raw_ostreamERKN6hermes4TypeE(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull align 2 dereferenceable(4) %2) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN4llvh11raw_ostreamlsEPKc.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvhlsERNS_11raw_ostreamERKN6hermes4TypeE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 2 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !53
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp ugt i64 %i.a, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %i.j = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %1, i64 noundef %i.a) #15
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

bb.c:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit
  %.not.i2 = icmp eq i64 %i.a, 0
  br i1 %.not.i2, label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.e, ptr nonnull align 1 %1, i64 %i.a, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.a
  store ptr %i.l, ptr %i.d, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvh11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %0, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes9IRPrinter15printValueLabelEPNS_11InstructionEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(656) ptr @_ZNK6hermes11Instruction10getContextEv(ptr noundef nonnull align 8 dereferenceable(132) %1) #15 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !65    ; 2 uses
  %i.e = icmp eq i8 %i.d, 93
  %i.f = icmp eq i32 %3, 0                        ; 2 uses
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49, !nonnull !36, !align !50 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54   ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.h, ptr noundef nonnull @.str.5, i64 noundef 1) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  store i8 91, ptr %i.l, align 1
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store ptr %i.p, ptr %i.k, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit

_ZN4llvh11raw_ostreamlsEPKc.exit:                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.h, %bb.d ] ; 6 uses
  %i.q = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(144) %1, i32 noundef 0) #15
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !217 ; 4 uses
  %7 = fcmp ule double %i.s, f0x41DFFFFFFFC00000
  %i.t = fcmp uge double %i.s, f0xC1E0000000000000
  %8 = fcmp ord double %i.s, 0.000000e+00
  tail call void @llvm.assume(i1 %8)
  tail call void @llvm.assume(i1 %7)
  tail call void @llvm.assume(i1 %i.t)
  %i.u = fptosi double %i.s to i32
  %i.v = and i32 %i.u, 255
  %i.w = tail call noundef ptr @_ZN6hermes20getBuiltinMethodNameEi(i32 noundef %i.v) #15 ; 4 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit64, label %_ZN4llvh9StringRefC2EPKc.exit.i

_ZN4llvh9StringRefC2EPKc.exit.i:                  ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #18 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ugt i64 %i.x, %i.ae
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %i.ag = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i, ptr noundef nonnull %i.w, i64 noundef %i.x) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit64

bb.f:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i
  %.not.i2.i62 = icmp eq i64 %i.x, 0
  br i1 %.not.i2.i62, label %_ZN4llvh11raw_ostreamlsEPKc.exit64, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.w, i64 %i.x, i1 false)
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.x
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit64

_ZN4llvh11raw_ostreamlsEPKc.exit64:               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit, %bb.e, %bb.f, %bb.g
  %.0.i.i63 = phi ptr [ %i.ag, %bb.e ], [ %.0.i.i, %bb.g ], [ %.0.i.i, %bb.f ], [ %.0.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !53
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i63, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit64
  %i.ao = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i63, ptr noundef nonnull @.str.6, i64 noundef 1) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.i:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit64
  store i8 93, ptr %i.am, align 1
  %i.ap = load ptr, ptr %i.al, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store ptr %i.aq, ptr %i.al, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.j:                                             ; preds = %bb.a
  %i.ar = icmp eq i8 %i.d, 98
  %or.cond3 = and i1 %i.f, %i.ar
  br i1 %or.cond3, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49, !nonnull !36, !align !50 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %i.ay = icmp eq ptr %i.av, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.at, ptr noundef nonnull @.str.5, i64 noundef 1) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit72

bb.m:                                             ; preds = %bb.k
  store i8 91, ptr %i.ax, align 1
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store ptr %i.bb, ptr %i.aw, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit72

_ZN4llvh11raw_ostreamlsEPKc.exit72:               ; preds = %bb.l, %bb.m
  %.0.i.i71 = phi ptr [ %i.az, %bb.l ], [ %i.at, %bb.m ] ; 6 uses
  %i.bc = tail call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %1, i32 noundef 0) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load double, ptr %i.bd, align 8, !tbaa !217 ; 4 uses
  %9 = fcmp ule double %i.be, f0x41DFFFFFFFC00000
  %i.bf = fcmp uge double %i.be, f0xC1E0000000000000
  %10 = fcmp ord double %i.be, 0.000000e+00
  tail call void @llvm.assume(i1 %10)
  tail call void @llvm.assume(i1 %9)
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = fptosi double %i.be to i32
  %i.bh = and i32 %i.bg, 255
  %i.bi = tail call noundef ptr @_ZN6hermes20getBuiltinMethodNameEi(i32 noundef %i.bh) #15 ; 4 uses
  %.not.i.i73 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i73, label %_ZN4llvh11raw_ostreamlsEPKc.exit77, label %_ZN4llvh9StringRefC2EPKc.exit.i74

_ZN4llvh9StringRefC2EPKc.exit.i74:                ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit72
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #18 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i71, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i71, i64 24 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !54 ; 2 uses
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = icmp ugt i64 %i.bj, %i.bq
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i74
  %i.bs = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i71, ptr noundef nonnull %i.bi, i64 noundef %i.bj) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit77

bb.o:                                             ; preds = %_ZN4llvh9StringRefC2EPKc.exit.i74
  %.not.i2.i75 = icmp eq i64 %i.bj, 0
  br i1 %.not.i2.i75, label %_ZN4llvh11raw_ostreamlsEPKc.exit77, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bn, ptr nonnull align 1 %i.bi, i64 %i.bj, i1 false)
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !54
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bj
  store ptr %i.bu, ptr %i.bm, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit77

_ZN4llvh11raw_ostreamlsEPKc.exit77:               ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit72, %bb.n, %bb.o, %bb.p
  %.0.i.i76 = phi ptr [ %i.bs, %bb.n ], [ %.0.i.i71, %bb.p ], [ %.0.i.i71, %bb.o ], [ %.0.i.i71, %_ZN4llvh11raw_ostreamlsEPKc.exit72 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !53
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i76, i64 24 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !54 ; 2 uses
  %i.bz = icmp eq ptr %i.bw, %i.by
  br i1 %i.bz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit77
  %i.ca = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %.0.i.i76, ptr noundef nonnull @.str.6, i64 noundef 1) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.r:                                             ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit77
  store i8 93, ptr %i.by, align 1
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !54
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.s:                                             ; preds = %bb.j
  %i.cd = load i8, ptr %2, align 8, !tbaa !65     ; 5 uses
  switch i8 %i.cd, label %bb.aj [
    i8 115, label %bb.t
    i8 116, label %bb.x
    i8 117, label %bb.y
    i8 114, label %bb.ab
    i8 111, label %bb.ae
    i8 113, label %bb.af
    i8 112, label %bb.ag
    i8 118, label %bb.ah
    i8 121, label %bb.ai
  ]

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49, !nonnull !36, !align !50 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !219 ; 2 uses
  %.sroa.037.0.copyload = load ptr, ptr %i.ch, align 8, !tbaa !67 ; 2 uses
  %.sroa.238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %.sroa.238.0.copyload = load i64, ptr %.sroa.238.0..sroa_idx, align 8, !tbaa !18 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 24 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !54 ; 2 uses
  %i.cm = ptrtoint ptr %i.cj to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = icmp ugt i64 %.sroa.238.0.copyload, %i.co
  br i1 %i.cp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cq = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.cf, ptr noundef %.sroa.037.0.copyload, i64 noundef %.sroa.238.0.copyload) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.v:                                             ; preds = %bb.t
  %.not.i = icmp eq i64 %.sroa.238.0.copyload, 0
  br i1 %.not.i, label %_ZN4llvh11raw_ostreamlsEPKc.exit68, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cl, ptr align 1 %.sroa.037.0.copyload, i64 %.sroa.238.0.copyload, i1 false)
  %i.cr = load ptr, ptr %i.ck, align 8, !tbaa !54
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.238.0.copyload
  store ptr %i.cs, ptr %i.ck, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.x:                                             ; preds = %bb.s
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !49, !nonnull !36, !align !50
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cv, align 8, !tbaa !68 ; 2 uses
  %.sroa.0.0.copyload.i83 = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !67
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !18
  call void @_ZN6hermes9IRPrinter9escapeStrB5cxx11EN4llvh9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(208) %0, ptr %.sroa.0.0.copyload.i83, i64 %.sroa.2.0.copyload.i)
  %i.cw = load ptr, ptr %4, align 8, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !16
  %i.cz = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.cu, ptr noundef %i.cw, i64 noundef %i.cy) #15 ; 0 uses
  %i.da = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dc = icmp eq ptr %i.da, %i.db
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.dd = load i64, ptr %i.db, align 8, !tbaa !17
  %i.de = add i64 %i.dd, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.de) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.y:                                             ; preds = %bb.s
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !49, !nonnull !36, !align !50 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !221, !range !35, !noundef !36
  %i.dj = trunc nuw i8 %i.di to i1                ; 2 uses
  %i.dk = select i1 %i.dj, ptr @.str.7, ptr @.str.8 ; 2 uses
  %i.dl = select i1 %i.dj, i64 4, i64 5           ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !53
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 3 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !54 ; 2 uses
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = icmp ugt i64 %i.dl, %i.ds
  br i1 %i.dt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.du = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.dg, ptr noundef nonnull %i.dk, i64 noundef %i.dl) #15 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4) %i.dp, ptr noundef nonnull align 1 dereferenceable(4) %i.dk, i64 %i.dl, i1 false)
  %i.dv = load ptr, ptr %i.do, align 8, !tbaa !54
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dl
  store ptr %i.dw, ptr %i.do, align 8, !tbaa !54
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.ab:                                            ; preds = %bb.s
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !217 ; 3 uses
  %i.dz = fcmp oeq double %i.dy, 0.000000e+00
  %i.ea = bitcast double %i.dy to i64
  %i.eb = icmp slt i64 %i.ea, 0
  %or.cond143 = and i1 %i.dz, %i.eb
  br i1 %or.cond143, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !49, !nonnull !36, !align !50
  %i.ee = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.ed, ptr noundef nonnull @.str.9) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ef = call noundef i64 @_ZN6hermes14numberToStringEdPcm(double noundef %i.dy, ptr noundef nonnull %i.a, i64 noundef 32) #15 ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !49, !nonnull !36, !align !50
  %i.ei = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.eh, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.ae:                                            ; preds = %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !49, !nonnull !36, !align !50
  %i.el = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.ek, ptr noundef nonnull @.str.10) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.af:                                            ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !49, !nonnull !36, !align !50
  %i.eo = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.en, ptr noundef nonnull @.str.11) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68

bb.ag:                                            ; preds = %bb.s
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !49, !nonnull !36, !align !50
  %i.er = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(36) %i.eq, ptr noundef nonnull @.str.12) ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit68
end_hunk_0
