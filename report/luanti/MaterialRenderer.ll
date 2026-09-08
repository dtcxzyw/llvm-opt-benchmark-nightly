Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/MaterialRenderer?download=true
inline.NumInlined: 246
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZThn8_N5video24COpenGL3MaterialRendererD0Ev:bb.a
; Function Attrs: nounwind uwtable
define void @_ZTv0_n24_N5video24COpenGL3MaterialRendererD0Ev(ptr noundef %0) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 2 uses
  tail call void @_ZN5video24COpenGL3MaterialRendererD2Ev(ptr noundef nonnull align 8 dereferenceable(68) %i.d, ptr noundef nonnull @_ZTTN5video24COpenGL3MaterialRendererE) #26, !inline_history !59
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(68) %i.d, i64 noundef 88) #28, !inline_history !60
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5video24COpenGL3MaterialRenderer10getProgramEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !46
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video24COpenGL3MaterialRenderer12createShaderEjPKc(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 3 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !46
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 952), align 8, !tbaa !94
  %i.h = tail call noundef i32 %i.g(i32 noundef %1) ; 6 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1152), align 8, !tbaa !95
  call void %i.i(i32 noundef %i.h, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef null)
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 936), align 8, !tbaa !96
  call void %i.j(i32 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !35
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1048), align 8, !tbaa !97
  call void %i.k(i32 noundef %i.h, i32 noundef 35713, ptr noundef nonnull %i.b)
  %i.l = load i32, ptr %i.b, align 4, !tbaa !35
  %.not14.not = icmp eq i32 %i.l, 1               ; 2 uses
  br i1 %.not14.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  store i32 0, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1048), align 8, !tbaa !97
  call void %i.m(i32 noundef %i.h, i32 noundef 35716, ptr noundef nonnull %i.c)
  %i.n = load i32, ptr %i.c, align 4, !tbaa !35   ; 2 uses
  %.not15 = icmp eq i32 %i.n, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = sext i32 %i.n to i64
  %i.p = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #30 ; 3 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1056), align 8, !tbaa !98
  %i.r = load i32, ptr %i.c, align 4, !tbaa !35
  call void %i.q(i32 noundef %i.h, i32 noundef %i.r, ptr noundef nonnull %i.d, ptr noundef nonnull %i.p)
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull %i.p, i32 noundef 3)
  call void @_ZdaPv(ptr noundef nonnull %i.p) #28
  br label %bb.e

.thread:                                          ; preds = %bb.b
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 920), align 8, !tbaa !99
  %i.t = load i32, ptr %i.e, align 4, !tbaa !46
  call void %i.s(i32 noundef %i.t, i32 noundef %i.h)
  br label %.sink.split

bb.e:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %.not14.not, %.sink.split ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video24COpenGL3MaterialRenderer11linkProgramEv(ptr noundef nonnull align 8 dereferenceable(68) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %i.d = alloca i32, align 4                      ; 11 uses
  %i.e = alloca i32, align 4                      ; 11 uses
  %1 = alloca %"struct.video::COpenGL3MaterialRenderer::SUniformInfo", align 8 ; 17 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 10 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !46   ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1144), align 8, !tbaa !102
  tail call void %i.i(i32 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !35
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1032), align 8, !tbaa !103
  %i.k = load i32, ptr %i.g, align 4, !tbaa !46
  call void %i.j(i32 noundef %i.k, i32 noundef 35714, ptr noundef nonnull %i.a)
  %i.l = load i32, ptr %i.a, align 4, !tbaa !35
  %.not32 = icmp eq i32 %i.l, 0
  br i1 %.not32, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.1, i32 noundef 3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1032), align 8, !tbaa !103
  %i.n = load i32, ptr %i.g, align 4, !tbaa !46
  call void %i.m(i32 noundef %i.n, i32 noundef 35716, ptr noundef nonnull %i.b)
  %i.o = load i32, ptr %i.b, align 4, !tbaa !35   ; 2 uses
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sext i32 %i.o to i64
  %i.q = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #30 ; 3 uses
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1040), align 8, !tbaa !104
  %i.s = load i32, ptr %i.g, align 4, !tbaa !46
  %i.t = load i32, ptr %i.b, align 4, !tbaa !35
  call void %i.r(i32 noundef %i.s, i32 noundef %i.t, ptr noundef nonnull %i.c, ptr noundef nonnull %i.q)
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull %i.q, i32 noundef 3)
  call void @_ZdaPv(ptr noundef nonnull %i.q) #28
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2392), align 8, !tbaa !105
  %i.v = load i32, ptr %i.g, align 4, !tbaa !46
  %i.w = call noundef i32 %i.u(i32 noundef %i.v, ptr noundef nonnull @.str.2) ; 2 uses
  %.not34 = icmp eq i32 %i.w, -1
  br i1 %.not34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 2416), align 8, !tbaa !106
  %i.y = load i32, ptr %i.g, align 4, !tbaa !46
  call void %i.x(i32 noundef %i.y, i32 noundef %i.w, i32 noundef 0)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 1, ptr %i.z, align 2, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1032), align 8, !tbaa !103
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !46
  call void %i.aa(i32 noundef %i.ab, i32 noundef 35718, ptr noundef nonnull %i.d)
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !35
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread62, label %bb.h

.thread62:                                        ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.sink.split

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store i32 0, ptr %i.e, align 4, !tbaa !35
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1032), align 8, !tbaa !103
  %i.af = load i32, ptr %i.g, align 4, !tbaa !46
  call void %i.ae(i32 noundef %i.af, i32 noundef 35719, ptr noundef nonnull %i.e)
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !35  ; 3 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = add nsw i32 %i.ag, 1                    ; 3 uses
  store i32 %i.ai, ptr %i.e, align 4, !tbaa !35
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp slt i32 %i.ag, -1
  br i1 %i.ak, label %.noexc, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #31
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, label %.noexc38

.noexc38:                                         ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #30 ; 4 uses
  store i8 0, ptr %i.al, align 1, !tbaa !55
  %2 = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.am = getelementptr i8, ptr %i.al, i64 %i.aj
  %i.an = add nsw i64 %i.aj, -1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %2, i8 0, i64 %i.an, i1 false)
  %i.ao = ptrtoint ptr %i.am to i64
  br label %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit

_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit:               ; preds = %.noexc38, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.050.0 = phi ptr [ %i.al, %.noexc38 ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 11 uses
  %.0.i.i.i.i.i = phi i64 [ %i.ao, %.noexc38 ], [ 0, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !49 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 2 uses
  %.not.i.i = icmp eq ptr %i.as, %i.aq
  br i1 %.not.i.i, label %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, %_ZSt8_DestroyIN5video24COpenGL3MaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN5video24COpenGL3MaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i ], [ %i.aq, %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !54 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZSt8_DestroyIN5video24COpenGL3MaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !55
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #28
  br label %_ZSt8_DestroyIN5video24COpenGL3MaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5video24COpenGL3MaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.ay, %i.as
  br i1 %.not.i.i.i.i39, label %_ZSt8_DestroyIPN5video24COpenGL3MaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN5video24COpenGL3MaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN5video24COpenGL3MaterialRenderer12SUniformInfoEEvPT_.exit.i.i.i.i
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !50
  br label %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE5clearEv.exit

_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE5clearEv.exit: ; preds = %_ZNSt6vectorIcSaIcEEC2EmRKS0_.exit, %_ZSt8_DestroyIPN5video24COpenGL3MaterialRenderer12SUniformInfoES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.az = load i32, ptr %i.d, align 4, !tbaa !35
  %i.ba = sext i32 %i.az to i64
  invoke void @_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %i.ba)
          to label %.preheader66 unwind label %bb.k

.preheader66:                                     ; preds = %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE5clearEv.exit
  %i.bb = load i32, ptr %i.d, align 4, !tbaa !35
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %.preheader66
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 13 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bf = ptrtoint ptr %.sroa.050.0 to i64
  %i.bg = sub i64 %.0.i.i.i.i.i, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  br label %bb.l

._crit_edge75:                                    ; preds = %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit, %.preheader66
  %.not.i.i.i = icmp eq ptr %.sroa.050.0, null
  br i1 %.not.i.i.i, label %.thread64, label %bb.j

bb.j:                                             ; preds = %._crit_edge75
  %i.bk = ptrtoint ptr %.sroa.050.0 to i64
  %i.bl = sub i64 %.0.i.i.i.i.i, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0, i64 noundef %i.bl) #28
  br label %.thread64

bb.k:                                             ; preds = %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE5clearEv.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %.lr.ph74, %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit
  %.01773 = phi i32 [ 0, %.lr.ph74 ], [ %i.dg, %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr %i.bd, ptr %1, align 8, !tbaa !61
  store i64 0, ptr %i.be, align 8, !tbaa !62
  store i8 0, ptr %i.bd, align 8, !tbaa !55
  call void @llvm.memset.p0.i64(ptr align 1 %.sroa.050.0, i8 0, i64 %i.bg, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1008), align 8, !tbaa !107
  %i.bo = load i32, ptr %i.g, align 4, !tbaa !46
  %i.bp = load i32, ptr %i.e, align 4, !tbaa !35
  invoke void %i.bn(i32 noundef %i.bo, i32 noundef %.01773, i32 noundef %i.bp, ptr noundef null, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bh, ptr noundef %.sroa.050.0)
          to label %.preheader unwind label %bb.m

.preheader:                                       ; preds = %bb.l
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !35
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

bb.m:                                             ; preds = %bb.u, %._crit_edge, %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.050.0, i64 %indvars.iv
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !55  ; 2 uses
  switch i8 %i.bu, label %bb.n [
    i8 91, label %._crit_edge
    i8 0, label %._crit_edge
  ]

bb.n:                                             ; preds = %.lr.ph
  %i.bv = load i64, ptr %i.be, align 8, !tbaa !62 ; 4 uses
  %i.bw = add i64 %i.bv, 1                        ; 3 uses
  %i.bx = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.bd
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.n
  %i.bz = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.bz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.n
  %i.ca = load i64, ptr %i.bd, align 8, !tbaa !55
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.cb = phi i64 [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.cc = icmp ugt i64 %i.bw, %i.cb
  br i1 %i.cc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bv, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc40 unwind label %bb.q

.noexc40:                                         ; preds = %bb.o
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !54
  br label %bb.p

bb.p:                                             ; preds = %.noexc40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cd = phi ptr [ %.pre.i.i, %.noexc40 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv
  store i8 %i.bu, ptr %i.ce, align 1, !tbaa !55
  store i64 %i.bw, ptr %i.be, align 8, !tbaa !62
  %i.cf = load ptr, ptr %1, align 8, !tbaa !54
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bw
  store i8 0, ptr %i.cg, align 1, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ch = load i32, ptr %i.e, align 4, !tbaa !35
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !100

bb.q:                                             ; preds = %bb.o
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

._crit_edge:                                      ; preds = %bb.p, %.lr.ph, %.lr.ph, %.preheader
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1072), align 8, !tbaa !108
  %i.cm = load i32, ptr %i.g, align 4, !tbaa !46
  %i.cn = invoke noundef i32 %i.cl(i32 noundef %i.cm, ptr noundef %.sroa.050.0)
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %._crit_edge
  store i32 %i.cn, ptr %i.bi, align 4, !tbaa !64
  %i.co = load ptr, ptr %i.ar, align 8, !tbaa !50 ; 7 uses
  %i.cp = load ptr, ptr %i.bj, align 8, !tbaa !57
  %.not.i.i41 = icmp eq ptr %i.co, %i.cp
  br i1 %.not.i.i41, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16 ; 3 uses
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !61
  %i.cr = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bd
  br i1 %i.cs, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.ct = load i64, ptr %i.be, align 8, !tbaa !62 ; 3 uses
  %i.cu = icmp ult i64 %i.ct, 16
  call void @llvm.assume(i1 %i.cu)
  %i.cv = add nuw nsw i64 %i.ct, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cq, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.s
  store ptr %i.cr, ptr %i.co, align 8, !tbaa !54
  %i.cw = load i64, ptr %i.bd, align 8, !tbaa !55
  store i64 %i.cw, ptr %i.cq, align 8, !tbaa !55
  %.pre = load i64, ptr %i.be, align 8, !tbaa !62
  br label %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit.thread

_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit.thread: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.cx = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ct, %bb.t ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !62
  store ptr %i.bd, ptr %1, align 8, !tbaa !54
  store i64 0, ptr %i.be, align 8, !tbaa !62
  store i8 0, ptr %i.bd, align 8, !tbaa !55
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.da = load i64, ptr %i.bh, align 8
  store i64 %i.da, ptr %i.cz, align 8
  %i.db = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 40
  store ptr %i.dc, ptr %i.ar, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  br label %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit

bb.u:                                             ; preds = %bb.r
  invoke void @_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr %i.co, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit unwind label %bb.m

_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.u
  %.pre77 = load ptr, ptr %1, align 8, !tbaa !54  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.dd = icmp eq ptr %.pre77, %i.bd
  br i1 %i.dd, label %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit
  %i.de = load i64, ptr %i.bd, align 8, !tbaa !55
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %.pre77, i64 noundef %i.df) #28
  br label %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit

_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit: ; preds = %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit, %_ZNSt6vectorIN5video24COpenGL3MaterialRenderer12SUniformInfoESaIS2_EE9push_backEOS2_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.dg = add nuw nsw i32 %.01773, 1              ; 2 uses
  %i.dh = load i32, ptr %i.d, align 4, !tbaa !35
  %i.di = icmp slt i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %._crit_edge75, !llvm.loop !101

bb.v:                                             ; preds = %bb.q, %bb.m
  %.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %i.ck, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26
  %i.dj = load ptr, ptr %1, align 8, !tbaa !54    ; 2 uses
  %i.dk = icmp eq ptr %i.dj, %i.bd
  br i1 %i.dk, label %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45: ; preds = %bb.v
  %i.dl = load i64, ptr %i.bd, align 8, !tbaa !55
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.dj, i64 noundef %i.dm) #28
  br label %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit47

_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit47: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.x

.thread64:                                        ; preds = %._crit_edge75, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.sink.split

bb.w:                                             ; preds = %bb.h
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.3, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %.sink.split

bb.x:                                             ; preds = %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit47, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN5video24COpenGL3MaterialRenderer12SUniformInfoD2Ev.exit47 ], [ %i.bm, %bb.k ]
  %.not.i.i.i48 = icmp eq ptr %.sroa.050.0, null
  br i1 %.not.i.i.i48, label %_ZNSt6vectorIcSaIcEED2Ev.exit49, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = ptrtoint ptr %.sroa.050.0 to i64
  %i.do = sub i64 %.0.i.i.i.i.i, %i.dn
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.050.0, i64 noundef %i.do) #28
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit49

_ZNSt6vectorIcSaIcEED2Ev.exit49:                  ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  resume { ptr, i32 } %.pn.pn

.sink.split:                                      ; preds = %.thread, %.thread62, %bb.w, %.thread64
  %.3.ph = phi i1 [ true, %.thread64 ], [ false, %.thread ], [ false, %bb.w ], [ true, %.thread62 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.a
  %.3 = phi i1 [ true, %bb.a ], [ %.3.ph, %.sink.split ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video24COpenGL3MaterialRenderer8OnRenderEPNS_25IMaterialRendererServicesENS_13E_VERTEX_TYPEE(ptr noundef nonnull align 8 dereferenceable(68) %0, ptr nofree readnone captures(none) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.d = load i32, ptr %i.c, align 4
  %.not1 = icmp eq i32 %i.d, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load i32, ptr %i.f, align 8, !tbaa !32
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.e, i32 noundef %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video24COpenGL3MaterialRenderer13OnSetMaterialERKNS_9SMaterialES3_bPNS_25IMaterialRendererServicesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(68) %0, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3, ptr nofree readnone captures(none) %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = tail call noundef ptr @_ZNK5video18COpenGL3DriverBase15getCacheHandlerEv(ptr noundef nonnull align 8 dereferenceable(2528) %i.b) ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !46   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 168 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !111
  %.not.i = icmp eq i32 %i.g, %i.e
  br i1 %.not.i, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 1160), align 8, !tbaa !112
  tail call void %i.h(i32 noundef %i.e), !inline_history !109
  store i32 %i.e, ptr %i.f, align 8, !tbaa !111
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit: ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 872
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(2528) %i.i, ptr noundef nonnull align 8 dereferenceable(127) %1, ptr noundef nonnull align 8 dereferenceable(127) %2, i1 noundef zeroext %3)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !29, !range !47, !noundef !48
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.j

bb.c:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 120 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !113
  %i.r = load i8, ptr %i.q, align 1, !tbaa !114, !range !47, !noundef !48
  %.not.i10 = icmp eq i8 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 130 ; 2 uses
  %i.t = load i8, ptr %i.s, align 2, !range !47
  %i.u = trunc nuw i8 %i.t to i1
  %or.cond.i = select i1 %.not.i10, i1 true, i1 %i.u
  br i1 %or.cond.i, label %bb.d, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 232), align 8
  tail call void %i.v(i32 noundef 3042), !inline_history !110
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.x = load i32, ptr %i.w, align 8, !tbaa !71   ; 2 uses
  %.not9.i = icmp eq i32 %i.x, 0
  br i1 %.not9.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !113
  %i.z = zext i32 %i.x to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.y, i8 1, i64 %i.z, i1 false), !tbaa !114
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.d
  store i8 0, ptr %i.s, align 2, !tbaa !115
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit: ; preds = %bb.c, %._crit_edge.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 88 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !35
  %.not.i11 = icmp eq i32 %i.ac, 770
  br i1 %.not.i11, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %.not18.i = icmp eq i32 %i.af, 771
  br i1 %.not18.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !35
  %.not19.i = icmp eq i32 %i.ai, 770
  br i1 %.not19.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !75
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !35
  %.not20.i = icmp ne i32 %i.al, 771
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 129
  %i.an = load i8, ptr %i.am, align 1, !range !47
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i14 = select i1 %.not20.i, i1 true, i1 %i.ao
  br i1 %or.cond.i14, label %bb.h, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE8setBlendEb.exit
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 256), align 8, !tbaa !76
  tail call void %i.ap(i32 noundef 770, i32 noundef 771), !inline_history !1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !71
  %.not24.i = icmp eq i32 %i.ar, 0
  br i1 %.not24.i, label %._crit_edge.i13, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.h
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !72
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !73
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !74
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  br label %bb.i

._crit_edge.i13:                                  ; preds = %bb.i, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 129
  store i8 0, ptr %i.az, align 1, !tbaa !77
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.i:                                             ; preds = %bb.i, %.lr.ph.i12
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i12 ], [ %indvars.iv.next.i, %bb.i ] ; 5 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i
  store i32 770, ptr %i.ba, align 4, !tbaa !35
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i
  store i32 771, ptr %i.bb, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  store i32 770, ptr %i.bc, align 4, !tbaa !35
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  store i32 771, ptr %i.bd, align 4, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = load i32, ptr %i.aq, align 8, !tbaa !71
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %bb.i, label %._crit_edge.i13, !llvm.loop !2

bb.j:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE10setProgramEj.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30, !range !47, !noundef !48
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.k, label %_ZN5video23COpenGLCoreCacheHandlerINS_18COpenGL3DriverBaseENS_18COpenGLCoreTextureIS1_EEE12setBlendFuncEjj.exit

bb.k:                                             ; preds = %bb.j
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !124 ; 3 uses
  %i.bm = lshr i32 %i.bl, 12
  %i.bn = trunc i32 %i.bm to i8
  %i.bo = and i8 %i.bn, 15
  %i.bp = lshr i32 %i.bl, 8
  %i.bq = trunc i32 %i.bp to i8
  %i.br = and i8 %i.bq, 15
  %i.bs = trunc i32 %i.bl to i8                   ; 2 uses
  %i.bt = lshr i8 %i.bs, 4
  %i.bu = and i8 %i.bs, 15
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.bw = tail call noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528) %i.bv, i8 noundef zeroext %i.bt)
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.by = tail call noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528) %i.bx, i8 noundef zeroext %i.bu)
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.ca = tail call noundef i32 @_ZNK5video18COpenGL3DriverBase10getGLBlendENS_14E_BLEND_FACTORE(ptr noundef nonnull align 8 dereferenceable(2528) %i.bz, i8 noundef zeroext %i.bo)
  %i.cb = load ptr, ptr %i.a, align 8, !tbaa !27
end_hunk_0
