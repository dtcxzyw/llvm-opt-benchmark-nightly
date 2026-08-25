Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExportProperty?download=true
inline.NumInlined: 451
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIfSaIfEE:bb.a
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 5 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = add nsw i64 %i.g, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc10
  %i.n = phi ptr [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.r = ptrtoaddr ptr %i.n to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  %i.w = sub i64 %i.t, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.v, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <4 x float>, ptr %i.x, align 4
  %wide.load14 = load <4 x float>, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x float> %wide.load, ptr %i.z, align 4
  store <4 x float> %wide.load14, ptr %i.aa, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.af, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.011
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.011
  store float %i.ad, ptr %i.ae, align 4
  %i.af = add nuw i64 %.011, 1                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.v
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !14
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIdSaIdEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 100, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 5 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.m = add nsw i64 %i.g, -1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc10
  %i.n = phi ptr [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.p, %i.q
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.r = ptrtoaddr ptr %i.n to i64
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.v, 8
  %i.w = sub i64 %i.t, %i.r
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.v, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x double>, ptr %i.x, align 8
  %wide.load14 = load <2 x double>, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x double> %wide.load, ptr %i.z, align 8
  store <2 x double> %wide.load14, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.af, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.011
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.011
  store double %i.ad, ptr %i.ae, align 8
  %i.af = add nuw i64 %.011, 1                    ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.v
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERK12aiMatrix4x4tIfE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNK12aiMatrix4x4tIfEixEj.exit.3.3:
  store i8 100, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #16 ; 10 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = load float, ptr %1, align 4
  %3 = load float, ptr %i.h, align 4
  %4 = insertelement <2 x float> poison, float %2, i64 0
  %i.i = insertelement <2 x float> %4, float %3, i64 1
  %i.j = fpext <2 x float> %i.i to <2 x double>
  store <2 x double> %i.j, ptr %i.b, align 8
  %5 = load float, ptr %i.g, align 4
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %7 = load float, ptr %i.f, align 4
  %8 = insertelement <2 x float> poison, float %5, i64 0
  %i.k = insertelement <2 x float> %8, float %7, i64 1
  %i.l = fpext <2 x float> %i.k to <2 x double>
  store <2 x double> %i.l, ptr %6, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %9 = load float, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load float, ptr %i.o, align 4
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %i.q = insertelement <2 x float> %10, float %i.p, i64 1
  %i.r = fpext <2 x float> %i.q to <2 x double>
  store <2 x double> %i.r, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 36
  %11 = load float, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.v = load float, ptr %i.u, align 4
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %i.w = insertelement <2 x float> %12, float %i.v, i64 1
  %i.x = fpext <2 x float> %i.w to <2 x double>
  store <2 x double> %i.x, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %13 = load float, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load float, ptr %i.aa, align 4
  %14 = insertelement <2 x float> poison, float %13, i64 0
  %i.ac = insertelement <2 x float> %14, float %i.ab, i64 1
  %i.ad = fpext <2 x float> %i.ac to <2 x double>
  store <2 x double> %i.ad, ptr %i.z, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %15 = load float, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ah = load float, ptr %i.ag, align 4
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %i.ai = insertelement <2 x float> %16, float %i.ah, i64 1
  %i.aj = fpext <2 x float> %i.ai to <2 x double>
  store <2 x double> %i.aj, ptr %i.af, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 12
  %17 = load float, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load float, ptr %i.am, align 4
  %18 = insertelement <2 x float> poison, float %17, i64 0
  %i.ao = insertelement <2 x float> %18, float %i.an, i64 1
  %i.ap = fpext <2 x float> %i.ao to <2 x double>
  store <2 x double> %i.ap, ptr %i.al, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 44
  %19 = load float, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.at = load float, ptr %i.as, align 4
  %20 = insertelement <2 x float> poison, float %19, i64 0
  %i.au = insertelement <2 x float> %20, float %i.at, i64 1
  %i.av = fpext <2 x float> %i.au to <2 x double>
  store <2 x double> %i.av, ptr %i.ar, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6Assimp3FBX17FBXExportProperty4sizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8
  %switch.tableidx = add i8 %i.a, -67             ; 3 uses
  %i.b = icmp ult i8 %switch.tableidx, 39
  br i1 %i.b, label %switch.hole_check, label %bb.b

bb.b:                                             ; preds = %switch.hole_check, %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  invoke void @_ZN17DeadlyExportErrorC2IJRA43_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 1 dereferenceable(43) @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #17
  resume { ptr, i32 } %i.d

switch.hole_check:                                ; preds = %bb.a
  %switch.maskindex = zext nneg i8 %switch.tableidx to i64
  %switch.shifted = lshr i64 283472134731, %switch.maskindex
  %switch.lobit = trunc i64 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %switch.hole_check
  %i.e = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN6Assimp3FBX17FBXExportProperty4sizeEv, i64 %i.e
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %i.f, align 8
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = add i64 %switch.ext, %i.j
  %i.m = sub i64 %i.l, %i.k
  ret i64 %i.m
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorC2IJRA43_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(43) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA43_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(43) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #19
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyExportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #17
  resume { ptr, i32 } %i.o
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportProperty10DumpBinaryERNS_12StreamWriterILb0ELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 7 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = load i8, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 66 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 75 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 25 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.b, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.m)
  %.pre.i.i = load i64, ptr %i.b, align 8
  %.pre2.i.i = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit:  ; preds = %bb.a, %bb.b
  %i.n = phi ptr [ %.pre2.i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.o = phi i64 [ %.pre.i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  store i8 %i.a, ptr %i.p, align 1
  %i.q = load i64, ptr %i.b, align 8              ; 12 uses
  %i.r = add i64 %i.q, 1                          ; 12 uses
  store i64 %i.r, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 15 uses
  %i.u = load i8, ptr %0, align 8
  switch i8 %i.u, label %bb.al [
    i8 67, label %bb.c
    i8 89, label %bb.e
    i8 73, label %bb.g
    i8 70, label %bb.i
    i8 68, label %bb.k
    i8 76, label %bb.m
    i8 83, label %bb.o
    i8 82, label %bb.o
    i8 105, label %bb.r
    i8 108, label %bb.w
    i8 102, label %bb.ab
    i8 100, label %bb.ag
  ]

bb.c:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit
  %i.v = load i8, ptr %i.t, align 1
  %i.w = add i64 %i.q, 2                          ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8
  %i.y = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.d, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit74

bb.d:                                             ; preds = %bb.c
  %i.ad = sub nuw i64 %i.w, %i.ab
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ad)
  %.pre.i.i72 = load i64, ptr %i.b, align 8
  %.pre2.i.i73 = load ptr, ptr %i.e, align 8
  br label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit74

_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit74: ; preds = %bb.c, %bb.d
  %i.ae = phi ptr [ %.pre2.i.i73, %bb.d ], [ %i.y, %bb.c ]
  %i.af = phi i64 [ %.pre.i.i72, %bb.d ], [ %i.r, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  store i8 %i.v, ptr %i.ag, align 1
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %_ZN6Assimp12StreamWriterILb0ELb0EE5PutU1Eh.exit
  %i.ah = load i16, ptr %i.t, align 2
  %i.ai = add i64 %i.q, 3                         ; 2 uses
  %i.aj = load ptr, ptr %i.f, align 8
  %i.ak = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp ugt i64 %i.ai, %i.an
  br i1 %i.ao, label %bb.f, label %_ZN6Assimp12StreamWriterILb0ELb0EE5PutI2Es.exit

bb.f:                                             ; preds = %bb.e
  %i.ap = sub nuw i64 %i.ai, %i.an
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.ap)
  %.pre.i.i75 = load i64, ptr %i.b, align 8
  %.pre2.i.i76 = load ptr, ptr %i.e, align 8
end_hunk_0
