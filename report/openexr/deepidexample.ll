Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/deepidexample?download=true
inline.NumInlined: 970
inline.NumDeleted: 385
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7Imf_3_410IDManifest20ChannelGroupManifestC1Ev
declare void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestC1Ev(ptr noundef nonnull align 8 dereferenceable(201)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7Imf_3_410IDManifest20ChannelGroupManifest11setChannelsERKSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS8_ESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(201), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

declare void @_ZN7Imf_3_410IDManifest20ChannelGroupManifest10setChannelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(201), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN7Imf_3_410IDManifest20ChannelGroupManifest13setComponentsERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(201), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !29 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN7Imf_3_410IDManifest20ChannelGroupManifest12setComponentERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(201), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6randomRSt26linear_congruential_engineImLm16807ELm0ELm2147483647EEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.std::uniform_int_distribution", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i32 0, ptr %2, align 4, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %1, ptr %i.a, align 4, !tbaa !45
  %i.b = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %i.b
}

declare noundef i64 @_ZN7Imf_3_410IDManifest20ChannelGroupManifest6insertERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(201), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare noundef i64 @_ZN7Imf_3_410IDManifest20ChannelGroupManifest6insertERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(201), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_Z8drawBlobRSt6vectorIS_I5RgbazSaIS0_EESaIS2_EEiifffiiPKj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = mul nsw i32 %6, 40
  %i.b = or disjoint i32 %i.a, 5
  %i.c = sitofp i32 %i.b to float                 ; 2 uses
  %i.d = bitcast float %5 to i32
  %i.e = tail call float @llvm.fabs.f32(float %5)
  %i.f = bitcast float %i.e to i32                ; 10 uses
  %i.g = lshr i32 %i.d, 16                        ; 3 uses
  %i.h = trunc nuw i32 %i.g to i16
  %i.i = and i16 %i.h, -32768                     ; 3 uses
  %i.j = icmp samesign ugt i32 %i.f, 947912703
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i32 %i.f, 2139095039
  br i1 %i.k, label %bb.c, label %bb.e, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.l = or disjoint i16 %i.i, 31744              ; 2 uses
  %i.m = icmp eq i32 %i.f, 2139095040
  br i1 %i.m, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.f, 13
  %i.o = and i32 %i.n, 1023                       ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i16
  %i.r = trunc nuw nsw i32 %i.o to i16
  %i.s = or i16 %i.r, %i.q
  %i.t = or disjoint i16 %i.s, %i.l
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i32 %i.f, 1199566847
  br i1 %i.u, label %bb.f, label %bb.g, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i16 %i.i, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.g:                                             ; preds = %bb.e
  %i.w = add nuw nsw i32 %i.f, 134221823
  %i.x = lshr i32 %i.f, 13
  %i.y = and i32 %i.x, 1
  %i.z = add nuw nsw i32 %i.w, %i.y
  %i.aa = lshr i32 %i.z, 13
  %i.ab = and i32 %i.g, 32768
  %i.ac = or i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp samesign ult i32 %i.f, 855638017
  br i1 %i.ae, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = lshr i32 %i.f, 23                       ; 2 uses
  %i.ag = sub nuw nsw i32 126, %i.af
  %i.ah = and i32 %i.f, 8388607
  %i.ai = or disjoint i32 %i.ah, 8388608          ; 2 uses
  %i.aj = add nsw i32 %i.af, -94
  %i.ak = shl i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = lshr i32 %i.ai, %i.ag                   ; 2 uses
  %i.am = and i32 %i.g, 32768
  %i.an = or i32 %i.al, %i.am
  %i.ao = trunc nuw i32 %i.an to i16              ; 2 uses
  %i.ap = icmp ugt i32 %i.ak, -2147483648
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ne i32 %i.ak, -2147483648
  %i.ar = and i32 %i.al, 1
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  %or.cond.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = add nuw i16 %i.ao, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.033.i.i.i = phi i16 [ %i.i, %bb.h ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ %i.ad, %bb.g ], [ %i.l, %bb.c ], [ %i.as, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %i.at = load <4 x i32>, ptr %8, align 4, !tbaa !42 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42 ; 2 uses
  %i.aw = icmp sgt i32 %2, 0
  br i1 %i.aw, label %.preheader.lr.ph, label %._crit_edge81.split

.preheader.lr.ph:                                 ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.ax = icmp sgt i32 %1, 0
  %i.ay = sext i32 %7 to i64
  %i.az = getelementptr inbounds [32 x i8], ptr @colors, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  br i1 %i.ax, label %.preheader, label %._crit_edge81.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03580 = phi i32 [ %i.bf, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.03679 = phi i32 [ %10, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %i.bc = uitofp nneg i32 %.03580 to float
  %i.bd = fsub float %i.bc, %4                    ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  br label %bb.l

._crit_edge81.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN9Imath_3_24halfaSEf.exit
  ret void

._crit_edge:                                      ; preds = %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit
  %i.bf = add nuw nsw i32 %.03580, 1              ; 2 uses
  %exitcond83.not = icmp eq i32 %i.bf, %2
  br i1 %exitcond83.not, label %._crit_edge81.split, label %.preheader, !llvm.loop !133

bb.l:                                             ; preds = %.preheader, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit
  %.078 = phi i32 [ 0, %.preheader ], [ %i.jt, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %.078.a = phi i32 [ %.03679, %.preheader ], [ %10, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.bg = uitofp nneg i32 %.078 to float
  %i.bh = fsub float %3, %i.bg                    ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.be) ; 2 uses
  %i.bj = fneg float %i.bi
  %i.bk = fdiv float %i.bj, %i.c
  %i.bl = tail call noundef float @expf(float noundef %i.bk) #21
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bi)
  %i.bm = fdiv float %sqrt, %i.c
  %i.bn = fsub float 1.000000e+00, %i.bm
  %i.bo = fmul float %i.bn, %i.bl                 ; 6 uses
  %i.bp = fpext float %i.bo to double
  %i.bq = fcmp ogt double %i.bp, 1.000000e-03
  br i1 %i.bq, label %bb.m, label %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit

bb.m:                                             ; preds = %bb.l
  %i.br = load i16, ptr %i.az, align 16, !tbaa !59
  %i.bs = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !61 ; 3 uses
  %i.bt = zext i16 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !28
  %i.bw = fmul float %i.bo, %i.bv                 ; 2 uses
  %i.bx = bitcast float %i.bw to i32
  %i.by = tail call float @llvm.fabs.f32(float %i.bw)
  %i.bz = bitcast float %i.by to i32              ; 10 uses
  %i.ca = lshr i32 %i.bx, 16                      ; 3 uses
  %i.cb = trunc nuw i32 %i.ca to i16
  %i.cc = and i16 %i.cb, -32768                   ; 3 uses
  %i.cd = icmp samesign ugt i32 %i.bz, 947912703
  br i1 %i.cd, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ce = icmp samesign ugt i32 %i.bz, 2139095039
  br i1 %i.ce, label %bb.o, label %bb.q, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.cf = or disjoint i16 %i.cc, 31744            ; 2 uses
  %i.cg = icmp eq i32 %i.bz, 2139095040
  br i1 %i.cg, label %_ZN9Imath_3_24halfaSEf.exit40, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = lshr i32 %i.bz, 13
  %i.ci = and i32 %i.ch, 1023                     ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i16
  %i.cl = trunc nuw nsw i32 %i.ci to i16
  %i.cm = or i16 %i.cl, %i.ck
  %i.cn = or disjoint i16 %i.cm, %i.cf
  br label %_ZN9Imath_3_24halfaSEf.exit40

bb.q:                                             ; preds = %bb.n
  %i.co = icmp samesign ugt i32 %i.bz, 1199566847
  br i1 %i.co, label %bb.r, label %bb.s, !prof !46

bb.r:                                             ; preds = %bb.q
  %i.cp = or disjoint i16 %i.cc, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit40

bb.s:                                             ; preds = %bb.q
  %i.cq = add nuw nsw i32 %i.bz, 134221823
  %i.cr = lshr i32 %i.bz, 13
  %i.cs = and i32 %i.cr, 1
  %i.ct = add nuw nsw i32 %i.cq, %i.cs
  %i.cu = lshr i32 %i.ct, 13
  %i.cv = and i32 %i.ca, 32768
  %i.cw = or i32 %i.cu, %i.cv
  %i.cx = trunc i32 %i.cw to i16
  br label %_ZN9Imath_3_24halfaSEf.exit40

bb.t:                                             ; preds = %bb.m
  %i.cy = icmp samesign ult i32 %i.bz, 855638017
  br i1 %i.cy, label %_ZN9Imath_3_24halfaSEf.exit40, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = lshr i32 %i.bz, 23                      ; 2 uses
  %i.da = sub nuw nsw i32 126, %i.cz
  %i.db = and i32 %i.bz, 8388607
  %i.dc = or disjoint i32 %i.db, 8388608          ; 2 uses
  %i.dd = add nsw i32 %i.cz, -94
  %i.de = shl i32 %i.dc, %i.dd                    ; 2 uses
  %i.df = lshr i32 %i.dc, %i.da                   ; 2 uses
  %i.dg = and i32 %i.ca, 32768
  %i.dh = or i32 %i.df, %i.dg
  %i.di = trunc nuw i32 %i.dh to i16              ; 2 uses
  %i.dj = icmp ugt i32 %i.de, -2147483648
  br i1 %i.dj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = icmp ne i32 %i.de, -2147483648
  %i.dl = and i32 %i.df, 1
  %.not.i.i.i37 = icmp eq i32 %i.dl, 0
  %or.cond.i.i.i38 = select i1 %i.dk, i1 true, i1 %.not.i.i.i37
  br i1 %or.cond.i.i.i38, label %_ZN9Imath_3_24halfaSEf.exit40, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dm = add nuw i16 %i.di, 1
  br label %_ZN9Imath_3_24halfaSEf.exit40

_ZN9Imath_3_24halfaSEf.exit40:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.033.i.i.i39 = phi i16 [ %i.cc, %bb.t ], [ %i.cn, %bb.p ], [ %i.cp, %bb.r ], [ %i.cx, %bb.s ], [ %i.cf, %bb.o ], [ %i.dm, %bb.w ], [ %i.di, %bb.v ] ; 2 uses
  %i.dn = load i16, ptr %i.ba, align 2, !tbaa !59
  %i.do = zext i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !28
  %i.dr = fmul float %i.bo, %i.dq                 ; 2 uses
  %i.ds = bitcast float %i.dr to i32
  %i.dt = tail call float @llvm.fabs.f32(float %i.dr)
  %i.du = bitcast float %i.dt to i32              ; 10 uses
  %i.dv = lshr i32 %i.ds, 16                      ; 3 uses
  %i.dw = trunc nuw i32 %i.dv to i16
  %i.dx = and i16 %i.dw, -32768                   ; 3 uses
  %i.dy = icmp samesign ugt i32 %i.du, 947912703
  br i1 %i.dy, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit40
  %i.dz = icmp samesign ugt i32 %i.du, 2139095039
  br i1 %i.dz, label %bb.y, label %bb.aa, !prof !46

bb.y:                                             ; preds = %bb.x
  %i.ea = or disjoint i16 %i.dx, 31744            ; 2 uses
  %i.eb = icmp eq i32 %i.du, 2139095040
  br i1 %i.eb, label %_ZN9Imath_3_24halfaSEf.exit44, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = lshr i32 %i.du, 13
  %i.ed = and i32 %i.ec, 1023                     ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  %i.ef = zext i1 %i.ee to i16
  %i.eg = trunc nuw nsw i32 %i.ed to i16
  %i.eh = or i16 %i.eg, %i.ef
  %i.ei = or disjoint i16 %i.eh, %i.ea
  br label %_ZN9Imath_3_24halfaSEf.exit44

bb.aa:                                            ; preds = %bb.x
  %i.ej = icmp samesign ugt i32 %i.du, 1199566847
  br i1 %i.ej, label %bb.ab, label %bb.ac, !prof !46

bb.ab:                                            ; preds = %bb.aa
  %i.ek = or disjoint i16 %i.dx, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit44

bb.ac:                                            ; preds = %bb.aa
  %i.el = add nuw nsw i32 %i.du, 134221823
  %i.em = lshr i32 %i.du, 13
  %i.en = and i32 %i.em, 1
  %i.eo = add nuw nsw i32 %i.el, %i.en
  %i.ep = lshr i32 %i.eo, 13
  %i.eq = and i32 %i.dv, 32768
  %i.er = or i32 %i.ep, %i.eq
  %i.es = trunc i32 %i.er to i16
  br label %_ZN9Imath_3_24halfaSEf.exit44

bb.ad:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit40
  %i.et = icmp samesign ult i32 %i.du, 855638017
  br i1 %i.et, label %_ZN9Imath_3_24halfaSEf.exit44, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eu = lshr i32 %i.du, 23                      ; 2 uses
  %i.ev = sub nuw nsw i32 126, %i.eu
  %i.ew = and i32 %i.du, 8388607
  %i.ex = or disjoint i32 %i.ew, 8388608          ; 2 uses
  %i.ey = add nsw i32 %i.eu, -94
  %i.ez = shl i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = lshr i32 %i.ex, %i.ev                   ; 2 uses
  %i.fb = and i32 %i.dv, 32768
  %i.fc = or i32 %i.fa, %i.fb
  %i.fd = trunc nuw i32 %i.fc to i16              ; 2 uses
  %i.fe = icmp ugt i32 %i.ez, -2147483648
  br i1 %i.fe, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ff = icmp ne i32 %i.ez, -2147483648
  %i.fg = and i32 %i.fa, 1
  %.not.i.i.i41 = icmp eq i32 %i.fg, 0
  %or.cond.i.i.i42 = select i1 %i.ff, i1 true, i1 %.not.i.i.i41
  br i1 %or.cond.i.i.i42, label %_ZN9Imath_3_24halfaSEf.exit44, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fh = add nuw i16 %i.fd, 1
  br label %_ZN9Imath_3_24halfaSEf.exit44

_ZN9Imath_3_24halfaSEf.exit44:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.033.i.i.i43 = phi i16 [ %i.dx, %bb.ad ], [ %i.ei, %bb.z ], [ %i.ek, %bb.ab ], [ %i.es, %bb.ac ], [ %i.ea, %bb.y ], [ %i.fh, %bb.ag ], [ %i.fd, %bb.af ] ; 2 uses
  %i.fi = load i16, ptr %i.bb, align 4, !tbaa !59
  %i.fj = zext i16 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.fj
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !28
  %i.fm = fmul float %i.bo, %i.fl                 ; 2 uses
  %i.fn = bitcast float %i.fm to i32
  %i.fo = tail call float @llvm.fabs.f32(float %i.fm)
  %i.fp = bitcast float %i.fo to i32              ; 10 uses
  %i.fq = lshr i32 %i.fn, 16                      ; 3 uses
  %i.fr = trunc nuw i32 %i.fq to i16
  %i.fs = and i16 %i.fr, -32768                   ; 3 uses
  %i.ft = icmp samesign ugt i32 %i.fp, 947912703
  br i1 %i.ft, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit44
  %i.fu = icmp samesign ugt i32 %i.fp, 2139095039
  br i1 %i.fu, label %bb.ai, label %bb.ak, !prof !46

bb.ai:                                            ; preds = %bb.ah
  %i.fv = or disjoint i16 %i.fs, 31744            ; 2 uses
  %i.fw = icmp eq i32 %i.fp, 2139095040
  br i1 %i.fw, label %_ZN9Imath_3_24halfaSEf.exit48, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fx = lshr i32 %i.fp, 13
  %i.fy = and i32 %i.fx, 1023                     ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  %i.ga = zext i1 %i.fz to i16
  %i.gb = trunc nuw nsw i32 %i.fy to i16
  %i.gc = or i16 %i.gb, %i.ga
  %i.gd = or disjoint i16 %i.gc, %i.fv
  br label %_ZN9Imath_3_24halfaSEf.exit48

bb.ak:                                            ; preds = %bb.ah
  %i.ge = icmp samesign ugt i32 %i.fp, 1199566847
  br i1 %i.ge, label %bb.al, label %bb.am, !prof !46

bb.al:                                            ; preds = %bb.ak
  %i.gf = or disjoint i16 %i.fs, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit48

bb.am:                                            ; preds = %bb.ak
  %i.gg = add nuw nsw i32 %i.fp, 134221823
  %i.gh = lshr i32 %i.fp, 13
  %i.gi = and i32 %i.gh, 1
  %i.gj = add nuw nsw i32 %i.gg, %i.gi
  %i.gk = lshr i32 %i.gj, 13
  %i.gl = and i32 %i.fq, 32768
  %i.gm = or i32 %i.gk, %i.gl
  %i.gn = trunc i32 %i.gm to i16
  br label %_ZN9Imath_3_24halfaSEf.exit48

bb.an:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit44
  %i.go = icmp samesign ult i32 %i.fp, 855638017
  br i1 %i.go, label %_ZN9Imath_3_24halfaSEf.exit48, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gp = lshr i32 %i.fp, 23                      ; 2 uses
  %i.gq = sub nuw nsw i32 126, %i.gp
  %i.gr = and i32 %i.fp, 8388607
  %i.gs = or disjoint i32 %i.gr, 8388608          ; 2 uses
  %i.gt = add nsw i32 %i.gp, -94
  %i.gu = shl i32 %i.gs, %i.gt                    ; 2 uses
  %i.gv = lshr i32 %i.gs, %i.gq                   ; 2 uses
  %i.gw = and i32 %i.fq, 32768
  %i.gx = or i32 %i.gv, %i.gw
  %i.gy = trunc nuw i32 %i.gx to i16              ; 2 uses
  %i.gz = icmp ugt i32 %i.gu, -2147483648
  br i1 %i.gz, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ha = icmp ne i32 %i.gu, -2147483648
  %i.hb = and i32 %i.gv, 1
  %.not.i.i.i45 = icmp eq i32 %i.hb, 0
  %or.cond.i.i.i46 = select i1 %i.ha, i1 true, i1 %.not.i.i.i45
  br i1 %or.cond.i.i.i46, label %_ZN9Imath_3_24halfaSEf.exit48, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.hc = add nuw i16 %i.gy, 1
  br label %_ZN9Imath_3_24halfaSEf.exit48

_ZN9Imath_3_24halfaSEf.exit48:                    ; preds = %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq
  %.033.i.i.i47 = phi i16 [ %i.fs, %bb.an ], [ %i.gd, %bb.aj ], [ %i.gf, %bb.al ], [ %i.gn, %bb.am ], [ %i.fv, %bb.ai ], [ %i.hc, %bb.aq ], [ %i.gy, %bb.ap ] ; 2 uses
  %i.hd = bitcast float %i.bo to i32
  %i.he = tail call float @llvm.fabs.f32(float %i.bo)
  %i.hf = bitcast float %i.he to i32              ; 10 uses
  %i.hg = lshr i32 %i.hd, 16                      ; 3 uses
  %i.hh = trunc nuw i32 %i.hg to i16
  %i.hi = and i16 %i.hh, -32768                   ; 3 uses
  %i.hj = icmp samesign ugt i32 %i.hf, 947912703
  br i1 %i.hj, label %bb.ar, label %bb.ax

bb.ar:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit48
  %i.hk = icmp samesign ugt i32 %i.hf, 2139095039
  br i1 %i.hk, label %bb.as, label %bb.au, !prof !46

bb.as:                                            ; preds = %bb.ar
  %i.hl = or disjoint i16 %i.hi, 31744            ; 2 uses
  %i.hm = icmp eq i32 %i.hf, 2139095040
  br i1 %i.hm, label %_ZN9Imath_3_24halfaSEf.exit52, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hn = lshr i32 %i.hf, 13
  %i.ho = and i32 %i.hn, 1023                     ; 2 uses
  %i.hp = icmp eq i32 %i.ho, 0
  %i.hq = zext i1 %i.hp to i16
  %i.hr = trunc nuw nsw i32 %i.ho to i16
  %i.hs = or i16 %i.hr, %i.hq
  %i.ht = or disjoint i16 %i.hs, %i.hl
  br label %_ZN9Imath_3_24halfaSEf.exit52

bb.au:                                            ; preds = %bb.ar
  %i.hu = icmp samesign ugt i32 %i.hf, 1199566847
  br i1 %i.hu, label %bb.av, label %bb.aw, !prof !46

bb.av:                                            ; preds = %bb.au
  %i.hv = or disjoint i16 %i.hi, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit52

bb.aw:                                            ; preds = %bb.au
  %i.hw = add nuw nsw i32 %i.hf, 134221823
  %i.hx = lshr i32 %i.hf, 13
  %i.hy = and i32 %i.hx, 1
  %i.hz = add nuw nsw i32 %i.hw, %i.hy
  %i.ia = lshr i32 %i.hz, 13
  %i.ib = and i32 %i.hg, 32768
  %i.ic = or i32 %i.ia, %i.ib
  %i.id = trunc i32 %i.ic to i16
  br label %_ZN9Imath_3_24halfaSEf.exit52

bb.ax:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit48
  %i.ie = icmp samesign ult i32 %i.hf, 855638017
  br i1 %i.ie, label %_ZN9Imath_3_24halfaSEf.exit52, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.if = lshr i32 %i.hf, 23                      ; 2 uses
  %i.ig = sub nuw nsw i32 126, %i.if
  %i.ih = and i32 %i.hf, 8388607
  %i.ii = or disjoint i32 %i.ih, 8388608          ; 2 uses
  %i.ij = add nsw i32 %i.if, -94
  %i.ik = shl i32 %i.ii, %i.ij                    ; 2 uses
  %i.il = lshr i32 %i.ii, %i.ig                   ; 2 uses
  %i.im = and i32 %i.hg, 32768
  %i.in = or i32 %i.il, %i.im
  %i.io = trunc nuw i32 %i.in to i16              ; 2 uses
  %i.ip = icmp ugt i32 %i.ik, -2147483648
  br i1 %i.ip, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.iq = icmp ne i32 %i.ik, -2147483648
  %i.ir = and i32 %i.il, 1
  %.not.i.i.i49 = icmp eq i32 %i.ir, 0
  %or.cond.i.i.i50 = select i1 %i.iq, i1 true, i1 %.not.i.i.i49
  br i1 %or.cond.i.i.i50, label %_ZN9Imath_3_24halfaSEf.exit52, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.is = add nuw i16 %i.io, 1
  br label %_ZN9Imath_3_24halfaSEf.exit52

_ZN9Imath_3_24halfaSEf.exit52:                    ; preds = %bb.as, %bb.at, %bb.av, %bb.aw, %bb.ax, %bb.az, %bb.ba
  %.033.i.i.i51 = phi i16 [ %i.hi, %bb.ax ], [ %i.ht, %bb.at ], [ %i.hv, %bb.av ], [ %i.id, %bb.aw ], [ %i.hl, %bb.as ], [ %i.is, %bb.ba ], [ %i.io, %bb.az ] ; 2 uses
  %9 = sext i32 %.078.a to i64
  %i.it = load ptr, ptr %0, align 8, !tbaa !37
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.it, i64 %9 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8 ; 3 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !49 ; 10 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 16 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.iw, %i.iy
  br i1 %.not.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit52
  store i16 %.033.i.i.i39, ptr %i.iw, align 4, !tbaa !62
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 2
  store i16 %.033.i.i.i43, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !62
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 4
  store i16 %.033.i.i.i47, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !62
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 6
  store i16 %.033.i.i.i51, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !62
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  store i16 %.033.i.i.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !62
  %.sroa.965.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 12
  store <4 x i32> %i.at, ptr %.sroa.965.0..sroa_idx, align 4, !tbaa !42
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 28
  store i32 %i.av, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !42
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 32
  store ptr %i.iz, ptr %i.iv, align 8, !tbaa !49
  br label %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit

bb.bc:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit52
  %i.ja = load ptr, ptr %i.iu, align 8, !tbaa !50 ; 4 uses
  %i.jb = ptrtoint ptr %i.iw to i64
  %i.jc = ptrtoint ptr %i.ja to i64               ; 2 uses
  %i.jd = sub i64 %i.jb, %i.jc                    ; 5 uses
  %i.je = icmp eq i64 %i.jd, 9223372036854775776
  br i1 %i.je, label %bb.bd, label %_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bc
  %i.jf = ashr exact i64 %i.jd, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.jf, i64 1)
  %i.jg = add nsw i64 %.sroa.speculated.i.i.i, %i.jf ; 2 uses
  %i.jh = icmp ult i64 %i.jg, %i.jf
  %i.ji = tail call i64 @llvm.umin.i64(i64 %i.jg, i64 288230376151711743)
  %i.jj = select i1 %i.jh, i64 288230376151711743, i64 %i.ji ; 3 uses
  %.not.i.i.i53 = icmp ne i64 %i.jj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i53)
  %i.jk = shl nuw nsw i64 %i.jj, 5
  %i.jl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jk) #22 ; 4 uses
  %i.jm = getelementptr inbounds i8, ptr %i.jl, i64 %i.jd ; 8 uses
  store i16 %.033.i.i.i39, ptr %i.jm, align 4, !tbaa !62
  %.sroa.5.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.jm, i64 2
  store i16 %.033.i.i.i43, ptr %.sroa.5.0..sroa_idx55, align 2, !tbaa !62
  %.sroa.6.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  store i16 %.033.i.i.i47, ptr %.sroa.6.0..sroa_idx57, align 4, !tbaa !62
  %.sroa.7.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.jm, i64 6
  store i16 %.033.i.i.i51, ptr %.sroa.7.0..sroa_idx59, align 2, !tbaa !62
  %.sroa.8.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  store i16 %.033.i.i.i, ptr %.sroa.8.0..sroa_idx61, align 4, !tbaa !62
  %.sroa.965.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.jm, i64 12
  store <4 x i32> %i.at, ptr %.sroa.965.0..sroa_idx66, align 4, !tbaa !42
  %.sroa.13.0..sroa_idx74 = getelementptr inbounds nuw i8, ptr %i.jm, i64 28
  store i32 %i.av, ptr %.sroa.13.0..sroa_idx74, align 4, !tbaa !42
  %i.jn = icmp sgt i64 %i.jd, 0
  br i1 %i.jn, label %bb.be, label %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.be:                                            ; preds = %_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.jl, ptr align 4 %i.ja, i64 %i.jd, i1 false)
  br label %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.be, %_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %.not.i17.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.jp = load ptr, ptr %i.ix, align 8, !tbaa !56
  %i.jq = ptrtoint ptr %i.jp to i64
  %i.jr = sub i64 %i.jq, %i.jc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.jr) #23
  br label %_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.bf, %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.jl, ptr %i.iu, align 8, !tbaa !50
  store ptr %i.jo, ptr %i.iv, align 8, !tbaa !49
  %i.js = getelementptr inbounds nuw [32 x i8], ptr %i.jl, i64 %i.jj
  store ptr %i.js, ptr %i.ix, align 8, !tbaa !56
  br label %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.bb, %bb.l
  %10 = add nsw i32 %.078.a, 1                    ; 2 uses
  %i.jt = add nuw nsw i32 %.078, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.jt, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !134
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10drawCircleRSt6vectorIS_I5RgbazSaIS0_EESaIS2_EEiifffiiPKj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl nsw i32 %6, 3
  %i.b = or disjoint i32 %i.a, 3
  %i.c = sitofp i32 %i.b to float
  %i.d = bitcast float %5 to i32
  %i.e = tail call float @llvm.fabs.f32(float %5)
  %i.f = bitcast float %i.e to i32                ; 10 uses
  %i.g = lshr i32 %i.d, 16                        ; 3 uses
  %i.h = trunc nuw i32 %i.g to i16
  %i.i = and i16 %i.h, -32768                     ; 3 uses
  %i.j = icmp samesign ugt i32 %i.f, 947912703
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp samesign ugt i32 %i.f, 2139095039
  br i1 %i.k, label %bb.c, label %bb.e, !prof !46

bb.c:                                             ; preds = %bb.b
  %i.l = or disjoint i16 %i.i, 31744              ; 2 uses
  %i.m = icmp eq i32 %i.f, 2139095040
  br i1 %i.m, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %i.f, 13
  %i.o = and i32 %i.n, 1023                       ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i1 %i.p to i16
  %i.r = trunc nuw nsw i32 %i.o to i16
  %i.s = or i16 %i.r, %i.q
  %i.t = or disjoint i16 %i.s, %i.l
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i32 %i.f, 1199566847
  br i1 %i.u, label %bb.f, label %bb.g, !prof !46

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i16 %i.i, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.g:                                             ; preds = %bb.e
  %i.w = add nuw nsw i32 %i.f, 134221823
  %i.x = lshr i32 %i.f, 13
  %i.y = and i32 %i.x, 1
  %i.z = add nuw nsw i32 %i.w, %i.y
  %i.aa = lshr i32 %i.z, 13
  %i.ab = and i32 %i.g, 32768
  %i.ac = or i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i16
  br label %_ZN9Imath_3_24halfaSEf.exit

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp samesign ult i32 %i.f, 855638017
  br i1 %i.ae, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = lshr i32 %i.f, 23                       ; 2 uses
  %i.ag = sub nuw nsw i32 126, %i.af
  %i.ah = and i32 %i.f, 8388607
  %i.ai = or disjoint i32 %i.ah, 8388608          ; 2 uses
  %i.aj = add nsw i32 %i.af, -94
  %i.ak = shl i32 %i.ai, %i.aj                    ; 2 uses
  %i.al = lshr i32 %i.ai, %i.ag                   ; 2 uses
  %i.am = and i32 %i.g, 32768
  %i.an = or i32 %i.al, %i.am
  %i.ao = trunc nuw i32 %i.an to i16              ; 2 uses
  %i.ap = icmp ugt i32 %i.ak, -2147483648
  br i1 %i.ap, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp ne i32 %i.ak, -2147483648
  %i.ar = and i32 %i.al, 1
  %.not.i.i.i = icmp eq i32 %i.ar, 0
  %or.cond.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i.i.i
  br i1 %or.cond.i.i.i, label %_ZN9Imath_3_24halfaSEf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = add nuw i16 %i.ao, 1
  br label %_ZN9Imath_3_24halfaSEf.exit

_ZN9Imath_3_24halfaSEf.exit:                      ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.j, %bb.k
  %.033.i.i.i = phi i16 [ %i.i, %bb.h ], [ %i.t, %bb.d ], [ %i.v, %bb.f ], [ %i.ad, %bb.g ], [ %i.l, %bb.c ], [ %i.as, %bb.k ], [ %i.ao, %bb.j ] ; 2 uses
  %i.at = load <4 x i32>, ptr %8, align 4, !tbaa !42 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = load i32, ptr %i.au, align 4, !tbaa !42 ; 2 uses
  %i.aw = icmp sgt i32 %2, 0
  br i1 %i.aw, label %.preheader.lr.ph, label %._crit_edge79.split

.preheader.lr.ph:                                 ; preds = %_ZN9Imath_3_24halfaSEf.exit
  %i.ax = icmp sgt i32 %1, 0
  %i.ay = sext i32 %7 to i64
  %i.az = getelementptr inbounds [32 x i8], ptr @colors, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  br i1 %i.ax, label %.preheader, label %._crit_edge79.split

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.03278 = phi i32 [ %i.bg, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.03377 = phi i32 [ %10, %._crit_edge ], [ 0, %.preheader.lr.ph ]
  %i.bc = uitofp nneg i32 %.03278 to float
  %i.bd = fsub float %i.bc, %4                    ; 2 uses
  %i.be = fadd float %i.bd, -5.000000e-01
  %i.bf = fadd float %i.bd, 5.000000e-01
  br label %bb.l

._crit_edge79.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %_ZN9Imath_3_24halfaSEf.exit
  ret void

._crit_edge:                                      ; preds = %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit
  %i.bg = add nuw nsw i32 %.03278, 1              ; 2 uses
  %exitcond81.not = icmp eq i32 %i.bg, %2
  br i1 %exitcond81.not, label %._crit_edge79.split, label %.preheader, !llvm.loop !135

bb.l:                                             ; preds = %.preheader, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit
  %.076 = phi i32 [ 0, %.preheader ], [ %i.je, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %.076.a = phi i32 [ %.03377, %.preheader ], [ %10, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.bh = uitofp nneg i32 %.076 to float
  %i.bi = fsub float %i.bh, %3                    ; 2 uses
  %i.bj = fadd float %i.bi, -5.000000e-01
  %i.bk = fadd float %i.bi, 5.000000e-01
  %i.bl = tail call noundef float @_Z8getAlphafffff(float noundef %i.bj, float noundef %i.be, float noundef %i.bk, float noundef %i.bf, float noundef %i.c) ; 5 uses
  %i.bm = fcmp ogt float %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.m, label %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bn = load i16, ptr %i.az, align 16, !tbaa !59
  %i.bo = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !61 ; 3 uses
  %i.bp = zext i16 %i.bn to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !28
  %i.bs = fmul float %i.bl, %i.br                 ; 2 uses
  %i.bt = bitcast float %i.bs to i32
  %i.bu = tail call float @llvm.fabs.f32(float %i.bs)
  %i.bv = bitcast float %i.bu to i32              ; 10 uses
  %i.bw = lshr i32 %i.bt, 16                      ; 3 uses
  %i.bx = trunc nuw i32 %i.bw to i16
  %i.by = and i16 %i.bx, -32768                   ; 3 uses
  %i.bz = icmp samesign ugt i32 %i.bv, 947912703
  br i1 %i.bz, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.ca = icmp samesign ugt i32 %i.bv, 2139095039
  br i1 %i.ca, label %bb.o, label %bb.q, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.cb = or disjoint i16 %i.by, 31744            ; 2 uses
  %i.cc = icmp eq i32 %i.bv, 2139095040
  br i1 %i.cc, label %_ZN9Imath_3_24halfaSEf.exit38, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = lshr i32 %i.bv, 13
  %i.ce = and i32 %i.cd, 1023                     ; 2 uses
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i1 %i.cf to i16
  %i.ch = trunc nuw nsw i32 %i.ce to i16
  %i.ci = or i16 %i.ch, %i.cg
  %i.cj = or disjoint i16 %i.ci, %i.cb
  br label %_ZN9Imath_3_24halfaSEf.exit38

bb.q:                                             ; preds = %bb.n
  %i.ck = icmp samesign ugt i32 %i.bv, 1199566847
  br i1 %i.ck, label %bb.r, label %bb.s, !prof !46

bb.r:                                             ; preds = %bb.q
  %i.cl = or disjoint i16 %i.by, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit38

bb.s:                                             ; preds = %bb.q
  %i.cm = add nuw nsw i32 %i.bv, 134221823
  %i.cn = lshr i32 %i.bv, 13
  %i.co = and i32 %i.cn, 1
  %i.cp = add nuw nsw i32 %i.cm, %i.co
  %i.cq = lshr i32 %i.cp, 13
  %i.cr = and i32 %i.bw, 32768
  %i.cs = or i32 %i.cq, %i.cr
  %i.ct = trunc i32 %i.cs to i16
  br label %_ZN9Imath_3_24halfaSEf.exit38

bb.t:                                             ; preds = %bb.m
  %i.cu = icmp samesign ult i32 %i.bv, 855638017
  br i1 %i.cu, label %_ZN9Imath_3_24halfaSEf.exit38, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = lshr i32 %i.bv, 23                      ; 2 uses
  %i.cw = sub nuw nsw i32 126, %i.cv
  %i.cx = and i32 %i.bv, 8388607
  %i.cy = or disjoint i32 %i.cx, 8388608          ; 2 uses
  %i.cz = add nsw i32 %i.cv, -94
  %i.da = shl i32 %i.cy, %i.cz                    ; 2 uses
  %i.db = lshr i32 %i.cy, %i.cw                   ; 2 uses
  %i.dc = and i32 %i.bw, 32768
  %i.dd = or i32 %i.db, %i.dc
  %i.de = trunc nuw i32 %i.dd to i16              ; 2 uses
  %i.df = icmp ugt i32 %i.da, -2147483648
  br i1 %i.df, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = icmp ne i32 %i.da, -2147483648
  %i.dh = and i32 %i.db, 1
  %.not.i.i.i35 = icmp eq i32 %i.dh, 0
  %or.cond.i.i.i36 = select i1 %i.dg, i1 true, i1 %.not.i.i.i35
  br i1 %or.cond.i.i.i36, label %_ZN9Imath_3_24halfaSEf.exit38, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.di = add nuw i16 %i.de, 1
  br label %_ZN9Imath_3_24halfaSEf.exit38

_ZN9Imath_3_24halfaSEf.exit38:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.033.i.i.i37 = phi i16 [ %i.by, %bb.t ], [ %i.cj, %bb.p ], [ %i.cl, %bb.r ], [ %i.ct, %bb.s ], [ %i.cb, %bb.o ], [ %i.di, %bb.w ], [ %i.de, %bb.v ] ; 2 uses
  %i.dj = load i16, ptr %i.ba, align 2, !tbaa !59
  %i.dk = zext i16 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.dk
  %i.dm = load float, ptr %i.dl, align 4, !tbaa !28
  %i.dn = fmul float %i.bl, %i.dm                 ; 2 uses
  %i.do = bitcast float %i.dn to i32
  %i.dp = tail call float @llvm.fabs.f32(float %i.dn)
  %i.dq = bitcast float %i.dp to i32              ; 10 uses
  %i.dr = lshr i32 %i.do, 16                      ; 3 uses
  %i.ds = trunc nuw i32 %i.dr to i16
  %i.dt = and i16 %i.ds, -32768                   ; 3 uses
  %i.du = icmp samesign ugt i32 %i.dq, 947912703
  br i1 %i.du, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit38
  %i.dv = icmp samesign ugt i32 %i.dq, 2139095039
  br i1 %i.dv, label %bb.y, label %bb.aa, !prof !46

bb.y:                                             ; preds = %bb.x
  %i.dw = or disjoint i16 %i.dt, 31744            ; 2 uses
  %i.dx = icmp eq i32 %i.dq, 2139095040
  br i1 %i.dx, label %_ZN9Imath_3_24halfaSEf.exit42, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dy = lshr i32 %i.dq, 13
  %i.dz = and i32 %i.dy, 1023                     ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  %i.eb = zext i1 %i.ea to i16
  %i.ec = trunc nuw nsw i32 %i.dz to i16
  %i.ed = or i16 %i.ec, %i.eb
  %i.ee = or disjoint i16 %i.ed, %i.dw
  br label %_ZN9Imath_3_24halfaSEf.exit42

bb.aa:                                            ; preds = %bb.x
  %i.ef = icmp samesign ugt i32 %i.dq, 1199566847
  br i1 %i.ef, label %bb.ab, label %bb.ac, !prof !46

bb.ab:                                            ; preds = %bb.aa
  %i.eg = or disjoint i16 %i.dt, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit42

bb.ac:                                            ; preds = %bb.aa
  %i.eh = add nuw nsw i32 %i.dq, 134221823
  %i.ei = lshr i32 %i.dq, 13
  %i.ej = and i32 %i.ei, 1
  %i.ek = add nuw nsw i32 %i.eh, %i.ej
  %i.el = lshr i32 %i.ek, 13
  %i.em = and i32 %i.dr, 32768
  %i.en = or i32 %i.el, %i.em
  %i.eo = trunc i32 %i.en to i16
  br label %_ZN9Imath_3_24halfaSEf.exit42

bb.ad:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit38
  %i.ep = icmp samesign ult i32 %i.dq, 855638017
  br i1 %i.ep, label %_ZN9Imath_3_24halfaSEf.exit42, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eq = lshr i32 %i.dq, 23                      ; 2 uses
  %i.er = sub nuw nsw i32 126, %i.eq
  %i.es = and i32 %i.dq, 8388607
  %i.et = or disjoint i32 %i.es, 8388608          ; 2 uses
  %i.eu = add nsw i32 %i.eq, -94
  %i.ev = shl i32 %i.et, %i.eu                    ; 2 uses
  %i.ew = lshr i32 %i.et, %i.er                   ; 2 uses
  %i.ex = and i32 %i.dr, 32768
  %i.ey = or i32 %i.ew, %i.ex
  %i.ez = trunc nuw i32 %i.ey to i16              ; 2 uses
  %i.fa = icmp ugt i32 %i.ev, -2147483648
  br i1 %i.fa, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = icmp ne i32 %i.ev, -2147483648
  %i.fc = and i32 %i.ew, 1
  %.not.i.i.i39 = icmp eq i32 %i.fc, 0
  %or.cond.i.i.i40 = select i1 %i.fb, i1 true, i1 %.not.i.i.i39
  br i1 %or.cond.i.i.i40, label %_ZN9Imath_3_24halfaSEf.exit42, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fd = add nuw i16 %i.ez, 1
  br label %_ZN9Imath_3_24halfaSEf.exit42

_ZN9Imath_3_24halfaSEf.exit42:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.033.i.i.i41 = phi i16 [ %i.dt, %bb.ad ], [ %i.ee, %bb.z ], [ %i.eg, %bb.ab ], [ %i.eo, %bb.ac ], [ %i.dw, %bb.y ], [ %i.fd, %bb.ag ], [ %i.ez, %bb.af ] ; 2 uses
  %i.fe = load i16, ptr %i.bb, align 4, !tbaa !59
  %i.ff = zext i16 %i.fe to i64
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !28
  %i.fi = fmul float %i.bl, %i.fh                 ; 2 uses
  %i.fj = bitcast float %i.fi to i32
  %i.fk = tail call float @llvm.fabs.f32(float %i.fi)
  %i.fl = bitcast float %i.fk to i32              ; 10 uses
  %i.fm = lshr i32 %i.fj, 16                      ; 3 uses
  %i.fn = trunc nuw i32 %i.fm to i16
  %i.fo = and i16 %i.fn, -32768                   ; 3 uses
  %i.fp = icmp samesign ugt i32 %i.fl, 947912703
  br i1 %i.fp, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit42
  %i.fq = icmp samesign ugt i32 %i.fl, 2139095039
  br i1 %i.fq, label %bb.ai, label %bb.ak, !prof !46

bb.ai:                                            ; preds = %bb.ah
  %i.fr = or disjoint i16 %i.fo, 31744            ; 2 uses
  %i.fs = icmp eq i32 %i.fl, 2139095040
  br i1 %i.fs, label %_ZN9Imath_3_24halfaSEf.exit46, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ft = lshr i32 %i.fl, 13
  %i.fu = and i32 %i.ft, 1023                     ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = zext i1 %i.fv to i16
  %i.fx = trunc nuw nsw i32 %i.fu to i16
  %i.fy = or i16 %i.fx, %i.fw
  %i.fz = or disjoint i16 %i.fy, %i.fr
  br label %_ZN9Imath_3_24halfaSEf.exit46

bb.ak:                                            ; preds = %bb.ah
  %i.ga = icmp samesign ugt i32 %i.fl, 1199566847
  br i1 %i.ga, label %bb.al, label %bb.am, !prof !46

bb.al:                                            ; preds = %bb.ak
  %i.gb = or disjoint i16 %i.fo, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit46

bb.am:                                            ; preds = %bb.ak
  %i.gc = add nuw nsw i32 %i.fl, 134221823
  %i.gd = lshr i32 %i.fl, 13
  %i.ge = and i32 %i.gd, 1
  %i.gf = add nuw nsw i32 %i.gc, %i.ge
  %i.gg = lshr i32 %i.gf, 13
  %i.gh = and i32 %i.fm, 32768
  %i.gi = or i32 %i.gg, %i.gh
  %i.gj = trunc i32 %i.gi to i16
  br label %_ZN9Imath_3_24halfaSEf.exit46

bb.an:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit42
  %i.gk = icmp samesign ult i32 %i.fl, 855638017
  br i1 %i.gk, label %_ZN9Imath_3_24halfaSEf.exit46, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gl = lshr i32 %i.fl, 23                      ; 2 uses
  %i.gm = sub nuw nsw i32 126, %i.gl
  %i.gn = and i32 %i.fl, 8388607
  %i.go = or disjoint i32 %i.gn, 8388608          ; 2 uses
  %i.gp = add nsw i32 %i.gl, -94
  %i.gq = shl i32 %i.go, %i.gp                    ; 2 uses
  %i.gr = lshr i32 %i.go, %i.gm                   ; 2 uses
  %i.gs = and i32 %i.fm, 32768
  %i.gt = or i32 %i.gr, %i.gs
  %i.gu = trunc nuw i32 %i.gt to i16              ; 2 uses
  %i.gv = icmp ugt i32 %i.gq, -2147483648
  br i1 %i.gv, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gw = icmp ne i32 %i.gq, -2147483648
  %i.gx = and i32 %i.gr, 1
  %.not.i.i.i43 = icmp eq i32 %i.gx, 0
  %or.cond.i.i.i44 = select i1 %i.gw, i1 true, i1 %.not.i.i.i43
  br i1 %or.cond.i.i.i44, label %_ZN9Imath_3_24halfaSEf.exit46, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gy = add nuw i16 %i.gu, 1
  br label %_ZN9Imath_3_24halfaSEf.exit46

_ZN9Imath_3_24halfaSEf.exit46:                    ; preds = %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an, %bb.ap, %bb.aq
  %.033.i.i.i45 = phi i16 [ %i.fo, %bb.an ], [ %i.fz, %bb.aj ], [ %i.gb, %bb.al ], [ %i.gj, %bb.am ], [ %i.fr, %bb.ai ], [ %i.gy, %bb.aq ], [ %i.gu, %bb.ap ] ; 2 uses
  %i.gz = bitcast float %i.bl to i32              ; 10 uses
  %i.ha = icmp samesign ugt i32 %i.gz, 947912703
  br i1 %i.ha, label %bb.ar, label %bb.aw

bb.ar:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit46
  %i.hb = icmp samesign ugt i32 %i.gz, 2139095039
  br i1 %i.hb, label %bb.as, label %bb.au, !prof !46

bb.as:                                            ; preds = %bb.ar
  %i.hc = icmp eq i32 %i.gz, 2139095040
  br i1 %i.hc, label %_ZN9Imath_3_24halfaSEf.exit50, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hd = lshr i32 %i.gz, 13
  %i.he = and i32 %i.hd, 1023                     ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  %i.hg = zext i1 %i.hf to i16
  %i.hh = trunc nuw nsw i32 %i.he to i16
  %i.hi = or i16 %i.hh, %i.hg
  %i.hj = or disjoint i16 %i.hi, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit50

bb.au:                                            ; preds = %bb.ar
  %i.hk = icmp samesign ugt i32 %i.gz, 1199566847
  br i1 %i.hk, label %_ZN9Imath_3_24halfaSEf.exit50, label %bb.av, !prof !46

bb.av:                                            ; preds = %bb.au
  %i.hl = add nuw nsw i32 %i.gz, 134221823
  %i.hm = lshr i32 %i.gz, 13
  %i.hn = and i32 %i.hm, 1
  %i.ho = add nuw nsw i32 %i.hl, %i.hn
  %i.hp = lshr i32 %i.ho, 13
  %i.hq = trunc i32 %i.hp to i16
  br label %_ZN9Imath_3_24halfaSEf.exit50

bb.aw:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit46
  %i.hr = icmp samesign ult i32 %i.gz, 855638017
  br i1 %i.hr, label %_ZN9Imath_3_24halfaSEf.exit50, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hs = lshr i32 %i.gz, 23                      ; 2 uses
  %i.ht = sub nuw nsw i32 126, %i.hs
  %i.hu = and i32 %i.gz, 8388607
  %i.hv = or disjoint i32 %i.hu, 8388608          ; 2 uses
  %i.hw = add nsw i32 %i.hs, -94
  %i.hx = shl i32 %i.hv, %i.hw                    ; 2 uses
  %i.hy = lshr i32 %i.hv, %i.ht                   ; 2 uses
  %i.hz = trunc nuw nsw i32 %i.hy to i16          ; 2 uses
  %i.ia = icmp ugt i32 %i.hx, -2147483648
  br i1 %i.ia, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ib = icmp ne i32 %i.hx, -2147483648
  %i.ic = and i32 %i.hy, 1
  %.not.i.i.i47 = icmp eq i32 %i.ic, 0
  %or.cond.i.i.i48 = select i1 %i.ib, i1 true, i1 %.not.i.i.i47
  br i1 %or.cond.i.i.i48, label %_ZN9Imath_3_24halfaSEf.exit50, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.id = add nuw nsw i16 %i.hz, 1
  br label %_ZN9Imath_3_24halfaSEf.exit50

_ZN9Imath_3_24halfaSEf.exit50:                    ; preds = %bb.au, %bb.as, %bb.at, %bb.av, %bb.aw, %bb.ay, %bb.az
  %.033.i.i.i49 = phi i16 [ 0, %bb.aw ], [ %i.hj, %bb.at ], [ %i.hz, %bb.ay ], [ %i.hq, %bb.av ], [ 31744, %bb.as ], [ %i.id, %bb.az ], [ 31744, %bb.au ] ; 2 uses
  %9 = sext i32 %.076.a to i64
  %i.ie = load ptr, ptr %0, align 8, !tbaa !37
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %i.ie, i64 %9 ; 4 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 8 ; 3 uses
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !49 ; 10 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 16 ; 3 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !56
  %.not.i = icmp eq ptr %i.ih, %i.ij
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit50
  store i16 %.033.i.i.i37, ptr %i.ih, align 4, !tbaa !62
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  store i16 %.033.i.i.i41, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !62
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  store i16 %.033.i.i.i45, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !62
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 6
  store i16 %.033.i.i.i49, ptr %.sroa.7.0..sroa_idx, align 2, !tbaa !62
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  store i16 %.033.i.i.i, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !62
  %.sroa.963.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 12
  store <4 x i32> %i.at, ptr %.sroa.963.0..sroa_idx, align 4, !tbaa !42
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ih, i64 28
  store i32 %i.av, ptr %.sroa.13.0..sroa_idx, align 4, !tbaa !42
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 32
  store ptr %i.ik, ptr %i.ig, align 8, !tbaa !49
  br label %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit

bb.bb:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit50
  %i.il = load ptr, ptr %i.if, align 8, !tbaa !50 ; 4 uses
  %i.im = ptrtoint ptr %i.ih to i64
  %i.in = ptrtoint ptr %i.il to i64               ; 2 uses
  %i.io = sub i64 %i.im, %i.in                    ; 5 uses
  %i.ip = icmp eq i64 %i.io, 9223372036854775776
  br i1 %i.ip, label %bb.bc, label %_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %i.iq = ashr exact i64 %i.io, 5                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.iq, i64 1)
  %i.ir = add nsw i64 %.sroa.speculated.i.i.i, %i.iq ; 2 uses
  %i.is = icmp ult i64 %i.ir, %i.iq
  %i.it = tail call i64 @llvm.umin.i64(i64 %i.ir, i64 288230376151711743)
  %i.iu = select i1 %i.is, i64 288230376151711743, i64 %i.it ; 3 uses
  %.not.i.i.i51 = icmp ne i64 %i.iu, 0
  tail call void @llvm.assume(i1 %.not.i.i.i51)
  %i.iv = shl nuw nsw i64 %i.iu, 5
  %i.iw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iv) #22 ; 4 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %i.io ; 8 uses
  store i16 %.033.i.i.i37, ptr %i.ix, align 4, !tbaa !62
  %.sroa.5.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.ix, i64 2
  store i16 %.033.i.i.i41, ptr %.sroa.5.0..sroa_idx53, align 2, !tbaa !62
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i16 %.033.i.i.i45, ptr %.sroa.6.0..sroa_idx55, align 4, !tbaa !62
  %.sroa.7.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.ix, i64 6
  store i16 %.033.i.i.i49, ptr %.sroa.7.0..sroa_idx57, align 2, !tbaa !62
  %.sroa.8.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  store i16 %.033.i.i.i, ptr %.sroa.8.0..sroa_idx59, align 4, !tbaa !62
  %.sroa.963.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.ix, i64 12
  store <4 x i32> %i.at, ptr %.sroa.963.0..sroa_idx64, align 4, !tbaa !42
  %.sroa.13.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.ix, i64 28
  store i32 %i.av, ptr %.sroa.13.0..sroa_idx72, align 4, !tbaa !42
  %i.iy = icmp sgt i64 %i.io, 0
  br i1 %i.iy, label %bb.bd, label %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.bd:                                            ; preds = %_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.iw, ptr align 4 %i.il, i64 %i.io, i1 false)
  br label %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.bd, %_ZNKSt6vectorI5RgbazSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %.not.i17.i.i = icmp eq ptr %i.il, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.ja = load ptr, ptr %i.ii, align 8, !tbaa !56
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = sub i64 %i.jb, %i.in
  tail call void @_ZdlPvm(ptr noundef nonnull %i.il, i64 noundef %i.jc) #23
  br label %_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorI5RgbazSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.iw, ptr %i.if, align 8, !tbaa !50
  store ptr %i.iz, ptr %i.ig, align 8, !tbaa !49
  %i.jd = getelementptr inbounds nuw [32 x i8], ptr %i.iw, i64 %i.iu
  store ptr %i.jd, ptr %i.ii, align 8, !tbaa !56
  br label %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit: ; preds = %_ZNSt6vectorI5RgbazSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.ba, %bb.l
  %10 = add nsw i32 %.076.a, 1                    ; 2 uses
  %i.je = add nuw nsw i32 %.076, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.je, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.l, !llvm.loop !136
}

declare void @_ZN7Imf_3_46HeaderC1EiifRKN9Imath_3_24Vec2IfEEfNS_9LineOrderENS_11CompressionE(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, i32 noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), float noundef, i32 noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZN7Imf_3_46Header11compressionEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare void @_ZN7Imf_3_415DeepFrameBuffer22insertSampleCountSliceERKNS_5SliceE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(50)) local_unnamed_addr #4

declare void @_ZN7Imf_3_45SliceC1ENS_9PixelTypeEPcmmiidbb(ptr noundef nonnull align 8 dereferenceable(50), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN7Imf_3_46Header8channelsEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare void @_ZN7Imf_3_411ChannelList6insertEPKcRKNS_7ChannelE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 4 dereferenceable(13)) local_unnamed_addr #4

declare void @_ZN7Imf_3_47ChannelC1ENS_9PixelTypeEiib(ptr noundef nonnull align 4 dereferenceable(13), i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN7Imf_3_415DeepFrameBuffer6insertEPKcRKNS_9DeepSliceE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZN7Imf_3_49DeepSliceC1ENS_9PixelTypeEPcmmmiidbb(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef, double noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN7Imf_3_46Header6insertEPKcRKNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN7Imf_3_414TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEEC1ERKS9_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Imf_3_414TypedAttributeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EEED1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #7

declare void @_ZN7Imf_3_410IDManifestC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(201) ptr @_ZN7Imf_3_410IDManifest3addERKNS0_20ChannelGroupManifestE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(201)) local_unnamed_addr #4

declare void @_ZN7Imf_3_413addIDManifestERNS_6HeaderERKNS_20CompressedIDManifestE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN7Imf_3_420CompressedIDManifestC1ERKNS_10IDManifestE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Imf_3_420CompressedIDManifestD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #24
  unreachable

_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !28
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !28
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.s, %i.u
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.aa, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3 ] ; 3 uses
  %i.v = load ptr, ptr %.05.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.y = load i64, ptr %i.w, align 8, !tbaa !28
  %i.z = add i64 %i.y, 1
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, %i.u
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.r, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.ab = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !33
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.ag) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.ai)
          to label %_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  %i.ak = extractvalue { ptr, i32 } %i.aj, 0
  tail call void @__clang_call_terminate(ptr %i.ak) #24
  unreachable

_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_410IDManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !53     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN7Imf_3_410IDManifest20ChannelGroupManifestD2Ev(ptr noundef nonnull align 8 dead_on_return(201) dereferenceable(201) %.05.i.i.i) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !53
  br label %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.e = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !55
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #23
  br label %_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7Imf_3_410IDManifest20ChannelGroupManifestES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  ret void
}

declare void @_ZN7Imf_3_417addDeepImageStateERNS_6HeaderERKNS_14DeepImageStateE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef i32 @_ZN7Imf_3_417globalThreadCountEv() local_unnamed_addr #4

declare void @_ZN7Imf_3_422DeepScanLineOutputFileC1EPKcRKNS_6HeaderEi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) unnamed_addr #4

declare void @_ZN7Imf_3_422DeepScanLineOutputFile14setFrameBufferERKNS_15DeepFrameBufferE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare void @_ZN7Imf_3_422DeepScanLineOutputFile11writePixelsEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN7Imf_3_422DeepScanLineOutputFileD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7Imf_3_415DeepFrameBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
end_hunk_0
