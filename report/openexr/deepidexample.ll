Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/deepidexample?download=true
inline.NumInlined: 970
inline.NumDeleted: 385
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EED2Ev:bb.a
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
  %.03679 = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.preheader.lr.ph ]
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
  %indvars.iv = phi i64 [ %.03679, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %.078 = phi i32 [ 0, %.preheader ], [ %i.ju, %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit ] ; 2 uses
  %i.bg = uitofp nneg i32 %.078 to float
  %i.bh = fsub float %3, %i.bg                    ; 2 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.be) ; 2 uses
  %i.bj = fneg float %i.bi
  %i.bk = fdiv float %i.bj, %i.c
  %i.bl = tail call noundef float @expf(float noundef %i.bk) #21
  %i.bm = tail call noundef float @sqrtf(float noundef %i.bi) #21
  %i.bn = fdiv float %i.bm, %i.c
  %i.bo = fsub float 1.000000e+00, %i.bn
  %i.bp = fmul float %i.bl, %i.bo                 ; 6 uses
  %i.bq = fpext float %i.bp to double
  %i.br = fcmp ogt double %i.bq, 1.000000e-03
  br i1 %i.br, label %bb.m, label %_ZNSt6vectorI5RgbazSaIS0_EE9push_backERKS0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bs = load i16, ptr %i.az, align 16, !tbaa !59
  %i.bt = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !61 ; 3 uses
  %i.bu = zext i16 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !28
  %i.bx = fmul float %i.bp, %i.bw                 ; 2 uses
  %i.by = bitcast float %i.bx to i32
  %i.bz = tail call float @llvm.fabs.f32(float %i.bx)
  %i.ca = bitcast float %i.bz to i32              ; 10 uses
  %i.cb = lshr i32 %i.by, 16                      ; 3 uses
  %i.cc = trunc nuw i32 %i.cb to i16
  %i.cd = and i16 %i.cc, -32768                   ; 3 uses
  %i.ce = icmp samesign ugt i32 %i.ca, 947912703
  br i1 %i.ce, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  %i.cf = icmp samesign ugt i32 %i.ca, 2139095039
  br i1 %i.cf, label %bb.o, label %bb.q, !prof !46

bb.o:                                             ; preds = %bb.n
  %i.cg = or disjoint i16 %i.cd, 31744            ; 2 uses
  %i.ch = icmp eq i32 %i.ca, 2139095040
  br i1 %i.ch, label %_ZN9Imath_3_24halfaSEf.exit40, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = lshr i32 %i.ca, 13
  %i.cj = and i32 %i.ci, 1023                     ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = zext i1 %i.ck to i16
  %i.cm = trunc nuw nsw i32 %i.cj to i16
  %i.cn = or i16 %i.cm, %i.cl
  %i.co = or disjoint i16 %i.cn, %i.cg
  br label %_ZN9Imath_3_24halfaSEf.exit40

bb.q:                                             ; preds = %bb.n
  %i.cp = icmp samesign ugt i32 %i.ca, 1199566847
  br i1 %i.cp, label %bb.r, label %bb.s, !prof !46

bb.r:                                             ; preds = %bb.q
  %i.cq = or disjoint i16 %i.cd, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit40

bb.s:                                             ; preds = %bb.q
  %i.cr = add nuw nsw i32 %i.ca, 134221823
  %i.cs = lshr i32 %i.ca, 13
  %i.ct = and i32 %i.cs, 1
  %i.cu = add nuw nsw i32 %i.cr, %i.ct
  %i.cv = lshr i32 %i.cu, 13
  %i.cw = and i32 %i.cb, 32768
  %i.cx = or i32 %i.cv, %i.cw
  %i.cy = trunc i32 %i.cx to i16
  br label %_ZN9Imath_3_24halfaSEf.exit40

bb.t:                                             ; preds = %bb.m
  %i.cz = icmp samesign ult i32 %i.ca, 855638017
  br i1 %i.cz, label %_ZN9Imath_3_24halfaSEf.exit40, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = lshr i32 %i.ca, 23                      ; 2 uses
  %i.db = sub nuw nsw i32 126, %i.da
  %i.dc = and i32 %i.ca, 8388607
  %i.dd = or disjoint i32 %i.dc, 8388608          ; 2 uses
  %i.de = add nsw i32 %i.da, -94
  %i.df = shl i32 %i.dd, %i.de                    ; 2 uses
  %i.dg = lshr i32 %i.dd, %i.db                   ; 2 uses
  %i.dh = and i32 %i.cb, 32768
  %i.di = or i32 %i.dg, %i.dh
  %i.dj = trunc nuw i32 %i.di to i16              ; 2 uses
  %i.dk = icmp ugt i32 %i.df, -2147483648
  br i1 %i.dk, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dl = icmp ne i32 %i.df, -2147483648
  %i.dm = and i32 %i.dg, 1
  %.not.i.i.i37 = icmp eq i32 %i.dm, 0
  %or.cond.i.i.i38 = select i1 %i.dl, i1 true, i1 %.not.i.i.i37
  br i1 %or.cond.i.i.i38, label %_ZN9Imath_3_24halfaSEf.exit40, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.dn = add nuw i16 %i.dj, 1
  br label %_ZN9Imath_3_24halfaSEf.exit40

_ZN9Imath_3_24halfaSEf.exit40:                    ; preds = %bb.o, %bb.p, %bb.r, %bb.s, %bb.t, %bb.v, %bb.w
  %.033.i.i.i39 = phi i16 [ %i.cd, %bb.t ], [ %i.co, %bb.p ], [ %i.cq, %bb.r ], [ %i.cy, %bb.s ], [ %i.cg, %bb.o ], [ %i.dn, %bb.w ], [ %i.dj, %bb.v ] ; 2 uses
  %i.do = load i16, ptr %i.ba, align 2, !tbaa !59
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !28
  %i.ds = fmul float %i.bp, %i.dr                 ; 2 uses
  %i.dt = bitcast float %i.ds to i32
  %i.du = tail call float @llvm.fabs.f32(float %i.ds)
  %i.dv = bitcast float %i.du to i32              ; 10 uses
  %i.dw = lshr i32 %i.dt, 16                      ; 3 uses
  %i.dx = trunc nuw i32 %i.dw to i16
  %i.dy = and i16 %i.dx, -32768                   ; 3 uses
  %i.dz = icmp samesign ugt i32 %i.dv, 947912703
  br i1 %i.dz, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %_ZN9Imath_3_24halfaSEf.exit40
  %i.ea = icmp samesign ugt i32 %i.dv, 2139095039
  br i1 %i.ea, label %bb.y, label %bb.aa, !prof !46

bb.y:                                             ; preds = %bb.x
  %i.eb = or disjoint i16 %i.dy, 31744            ; 2 uses
  %i.ec = icmp eq i32 %i.dv, 2139095040
  br i1 %i.ec, label %_ZN9Imath_3_24halfaSEf.exit44, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = lshr i32 %i.dv, 13
  %i.ee = and i32 %i.ed, 1023                     ; 2 uses
  %i.ef = icmp eq i32 %i.ee, 0
  %i.eg = zext i1 %i.ef to i16
  %i.eh = trunc nuw nsw i32 %i.ee to i16
  %i.ei = or i16 %i.eh, %i.eg
  %i.ej = or disjoint i16 %i.ei, %i.eb
  br label %_ZN9Imath_3_24halfaSEf.exit44

bb.aa:                                            ; preds = %bb.x
  %i.ek = icmp samesign ugt i32 %i.dv, 1199566847
  br i1 %i.ek, label %bb.ab, label %bb.ac, !prof !46

bb.ab:                                            ; preds = %bb.aa
  %i.el = or disjoint i16 %i.dy, 31744
  br label %_ZN9Imath_3_24halfaSEf.exit44

bb.ac:                                            ; preds = %bb.aa
  %i.em = add nuw nsw i32 %i.dv, 134221823
  %i.en = lshr i32 %i.dv, 13
  %i.eo = and i32 %i.en, 1
  %i.ep = add nuw nsw i32 %i.em, %i.eo
  %i.eq = lshr i32 %i.ep, 13
  %i.er = and i32 %i.dw, 32768
  %i.es = or i32 %i.eq, %i.er
  %i.et = trunc i32 %i.es to i16
  br label %_ZN9Imath_3_24halfaSEf.exit44

bb.ad:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit40
  %i.eu = icmp samesign ult i32 %i.dv, 855638017
  br i1 %i.eu, label %_ZN9Imath_3_24halfaSEf.exit44, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ev = lshr i32 %i.dv, 23                      ; 2 uses
  %i.ew = sub nuw nsw i32 126, %i.ev
  %i.ex = and i32 %i.dv, 8388607
  %i.ey = or disjoint i32 %i.ex, 8388608          ; 2 uses
  %i.ez = add nsw i32 %i.ev, -94
  %i.fa = shl i32 %i.ey, %i.ez                    ; 2 uses
  %i.fb = lshr i32 %i.ey, %i.ew                   ; 2 uses
  %i.fc = and i32 %i.dw, 32768
  %i.fd = or i32 %i.fb, %i.fc
  %i.fe = trunc nuw i32 %i.fd to i16              ; 2 uses
  %i.ff = icmp ugt i32 %i.fa, -2147483648
  br i1 %i.ff, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = icmp ne i32 %i.fa, -2147483648
  %i.fh = and i32 %i.fb, 1
  %.not.i.i.i41 = icmp eq i32 %i.fh, 0
  %or.cond.i.i.i42 = select i1 %i.fg, i1 true, i1 %.not.i.i.i41
  br i1 %or.cond.i.i.i42, label %_ZN9Imath_3_24halfaSEf.exit44, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fi = add nuw i16 %i.fe, 1
  br label %_ZN9Imath_3_24halfaSEf.exit44

_ZN9Imath_3_24halfaSEf.exit44:                    ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad, %bb.af, %bb.ag
  %.033.i.i.i43 = phi i16 [ %i.dy, %bb.ad ], [ %i.ej, %bb.z ], [ %i.el, %bb.ab ], [ %i.et, %bb.ac ], [ %i.eb, %bb.y ], [ %i.fi, %bb.ag ], [ %i.fe, %bb.af ] ; 2 uses
  %i.fj = load i16, ptr %i.bb, align 4, !tbaa !59
  %i.fk = zext i16 %i.fj to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.fk
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !28
  %i.fn = fmul float %i.bp, %i.fm                 ; 2 uses
  %i.fo = bitcast float %i.fn to i32
  %i.fp = tail call float @llvm.fabs.f32(float %i.fn)
  %i.fq = bitcast float %i.fp to i32              ; 10 uses
  %i.fr = lshr i32 %i.fo, 16                      ; 3 uses
  %i.fs = trunc nuw i32 %i.fr to i16
  %i.ft = and i16 %i.fs, -32768                   ; 3 uses
  %i.fu = icmp samesign ugt i32 %i.fq, 947912703
  br i1 %i.fu, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZN9Imath_3_24halfaSEf.exit44
  %i.fv = icmp samesign ugt i32 %i.fq, 2139095039
  br i1 %i.fv, label %bb.ai, label %bb.ak, !prof !46

bb.ai:                                            ; preds = %bb.ah
  %i.fw = or disjoint i16 %i.ft, 31744            ; 2 uses
  %i.fx = icmp eq i32 %i.fq, 2139095040
  br i1 %i.fx, label %_ZN9Imath_3_24halfaSEf.exit48, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fy = lshr i32 %i.fq, 13
  %i.fz = and i32 %i.fy, 1023                     ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  %i.gb = zext i1 %i.ga to i16
end_hunk_0
begin_hunk_1_@_Z8getAlphafffff:bb.a

bb.d:                                             ; preds = %bb.c
  %i.r = fsub float %2, %0
  %i.s = fpext float %i.r to double
  %i.t = fcmp olt double %i.s, 1.000000e-03
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = fsub float %3, %1
  %i.v = fpext float %i.u to double
  %i.w = fcmp olt double %i.v, 1.000000e-03
  br i1 %i.w, label %common.ret79, label %bb.f

common.ret79:                                     ; preds = %bb.e, %bb.c, %bb.b, %bb.f
  %common.ret79.op = phi float [ %i.ah, %bb.f ], [ 0.000000e+00, %bb.e ], [ %i.q, %bb.b ], [ 0.000000e+00, %bb.c ]
  ret float %common.ret79.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = fadd float %0, %2
  %i.y = fmul float %i.x, 5.000000e-01            ; 4 uses
  %i.z = fadd float %1, %3
  %i.aa = fmul float %i.z, 5.000000e-01           ; 4 uses
  %i.ab = tail call noundef float @_Z8getAlphafffff(float noundef %0, float noundef %1, float noundef %i.y, float noundef %i.aa, float noundef %4)
  %i.ac = tail call noundef float @_Z8getAlphafffff(float noundef %i.y, float noundef %1, float noundef %2, float noundef %i.aa, float noundef %4)
  %i.ad = fadd float %i.ab, %i.ac
  %i.ae = tail call noundef float @_Z8getAlphafffff(float noundef %0, float noundef %i.aa, float noundef %i.y, float noundef %3, float noundef %4)
  %i.af = fadd float %i.ad, %i.ae
  %i.ag = tail call noundef float @_Z8getAlphafffff(float noundef %i.y, float noundef %i.aa, float noundef %2, float noundef %3, float noundef %4)
  %i.ah = fadd float %i.af, %i.ag
  br label %common.ret79
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !28
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #23
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !137

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3mapIN7Imf_3_44NameENS0_9DeepSliceESt4lessIS1_ESaISt4pairIKS1_S2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22
  invoke void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #24
  unreachable

_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  tail call void @_ZNSt8_Rb_treeIN7Imf_3_44NameESt4pairIKS1_NS0_9DeepSliceEESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 344) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit ], [ %1, %bb.a ] ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  tail call void @_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.f, %i.h
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.n, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %i.i = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !29 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.l = load i64, ptr %i.j, align 8, !tbaa !28
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !32
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph
  %i.o = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.f, %.lr.ph ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = sub i64 %i.r, %i.s
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.t) #23
  br label %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit

_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 64) #23
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @expf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE24_M_get_insert_unique_posERKS5_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8, !tbaa !141 ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8, !tbaa !141 ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !140

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8, !tbaa !29
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !29
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #21 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #17

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !32     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #25
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8, !tbaa !25
  %i.s = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !27   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.q, align 8, !tbaa !29
  %i.z = load i64, ptr %i.t, align 8, !tbaa !28
  store i64 %i.z, ptr %i.r, align 8, !tbaa !28
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !27
  store ptr %i.t, ptr %2, align 8, !tbaa !29
  store i64 0, ptr %i.ab, align 8, !tbaa !27
  store i8 0, ptr %i.t, align 8, !tbaa !28
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.aq, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIP5RgbazSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_less_iterEEvT_SA_SA_SA_T0_:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !66
  %i.ak = icmp ult i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread41

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread38, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread41: ; preds = %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35: ; preds = %bb.b, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.am = load i16, ptr %i.al, align 2, !tbaa !59
  %i.an = zext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !28 ; 4 uses
  %i.aq = fcmp olt float %i.f, %i.ap
  br i1 %i.aq, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35
  %i.ar = fcmp ogt float %i.f, %i.ap
  br i1 %i.ar, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31: ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !66
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !66
  %i.aw = icmp ult i32 %i.at, %i.av
  br i1 %i.aw, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit.thread35, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %6, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull align 4 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44: ; preds = %bb.e, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31
  %i.ax = fcmp olt float %i.k, %i.ap
  br i1 %i.ax, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44
  %i.ay = fcmp ogt float %i.k, %i.ap
  br i1 %i.ay, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33: ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !66
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !66
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread: ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread44, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull align 4 dereferenceable(32) %5, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.g

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47: ; preds = %bb.f, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(32) %0, i64 32, i1 false), !tbaa.struct !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !67
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.g

bb.g:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit31.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread47, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit33.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit27.thread, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread41, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIP5RgbazSt6vectorIS4_SaIS4_EEEES9_EEbT_T0_.exit29.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::uniform_int_distribution<>::param_type", align 4 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !45
  %i.c = sext i32 %i.b to i64
  %i.d = load i32, ptr %2, align 4, !tbaa !44     ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = sub nsw i64 %i.c, %i.e                   ; 5 uses
  %i.g = icmp ult i64 %i.f, 2147483645
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %.rhs.trunc = trunc nuw nsw i64 %i.h to i32
  %i.i = udiv i32 2147483645, %.rhs.trunc         ; 2 uses
  %.zext = zext nneg i32 %i.i to i64
  %i.j = mul nuw nsw i64 %i.h, %.zext
  %.promoted = load i64, ptr %1, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.m, %bb.c ], [ %.promoted, %bb.b ]
  %i.l = mul i64 %i.k, 16807
  %i.m = urem i64 %i.l, 2147483647                ; 3 uses
  %i.n = add nsw i64 %i.m, -1                     ; 2 uses
  %.not27 = icmp ult i64 %i.n, %i.j
  br i1 %.not27, label %bb.d, label %bb.c, !llvm.loop !166

bb.d:                                             ; preds = %bb.c
  store i64 %i.m, ptr %1, align 8, !tbaa !41
  %.lhs.trunc = trunc nuw nsw i64 %i.n to i32
  %i.o = udiv i32 %.lhs.trunc, %i.i
  %.zext29 = zext nneg i32 %i.o to i64
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 2147483645
  br i1 %.not, label %bb.g, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.p = udiv i64 %i.f, 2147483646
  %i.q = trunc i64 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !44
  store i32 %i.q, ptr %i.r, align 4, !tbaa !45
  %i.s = call noundef i32 @_ZNSt24uniform_int_distributionIiEclISt26linear_congruential_engineImLm16807ELm0ELm2147483647EEEEiRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %3)
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 2147483646             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.v = load i64, ptr %1, align 8, !tbaa !41
  %i.w = mul i64 %i.v, 16807
  %i.x = urem i64 %i.w, 2147483647                ; 2 uses
  store i64 %i.x, ptr %1, align 8, !tbaa !41
  %i.y = add nsw i64 %i.u, -1
  %i.z = add nsw i64 %i.y, %i.x                   ; 3 uses
  %i.aa = icmp ugt i64 %i.z, %i.f
  %i.ab = icmp ult i64 %i.z, %i.u
  %i.ac = or i1 %i.aa, %i.ab
  br i1 %i.ac, label %bb.f, label %.loopexit.loopexit, !llvm.loop !167

bb.g:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %1, align 8, !tbaa !41
  %i.ae = mul i64 %i.ad, 16807
  %i.af = urem i64 %i.ae, 2147483647              ; 2 uses
  store i64 %i.af, ptr %1, align 8, !tbaa !41
  %i.ag = add nsw i64 %i.af, -1
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.f
  %.pre = load i32, ptr %2, align 4, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.g, %bb.d
  %i.ah = phi i32 [ %i.d, %bb.d ], [ %i.d, %bb.g ], [ %.pre, %.loopexit.loopexit ]
  %.0 = phi i64 [ %.zext29, %bb.d ], [ %i.ag, %bb.g ], [ %i.z, %.loopexit.loopexit ]
  %i.ai = trunc i64 %.0 to i32
  %i.aj = add i32 %i.ah, %i.ai
  ret i32 %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = distinct !{!2, !16}
!3 = distinct !{!3, !16}
!4 = distinct !{!4, !16}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!18 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !14, i64 0}
!19 = !{!"_ZTSSt18_Rb_tree_node_base", !17, i64 0, !18, i64 8, !18, i64 16, !18, i64 24}
!20 = !{!"long", !10, i64 0}
!21 = !{!"_ZTSSt15_Rb_tree_header", !19, i64 0, !20, i64 32}
!22 = !{!21, !18, i64 8}
!23 = !{!21, !18, i64 16}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!25 = !{!24, !15, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !20, i64 8, !10, i64 16}
!27 = !{!26, !20, i64 8}
!28 = !{!10, !10, i64 0}
!29 = !{!26, !15, i64 0}
!30 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!31, !30, i64 0}
!33 = !{!31, !30, i64 16}
!34 = !{!31, !30, i64 8}
!35 = !{!"p1 _ZTSSt6vectorI5RgbazSaIS0_EE", !14, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseISt6vectorI5RgbazSaIS1_EESaIS3_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 16}
!39 = !{!36, !35, i64 8}
!40 = !{!"_ZTSSt26linear_congruential_engineImLm16807ELm0ELm2147483647EE", !20, i64 0}
!41 = !{!40, !20, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !11, i64 0, !11, i64 4}
!44 = !{!43, !11, i64 0}
!45 = !{!43, !11, i64 4}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!"p1 _ZTS5Rgbaz", !14, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseI5RgbazSaIS0_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!49 = !{!48, !47, i64 8}
!50 = !{!48, !47, i64 0}
!51 = !{!"p1 _ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !14, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN7Imf_3_410IDManifest20ChannelGroupManifestESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!52, !51, i64 0}
!54 = !{!52, !51, i64 8}
!55 = !{!52, !51, i64 16}
!56 = !{!48, !47, i64 16}
!57 = !{!"short", !10, i64 0}
!58 = !{!"_ZTSN9Imath_3_24halfE", !57, i64 0}
!59 = !{!58, !57, i64 0}
!60 = !{!"p1 _ZTS14imath_half_uif", !14, i64 0}
!61 = !{!60, !60, i64 0}
!62 = !{!57, !57, i64 0}
!63 = !{!19, !18, i64 24}
!64 = !{!19, !18, i64 16}
!65 = !{!"_ZTS5Rgbaz", !58, i64 0, !58, i64 2, !58, i64 4, !58, i64 6, !58, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28}
!66 = !{!65, !11, i64 28}
!67 = !{i64 0, i64 2, !62, i64 2, i64 2, !62, i64 4, i64 2, !62, i64 6, i64 2, !62, i64 8, i64 2, !62, i64 12, i64 4, !42, i64 16, i64 4, !42, i64 20, i64 4, !42, i64 24, i64 4, !42, i64 28, i64 4, !42}
!68 = distinct !{null}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!71 = distinct !{!71, !70, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!72 = distinct !{!72, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!73 = distinct !{!73, !72, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!75 = distinct !{!75, !74, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!76 = distinct !{!76, i1 true, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!77 = distinct !{!77, !76, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!78 = distinct !{!78, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!79 = distinct !{!79, !78, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!80 = distinct !{!80, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!81 = distinct !{!81, !80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZNSt7__cxx119to_stringEj"}
!83 = distinct !{!83, !82, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!87 = distinct !{!87, !86, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!88 = distinct !{!88, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!89 = distinct !{!89, !88, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!90 = distinct !{!90, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!91 = distinct !{!91, !90, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = !{!15, !15, i64 0}
!95 = !{!21, !17, i64 0}
!96 = !{!21, !18, i64 24}
!97 = !{!21, !20, i64 32}
!98 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!99 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !98, i64 0}
!100 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !99, i64 0, !21, i64 8}
!101 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE", !100, i64 0}
!102 = !{!"_ZTSSt3setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4lessIS5_ESaIS5_EE", !101, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !31, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !104, i64 0}
!106 = !{!"_ZTSN7Imf_3_410IDManifest10IdLifetimeE", !10, i64 0}
!107 = !{!"_ZTSSt4lessImE"}
!108 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessImEE", !107, i64 0}
!109 = !{!"_ZTSNSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE13_Rb_tree_implISF_Lb1EEE", !108, i64 0, !21, i64 8}
!110 = !{!"_ZTSSt8_Rb_treeImSt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEESt10_Select1stISB_ESt4lessImESaISB_EE", !109, i64 0}
!111 = !{!"_ZTSSt3mapImSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EESt4lessImESaISt4pairIKmS8_EEE", !110, i64 0}
!112 = !{!"_ZTSSt17_Rb_tree_iteratorISt4pairIKmSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEE", !18, i64 0}
!113 = !{!"bool", !10, i64 0}
!114 = !{!"_ZTSN7Imf_3_410IDManifest20ChannelGroupManifestE", !102, i64 0, !105, i64 48, !106, i64 72, !26, i64 80, !26, i64 112, !111, i64 144, !112, i64 192, !113, i64 200}
!115 = !{!114, !106, i64 72}
!116 = !{!20, !20, i64 0}
!117 = !{!71}
!118 = !{!73}
!119 = !{!75}
!120 = !{!77, !75}
!121 = !{!79}
!122 = !{!81}
!123 = !{!83}
!124 = !{!87}
!125 = !{!89}
!126 = !{!91}
!127 = !{!"float", !10, i64 0}
!128 = !{!127, !127, i64 0}
!129 = !{!"_ZTSN7Imf_3_411CompressionE", !10, i64 0}
!130 = !{!129, !129, i64 0}
!131 = !{!"_ZTSN7Imf_3_414DeepImageStateE", !10, i64 0}
!132 = !{!131, !131, i64 0}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !16}
!135 = distinct !{!135, !16}
!136 = distinct !{!136, !16}
!137 = distinct !{!137, !16}
!138 = distinct !{!138, !16}
!139 = distinct !{!139, !16}
!140 = distinct !{!140, !16}
!141 = !{!18, !18, i64 0}
!142 = distinct !{!142, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!143 = distinct !{!143, !142, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, !142, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!145 = distinct !{!145, !16}
!146 = distinct !{!146, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!147 = distinct !{!147, !146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!148 = distinct !{!148, !146, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!149 = !{!143}
!150 = !{!144}
!151 = !{!143, !144}
!152 = !{!147}
!153 = !{!148}
!154 = !{!147, !148}
!155 = distinct !{!155, !16}
!156 = distinct !{!156, !16}
!157 = distinct !{!157, !16}
!158 = distinct !{!158, !16}
!159 = distinct !{!159, !16}
!160 = distinct !{!160, !16}
!161 = distinct !{!161, !16}
!162 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_2
