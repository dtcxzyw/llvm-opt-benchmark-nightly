Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/outputselector?download=true
inline.NumInlined: 173
inline.NumDeleted: 103
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3gmx14OutputSelector12processFrameEiP10t_trxframe:bb.a
  store ptr %i.jm, ptr %i.jk, align 8, !tbaa !95
  %.pre.i = load i8, ptr %i.jj, align 1, !tbaa !98, !range !74
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.jn = phi i8 [ %.pre.i, %bb.ab ], [ %i.ji, %bb.aa ]
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.jp = getelementptr inbounds nuw i8, ptr %i.id, i64 32 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !95
  %i.jr = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef 92, ptr noundef %i.jq, i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 8)
  store ptr %i.jr, ptr %i.jp, align 8, !tbaa !95
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.js = load i8, ptr %i.jd, align 4, !tbaa !97, !range !74, !noundef !45
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ju = getelementptr inbounds nuw i8, ptr %i.id, i64 56 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !99
  %i.jw = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 96, ptr noundef %i.jv, i64 noundef range(i64 -2147483648, 2147483648) %i.is, i64 noundef 52)
  store ptr %i.jw, ptr %i.ju, align 8, !tbaa !99
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jx = icmp sgt i32 %i.ij, 0
  br i1 %i.jx, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.jy = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.kc = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.kd = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.if, i64 56
  %i.kf = getelementptr inbounds nuw i8, ptr %i.id, i64 56
  %wide.trip.count.i = zext nneg i32 %i.ij to i64
  br label %bb.ah

.preheader.i:                                     ; preds = %bb.an, %bb.ag
  %i.kg = load i32, ptr %i.ik, align 8, !tbaa !92
  %i.kh = icmp sgt i32 %i.kg, 0
  br i1 %i.kh, label %.lr.ph67.i, label %_ZN3gmxL21adjustAtomInformationEP7t_atomsS1_RKNS_9SelectionE.exit

.lr.ph67.i:                                       ; preds = %.preheader.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  br label %bb.ao

bb.ah:                                            ; preds = %bb.an, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.an ] ; 7 uses
  %i.kj = load ptr, ptr %i.ig, align 8, !tbaa !49
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 96
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !77
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.kl, i64 %indvars.iv.i
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !21
  %i.ko = load ptr, ptr %i.jy, align 8, !tbaa !100
  %i.kp = sext i32 %i.kn to i64                   ; 5 uses
  %i.kq = getelementptr inbounds [36 x i8], ptr %i.ko, i64 %i.kp
  %i.kr = load ptr, ptr %i.ir, align 8, !tbaa !100
  %i.ks = getelementptr inbounds nuw [36 x i8], ptr %i.kr, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.ks, ptr noundef nonnull align 4 dereferenceable(36) %i.kq, i64 36, i1 false), !tbaa.struct !105
  %i.kt = load ptr, ptr %i.jz, align 8, !tbaa !106
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.kp
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !108
  %i.kw = load ptr, ptr %i.iv, align 8, !tbaa !106
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %indvars.iv.i
  store ptr %i.kv, ptr %i.kx, align 8, !tbaa !108
  %i.ky = load i8, ptr %i.iy, align 2, !tbaa !109, !range !74, !noundef !45
  %i.kz = trunc nuw i8 %i.ky to i1
  br i1 %i.kz, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.la = load ptr, ptr %i.ka, align 8, !tbaa !110
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.kp
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !108
  %i.ld = load ptr, ptr %i.kb, align 8, !tbaa !110
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %indvars.iv.i
  store ptr %i.lc, ptr %i.le, align 8, !tbaa !108
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.lf = load i8, ptr %i.iz, align 1, !tbaa !98, !range !74, !noundef !45
  %i.lg = trunc nuw i8 %i.lf to i1
  br i1 %i.lg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.lh = load ptr, ptr %i.kc, align 8, !tbaa !111
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %i.kp
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !108
  %i.lk = load ptr, ptr %i.kd, align 8, !tbaa !111
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %indvars.iv.i
  store ptr %i.lj, ptr %i.ll, align 8, !tbaa !108
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.lm = load i8, ptr %i.jf, align 4, !tbaa !97, !range !74, !noundef !45
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lo = load ptr, ptr %i.ke, align 8, !tbaa !112
  %i.lp = getelementptr inbounds [52 x i8], ptr %i.lo, i64 %i.kp
  %i.lq = load ptr, ptr %i.kf, align 8, !tbaa !112
  %i.lr = getelementptr inbounds nuw [52 x i8], ptr %i.lq, i64 %indvars.iv.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.lr, ptr noundef nonnull align 4 dereferenceable(52) %i.lp, i64 52, i1 false), !tbaa.struct !115
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.ah, !llvm.loop !27

bb.ao:                                            ; preds = %bb.ao, %.lr.ph67.i
  %indvars.iv69.i = phi i64 [ 0, %.lr.ph67.i ], [ %indvars.iv.next70.i, %bb.ao ] ; 3 uses
  %i.ls = load ptr, ptr %i.ki, align 8, !tbaa !116
  %i.lt = getelementptr inbounds nuw [32 x i8], ptr %i.ls, i64 %indvars.iv69.i
  %i.lu = load ptr, ptr %i.in, align 8, !tbaa !116
  %i.lv = getelementptr inbounds nuw [32 x i8], ptr %i.lu, i64 %indvars.iv69.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lv, ptr noundef nonnull align 8 dereferenceable(32) %i.lt, i64 32, i1 false), !tbaa.struct !117
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.lw = load i32, ptr %i.ik, align 8, !tbaa !92
  %i.lx = sext i32 %i.lw to i64
  %i.ly = icmp slt i64 %indvars.iv.next70.i, %i.lx
  br i1 %i.ly, label %bb.ao, label %_ZN3gmxL21adjustAtomInformationEP7t_atomsS1_RKNS_9SelectionE.exit, !llvm.loop !28

_ZN3gmxL21adjustAtomInformationEP7t_atomsS1_RKNS_9SelectionE.exit: ; preds = %bb.ao, %.preheader.i
  %i.lz = load ptr, ptr %i.hw, align 8, !tbaa !19
  store ptr %i.lz, ptr %i.ie, align 8, !tbaa !83
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN3gmxL21adjustAtomInformationEP7t_atomsS1_RKNS_9SelectionE.exit, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNK3gmx14OutputSelector24checkAbilityDependenciesEm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !122  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = sdiv exact i64 %i.m, 12                  ; 2 uses
  %i.o = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.o)
  %i.p = sub nuw nsw i64 768614336404564650, %i.g
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = mul nuw nsw i64 %i.i, 12
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !122
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %1, 768614336404564650
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 768614336404564650) ; 2 uses
  %i.v = mul nuw nsw i64 %i.u, 12
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #15 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i, i64 12, i1 false), !tbaa.struct !123, !alias.scope !128
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 12
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !121

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !17
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #12
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !16
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.i
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !122
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !17
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.af = icmp ult i64 %1, %i.g
  br i1 %i.af, label %bb.h, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ag
  br i1 %.not.i4, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !122
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_Z12init_t_atomsP7t_atomsib(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !12     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !21
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !20
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #15 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !21
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !21
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #12
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !20
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !13
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare void @_Z21done_and_delete_atomsP7t_atoms(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 int", !9, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !10, i64 0, !10, i64 8, !10, i64 16}
!12 = !{!11, !10, i64 0}
!13 = !{!11, !10, i64 16}
!14 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !9, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 16}
!18 = !{!"p1 _ZTS7t_atoms", !9, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!11, !10, i64 8}
!21 = !{!6, !6, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!5, !5, i64 0}
!24 = !{!"vtable pointer", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !22}
!29 = !{!"_ZTSN3gmx14IOutputAdapterE"}
!30 = !{!"p1 _ZTSN3gmx9SelectionE", !9, i64 0}
!31 = !{!"_ZTSSt10_Head_baseILm0EP7t_atomsLb0EE", !18, i64 0}
!32 = !{!"_ZTSSt11_Tuple_implILm0EJP7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsS1_EEEEEE", !31, i64 0}
!33 = !{!"_ZTSSt5tupleIJP7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsS1_EEEEEE", !32, i64 0}
!34 = !{!"_ZTSSt15__uniq_ptr_implI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEE", !33, i64 0}
!35 = !{!"_ZTSSt15__uniq_ptr_dataI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEELb1ELb1EE", !34, i64 0}
!36 = !{!"_ZTSSt10unique_ptrI7t_atomsN3gmx15functor_wrapperIS0_XadL_Z21done_and_delete_atomsPS0_EEEEE", !35, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !15, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !37, i64 0}
!39 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !38, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !11, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorIiSaIiEE", !41, i64 0}
!43 = !{!"_ZTSN3gmx14OutputSelectorE", !29, i64 0, !30, i64 8, !36, i64 16, !39, i64 24, !39, i64 48, !39, i64 72, !42, i64 96}
!44 = !{!43, !30, i64 8}
!45 = !{}
!46 = !{i64 8}
!47 = !{!"p1 _ZTSN3gmx8internal13SelectionDataE", !9, i64 0}
!48 = !{!"_ZTSN3gmx9SelectionE", !47, i64 0}
!49 = !{!48, !47, i64 0}
!50 = !{!"p1 omnipotent char", !9, i64 0}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!52 = !{!"long", !5, i64 0}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !52, i64 8, !5, i64 16}
!54 = !{!"p1 float", !9, i64 0}
!55 = !{!"_ZTS9e_index_t", !5, i64 0}
!56 = !{!"_ZTS8t_blocka", !6, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !6, i64 32, !6, i64 36}
!57 = !{!"bool", !5, i64 0}
!58 = !{!"_ZTS18gmx_ana_indexmap_t", !55, i64 0, !10, i64 8, !10, i64 16, !56, i64 24, !10, i64 64, !56, i64 72, !57, i64 112}
!59 = !{!"_ZTS13gmx_ana_pos_t", !54, i64 0, !54, i64 8, !54, i64 16, !58, i64 24, !6, i64 144}
!60 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!61 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !60, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !61, i64 0}
!63 = !{!"_ZTSSt6vectorIfSaIfEE", !62, i64 0}
!64 = !{!"_ZTSN3gmx13FlagsTemplateINS_13SelectionFlagEEE", !52, i64 0}
!65 = !{!"p1 _ZTSN3gmx20SelectionTreeElementE", !9, i64 0}
!66 = !{!"_ZTS13e_coverfrac_t", !5, i64 0}
!67 = !{!"float", !5, i64 0}
!68 = !{!"_ZTSN3gmx8internal13SelectionDataE", !53, i64 0, !53, i64 32, !59, i64 64, !63, i64 216, !63, i64 240, !64, i64 264, !65, i64 272, !66, i64 280, !67, i64 284, !67, i64 288, !57, i64 292, !57, i64 293}
!69 = !{!68, !6, i64 128}
!70 = !{!"_ZTS7PbcType", !5, i64 0}
!71 = !{!"_ZTS10t_trxframe", !6, i64 0, !57, i64 4, !6, i64 8, !57, i64 12, !52, i64 16, !57, i64 24, !67, i64 28, !57, i64 32, !57, i64 33, !67, i64 36, !6, i64 40, !57, i64 44, !18, i64 48, !57, i64 56, !67, i64 60, !57, i64 64, !54, i64 72, !57, i64 80, !54, i64 88, !57, i64 96, !54, i64 104, !57, i64 112, !5, i64 116, !57, i64 152, !70, i64 156, !57, i64 160, !10, i64 168}
!72 = !{!71, !6, i64 8}
!73 = !{!71, !57, i64 80}
!74 = !{i8 0, i8 2}
!75 = !{!71, !57, i64 96}
!76 = !{!71, !10, i64 168}
!77 = !{!68, !10, i64 96}
!78 = !{!71, !54, i64 72}
!79 = !{!71, !54, i64 88}
!80 = !{!67, !67, i64 0}
!81 = !{!71, !54, i64 104}
!82 = !{!71, !57, i64 44}
!83 = !{!71, !18, i64 48}
!84 = !{!"p1 _ZTS6t_atom", !9, i64 0}
!85 = !{!"any p2 pointer", !9, i64 0}
!86 = !{!"any p3 pointer", !85, i64 0}
!87 = !{!"p3 omnipotent char", !86, i64 0}
!88 = !{!"p1 _ZTS9t_resinfo", !9, i64 0}
!89 = !{!"p1 _ZTS9t_pdbinfo", !9, i64 0}
!90 = !{!"_ZTS7t_atoms", !6, i64 0, !84, i64 8, !87, i64 16, !87, i64 24, !87, i64 32, !6, i64 40, !88, i64 48, !89, i64 56, !57, i64 64, !57, i64 65, !57, i64 66, !57, i64 67, !57, i64 68}
!91 = !{!90, !6, i64 0}
!92 = !{!90, !6, i64 40}
!93 = !{!88, !88, i64 0}
!94 = !{!84, !84, i64 0}
!95 = !{!87, !87, i64 0}
!96 = !{!57, !57, i64 0}
!97 = !{!90, !57, i64 68}
!98 = !{!90, !57, i64 67}
!99 = !{!89, !89, i64 0}
!100 = !{!90, !84, i64 8}
!101 = !{!"short", !5, i64 0}
!102 = !{!101, !101, i64 0}
!103 = !{!"_ZTS12ParticleType", !5, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80, i64 12, i64 4, !80, i64 16, i64 2, !102, i64 18, i64 2, !102, i64 20, i64 4, !104, i64 24, i64 4, !21, i64 28, i64 4, !21, i64 32, i64 4, !23}
!106 = !{!90, !87, i64 16}
!107 = !{!"p2 omnipotent char", !85, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!90, !57, i64 66}
!110 = !{!90, !87, i64 24}
!111 = !{!90, !87, i64 32}
!112 = !{!90, !89, i64 56}
!113 = !{!"_ZTS13PdbRecordType", !5, i64 0}
!114 = !{!113, !113, i64 0}
!115 = !{i64 0, i64 4, !114, i64 4, i64 4, !21, i64 8, i64 1, !23, i64 9, i64 6, !23, i64 16, i64 4, !80, i64 20, i64 4, !80, i64 24, i64 1, !96, i64 28, i64 24, !23}
!116 = !{!90, !88, i64 48}
!117 = !{i64 0, i64 8, !108, i64 8, i64 4, !21, i64 12, i64 1, !23, i64 16, i64 4, !21, i64 20, i64 1, !23, i64 24, i64 8, !108}
!121 = distinct !{!121, !22}
!122 = !{!15, !14, i64 8}
!123 = !{i64 0, i64 12, !23}
!125 = distinct !{!125, i1 false, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_"}
!126 = distinct !{!126, !125, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!127 = distinct !{!127, !125, !"_ZSt19__relocate_object_aIN3gmx11BasicVectorIfEES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!128 = !{!126, !127}
end_hunk_0
