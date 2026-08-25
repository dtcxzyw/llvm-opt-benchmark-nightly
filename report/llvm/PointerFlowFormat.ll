Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/PointerFlowFormat?download=true
begin_hunk_0_@_ZN5clang4ssaf23makeSawButExpectedErrorIN4llvm4json6ObjectEJPKcEEENS2_5ErrorERKT_NS2_9StringRefEDpRKT0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN4llvm17createStringErrorIJPKcS2_EEENS_5ErrorESt10error_codeS2_DpRKT_.exit
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !69
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN4llvm17createStringErrorIJPKcS2_EEENS_5ErrorESt10error_codeS2_DpRKT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.ad = load ptr, ptr %9, align 8, !tbaa !70    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !69
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  ret void
}

declare void @_ZN5clang4ssaf29buildPointerFlowEntitySummaryESt3mapINS0_18EntityPointerLevelESt3setIS2_NS2_10ComparatorESaIS2_EESt4lessIS2_ESaISt4pairIKS2_S6_EEE(ptr dead_on_unwind writable sret(%"class.clang::ssaf::PointerFlowEntitySummary") align 8, ptr nofree noundef align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ssaf24PointerFlowEntitySummaryD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelESt4pairIKS2_St3setIS2_NS2_10ComparatorESaIS2_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
  ret void
}

declare void @_ZN5clang4ssaf17describeJSONValueB5cxx11ERKN4llvm4json6ObjectE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJPKcS7_EEERNS_11raw_ostreamES9_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !178, !nonnull !107, !align !108 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !180
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !74
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.h) #17
  ret i32 %i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E8copyFromERKSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !149  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %.lr.ph9.preheader.i

.lr.ph9.preheader.i:                              ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !153
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !154
  %i.h = zext i32 %i.c to i64
  %i.i = add nuw nsw i64 %i.h, 31
  %i.j = lshr i64 %i.i, 5
  br label %.lr.ph9.i

.lr.ph9.i:                                        ; preds = %._crit_edge.i, %.lr.ph9.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph9.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !53   ; 2 uses
  %.not11.i4.i = icmp eq i32 %i.l, 0
  br i1 %.not11.i4.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph9.i
  %indvars.iv.tr.i = trunc i64 %indvars.iv.i to i32
  %i.m = shl i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i5.i = phi i32 [ %i.l, %.lr.ph.i ], [ %i.z, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.n = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i5.i, i1 true)
  %i.o = or disjoint i32 %i.n, %i.m
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  tail call void @_ZN4llvm4json5Value7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #17
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !91   ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !70   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !tbaa !69
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #18
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i.i, %bb.b
  %i.y = add i32 %.0.i5.i, -1
  %i.z = and i32 %i.y, %.0.i5.i                   ; 2 uses
  %.not11.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !155

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph9.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.j
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit, label %.lr.ph9.i, !llvm.loop !156

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.b, align 4, !tbaa !149  ; 2 uses
  %i.aa = icmp eq i32 %.pr, 0
  br i1 %i.aa, label %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !153
  %i.ac = zext i32 %.pr to i64                    ; 2 uses
  %i.ad = shl nuw nsw i64 %i.ac, 6
  %i.ae = add nuw nsw i64 %i.ac, 31
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 1073741820
  %i.ah = add nuw nsw i64 %i.ag, %i.ad
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ab, i64 noundef %i.ah, i64 noundef 8) #17
  store i32 0, ptr %i.b, align 4, !tbaa !149
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS2_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S7_SA_E10destroyAllEv.exit, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !186
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !149 ; 3 uses
  store i32 %i.ak, ptr %i.b, align 4, !tbaa !149
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit, label %bb.e

_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit: ; preds = %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS5_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_SA_SD_E8copyFromERKSE_EUljE_EEvPKjjT_.exit

bb.e:                                             ; preds = %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE17deallocateBucketsEv.exit
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 6
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #17 ; 3 uses
  %i.as = load i32, ptr %i.b, align 4, !tbaa !149
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = shl nuw nsw i64 %i.at, 6
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.au ; 3 uses
  store ptr %i.ar, ptr %0, align 8, !tbaa !153
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !154
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !186
  store i32 %i.ay, ptr %i.ai, align 8, !tbaa !186
  %i.az = load ptr, ptr %1, align 8, !tbaa !153
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154
  %i.bc = add nuw nsw i64 %i.at, 31
  %i.bd = lshr i64 %i.bc, 5                       ; 3 uses
  %i.be = shl nuw nsw i64 %i.bd, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.bb, i64 %i.be, i1 false)
  %.not.i21 = icmp eq i64 %i.bd, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS5_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_SA_SD_E8copyFromERKSE_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.e, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.e ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !53 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.bg, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.bh = shl i32 %indvars.iv.tr, 5
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvm4json9ObjectKeyaSERKS1_.exit
  %.0.i20 = phi i32 [ %i.bg, %.lr.ph ], [ %i.cs, %_ZN4llvm4json9ObjectKeyaSERKS1_.exit ] ; 3 uses
  %i.bi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.bj = or disjoint i32 %i.bi, %i.bh
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.ar, i64 %i.bk ; 8 uses
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.az, i64 %i.bk ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !91 ; 3 uses
  %.not.i9 = icmp eq ptr %i.bn, null
  br i1 %.not.i9, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 3 uses
  store ptr %i.bp, ptr %i.bo, align 8, !tbaa !82
  %i.bq = load ptr, ptr %i.bn, align 8, !tbaa !70 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !83 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.bs, ptr %i.a, align 8, !tbaa !115
  %i.bt = icmp ugt i64 %i.bs, 15
  br i1 %i.bt, label %bb.h, label %._crit_edge.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.bu = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #17 ; 2 uses
  store ptr %i.bu, ptr %i.bo, align 8, !tbaa !70
  %i.bv = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.bv, ptr %i.bp, align 8, !tbaa !69
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.bw = phi ptr [ %i.bu, %bb.h ], [ %i.bp, %bb.g ] ; 2 uses
  switch i64 %i.bs, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bx = load i8, ptr %i.bq, align 1, !tbaa !69
  store i8 %i.bx, ptr %i.bw, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bw, ptr align 1 %i.bq, i64 %i.bs, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.by = load i64, ptr %i.a, align 8, !tbaa !115 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !83
  %i.ca = load ptr, ptr %i.bo, align 8, !tbaa !70
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.by
  store i8 0, ptr %i.cb, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.cc = load ptr, ptr %i.bl, align 8, !tbaa !91 ; 4 uses
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !91
  %.not.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE5resetEPS5_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !70 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !69
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #18
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 32) #18
  %.pre.i = load ptr, ptr %i.bl, align 8, !tbaa !91
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE5resetEPS5_.exit.i

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE5resetEPS5_.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.ci = phi ptr [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i ], [ %.pre.i, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i ] ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !70
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !83
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.cj, ptr %i.cm, align 8, !tbaa !74
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i64 %i.cl, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !115
  br label %_ZN4llvm4json9ObjectKeyaSERKS1_.exit

bb.l:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i64 16, i1 false), !tbaa.struct !148
  br label %_ZN4llvm4json9ObjectKeyaSERKS1_.exit

_ZN4llvm4json9ObjectKeyaSERKS1_.exit:             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE5resetEPS5_.exit.i, %bb.l
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  call void @_ZN4llvm4json5Value8copyFromERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.cq) #17
  %i.cr = add i32 %.0.i20, -1
  %i.cs = and i32 %i.cr, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cs, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.f, !llvm.loop !187

._crit_edge:                                      ; preds = %_ZN4llvm4json9ObjectKeyaSERKS1_.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.bd
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS5_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_SA_SD_E8copyFromERKSE_EUljE_EEvPKjjT_.exit, label %.lr.ph24, !llvm.loop !188

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_4json9ObjectKeyENS5_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS6_S7_EEEES6_S7_SA_SD_E8copyFromERKSE_EUljE_EEvPKjjT_.exit: ; preds = %._crit_edge, %bb.e, %_ZN4llvm8DenseMapINS_4json9ObjectKeyENS1_5ValueENS_12DenseMapInfoINS_9StringRefEvEENS_6detail12DenseMapPairIS2_S3_EEE15allocateBucketsEj.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ssaf24PointerFlowEntitySummaryD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29
  tail call void @_ZNSt8_Rb_treeIN5clang4ssaf18EntityPointerLevelESt4pairIKS2_St3setIS2_NS2_10ComparatorESaIS2_EEESt10_Select1stIS9_ESt4lessIS2_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang4ssaf24PointerFlowEntitySummary14getSummaryNameEv(ptr dead_on_unwind noalias writable sret(%"class.clang::ssaf::SummaryName") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !82, !alias.scope !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.a, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, i64 11, i1 false)
  %.sroa.4.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %.sroa.4.16..sroa_idx, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 11, ptr %i.b, align 8, !tbaa !83, !alias.scope !189
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFNS_8ExpectedISt10unique_ptrIN5clang4ssaf13EntitySummaryESt14default_deleteIS5_EEEERKNS_4json6ObjectERNS4_13EntityIdTableENS0_IFNS1_INS4_8EntityIdEEESD_EEEEE11callback_fnISK_EES9_lSD_SF_SJ_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Expected.75") align 8 %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %4, i64 %5) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.llvm::Expected.75") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr %4, i64 %5) #17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ssaf15FormatInfoEntryIN4llvm12function_refIFNS2_4json6ObjectERKNS0_13EntitySummaryENS3_IFS5_NS0_8EntityIdEEEEEEENS3_IFNS2_8ExpectedISt10unique_ptrIS6_St14default_deleteIS6_EEEERKS5_RNS0_13EntityIdTableENS3_IFNSE_IS9_EESL_EEEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5clang4ssaf15FormatInfoEntryIN4llvm12function_refIFNS2_4json6ObjectERKNS0_13EntitySummaryENS3_IFS5_NS0_8EntityIdEEEEEEENS3_IFNS2_8ExpectedISt10unique_ptrIS6_St14default_deleteIS6_EEEERKS5_RNS0_13EntityIdTableENS3_IFNSE_IS9_EESL_EEEEEEEE, i64 16), ptr %0, align 8, !tbaa !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN5clang4ssaf15FormatInfoEntryIN4llvm12function_refIFNS2_4json6ObjectERKNS0_13EntitySummaryENS3_IFS5_NS0_8EntityIdEEEEEEENS3_IFNS2_8ExpectedISt10unique_ptrIS6_St14default_deleteIS6_EEEERKS5_RNS0_13EntityIdTableENS3_IFNSE_IS9_EESL_EEEEEEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !69
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #18, !inline_history !144
  br label %_ZN5clang4ssaf15FormatInfoEntryIN4llvm12function_refIFNS2_4json6ObjectERKNS0_13EntitySummaryENS3_IFS5_NS0_8EntityIdEEEEEEENS3_IFNS2_8ExpectedISt10unique_ptrIS6_St14default_deleteIS6_EEEERKS5_RNS0_13EntityIdTableENS3_IFNSE_IS9_EESL_EEEEEEED2Ev.exit

_ZN5clang4ssaf15FormatInfoEntryIN4llvm12function_refIFNS2_4json6ObjectERKNS0_13EntitySummaryENS3_IFS5_NS0_8EntityIdEEEEEEENS3_IFNS2_8ExpectedISt10unique_ptrIS6_St14default_deleteIS6_EEEERKS5_RNS0_13EntityIdTableENS3_IFNSE_IS9_EESL_EEEEEEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #18
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFSt10unique_ptrIN5clang4ssaf15FormatInfoEntryINS0_IFNS_4json6ObjectERKNS3_13EntitySummaryENS0_IFS6_NS3_8EntityIdEEEEEEENS0_IFNS_8ExpectedIS1_IS7_St14default_deleteIS7_EEEERKS6_RNS3_13EntityIdTableENS0_IFNSF_ISA_EESL_EEEEEEEESG_IST_EEvEE11callback_fnISW_EESV_l(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.57") align 8 %0, i64 noundef %1) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.57") align 8 %0) #17
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm6detail27getRegistryLinkListInstanceINS_8RegistryIN5clang4ssaf15FormatInfoEntryINS_12function_refIFNS_4json6ObjectERKNS4_13EntitySummaryENS6_IFS8_NS4_8EntityIdEEEEEEENS6_IFNS_8ExpectedISt10unique_ptrIS9_St14default_deleteIS9_EEEERKS8_RNS4_13EntityIdTableENS6_IFNSH_ISC_EESO_EEEEEEEEJEEEEERNS0_23RegistryLinkListStorageIT_EEv() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_PointerFlowFormat.cpp() #13 section ".text.startup" {
bb.a:
  store ptr @.str.1, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, align 8, !tbaa !74
  store i64 11, ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 8), align 8, !tbaa !115
  store ptr @.str.2, ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 16), align 8, !tbaa !74
  store i64 45, ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 24), align 8, !tbaa !115
  store ptr @_ZN4llvm12function_refIFSt10unique_ptrIN5clang4ssaf15FormatInfoEntryINS0_IFNS_4json6ObjectERKNS3_13EntitySummaryENS0_IFS6_NS3_8EntityIdEEEEEEENS0_IFNS_8ExpectedIS1_IS7_St14default_deleteIS7_EEEERKS6_RNS3_13EntityIdTableENS0_IFNSF_ISA_EESL_EEEEEEEESG_IST_EEvEE11callback_fnISW_EESV_l, ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 32), align 8, !tbaa !121
  store i64 ptrtoint (ptr @_ZN4llvm8RegistryIN5clang4ssaf15FormatInfoEntryINS_12function_refIFNS_4json6ObjectERKNS2_13EntitySummaryENS4_IFS6_NS2_8EntityIdEEEEEEENS4_IFNS_8ExpectedISt10unique_ptrIS7_St14default_deleteIS7_EEEERKS6_RNS2_13EntityIdTableENS4_IFNSF_ISA_EESM_EEEEEEEEJEE3AddIN12_GLOBAL__N_125PointerFlowJSONFormatInfoEE6CtorFnEv to i64), ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 40), align 8, !tbaa !115
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 48), align 8, !tbaa !192
  store ptr @_ZL33RegisterPointerFlowJSONFormatInfo, ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 56), align 8, !tbaa !196
  %i.a = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm6detail27getRegistryLinkListInstanceINS_8RegistryIN5clang4ssaf15FormatInfoEntryINS_12function_refIFNS_4json6ObjectERKNS4_13EntitySummaryENS6_IFS8_NS4_8EntityIdEEEEEEENS6_IFNS_8ExpectedISt10unique_ptrIS9_St14default_deleteIS9_EEEERKS8_RNS4_13EntityIdTableENS6_IFNSH_ISC_EESO_EEEEEEEEJEEEEERNS0_23RegistryLinkListStorageIT_EEv() #17 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !197  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  %..i.i.i = select i1 %.not.i.i.i, ptr %i.a, ptr %i.c
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 48), ptr %..i.i.i, align 8, !tbaa !199
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL33RegisterPointerFlowJSONFormatInfo, i64 48), ptr %i.b, align 8, !tbaa !197
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
