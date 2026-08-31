Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/QCS?download=true
inline.NumInlined: 264
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN3QCSC2EPK9InputFileP5Hydro:._crit_edge.i.i
  store double %i.d, ptr %i.e, align 8, !tbaa !20
  %i.f = load ptr, ptr %3, align 8, !tbaa !21     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !19
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !13
  store i16 12657, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.k, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.l, align 2, !tbaa !19
  %i.m = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, double noundef 0.000000e+00)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.m, ptr %i.n, align 8, !tbaa !22
  %i.o = load ptr, ptr %4, align 8, !tbaa !21     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.j
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.b
  %i.q = load i64, ptr %i.j, align 8, !tbaa !19
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.s, ptr %5, align 8, !tbaa !13
  store i16 12913, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 2, ptr %i.t, align 8, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i8 0, ptr %i.u, align 2, !tbaa !19
  %i.v = invoke noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(32) %5, double noundef 2.000000e+00)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.v, ptr %i.w, align 8, !tbaa !23
  %i.x = load ptr, ptr %5, align 8, !tbaa !21     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.s
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %bb.c
  %i.z = load i64, ptr %i.s, align 8, !tbaa !19
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.a
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.d
  %i.ae = load i64, ptr %i.a, align 8, !tbaa !19
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.g

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %4, align 8, !tbaa !21    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.j
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.e
  %i.aj = load i64, ptr %i.j, align 8, !tbaa !19
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %5, align 8, !tbaa !21    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.s
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.f
  %i.ao = load i64, ptr %i.s, align 8, !tbaa !19
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn13.pn = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %.pn13.pn
}

declare noundef double @_ZNK9InputFile9getDoubleERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEd(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN3QCSD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(32) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3QCS9calcForceEP7double2ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = sub nsw i32 %3, %2                       ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3                      ; 5 uses
  %i.d = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #13 ; 3 uses
  %i.e = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #13 ; 3 uses
  %i.f = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #13 ; 3 uses
  %i.g = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #13 ; 3 uses
  %i.h = tail call noalias noundef ptr @malloc(i64 noundef %i.c) #13 ; 3 uses
  %i.i = shl nsw i32 %i.a, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 4
  %i.l = tail call noalias noundef ptr @malloc(i64 noundef %i.k) #13 ; 3 uses
  tail call void @_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %2, i32 noundef %3)
  tail call void @_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.g, ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.l, i32 noundef %2, i32 noundef %3)
  tail call void @_ZN3QCS8setForceEPKdPK7double2PdPS2_ii(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d, ptr noundef %i.l, ptr noundef %i.h, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @_ZN3QCS10setVelDiffEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %2, i32 noundef %3)
  tail call void @free(ptr noundef %i.d) #11
  tail call void @free(ptr noundef %i.e) #11
  tail call void @free(ptr noundef %i.f) #11
  tail call void @free(ptr noundef %i.g) #11
  tail call void @free(ptr noundef %i.h) #11
  tail call void @free(ptr noundef %i.l) #11
  ret void
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3QCS12setCornerDivEPdS0_S0_S0_S0_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !58   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 6 uses
  %i.s = sext i32 %6 to i64                       ; 9 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4    ; 8 uses
  %i.v = icmp slt i32 %7, %i.d
  %i.w = sext i32 %7 to i64                       ; 5 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.in = select i1 %i.v, ptr %i.x, ptr %i.y
  %i.z = load i32, ptr %.in, align 4, !tbaa !4    ; 4 uses
  %i.aa = sub nsw i32 %i.z, %i.u
  %i.ab = sext i32 %i.aa to i64
  %i.ac = shl nsw i64 %i.ab, 4                    ; 2 uses
  %i.ad = tail call noalias noundef ptr @malloc(i64 noundef %i.ac) #13 ; 8 uses
  %.not5.i.i.i = icmp eq i32 %i.z, %i.u
  br i1 %.not5.i.i.i, label %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ad, i8 0, i64 %i.ac, i1 false), !tbaa !60
  br label %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit

_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit:          ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %i.ae = icmp slt i32 %6, %7                     ; 2 uses
  br i1 %i.ae, label %.lr.ph, label %.preheader359

.lr.ph:                                           ; preds = %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61 ; 3 uses
  %i.ah = sub nsw i64 %i.w, %i.s
  %xtraiter = and i64 %i.ah, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.s
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.s
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = sub nsw i32 %i.al, %i.u
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.an
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ap ; 2 uses
  %i.ar = load <2 x double>, ptr %i.ao, align 8, !tbaa !60
  %i.as = load <2 x double>, ptr %i.aq, align 8, !tbaa !60
  %i.at = fadd <2 x double> %i.ar, %i.as
  store <2 x double> %i.at, ptr %i.aq, align 8, !tbaa !60
  %indvars.iv.next.prol = add nsw i64 %i.s, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.au = add nsw i64 %i.w, -1
  %i.av = icmp eq i64 %i.au, %i.s
  br i1 %i.av, label %.preheader359, label %.lr.ph.new

.preheader359:                                    ; preds = %.prol.loopexit, %.lr.ph.new, %_ZSt4fillIP7double2S0_EvT_S2_RKT0_.exit
  %i.aw = icmp slt i32 %i.u, %i.z
  br i1 %i.aw, label %.lr.ph362.preheader, label %.preheader

.lr.ph362.preheader:                              ; preds = %.preheader359
  %i.ax = sext i32 %i.u to i64                    ; 4 uses
  %wide.trip.count369 = sext i32 %i.z to i64      ; 2 uses
  %i.ay = sub nsw i64 %wide.trip.count369, %i.ax  ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 2
  br i1 %min.iters.check, label %.lr.ph362, label %vector.body.preheader

vector.body.preheader:                            ; preds = %.lr.ph362.preheader
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %i.az = load i32, ptr %gep, align 4, !tbaa !4
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ba = sitofp <2 x i32> %broadcast.splat to <2 x double>
  %i.bb = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %index ; 2 uses
  %wide.load = load <2 x double>, ptr %i.bb, align 8
  %i.bc = fdiv <2 x double> %wide.load, %i.ba
  store <2 x double> %i.bc, ptr %i.bb, align 8
  %index.next = add nuw i64 %index, 1             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %i.ay
  br i1 %i.bd, label %.preheader, label %vector.body, !llvm.loop !62

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !4
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = sub nsw i32 %i.bh, %i.u
  %i.bj = sext i32 %i.bf to i64
  %i.bk = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.bj
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.bl ; 2 uses
  %i.bn = load <2 x double>, ptr %i.bk, align 8, !tbaa !60
  %i.bo = load <2 x double>, ptr %i.bm, align 8, !tbaa !60
  %i.bp = fadd <2 x double> %i.bn, %i.bo
  store <2 x double> %i.bp, ptr %i.bm, align 8, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv.next
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = sub nsw i32 %i.bt, %i.u
  %i.bv = sext i32 %i.br to i64
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.bv
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.bx ; 2 uses
  %i.bz = load <2 x double>, ptr %i.bw, align 8, !tbaa !60
  %i.ca = load <2 x double>, ptr %i.by, align 8, !tbaa !60
  %i.cb = fadd <2 x double> %i.bz, %i.ca
  store <2 x double> %i.cb, ptr %i.by, align 8, !tbaa !60
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.w
  br i1 %exitcond.not.1, label %.preheader359, label %.lr.ph.new, !llvm.loop !66

.preheader:                                       ; preds = %vector.body, %.lr.ph362, %.preheader359
  br i1 %i.ae, label %.lr.ph364, label %._crit_edge

.lr.ph364:                                        ; preds = %.preheader
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !68 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !69 ; 2 uses
  br label %bb.b

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %.lr.ph362 ], [ %i.ax, %.lr.ph362.preheader ] ; 3 uses
  %8 = sub nsw i64 %indvars.iv366, %i.ax
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv366
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = sitofp i32 %i.cl to double
  %9 = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %8 ; 2 uses
  %i.cn = load <2 x double>, ptr %9, align 8, !tbaa !60
  %i.co = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = fdiv <2 x double> %i.cn, %i.cp
  store <2 x double> %i.cq, ptr %9, align 8, !tbaa !60
  %indvars.iv.next367 = add nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.preheader, label %.lr.ph362, !llvm.loop !70

._crit_edge:                                      ; preds = %bb.d, %.preheader
  tail call void @free(ptr noundef %i.ad) #11
  ret void

bb.b:                                             ; preds = %.lr.ph364, %bb.d
  %indvars.iv371 = phi i64 [ %i.s, %.lr.ph364 ], [ %indvars.iv.next372, %bb.d ] ; 5 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %indvars.iv371
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !4
  %i.ct = sext i32 %i.cs to i64                   ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4  ; 2 uses
  %i.cw = sub nsw i32 %i.cv, %i.u
  %i.cx = sub nsw i64 %indvars.iv371, %i.s        ; 5 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ct
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ct
  %i.db = load i32, ptr %i.da, align 4, !tbaa !4
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %indvars.iv371
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !4
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ct
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %indvars.iv371
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = sext i32 %i.cz to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.di ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.di ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !71 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load double, ptr %i.dn, align 8, !tbaa !73 ; 4 uses
  %i.dp = sext i32 %i.dd to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.dp
  %i.dr = sext i32 %i.dh to i64                   ; 2 uses
  %i.ds = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.du = sext i32 %i.cw to i64
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = sext i32 %i.cv to i64
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.dx ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !71 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !73 ; 2 uses
  %i.ec = sext i32 %i.db to i64
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.ec
  %i.ee = sext i32 %i.df to i64                   ; 2 uses
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load <2 x double>, ptr %i.ds, align 8, !tbaa !60 ; 6 uses
  %i.ei = load double, ptr %i.dt, align 8, !tbaa !73 ; 2 uses
  %i.ej = load <2 x double>, ptr %i.ef, align 8, !tbaa !60 ; 6 uses
  %i.ek = load double, ptr %i.eg, align 8, !tbaa !73 ; 2 uses
  %i.el = fsub double %i.dz, %i.dm                ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %i.ej, %i.eh
  %i.em = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.en = load <2 x double>, ptr %i.dj, align 8, !tbaa !60 ; 4 uses
  %i.eo = load double, ptr %i.dk, align 8, !tbaa !73 ; 2 uses
  %i.ep = load <2 x double>, ptr %i.dv, align 8, !tbaa !60 ; 4 uses
  %i.eq = load double, ptr %i.dw, align 8, !tbaa !73 ; 2 uses
  %i.er = load <2 x double>, ptr %i.dq, align 8, !tbaa !60, !noalias !74 ; 2 uses
  %i.es = load <2 x double>, ptr %i.ed, align 8, !tbaa !60, !noalias !77 ; 2 uses
  %i.et = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eu = shufflevector <2 x double> %i.es, <2 x double> %i.er, <2 x i32> <i32 0, i32 2>
  %i.ev = fadd <2 x double> %i.et, %i.eu
  %i.ew = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ey = shufflevector <2 x double> %i.es, <2 x double> %i.er, <2 x i32> <i32 1, i32 3>
  %i.ez = fadd <2 x double> %i.ex, %i.ey
  %i.fa = fmul <2 x double> %i.ev, splat (double 5.000000e-01) ; 6 uses
  %i.fb = fmul <2 x double> %i.ez, splat (double 5.000000e-01) ; 6 uses
  %i.fc = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.fd = insertelement <2 x double> %i.fc, double %i.eb, i64 1
  %i.fe = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ff = insertelement <2 x double> %i.fe, double %i.do, i64 1
  %i.fg = fsub <2 x double> %i.fd, %i.ff          ; 3 uses
  %i.fh = fneg double %i.em                       ; 2 uses
  %i.fi = extractelement <2 x double> %i.fg, i64 1
  %i.fj = fmul double %i.fi, %i.fh
  %i.fk = extractelement <2 x double> %i.fg, i64 0
  %i.fl = tail call noundef double @llvm.fmuladd.f64(double %i.el, double %i.fk, double %i.fj)
  %i.fm = fmul double %i.fl, 5.000000e-01         ; 3 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.cx
  store double %i.fm, ptr %i.fn, align 8, !tbaa !60
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ee
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !60 ; 3 uses
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.dr
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !60 ; 3 uses
  %i.fs = fcmp olt double %i.fr, %i.fp
  %.sroa.speculated261 = select i1 %i.fs, double %i.fr, double %i.fp ; 2 uses
  %i.ft = fcmp olt double %.sroa.speculated261, f0x3D719799812DEA11
  br i1 %i.ft, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.fu = extractelement <2 x double> %i.eh, i64 0
  %i.fv = extractelement <2 x double> %i.ej, i64 0
  %i.fw = fsub double %i.ei, %i.do
  %i.fx = fsub double %i.fu, %i.dm
  %i.fy = fsub double %i.ek, %i.do
  %i.fz = fsub double %i.fv, %i.dm
  %i.ga = fmul double %i.fw, %i.fy
  %i.gb = tail call noundef double @llvm.fmuladd.f64(double %i.fz, double %i.fx, double %i.ga)
  %i.gc = fmul double %i.gb, 4.000000e+00
  %i.gd = fmul double %i.fp, %i.fr
  %i.ge = fdiv double %i.gc, %i.gd
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.gf = phi double [ %i.ge, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.gg = getelementptr inbounds [8 x i8], ptr %5, i64 %i.cx
  store double %i.gf, ptr %i.gg, align 8, !tbaa !60
  %i.gh = shufflevector <2 x double> %i.ep, <2 x double> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.gi = shufflevector <2 x double> %i.en, <2 x double> %i.fa, <2 x i32> <i32 0, i32 3>
  %i.gj = fsub <2 x double> %i.gh, %i.gi
  %i.gk = shufflevector <2 x double> %i.ep, <2 x double> %i.fb, <2 x i32> <i32 1, i32 2>
  %i.gl = shufflevector <2 x double> %i.en, <2 x double> %i.fb, <2 x i32> <i32 1, i32 3>
  %i.gm = fsub <2 x double> %i.gk, %i.gl
  %i.gn = fneg double %i.el
  %i.go = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1
  %i.gq = fmul <2 x double> %i.gm, %i.gp
  %i.gr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gj, <2 x double> %i.fg, <2 x double> %i.gq) ; 2 uses
  %shift = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop378 = fsub <2 x double> %i.gr, %shift
  %i.gs = extractelement <2 x double> %foldExtExtBinop378, i64 0
  %i.gt = fmul double %i.fm, 2.000000e+00
  %i.gu = fdiv double %i.gs, %i.gt                ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cx ; 2 uses
  store double %i.gu, ptr %i.gv, align 8, !tbaa !60
  %i.gw = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.gx = shufflevector <2 x double> %i.gw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gy = shufflevector <2 x double> %i.ej, <2 x double> %i.eh, <2 x i32> <i32 0, i32 2>
  %i.gz = fadd <2 x double> %i.gx, %i.gy
  %i.ha = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.hb = shufflevector <2 x double> %i.ha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hc = shufflevector <2 x double> %i.ej, <2 x double> %i.eh, <2 x i32> <i32 1, i32 3>
  %i.hd = fadd <2 x double> %i.hb, %i.hc
  %i.he = insertelement <2 x double> %i.en, double %i.eo, i64 1
  %i.hf = shufflevector <2 x double> %i.fa, <2 x double> %i.fb, <2 x i32> <i32 1, i32 3>
  %i.hg = fadd <2 x double> %i.he, %i.hf
  %i.hh = insertelement <2 x double> %i.ep, double %i.eq, i64 1
  %i.hi = fadd <2 x double> %i.hg, %i.hh
  %i.hj = shufflevector <2 x double> %i.fa, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.hk = fadd <2 x double> %i.hi, %i.hj
  %i.hl = fmul <2 x double> %i.hk, splat (double 2.500000e-01) ; 2 uses
  %i.hm = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fsub <2 x double> %i.gz, %i.hn
  %i.hp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hr = fsub <2 x double> %i.hd, %i.hq
  %i.hs = shufflevector <2 x double> %i.eh, <2 x double> %i.ej, <2 x i32> <i32 0, i32 2>
  %i.ht = fsub <2 x double> %i.ho, %i.hs
  %i.hu = shufflevector <2 x double> %i.eh, <2 x double> %i.ej, <2 x i32> <i32 1, i32 3>
  %i.hv = fsub <2 x double> %i.hr, %i.hu
  %i.hw = fmul <2 x double> %i.ht, splat (double 5.000000e-01) ; 3 uses
  %i.hx = fmul <2 x double> %i.hv, splat (double 5.000000e-01) ; 3 uses
  %i.hy = fmul <2 x double> %i.hx, %i.hx
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.hw, <2 x double> %i.hy)
  %i.ia = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hz) ; 2 uses
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ic = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.id = fmul <2 x double> %i.hx, %i.ic
  %i.ie = shufflevector <2 x double> %i.hl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hw, <2 x double> %i.ie, <2 x double> %i.id)
  %i.ig = fmul <2 x double> %i.if, %i.ib
  %i.ih = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ig) ; 2 uses
  %i.ii = extractelement <2 x double> %i.ih, i64 0
  %i.ij = extractelement <2 x double> %i.ih, i64 1
  %i.ik = fcmp ogt double %i.ij, %i.ii
  %i.il = insertelement <2 x i1> poison, i1 %i.ik, i64 0
  %i.im = shufflevector <2 x i1> %i.il, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.in = select <2 x i1> %i.im, <2 x double> %i.ia, <2 x double> %i.ib ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 0
  %i.ip = extractelement <2 x double> %i.in, i64 1
  %i.iq = fdiv double %i.ip, %i.io
  %i.ir = fmul double %i.fm, 4.000000e+00
  %i.is = fmul double %i.ir, %i.iq
  %i.it = tail call double @sqrt(double noundef %i.is) #11, !tbaa !4 ; 2 uses
  %i.iu = fmul double %.sroa.speculated261, 2.000000e+00 ; 2 uses
  %i.iv = fcmp olt double %i.iu, %i.it
  %.sroa.speculated214 = select i1 %i.iv, double %i.iu, double %i.it
  %i.iw = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.ix = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iy = fadd <2 x double> %i.fb, %i.ix
  %i.iz = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ja = fadd <2 x double> %i.fa, %i.iz
  %i.jb = fsub <2 x double> %i.ja, %i.et
  %i.jc = fsub <2 x double> %i.iy, %i.ex
  %i.jd = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.je = fsub <2 x double> %i.jb, %i.jd          ; 2 uses
  %i.jf = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jg = fsub <2 x double> %i.jc, %i.jf          ; 2 uses
  %i.jh = fmul <2 x double> %i.jg, %i.jg
  %i.ji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.je, <2 x double> %i.je, <2 x double> %i.jh) ; 2 uses
  %i.jj = extractelement <2 x double> %i.ji, i64 0 ; 2 uses
  %i.jk = extractelement <2 x double> %i.ji, i64 1 ; 2 uses
  %i.jl = fcmp olt double %i.jk, %i.jj
  %.sroa.speculated = select i1 %i.jl, double %i.jj, double %i.jk
  %sqrt = tail call double @llvm.sqrt.f64(double %.sroa.speculated)
  %i.jm = fcmp olt double %i.gu, 0.000000e+00
  %i.jn = select i1 %i.jm, double %.sroa.speculated214, double 0.000000e+00
  %i.jo = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cx
  store double %i.jn, ptr %i.jo, align 8, !tbaa !60
  %i.jp = load double, ptr %i.gv, align 8, !tbaa !60
  %i.jq = fcmp olt double %i.jp, 0.000000e+00
  %i.jr = select i1 %i.jq, double %sqrt, double 0.000000e+00
  %i.js = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cx
  store double %i.jr, ptr %i.js, align 8, !tbaa !60
  %indvars.iv.next372 = add nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %i.w
  br i1 %exitcond375.not, label %._crit_edge, label %bb.b, !llvm.loop !80
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3QCS11setQCnForceEPKdS1_S1_P7double2ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !81
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !82
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %i.k = sub nsw i32 %6, %5
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef %i.m) #13 ; 3 uses
  %i.o = icmp slt i32 %5, %6
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load double, ptr %i.p, align 8, !tbaa !20
  %i.r = fadd double %i.q, 1.000000e+00
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !23
  %i.w = fmul double %i.v, 2.500000e-01
  %i.x = fmul double %i.r, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load double, ptr %i.y, align 8, !tbaa !22
  %i.aa = sext i32 %5 to i64                      ; 2 uses
  %wide.trip.count = sext i32 %6 to i64
  br label %bb.b

.lr.ph97:                                         ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.aj = sext i32 %5 to i64                      ; 2 uses
  %wide.trip.count102 = sext i32 %6 to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.ak = sub nsw i64 %indvars.iv, %i.aa          ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ak
  %i.ao = load double, ptr %i.an, align 8, !tbaa !60
  %i.ap = fmul double %i.ao, %i.x                 ; 3 uses
  %i.aq = sext i32 %i.am to i64                   ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aq
  %i.as = load double, ptr %i.ar, align 8, !tbaa !60
  %i.at = fmul double %i.z, %i.as                 ; 2 uses
  %i.au = fmul double %i.at, %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ap, double %i.au)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.av)
  %i.aw = fadd double %i.ap, %sqrt
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.aq
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !60
  %i.az = fmul double %i.ay, %i.aw
  %i.ba = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ak
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !60
  %i.bc = fmul double %i.bb, %i.az
  %i.bd = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ak
  %i.be = load double, ptr %i.bd, align 8, !tbaa !60
  %i.bf = fcmp ogt double %i.be, 0.000000e+00
  %i.bg = select i1 %i.bf, double 0.000000e+00, double %i.bc
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ak
  store double %i.bg, ptr %i.bh, align 8, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph97, label %bb.b, !llvm.loop !83

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @free(ptr noundef %i.n) #11
  ret void

bb.c:                                             ; preds = %.lr.ph97, %bb.c
  %indvars.iv99 = phi i64 [ %i.aj, %.lr.ph97 ], [ %indvars.iv.next100, %bb.c ] ; 5 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv99
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = sub nsw i64 %indvars.iv99, %i.aj        ; 2 uses
  %i.bl = sext i32 %i.bj to i64                   ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bl
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.bl
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !4
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv99
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv99
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bk
  %i.bx = sext i32 %i.bn to i64
  %i.by = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bx ; 2 uses
  %i.bz = sext i32 %i.bp to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.bz
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !60, !noalias !84
  %i.cc = sext i32 %i.br to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cc
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !60, !noalias !87
  %i.cf = fdiv double 1.000000e+00, %i.ce
  %.idx = shl nuw nsw i64 %i.bk, 5
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 %.idx ; 2 uses
  %i.ch = load <2 x double>, ptr %i.by, align 8, !tbaa !60, !noalias !90
  %i.ci = load <2 x double>, ptr %i.ca, align 8, !tbaa !60, !noalias !90
  %i.cj = fsub <2 x double> %i.ch, %i.ci
  %i.ck = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = fmul <2 x double> %i.cj, %i.cl
  %i.cn = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = fmul <2 x double> %i.cm, %i.co
  store <2 x double> %i.cp, ptr %i.cg, align 8, !tbaa !60
  %i.cq = sext i32 %i.bt to i64
  %i.cr = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.cq
  %i.cs = sext i32 %i.bv to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !60, !noalias !93
  %i.cv = fdiv double 1.000000e+00, %i.cu
  %i.cw = getelementptr i8, ptr %i.cg, i64 16
  %i.cx = load <2 x double>, ptr %i.cr, align 8, !tbaa !60, !noalias !96
  %i.cy = load <2 x double>, ptr %i.by, align 8, !tbaa !60, !noalias !96
  %i.cz = fsub <2 x double> %i.cx, %i.cy
  %i.da = fmul <2 x double> %i.cl, %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x double> %i.da, %i.dc
  store <2 x double> %i.dd, ptr %i.cw, align 8, !tbaa !60
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next100, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge, label %bb.c, !llvm.loop !99
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3QCS8setForceEPKdPK7double2PdPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57
  %i.e = sub nsw i32 %6, %5
  %i.f = sext i32 %i.e to i64
  %i.g = shl nsw i64 %i.f, 3
  %i.h = tail call noalias noundef ptr @malloc(i64 noundef %i.g) #13 ; 4 uses
  %i.i = icmp slt i32 %5, %6
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count = sext i32 %6 to i64
  br label %.lr.ph

.lr.ph94:                                         ; preds = %.critedge
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !69
  %i.o = sext i32 %5 to i64                       ; 2 uses
  %wide.trip.count99 = sext i32 %6 to i64
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv = phi i64 [ %i.j, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.p = sub nsw i64 %indvars.iv, %i.j            ; 3 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %3, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !60 ; 3 uses
  %i.s = fneg double %i.r
  %i.t = tail call double @llvm.fmuladd.f64(double %i.s, double %i.r, double 1.000000e+00) ; 2 uses
  %i.u = fcmp olt double %i.t, 1.000000e-04
  br i1 %i.u, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds [8 x i8], ptr %1, i64 %i.p
  %i.w = load double, ptr %i.v, align 8, !tbaa !60
  %i.x = fdiv double %i.w, %i.t
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.b
  %.sink = phi double [ %i.x, %bb.b ], [ 0.000000e+00, %.lr.ph ]
  %i.y = phi double [ %i.r, %bb.b ], [ 0.000000e+00, %.lr.ph ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p
  store double %.sink, ptr %i.z, align 8, !tbaa !60
  store double %i.y, ptr %i.q, align 8, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph94, label %.lr.ph, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @free(ptr noundef %i.h) #11
  ret void

bb.c:                                             ; preds = %.lr.ph94, %bb.c
  %indvars.iv96 = phi i64 [ %i.o, %.lr.ph94 ], [ %indvars.iv.next97, %bb.c ] ; 5 uses
  %i.aa = sub nsw i64 %indvars.iv96, %i.o         ; 3 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv96
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sub nsw i32 %i.ac, %5                   ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv96
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ag
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !60
  %.idx = shl i64 %i.aa, 5
  %i.aj = getelementptr i8, ptr %2, i64 %.idx     ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  %i.al = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aa
  %i.am = load double, ptr %i.al, align 8, !tbaa !60, !noalias !102
  %i.an = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  %i.ao = load double, ptr %i.an, align 8, !tbaa !60, !noalias !105
  %i.ap = sext i32 %i.ad to i64                   ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.ap
  %i.ar = shl nsw i32 %i.ad, 1
  %i.as = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ap
  %i.at = sext i32 %i.ar to i64
  %i.au = getelementptr [16 x i8], ptr %2, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %i.aw = load double, ptr %i.as, align 8, !tbaa !60, !noalias !108
  %i.ax = load double, ptr %i.aq, align 8, !tbaa !60, !noalias !111
  %i.ay = fdiv double 1.000000e+00, %i.ai
  %i.az = getelementptr inbounds [16 x i8], ptr %4, i64 %indvars.iv96
  %i.ba = load <2 x double>, ptr %i.aj, align 8, !tbaa !60, !noalias !102
  %i.bb = insertelement <2 x double> poison, double %i.am, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = fmul <2 x double> %i.bc, %i.ba
  %i.be = load <2 x double>, ptr %i.ak, align 8, !tbaa !60, !noalias !114
  %i.bf = fadd <2 x double> %i.bd, %i.be
  %i.bg = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bf, %i.bh
  %i.bj = load <2 x double>, ptr %i.av, align 8, !tbaa !60, !noalias !108
  %i.bk = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = fmul <2 x double> %i.bl, %i.bj
  %i.bn = load <2 x double>, ptr %i.au, align 8, !tbaa !60, !noalias !117
  %i.bo = fadd <2 x double> %i.bm, %i.bn
  %i.bp = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = fmul <2 x double> %i.bo, %i.bq
  %i.bs = fadd <2 x double> %i.bi, %i.br
  %i.bt = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fmul <2 x double> %i.bu, %i.bs
  store <2 x double> %i.bv, ptr %i.az, align 8, !tbaa !60
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond100.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count99
  br i1 %exitcond100.not, label %._crit_edge, label %bb.c, !llvm.loop !120
}

; Function Attrs: mustprogress nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @_ZN3QCS10setVelDiffEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !59   ; 3 uses
  %i.g = sext i32 %1 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 5 uses
  %i.j = icmp slt i32 %2, %i.d
  %i.k = sext i32 %2 to i64                       ; 2 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.in = select i1 %i.j, ptr %i.l, ptr %i.m
  %i.n = load i32, ptr %.in, align 4, !tbaa !4    ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !54   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82   ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !121  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !57
  %i.y = sub nsw i32 %i.n, %i.i
  %i.z = sext i32 %i.y to i64
  %i.aa = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.ab = tail call noalias noundef ptr @malloc(i64 noundef %i.aa) #13 ; 7 uses
  %.not6.i.i.i = icmp eq i32 %i.n, %i.i
  br i1 %.not6.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %i.aa, i1 false), !tbaa !60
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i.preheader, %bb.a
  %i.ac = icmp slt i32 %1, %2
  br i1 %i.ac, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !68
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69
  br label %bb.b

.preheader:                                       ; preds = %bb.b, %_ZSt4fillIPddEvT_S1_RKT0_.exit
  %i.aj = icmp slt i32 %i.i, %i.n
  br i1 %i.aj, label %.lr.ph69, label %._crit_edge

.lr.ph69:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.am = sext i32 %i.i to i64                    ; 9 uses
  %wide.trip.count74 = sext i32 %i.n to i64       ; 5 uses
  %i.an = sub nsw i64 %wide.trip.count74, %i.am   ; 3 uses
  %min.iters.check = icmp ult i64 %i.an, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph69
  %i.ao = shl nsw i64 %i.am, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.v, i64 %i.ao ; 2 uses
  %i.ap = shl nsw i64 %wide.trip.count74, 3       ; 2 uses
  %scevgep77 = getelementptr i8, ptr %i.v, i64 %i.ap ; 2 uses
  %scevgep78 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %scevgep79 = getelementptr i8, ptr %i.t, i64 %i.ao
  %scevgep80 = getelementptr i8, ptr %i.t, i64 %i.ap
  %bound0 = icmp ult ptr %scevgep, %scevgep78
  %bound1 = icmp ult ptr %i.ak, %scevgep77
  %found.conflict = and i1 %bound0, %bound1
  %bound081 = icmp ult ptr %scevgep, %scevgep80
  %bound182 = icmp ult ptr %scevgep79, %scevgep77
  %found.conflict83 = and i1 %bound081, %bound182
  %conflict.rdx = or i1 %found.conflict, %found.conflict83
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, -4                      ; 3 uses
  %i.aq = add nsw i64 %n.vec, %i.am
  %i.ar = load double, ptr %i.ak, align 8, !tbaa !22, !alias.scope !122
  %broadcast.splatinsert87 = insertelement <2 x double> poison, double %i.ar, i64 0
  %broadcast.splat88 = shufflevector <2 x double> %broadcast.splatinsert87, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = load double, ptr %i.al, align 8, !tbaa !23, !alias.scope !122
  %i.at = fmul double %i.as, 2.000000e+00
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.at, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = add i64 %index, %i.am                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <2 x double>, ptr %i.av, align 8, !tbaa !60, !alias.scope !125
  %wide.load84 = load <2 x double>, ptr %i.aw, align 8, !tbaa !60, !alias.scope !125
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load85 = load <2 x double>, ptr %i.ax, align 8, !tbaa !60
  %wide.load86 = load <2 x double>, ptr %i.ay, align 8, !tbaa !60
  %i.az = fmul <2 x double> %broadcast.splat, %wide.load85
  %i.ba = fmul <2 x double> %broadcast.splat, %wide.load86
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load, <2 x double> %i.az)
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat88, <2 x double> %wide.load84, <2 x double> %i.ba)
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.au ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <2 x double> %i.bb, ptr %i.bd, align 8, !tbaa !60, !alias.scope !127, !noalias !129
  store <2 x double> %i.bc, ptr %i.be, align 8, !tbaa !60, !alias.scope !127, !noalias !129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph69, %middle.block
  %indvars.iv71.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph69 ], [ %i.aq, %middle.block ] ; 7 uses
  %i.bg = sub nsw i64 %wide.trip.count74, %indvars.iv71.ph
  %xtraiter = and i64 %i.bg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bh = sub nsw i64 %indvars.iv71.ph, %i.am
  %i.bi = load double, ptr %i.ak, align 8, !tbaa !22
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv71.ph
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !60
  %i.bl = load double, ptr %i.al, align 8, !tbaa !23
  %i.bm = fmul double %i.bl, 2.000000e+00
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.bh
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !60
  %i.bp = fmul double %i.bm, %i.bo
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bk, double %i.bp)
  %i.br = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv71.ph
  store double %i.bq, ptr %i.br, align 8, !tbaa !60
  %indvars.iv.next72.prol = add nsw i64 %indvars.iv71.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv71.unr = phi i64 [ %indvars.iv71.ph, %scalar.ph.preheader ], [ %indvars.iv.next72.prol, %scalar.ph.prol ]
  %i.bs = add nsw i64 %wide.trip.count74, -1
  %i.bt = icmp eq i64 %indvars.iv71.ph, %i.bs
  br i1 %i.bt, label %._crit_edge, label %scalar.ph

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.g, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !4
  %i.by = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.cc = sub nsw i32 %i.bz, %i.i
  %i.cd = sext i32 %i.bx to i64                   ; 2 uses
  %i.ce = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.cd
  %i.cf = sext i32 %i.bv to i64                   ; 2 uses
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.cf
  %i.ch = load <2 x double>, ptr %i.ce, align 8, !tbaa !60, !noalias !131
  %i.ci = load <2 x double>, ptr %i.cg, align 8, !tbaa !60, !noalias !131
  %i.cj = fsub <2 x double> %i.ch, %i.ci          ; 2 uses
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.cd
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.r, i64 %i.cf
  %i.cm = load <2 x double>, ptr %i.ck, align 8, !tbaa !60, !noalias !134
  %i.cn = load <2 x double>, ptr %i.cl, align 8, !tbaa !60, !noalias !134
  %i.co = fsub <2 x double> %i.cm, %i.cn          ; 2 uses
  %i.cp = sext i32 %i.cb to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !60 ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.cj, %i.co
  %i.cs = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ct = extractelement <2 x double> %i.cj, i64 0
  %i.cu = extractelement <2 x double> %i.co, i64 0
  %i.cv = tail call noundef double @llvm.fmuladd.f64(double %i.cu, double %i.ct, double %i.cs)
  %i.cw = fcmp ogt double %i.cr, 0.000000e+00
  %i.cx = tail call double @llvm.fabs.f64(double %i.cv)
  %i.cy = fdiv double %i.cx, %i.cr
  %i.cz = select i1 %i.cw, double %i.cy, double 0.000000e+00 ; 2 uses
  %i.da = sext i32 %i.cc to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.da ; 2 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !60 ; 2 uses
  %i.dd = fcmp olt double %i.dc, %i.cz
  %.sroa.speculated = select i1 %i.dd, double %i.cz, double %i.dc
  store double %.sroa.speculated, ptr %i.db, align 8, !tbaa !60
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.k
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !137

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  tail call void @free(ptr noundef %i.ab) #11
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv71 = phi i64 [ %indvars.iv.next72.1, %scalar.ph ], [ %indvars.iv71.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.de = sub nsw i64 %indvars.iv71, %i.am
  %i.df = load double, ptr %i.ak, align 8, !tbaa !22
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv71
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !60
  %i.di = load double, ptr %i.al, align 8, !tbaa !23
  %i.dj = fmul double %i.di, 2.000000e+00
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.de
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !60
  %i.dm = fmul double %i.dj, %i.dl
  %i.dn = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dh, double %i.dm)
  %i.do = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv71
  store double %i.dn, ptr %i.do, align 8, !tbaa !60
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, 1 ; 3 uses
  %i.dp = sub nsw i64 %indvars.iv.next72, %i.am
  %i.dq = load double, ptr %i.ak, align 8, !tbaa !22
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.t, i64 %indvars.iv.next72
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !60
  %i.dt = load double, ptr %i.al, align 8, !tbaa !23
  %i.du = fmul double %i.dt, 2.000000e+00
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.dp
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !60
  %i.dx = fmul double %i.du, %i.dw
  %i.dy = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.ds, double %i.dx)
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv.next72
  store double %i.dy, ptr %i.dz, align 8, !tbaa !60
  %indvars.iv.next72.1 = add nsw i64 %indvars.iv71, 2 ; 2 uses
  %exitcond75.not.1 = icmp eq i64 %indvars.iv.next72.1, %wide.trip.count74
  br i1 %exitcond75.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !138
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTS3QCS", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!10 = !{!"p1 _ZTS5Hydro", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = !{!14, !15, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!15 = !{!"p1 omnipotent char", !11, i64 0}
!16 = !{!17, !18, i64 8}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !18, i64 8, !6, i64 16}
!18 = !{!"long", !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!9, !12, i64 8}
!21 = !{!17, !15, i64 0}
!22 = !{!9, !12, i64 16}
!23 = !{!9, !12, i64 24}
!24 = !{!25, !26, i64 0}
!25 = !{!"_ZTS5Hydro", !26, i64 0, !27, i64 8, !28, i64 16, !29, i64 24, !30, i64 32, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !36, i64 112, !36, i64 136, !12, i64 160, !6, i64 168, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !40, i64 320, !40, i64 328, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !41, i64 376, !41, i64 384, !41, i64 392, !41, i64 400}
!26 = !{!"p1 _ZTS4Mesh", !11, i64 0}
!27 = !{!"p1 _ZTS7PolyGas", !11, i64 0}
!28 = !{!"p1 _ZTS3TTS", !11, i64 0}
!29 = !{!"p1 _ZTS3QCS", !11, i64 0}
!30 = !{!"_ZTSSt6vectorIP7HydroBCSaIS1_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIP7HydroBCSaIS1_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIP7HydroBCSaIS1_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p2 _ZTS7HydroBC", !35, i64 0}
!35 = !{!"any p2 pointer", !11, i64 0}
!36 = !{!"_ZTSSt6vectorIdSaIdEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 double", !11, i64 0}
!41 = !{!"p1 _ZTS7double2", !11, i64 0}
!42 = !{!43, !5, i64 72}
!43 = !{!"_ZTS4Mesh", !44, i64 0, !45, i64 8, !46, i64 16, !5, i64 24, !36, i64 32, !47, i64 56, !47, i64 57, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !48, i64 168, !48, i64 176, !48, i64 184, !48, i64 192, !48, i64 200, !48, i64 208, !48, i64 216, !48, i64 224, !48, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !40, i64 296, !40, i64 304, !40, i64 312, !40, i64 320, !40, i64 328, !40, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !41, i64 368, !40, i64 376, !40, i64 384, !40, i64 392, !5, i64 400, !49, i64 408, !49, i64 432, !49, i64 456, !49, i64 480, !5, i64 504, !49, i64 512, !49, i64 536, !5, i64 560, !49, i64 568, !49, i64 592}
!44 = !{!"p1 _ZTS7GenMesh", !11, i64 0}
!45 = !{!"p1 _ZTS7WriteXY", !11, i64 0}
!46 = !{!"p1 _ZTS10ExportGold", !11, i64 0}
!47 = !{!"bool", !6, i64 0}
!48 = !{!"p1 int", !11, i64 0}
!49 = !{!"_ZTSSt6vectorIiSaIiEE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !48, i64 0, !48, i64 8, !48, i64 16}
!53 = !{!25, !41, i64 248}
!54 = !{!43, !41, i64 264}
!55 = !{!43, !41, i64 272}
!56 = !{!43, !41, i64 280}
!57 = !{!43, !40, i64 376}
!58 = !{!43, !48, i64 232}
!59 = !{!43, !48, i64 104}
!60 = !{!12, !12, i64 0}
!61 = !{!43, !48, i64 88}
!62 = distinct !{!62, !63, !64, !65}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.isvectorized", i32 1}
!65 = !{!"llvm.loop.unroll.runtime.disable"}
!66 = distinct !{!66, !63}
!67 = !{!43, !48, i64 120}
!68 = !{!43, !48, i64 96}
!69 = !{!43, !48, i64 112}
!70 = distinct !{!70, !63, !65, !64}
!71 = !{!72, !12, i64 0}
!72 = !{!"_ZTS7double2", !12, i64 0, !12, i64 8}
!73 = !{!72, !12, i64 8}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZplRK7double2S1_: argument 0"}
!76 = distinct !{!76, !"_ZplRK7double2S1_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZplRK7double2S1_: argument 0"}
!79 = distinct !{!79, !"_ZplRK7double2S1_"}
!80 = distinct !{!80, !63}
!81 = !{!25, !40, i64 312}
!82 = !{!25, !40, i64 360}
!83 = distinct !{!83, !63}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZmlRKdRK7double2: argument 0"}
!86 = distinct !{!86, !"_ZmlRKdRK7double2"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZdvRK7double2RKd: argument 0"}
!89 = distinct !{!89, !"_ZdvRK7double2RKd"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZmiRK7double2S1_: argument 0"}
!92 = distinct !{!92, !"_ZmiRK7double2S1_"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZdvRK7double2RKd: argument 0"}
!95 = distinct !{!95, !"_ZdvRK7double2RKd"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZmiRK7double2S1_: argument 0"}
!98 = distinct !{!98, !"_ZmiRK7double2S1_"}
!99 = distinct !{!99, !63}
!100 = !{!43, !48, i64 128}
!101 = distinct !{!101, !63}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZmlRKdRK7double2: argument 0"}
!104 = distinct !{!104, !"_ZmlRKdRK7double2"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZmlRKdRK7double2: argument 0"}
!107 = distinct !{!107, !"_ZmlRKdRK7double2"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZmlRKdRK7double2: argument 0"}
!110 = distinct !{!110, !"_ZmlRKdRK7double2"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZmlRKdRK7double2: argument 0"}
!113 = distinct !{!113, !"_ZmlRKdRK7double2"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZplRK7double2S1_: argument 0"}
!116 = distinct !{!116, !"_ZplRK7double2S1_"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZplRK7double2S1_: argument 0"}
!119 = distinct !{!119, !"_ZplRK7double2S1_"}
!120 = distinct !{!120, !63}
!121 = !{!25, !40, i64 368}
!122 = !{!123}
!123 = distinct !{!123, !124}
!124 = distinct !{!124, !"LVerDomain"}
!125 = !{!126}
!126 = distinct !{!126, !124}
!127 = !{!128}
!128 = distinct !{!128, !124}
!129 = !{!123, !126}
!130 = distinct !{!130, !63, !64, !65}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZmiRK7double2S1_: argument 0"}
!133 = distinct !{!133, !"_ZmiRK7double2S1_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZmiRK7double2S1_: argument 0"}
!136 = distinct !{!136, !"_ZmiRK7double2S1_"}
!137 = distinct !{!137, !63}
!138 = distinct !{!138, !63, !64}
end_hunk_0
