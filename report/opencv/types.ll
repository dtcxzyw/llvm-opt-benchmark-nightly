Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/types?download=true
inline.NumInlined: 249
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK2cv11RotatedRect6pointsEPNS_6Point_IfEE:bb.a
  %i.ca = load float, ptr %0, align 4, !tbaa !42
  %i.cb = fsub float %i.ca, %i.ax
  %i.cc = fadd float %i.bb, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.cc, ptr %i.cd, align 4, !tbaa !43
  %i.ce = load float, ptr %i.bf, align 4, !tbaa !44
  %i.cf = fadd float %i.ba, %i.ce
  %i.cg = fadd float %i.az, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.cg, ptr %i.ch, align 4, !tbaa !36
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK2cv11RotatedRect6pointsERSt6vectorINS_6Point_IfEESaIS3_EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp ult i64 %i.g, 4
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw nsw i64 4, %i.g
  tail call void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.i)
  %.pre = load ptr, ptr %1, align 8, !tbaa !23
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.f, 32
  br i1 %.not, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.j, ptr %i.a, align 8, !tbaa !22
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !39
  %i.n = fpext float %i.m to double
  %i.o = fmul double %i.n, f0x400921FB54442D18
  %i.p = fdiv double %i.o, 1.800000e+02           ; 2 uses
  %i.q = tail call double @cos(double noundef %i.p) #20
  %i.r = fptrunc double %i.q to float
  %i.s = fmul float %i.r, 5.000000e-01            ; 2 uses
  %i.t = tail call double @sin(double noundef %i.p) #20
  %i.u = fptrunc double %i.t to float
  %i.v = fmul float %i.u, 5.000000e-01            ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.y = load float, ptr %i.x, align 4, !tbaa !40 ; 2 uses
  %i.z = fmul float %i.y, %i.v                    ; 4 uses
  %i.aa = load float, ptr %i.w, align 4, !tbaa !41 ; 2 uses
  %i.ab = fmul float %i.v, %i.aa                  ; 4 uses
  %i.ac = fmul float %i.s, %i.y                   ; 4 uses
  %i.ad = fmul float %i.s, %i.aa                  ; 4 uses
  %i.ae = load float, ptr %0, align 4, !tbaa !42
  %i.af = fsub float %i.ae, %i.z
  %i.ag = fsub float %i.af, %i.ad
  store float %i.ag, ptr %i.k, align 4, !tbaa !43
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !44
  %i.aj = fadd float %i.ac, %i.ai
  %i.ak = fsub float %i.aj, %i.ab
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store float %i.ak, ptr %i.al, align 4, !tbaa !36
  %i.am = load float, ptr %0, align 4, !tbaa !42
  %i.an = fadd float %i.z, %i.am
  %i.ao = fsub float %i.an, %i.ad
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !43
  %i.aq = load float, ptr %i.ah, align 4, !tbaa !44
  %i.ar = fsub float %i.aq, %i.ac
  %i.as = fsub float %i.ar, %i.ab
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store float %i.as, ptr %i.at, align 4, !tbaa !36
  %i.au = load float, ptr %0, align 4, !tbaa !42
  %i.av = fadd float %i.z, %i.au
  %i.aw = fadd float %i.ad, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store float %i.aw, ptr %i.ax, align 4, !tbaa !43
  %i.ay = load float, ptr %i.ah, align 4, !tbaa !44
  %i.az = fsub float %i.ay, %i.ac
  %i.ba = fadd float %i.ab, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store float %i.ba, ptr %i.bb, align 4, !tbaa !36
  %i.bc = load float, ptr %0, align 4, !tbaa !42
  %i.bd = fsub float %i.bc, %i.z
  %i.be = fadd float %i.ad, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store float %i.be, ptr %i.bf, align 4, !tbaa !43
  %i.bg = load float, ptr %i.ah, align 4, !tbaa !44
  %i.bh = fadd float %i.ac, %i.bg
  %i.bi = fadd float %i.ab, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store float %i.bi, ptr %i.bj, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { i64, i64 } @_ZNK2cv11RotatedRect12boundingRectEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, f0x400921FB54442D18
  %i.e = fdiv double %i.d, 1.800000e+02           ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #20
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = insertelement <2 x double> poison, double %i.f, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.g, i64 1
  %i.m = fptrunc <2 x double> %i.l to <2 x float>
  %i.n = fmul <2 x float> %i.m, splat (float 5.000000e-01) ; 3 uses
  %i.o = extractelement <2 x float> %i.n, i64 0
  %i.p = fmul float %i.o, %i.i                    ; 2 uses
  %i.q = extractelement <2 x float> %i.n, i64 1
  %i.r = fmul float %i.i, %i.q                    ; 2 uses
  %i.s = load <4 x float>, ptr %0, align 4
  %i.t = load float, ptr %i.j, align 4, !tbaa !44 ; 2 uses
  %i.u = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.v = fmul <2 x float> %i.n, %i.u              ; 4 uses
  %i.w = load float, ptr %0, align 4, !tbaa !42   ; 2 uses
  %i.x = fsub float %i.w, %i.r                    ; 2 uses
  %i.y = fadd float %i.p, %i.t                    ; 2 uses
  %i.z = fsub float %i.t, %i.p
  %i.aa = fadd float %i.r, %i.w
  %i.ab = insertelement <4 x float> poison, float %i.aa, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.z, i64 1 ; 2 uses
  %i.ad = insertelement <4 x float> %i.ac, float %i.x, i64 2
  %i.ae = insertelement <4 x float> %i.ad, float %i.y, i64 3
  %i.af = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = fsub <4 x float> %i.ae, %i.af           ; 4 uses
  %i.ah = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ai = fadd <2 x float> %i.v, %i.ah
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ak = insertelement <2 x float> %i.v, float %i.y, i64 1
  %i.al = insertelement <2 x float> %i.v, float %i.x, i64 0
  %i.am = fadd <2 x float> %i.ak, %i.al
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ao = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ap = fcmp olt <4 x float> %i.ag, %i.ao
  %i.aq = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ar = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 2, i32 3>
  %i.as = select <4 x i1> %i.ap, <4 x float> %i.aq, <4 x float> %i.ar ; 3 uses
  %i.at = shufflevector <4 x float> %i.aj, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.av = fcmp olt <4 x float> %i.at, %i.au
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.aj, <4 x float> %i.as ; 3 uses
  %i.ax = shufflevector <4 x float> %i.an, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.az = fcmp olt <4 x float> %i.ax, %i.ay
  %i.ba = select <4 x i1> %i.az, <4 x float> %i.an, <4 x float> %i.aw ; 2 uses
  %i.bb = tail call <4 x float> @llvm.floor.v4f32(<4 x float> %i.ba)
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bd = fptosi <2 x float> %i.bc to <2 x i32>   ; 2 uses
  %i.be = tail call <4 x float> @llvm.ceil.v4f32(<4 x float> %i.ba)
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.bg = fptosi <2 x float> %i.bf to <2 x i32>
  %i.bh = sub <2 x i32> %i.bg, %i.bd
  %i.bi = add <2 x i32> %i.bh, splat (i32 1)
  %.sroa.0.0.insert.insert = bitcast <2 x i32> %i.bd to i64
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.insert.insert, 0
  %.sroa.5.8.insert.insert = bitcast <2 x i32> %i.bi to i64
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.8.insert.insert, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define { <2 x float>, <2 x float> } @_ZNK2cv11RotatedRect14boundingRect2fEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %i.a, align 4, !tbaa !39
  %i.c = fpext float %i.b to double
  %i.d = fmul double %i.c, f0x400921FB54442D18
  %i.e = fdiv double %i.d, 1.800000e+02           ; 2 uses
  %i.f = tail call double @cos(double noundef %i.e) #20
  %i.g = tail call double @sin(double noundef %i.e) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = insertelement <2 x double> poison, double %i.f, i64 0
  %i.j = insertelement <2 x double> %i.i, double %i.g, i64 1
  %i.k = fptrunc <2 x double> %i.j to <2 x float>
  %i.l = fmul <2 x float> %i.k, splat (float 5.000000e-01) ; 2 uses
  %i.m = load <2 x float>, ptr %i.h, align 4, !tbaa !35 ; 2 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.o = fmul <2 x float> %i.n, %i.l              ; 2 uses
  %i.p = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.q = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = fmul <2 x float> %i.p, %i.q              ; 4 uses
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !35
  %1 = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.t = fsub <2 x float> %1, %i.o                ; 2 uses
  %i.u = fadd <2 x float> %1, %i.o                ; 2 uses
  %i.v = shufflevector <2 x float> %i.u, <2 x float> %i.t, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.w = fsub <2 x float> %i.v, %i.r              ; 4 uses
  %i.x = shufflevector <2 x float> %i.t, <2 x float> %i.u, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.y = fsub <2 x float> %i.x, %i.r              ; 4 uses
  %i.z = fadd <2 x float> %i.r, %i.x              ; 4 uses
  %i.aa = fadd <2 x float> %i.v, %i.r             ; 4 uses
  %i.ab = fcmp olt <2 x float> %i.y, %i.w
  %i.ac = select <2 x i1> %i.ab, <2 x float> %i.y, <2 x float> %i.w ; 2 uses
  %i.ad = fcmp olt <2 x float> %i.z, %i.ac
  %i.ae = select <2 x i1> %i.ad, <2 x float> %i.z, <2 x float> %i.ac ; 2 uses
  %i.af = fcmp olt <2 x float> %i.aa, %i.ae
  %i.ag = select <2 x i1> %i.af, <2 x float> %i.aa, <2 x float> %i.ae ; 4 uses
  %i.ah = fcmp olt <2 x float> %i.w, %i.y
  %i.ai = select <2 x i1> %i.ah, <2 x float> %i.y, <2 x float> %i.w ; 2 uses
  %i.aj = fcmp olt <2 x float> %i.ai, %i.z
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.z, <2 x float> %i.ai ; 2 uses
  %i.al = fcmp olt <2 x float> %i.ak, %i.aa
  %i.am = select <2 x i1> %i.al, <2 x float> %i.aa, <2 x float> %i.ak ; 4 uses
  %i.an = fcmp olt <2 x float> %i.am, %i.ag
  %i.ao = select <2 x i1> %i.an, <2 x float> %i.am, <2 x float> %i.ag ; 2 uses
  %2 = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ap = fcmp olt <2 x float> %i.ag, %i.am
  %i.aq = select <2 x i1> %i.ap, <2 x float> %i.am, <2 x float> %i.ag
  %i.ar = fsub <2 x float> %i.aq, %i.ao
  %3 = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %2, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %3, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atanf(float noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #15

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !35
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !22
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #21
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #24 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !35
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !66)
  %i.x = load i64, ptr %.0911.i.i.i, align 4, !alias.scope !66, !noalias !65
  store i64 %i.x, ptr %.012.i.i.i, align 4, !alias.scope !65, !noalias !66
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !63

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !64
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #22
  br label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv6Point_IfEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8KeyPointESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 28                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 28                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 329406144173384851
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 329406144173384850, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 5 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i.prol, align 4, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 16
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 20
  store i32 0, ptr %i.q, align 4, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 24
  store i32 -1, ptr %i.r, align 4, !tbaa !14
  %i.s = add i64 %.01012.i.i.i.prol, -1           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !67

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.013.i.i.i.unr = phi ptr [ %i.b, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
  %.01012.i.i.i.unr = phi i64 [ %1, %.lr.ph.i.i.i.preheader ], [ %i.s, %.lr.ph.i.i.i.prol ]
  %i.u = icmp ult i64 %1, 4
  br i1 %i.u, label %_ZSt27__uninitialized_default_n_aIPN2cv8KeyPointEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.013.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i = phi i64 [ %i.ak, %.lr.ph.i.i.i ], [ %.01012.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %.013.i.i.i, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 16
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 20
  store i32 0, ptr %i.w, align 4, !tbaa !13
end_hunk_0
