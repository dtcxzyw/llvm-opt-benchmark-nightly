Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-isel-fuzzer?download=true
inline.NumInlined: 815
inline.NumDeleted: 540
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt10unique_ptrIN4llvm9IRMutatorESt14default_deleteIS1_EED2Ev:bb.a

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z17createISelMutatorv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr.20") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #4 {
_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4:
  %1 = alloca [7 x %"class.std::function.24"], align 8 ; 32 uses
  %2 = alloca %"class.std::vector.32", align 16   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.c, align 8
  store ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE, ptr %1, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.b, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.a, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.g, align 8
  store ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE, ptr %i.d, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.f, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.e, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 0, ptr %i.k, align 8
  store ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE, ptr %i.h, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.j, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.i, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  store i64 0, ptr %i.o, align 8
  store ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE, ptr %i.l, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.n, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.m, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i64 0, ptr %i.s, align 8
  store ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE, ptr %i.p, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.r, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.q, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  store i64 0, ptr %i.w, align 8
  store ptr @_ZN4llvm4Type10getFloatTyERNS_11LLVMContextE, ptr %i.t, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPS5_E9_M_invokeERKSt9_Any_dataS4_, ptr %i.v, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPS5_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.u, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 200
  store i64 0, ptr %i.aa, align 8
  store ptr @_ZN4llvm4Type11getDoubleTyERNS_11LLVMContextE, ptr %i.x, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPS5_E9_M_invokeERKSt9_Any_dataS4_, ptr %i.z, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPS5_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.y, align 8, !tbaa !10
  %i.ab = tail call noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #22 ; 24 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE, ptr %i.ab, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.ad, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.ae, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 0, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE, ptr %i.af, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.ah, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.ai, align 8, !tbaa !10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i64 0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  store ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE, ptr %i.aj, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.al, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.am, align 8, !tbaa !10
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  store ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE, ptr %i.an, align 8, !tbaa !34
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE9_M_invokeERKSt9_Any_dataS4_, ptr %i.ap, align 8, !tbaa !35
  store ptr @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation, ptr %i.aq, align 8, !tbaa !10
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 0, i64 32, i1 false)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.at = call noundef zeroext i1 @_ZNSt17_Function_handlerIFPN4llvm4TypeERNS0_11LLVMContextEEPFPNS0_11IntegerTypeES4_EE10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef 2) #20, !inline_history !37 ; 0 uses
  %i.au = load <2 x ptr>, ptr %i.q, align 8, !tbaa !34
  store <2 x ptr> %i.au, ptr %i.as, align 8, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, i8 0, i64 32, i1 false)
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !10  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.5 = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.5, label %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5, label %bb.a

bb.a:                                             ; preds = %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ay = call noundef zeroext i1 %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 2) #20, !inline_history !37 ; 0 uses
  %i.az = load <2 x ptr>, ptr %i.u, align 8, !tbaa !34
  store <2 x ptr> %i.az, ptr %i.ax, align 8, !tbaa !34
  br label %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5

_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5: ; preds = %bb.a, %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i8 0, i64 32, i1 false)
  %i.bb = load ptr, ptr %i.y, align 8, !tbaa !10  ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i.6 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i.6, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.6

_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.6: ; preds = %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ab, i64 208
  %i.bd = call noundef zeroext i1 %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 2) #20, !inline_history !37 ; 0 uses
  %i.be = load <2 x ptr>, ptr %i.y, align 8, !tbaa !34
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !10  ; 2 uses
  store <2 x ptr> %i.be, ptr %i.bc, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.6
  %i.bg = call noundef zeroext i1 %i.bf(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i32 noundef 3) #20, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.5, %_ZSt10_ConstructISt8functionIFPN4llvm4TypeERNS1_11LLVMContextEEEJRKS7_EEvPT_DpOT0_.exit.i.i.i.i.i.i.6, %bb.b
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !10  ; 2 uses
  %.not.i.1 = icmp eq ptr %i.bh, null
  br i1 %.not.i.1, label %_ZNSt14_Function_baseD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.bi = call noundef zeroext i1 %i.bh(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i32 noundef 3) #20, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.1

_ZNSt14_Function_baseD2Ev.exit.1:                 ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.bj = load ptr, ptr %i.q, align 8, !tbaa !10  ; 2 uses
  %.not.i.2 = icmp eq ptr %i.bj, null
  br i1 %.not.i.2, label %_ZNSt14_Function_baseD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.1
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i32 noundef 3) #20, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.2

_ZNSt14_Function_baseD2Ev.exit.2:                 ; preds = %bb.d, %_ZNSt14_Function_baseD2Ev.exit.1
  %i.bl = load ptr, ptr %i.m, align 8, !tbaa !10  ; 2 uses
  %.not.i.3 = icmp eq ptr %i.bl, null
  br i1 %.not.i.3, label %_ZNSt14_Function_baseD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.2
  %i.bm = call noundef zeroext i1 %i.bl(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i32 noundef 3) #20, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.3

_ZNSt14_Function_baseD2Ev.exit.3:                 ; preds = %bb.e, %_ZNSt14_Function_baseD2Ev.exit.2
  %i.bn = load ptr, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %.not.i.4 = icmp eq ptr %i.bn, null
  br i1 %.not.i.4, label %_ZNSt14_Function_baseD2Ev.exit.4, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.3
  %i.bo = call noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i32 noundef 3) #20, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.4

_ZNSt14_Function_baseD2Ev.exit.4:                 ; preds = %bb.f, %_ZNSt14_Function_baseD2Ev.exit.3
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !10  ; 2 uses
  %.not.i.5 = icmp eq ptr %i.bp, null
  br i1 %.not.i.5, label %_ZNSt14_Function_baseD2Ev.exit.5, label %bb.g

bb.g:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.4
  %i.bq = call noundef zeroext i1 %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i32 noundef 3) #20, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.5

_ZNSt14_Function_baseD2Ev.exit.5:                 ; preds = %bb.g, %_ZNSt14_Function_baseD2Ev.exit.4
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !10  ; 2 uses
  %.not.i.6 = icmp eq ptr %i.br, null
  br i1 %.not.i.6, label %_ZNSt14_Function_baseD2Ev.exit.6, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.5
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #20, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.6

_ZNSt14_Function_baseD2Ev.exit.6:                 ; preds = %bb.h, %_ZNSt14_Function_baseD2Ev.exit.5
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.bt = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4llvm18InjectorIRStrategy13getDefaultOpsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.32") align 8 %2) #20
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm18InjectorIRStrategyE, i64 16), ptr %i.bt, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load <2 x ptr>, ptr %2, align 16, !tbaa !38
  store <2 x ptr> %i.bv, ptr %i.bu, align 8, !tbaa !38
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !40
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !40
  %3 = ptrtoint ptr %i.bt to i64
  %4 = getelementptr inbounds nuw i8, ptr %i.ab, i64 224 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.bz = call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN4llvm21InstDeleterIRStrategyE, i64 16), ptr %i.bz, align 8, !tbaa !8
  %i.ca = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !42
  store i64 %3, ptr %i.ca, align 8, !tbaa !42, !alias.scope !44, !noalias !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.cd = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22, !noalias !49 ; 7 uses
  store ptr %i.ab, ptr %i.cd, align 8, !tbaa !52, !noalias !49
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr %4, ptr %i.ce, align 8, !tbaa !55, !noalias !49
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %4, ptr %i.cf, align 8, !tbaa !56, !noalias !49
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.ca, ptr %i.cg, align 8, !tbaa !57, !noalias !49
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  store ptr %i.cc, ptr %i.ch, align 8, !tbaa !60, !noalias !49
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store ptr %i.cc, ptr %i.ci, align 8, !tbaa !61, !noalias !49
  store ptr %i.cd, ptr %0, align 8, !tbaa !32, !alias.scope !49
  ret void
}

declare noundef ptr @_ZN4llvm4Type9getInt1TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) #0

declare noundef ptr @_ZN4llvm4Type9getInt8TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) #0

declare noundef ptr @_ZN4llvm4Type10getInt16TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) #0

declare noundef ptr @_ZN4llvm4Type10getInt32TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) #0

declare noundef ptr @_ZN4llvm4Type10getInt64TyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) #0

declare noundef ptr @_ZN4llvm4Type10getFloatTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) #0

declare noundef ptr @_ZN4llvm4Type11getDoubleTyERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(8)) #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

declare void @_ZN4llvm18InjectorIRStrategy13getDefaultOpsEv(ptr dead_on_unwind writable sret(%"class.std::vector.32") align 8) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i64 @LLVMFuzzerCustomMutator(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4 {
bb.a:
  %4 = alloca %"class.llvm::LLVMContext", align 8 ; 6 uses
  %5 = alloca %"class.std::unique_ptr.38", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EE5resetEPS1_.exit, label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EE5resetEPS1_.exit: ; preds = %bb.a
  %i.b = call noalias noundef nonnull dereferenceable(1288) ptr @_Znwm(i64 noundef 1288) #22 ; 2 uses
  call void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(1288) %i.b, ptr nonnull @.str.8, i64 1, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN4llvm11parseModuleEPKhmRNS_11LLVMContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.38") align 8 %5, ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  %i.c = load ptr, ptr %5, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit8

_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EED2Ev.exit8: ; preds = %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EEaSEOS4_.exit, %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EE5resetEPS1_.exit
  %.sroa.09.0 = phi ptr [ %i.b, %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EE5resetEPS1_.exit ], [ %i.c, %_ZNSt10unique_ptrIN4llvm6ModuleESt14default_deleteIS1_EEaSEOS4_.exit ] ; 4 uses
  %i.d = load ptr, ptr @_ZL7Mutator, align 8, !tbaa !32
  call void @_ZN4llvm9IRMutator12mutateModuleERNS_6ModuleEim(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.09.0, i32 noundef %3, i64 noundef %2) #20
  %i.e = call noundef i64 @_ZN4llvm11writeModuleERKNS_6ModuleEPhm(ptr noundef nonnull align 8 dereferenceable(1288) %.sroa.09.0, ptr noundef %0, i64 noundef %2) #20
  call void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288) %.sroa.09.0) #20
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.09.0, i64 noundef 1288) #21
  call void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i64 %i.e
}

declare void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN4llvm11parseModuleEPKhmRNS_11LLVMContextE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.38") align 8, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN4llvm9IRMutator12mutateModuleERNS_6ModuleEim(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(1288), i32 noundef, i64 noundef) local_unnamed_addr #0

declare noundef i64 @_ZN4llvm11writeModuleERKNS_6ModuleEPhm(ptr noundef nonnull align 8 dereferenceable(1288), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN4llvm11LLVMContextD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @LLVMFuzzerTestOneInput(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.llvm::LLVMContext", align 8 ; 5 uses
  %3 = alloca %"class.std::unique_ptr.38", align 8 ; 7 uses
  %4 = alloca %"class.llvm::Triple", align 8      ; 13 uses
  %5 = alloca %"class.llvm::DataLayout", align 8  ; 38 uses
  %6 = alloca %"class.llvm::legacy::PassManager", align 8 ; 7 uses
  %7 = alloca %"class.llvm::TargetLibraryInfoImpl", align 8 ; 11 uses
  %8 = alloca %"class.llvm::raw_null_ostream", align 8 ; 8 uses
  %i.b = icmp ult i64 %1, 2
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN4llvm11LLVMContextC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN4llvm14parseAndVerifyEPKhmRNS_11LLVMContextE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.38") align 8 %3, ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %i.c = load ptr, ptr %3, align 8, !tbaa !62     ; 7 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = call noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() #20 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 31
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull @.str.9, i64 noundef 31) #20 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.h, ptr noundef nonnull align 1 dereferenceable(31) @.str.9, i64 31, i1 false)
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 31
  store ptr %i.o, ptr %i.g, align 8, !tbaa !68
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.f:                                             ; preds = %bb.b
  %i.p = load ptr, ptr @_ZL2TM, align 8, !tbaa !29 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 928
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 9 uses
  store ptr %i.r, ptr %4, align 8, !tbaa !69
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !23   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 936
  %i.u = load i64, ptr %i.t, align 8, !tbaa !70   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.u, ptr %i.a, align 8, !tbaa !71
  %i.v = icmp ugt i64 %i.u, 15
  br i1 %i.v, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.w, ptr %4, align 8, !tbaa !23
  %i.x = load i64, ptr %i.a, align 8, !tbaa !71
  store i64 %i.x, ptr %i.r, align 8, !tbaa !28
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  switch i64 %i.u, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZN4llvm6TripleC2ERKS0_.exit
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.s, align 1, !tbaa !28
  store i8 %i.z, ptr %i.y, align 1, !tbaa !28
  br label %_ZN4llvm6TripleC2ERKS0_.exit

bb.i:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.s, i64 %i.u, i1 false)
  br label %_ZN4llvm6TripleC2ERKS0_.exit

_ZN4llvm6TripleC2ERKS0_.exit:                     ; preds = %._crit_edge.i.i.i, %bb.h, %bb.i
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !71  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !70
  %i.ac = load ptr, ptr %4, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 960
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 216 ; 5 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !23 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 232 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  %i.ak = load ptr, ptr %4, align 8, !tbaa !23    ; 6 uses
  %i.al = icmp eq ptr %i.ak, %i.r                 ; 2 uses
  br i1 %i.aj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm6TripleC2ERKS0_.exit
  br i1 %i.al, label %bb.j, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZN4llvm6TripleC2ERKS0_.exit
  br i1 %i.al, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.am = load i64, ptr %i.ab, align 8, !tbaa !70 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %.not21.i.i.i = icmp eq ptr %4, %i.ag
  br i1 %.not21.i.i.i, label %_ZN4llvm6Module15setTargetTripleENS_6TripleE.exit, label %bb.k, !prof !72
end_hunk_0
