Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/coord_operation?download=true
inline.NumInlined: 79
inline.NumDeleted: 44
begin_hunk_0_@_ZSt9terminatev

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK16PJCoordOperation14isInstantiableEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(188) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !44
  %i.g = tail call i32 @proj_coordoperation_is_instantiable(ptr noundef %i.f, ptr noundef nonnull %i.e) ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  %i.i = icmp eq i32 %i.h, 1
  ret i1 %i.i
}

declare i32 @proj_coordoperation_is_instantiable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16PJCoordOperationC2EiddddddddP8PJconstsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddPKcPKS0_SD_(ptr noundef nonnull align 8 dereferenceable(188) initializes((0, 4), (8, 80)) %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, ptr noundef %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %11, double noundef %12, double noundef %13, ptr nofree noundef readonly captures(address_is_null) %14, ptr noundef %15, ptr noundef %16) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  store i32 %1, ptr %0, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %2, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %3, ptr %i.d, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %4, ptr %i.e, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %5, ptr %i.f, align 8, !tbaa !49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %6, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %7, ptr %i.h, align 8, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %8, ptr %i.i, align 8, !tbaa !52
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %9, ptr %i.j, align 8, !tbaa !53
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  store ptr %10, ptr %i.k, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 5 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !54
  %i.n = load ptr, ptr %11, align 8, !tbaa !20    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !55   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.p, ptr %i.b, align 8, !tbaa !56
  %i.q = icmp ugt i64 %i.p, 15
  br i1 %i.q, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.r = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !20
  %i.s = load i64, ptr %i.b, align 8, !tbaa !56
  store i64 %i.s, ptr %i.m, align 8, !tbaa !21
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.t = phi ptr [ %i.r, %.noexc.i ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.p, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.u = load i8, ptr %i.n, align 1, !tbaa !21
  store i8 %i.u, ptr %i.t, align 1, !tbaa !21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.v = load i64, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.v, ptr %i.w, align 8, !tbaa !55
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double %12, ptr %i.z, align 8, !tbaa !57
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %13, ptr %i.aa, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 7 uses
  %.not = icmp eq ptr %14, null
  %i.ac = select i1 %.not, ptr @.str, ptr %14     ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !54
  %i.ae = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !56
  %i.af = icmp ugt i64 %i.ae, 15
  br i1 %i.af, label %.noexc.i44, label %._crit_edge.i.i43

.noexc.i44:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ag = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.s     ; 2 uses

.noexc:                                           ; preds = %.noexc.i44
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !20
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !56
  store i64 %i.ah, ptr %i.ad, align 8, !tbaa !21
  br label %._crit_edge.i.i43

._crit_edge.i.i43:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ai = phi ptr [ %i.ag, %.noexc ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.ae, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i43
  %i.aj = load i8, ptr %i.ac, align 1, !tbaa !21
  store i8 %i.aj, ptr %i.ai, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i43
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 1 %i.ac, i64 %i.ae, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i43
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !56  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !55
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ap = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull @.str.1, i64 noundef 0, i64 noundef 10) #13
  %i.aq = icmp ne i64 %i.ap, -1
  %i.ar = zext i1 %i.aq to i8
  store i8 %i.ar, ptr %i.ao, align 8, !tbaa !59
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.at = load i64, ptr %i.al, align 8, !tbaa !55
  switch i64 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.fold.split [
    i64 0, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 7, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.av = load i32, ptr %i.au, align 1
  %i.aw = xor i32 %i.av, 1852534389
  %i.ax = getelementptr i8, ptr %i.au, i64 3
  %i.ay = load i32, ptr %i.ax, align 1
  %i.az = xor i32 %i.ay, 1853321070
  %i.ba = or i32 %i.aw, %i.az
  %i.bb = icmp ne i32 %i.ba, 0
  %i.bc = zext i1 %i.bb to i32
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = zext i1 %i.bd to i8
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.fold.split: ; preds = %bb.f
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.fold.split, %bb.g
  %i.bf = phi i8 [ 1, %bb.f ], [ %i.be, %bb.g ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.fold.split ]
  store i8 %i.bf, ptr %i.as, align 1, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 162
  %i.bh = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @.str.3, i64 noundef 0, i64 noundef 25) #13
  %.not.i = icmp eq i64 %i.bh, -1
  br i1 %.not.i, label %bb.h, label %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bi = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @.str.4, i64 noundef 0, i64 noundef 25) #13
  %.not4.i = icmp eq i64 %i.bi, -1
  br i1 %.not4.i, label %bb.i, label %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bj = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @.str.5, i64 noundef 0, i64 noundef 25) #13
  %.not5.i = icmp eq i64 %i.bj, -1
  br i1 %.not5.i, label %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i
  %i.bk = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @.str.6, i64 noundef 0, i64 noundef 25) #13
  %.not49 = icmp eq i64 %i.bk, -1
  br i1 %.not49, label %bb.j, label %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.j:                                             ; preds = %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bl = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @.str.7, i64 noundef 0, i64 noundef 19) #13
  %.not50 = icmp eq i64 %i.bl, -1
  br i1 %.not50, label %bb.k, label %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.bm = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef 21) #13
  %i.bn = icmp ne i64 %i.bm, -1
  %17 = zext i1 %i.bn to i8
  br label %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread

_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.h, %bb.i, %bb.k, %bb.j, %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %18 = phi i8 [ 1, %bb.j ], [ 1, %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ], [ %17, %bb.k ], [ 1, %bb.i ], [ 1, %bb.h ], [ 1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  store i8 %18, ptr %i.bg, align 2, !tbaa !61
  %19 = getelementptr inbounds nuw i8, ptr %0, i64 163 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 165
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.not36 = icmp eq ptr %15, null
  store i32 0, ptr %19, align 1
  br i1 %.not36, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread
  %i.bs = load ptr, ptr %15, align 8, !tbaa !44
  %i.bt = invoke ptr @proj_clone(ptr noundef %i.bs, ptr noundef nonnull %15)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread, %bb.l
  %i.bu = phi ptr [ %i.bt, %bb.l ], [ null, %_ZL34isSpecialCaseForNAD83_to_NAD83HARNRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread ]
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !18
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.not37 = icmp eq ptr %16, null
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %16, align 8, !tbaa !44
  %i.bx = invoke ptr @proj_clone(ptr noundef %i.bw, ptr noundef nonnull %16)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.by = phi ptr [ %i.bx, %bb.n ], [ null, %bb.m ]
  store ptr %i.by, ptr %i.bv, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 -1, ptr %i.bz, align 8, !tbaa !22
  %i.ca = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !44
  %i.cc = invoke ptr @proj_get_source_crs(ptr noundef %i.cb, ptr noundef nonnull %i.ca)
          to label %bb.p unwind label %bb.x       ; 3 uses

bb.p:                                             ; preds = %bb.o
  %.not38 = icmp eq ptr %i.cc, null
  br i1 %.not38, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  invoke fastcc void @"_ZZN16PJCoordOperationC1EiddddddddP8PJconstsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddPKcPKS0_SD_ENK3$_0clESD_RbSF_"(ptr noundef %i.cc, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 1 dereferenceable(1) %i.bo)
          to label %bb.r unwind label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.cd = invoke ptr @proj_destroy(ptr noundef nonnull %i.cc)
          to label %bb.t unwind label %bb.x       ; 0 uses

bb.s:                                             ; preds = %.noexc.i44
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.r, %bb.p
  %i.cf = load ptr, ptr %i.k, align 8, !tbaa !17  ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !44
  %i.ch = invoke ptr @proj_get_target_crs(ptr noundef %i.cg, ptr noundef nonnull %i.cf)
          to label %bb.u unwind label %bb.x       ; 3 uses

bb.u:                                             ; preds = %bb.t
  %.not39 = icmp eq ptr %i.ch, null
  br i1 %.not39, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke fastcc void @"_ZZN16PJCoordOperationC1EiddddddddP8PJconstsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddPKcPKS0_SD_ENK3$_0clESD_RbSF_"(ptr noundef %i.ch, ptr noundef nonnull align 1 dereferenceable(1) %i.bp, ptr noundef nonnull align 1 dereferenceable(1) %i.bq)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = invoke ptr @proj_destroy(ptr noundef nonnull %i.ch)
          to label %bb.y unwind label %bb.x       ; 0 uses

bb.x:                                             ; preds = %bb.l, %bb.n, %bb.q, %bb.v, %bb.o, %bb.r, %bb.w, %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ck = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.ad
  br i1 %i.cl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.y:                                             ; preds = %bb.w, %bb.u
  ret void

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.cm = load i64, ptr %i.ad, align 8, !tbaa !21
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.ck, i64 noundef %i.cn) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.s ], [ %i.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.cj, %bb.x ]
  %i.co = load ptr, ptr %i.l, align 8, !tbaa !20  ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.m
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cq = load i64, ptr %i.m, align 8, !tbaa !21
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #11
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare ptr @proj_clone(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @proj_get_source_crs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN16PJCoordOperationC1EiddddddddP8PJconstsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEddPKcPKS0_SD_ENK3$_0clESD_RbSF_"(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = tail call i32 @proj_get_type(ptr noundef nonnull %0)
  %i.d = and i32 %i.c, -2
  %or.cond = icmp eq i32 %i.d, 12
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !44
  %i.f = tail call ptr @proj_crs_get_coordinate_system(ptr noundef %i.e, ptr noundef nonnull %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr @.str, ptr %i.a, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !63
  %i.g = load ptr, ptr %0, align 8, !tbaa !44
  %i.h = call i32 @proj_cs_get_axis_info(ptr noundef %i.g, ptr noundef %i.f, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.j = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef %i.i, ptr noundef nonnull @.str.9) #13
  br i1 %i.j, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !44
  %i.l = call i32 @proj_cs_get_axis_info(ptr noundef %i.k, ptr noundef %i.f, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null)
  %.not12 = icmp eq i32 %i.l, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !62
  %i.n = call noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef %i.m, ptr noundef nonnull @.str.9) #13
  br i1 %i.n, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.c
  %.sink1 = phi ptr [ %1, %bb.c ], [ %2, %bb.e ]
  %i.o = load double, ptr %i.b, align 8, !tbaa !63
  %i.p = fadd double %i.o, f0xBF91DF46A2529D39
  %i.q = call double @llvm.fabs.f64(double %i.p)
  %i.r = fcmp olt double %i.q, f0x3D06849B86A12B9B
  %i.s = zext i1 %i.r to i8
  store i8 %i.s, ptr %.sink1, align 1, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.e
  %i.t = call ptr @proj_destroy(ptr noundef %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

declare ptr @proj_get_target_crs(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @proj_get_type(ptr noundef) local_unnamed_addr #1

declare ptr @proj_crs_get_coordinate_system(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @proj_cs_get_axis_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5osgeo4proj8internal8ci_equalEPKcS3_(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"double", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS8PJconsts", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !4, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !4, i64 16}
!15 = !{!"bool", !4, i64 0}
!16 = !{!"_ZTS16PJCoordOperation", !5, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !10, i64 72, !14, i64 80, !8, i64 112, !8, i64 120, !14, i64 128, !15, i64 160, !15, i64 161, !15, i64 162, !15, i64 163, !15, i64 164, !15, i64 165, !15, i64 166, !10, i64 168, !10, i64 176, !5, i64 184}
!17 = !{!16, !10, i64 72}
!18 = !{!16, !10, i64 168}
!19 = !{!16, !10, i64 176}
!20 = !{!14, !11, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{!16, !5, i64 184}
!23 = !{!"p1 _ZTS6pj_ctx", !9, i64 0}
!24 = !{!"p1 _ZTS8ARG_list", !9, i64 0}
!25 = !{!"p1 _ZTS13geod_geodesic", !9, i64 0}
!26 = !{!"_ZTS11pj_io_units", !4, i64 0}
!27 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !9, i64 0}
!28 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !9, i64 0}
!29 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !28, i64 0}
!30 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0, !29, i64 8}
!31 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !30, i64 0}
!32 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !9, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !35, i64 0}
!37 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!38 = !{!"p1 _ZTS16PJCoordOperation", !9, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!40 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !39, i64 0}
!41 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !40, i64 0}
!42 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !41, i64 0}
!43 = !{!"_ZTS8PJconsts", !23, i64 0, !11, i64 8, !11, i64 16, !24, i64 24, !11, i64 32, !10, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !25, i64 80, !9, i64 88, !5, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !8, i64 312, !8, i64 320, !8, i64 328, !8, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !26, i64 380, !26, i64 384, !10, i64 392, !10, i64 400, !10, i64 408, !10, i64 416, !10, i64 424, !10, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488, !8, i64 496, !8, i64 504, !8, i64 512, !8, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !9, i64 600, !9, i64 608, !8, i64 616, !8, i64 624, !5, i64 632, !4, i64 636, !31, i64 640, !15, i64 656, !8, i64 664, !15, i64 672, !14, i64 680, !14, i64 712, !14, i64 744, !15, i64 776, !36, i64 784, !37, i64 808, !42, i64 816, !5, i64 840, !15, i64 844, !15, i64 845, !15, i64 846, !10, i64 848}
!44 = !{!43, !23, i64 0}
!45 = !{!16, !5, i64 0}
!46 = !{!16, !8, i64 8}
!47 = !{!16, !8, i64 16}
!48 = !{!16, !8, i64 24}
!49 = !{!16, !8, i64 32}
!50 = !{!16, !8, i64 40}
!51 = !{!16, !8, i64 48}
!52 = !{!16, !8, i64 56}
!53 = !{!16, !8, i64 64}
!54 = !{!12, !11, i64 0}
!55 = !{!14, !13, i64 8}
!56 = !{!13, !13, i64 0}
!57 = !{!16, !8, i64 112}
!58 = !{!16, !8, i64 120}
!59 = !{!16, !15, i64 160}
!60 = !{!16, !15, i64 161}
!61 = !{!16, !15, i64 162}
!62 = !{!11, !11, i64 0}
!63 = !{!8, !8, i64 0}
!64 = !{!15, !15, i64 0}
end_hunk_0
