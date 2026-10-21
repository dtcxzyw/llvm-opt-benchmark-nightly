Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/FBXExportProperty?download=true
inline.NumInlined: 451
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN6Assimp3FBX17FBXExportPropertyC2EPKcb:bb.a
  %.0.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.noexc9 ], [ %i.s, %bb.f ]
  %.pr = load i64, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i.i.ph, ptr %i.x, align 8
  %.not.i = icmp eq i64 %.pr, 0
  br i1 %.not.i, label %_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i.i, %.lr.ph.i
  %.011.i = phi i64 [ %i.ad, %.lr.ph.i ], [ 0, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i.i ] ; 3 uses
  %i.y = load ptr, ptr %3, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.011.i
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = load ptr, ptr %i.o, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.011.i
  store i8 %i.aa, ptr %i.ac, align 1
  %i.ad = add nuw i64 %.011.i, 1                  ; 2 uses
  %i.ae = load i64, ptr %i.k, align 8
  %i.af = icmp ult i64 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i, label %_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, !llvm.loop !0

_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit: ; preds = %.lr.ph.i, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i.i
  %i.ag = load ptr, ptr %3, align 8               ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.b
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit
  %i.ai = load i64, ptr %i.b, align 8
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.g:                                             ; preds = %.noexc10.i, %.noexc.i7
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %3, align 8               ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.b
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.an = load i64, ptr %i.b, align 8
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.ak
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = select i1 %2, i8 82, i8 83
  store i8 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 5 uses
  %i.e = icmp slt i64 %i.d, 0
  br i1 %i.e, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #18
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %.noexc10

.noexc10:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.d) #16 ; 4 uses
  store ptr %i.f, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 %i.d     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8
  store i8 0, ptr %i.f, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  %i.j = add nsw i64 %i.d, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %.noexc10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.i, i8 0, i64 %i.j, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %bb.b, %.noexc10
  %.0.i.i.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.l, align 8
  %i.m = load i64, ptr %i.c, align 8
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, %.lr.ph
  %.011 = phi i64 [ %i.s, %.lr.ph ], [ 0, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i ] ; 3 uses
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.011
  %i.p = load i8, ptr %i.o, align 1
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.011
  store i8 %i.p, ptr %i.r, align 1
  %i.s = add nuw i64 %.011, 1                     ; 2 uses
  %i.t = load i64, ptr %i.c, align 8
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !0
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIhSaIhEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1), (8, 32)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 82, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, !prof !7

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #18
  unreachable

_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorIhE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.j, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %1, align 8                ; 3 uses
  %i.o = load ptr, ptr %i.b, align 8
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.n, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq i64 %i.r, 1
  br i1 %i.t, label %bb.f, label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.u = load i8, ptr %i.n, align 1
  store i8 %i.u, ptr %i.j, align 1
  br label %_ZNSt6vectorIhSaIhEEC2ERKS1_.exit

_ZNSt6vectorIhSaIhEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 %i.r
  store ptr %i.v, ptr %i.k, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 105, ptr %0, align 8
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
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 6 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.m = add nsw i64 %i.g, -1                     ; 2 uses
  %2 = icmp eq i64 %i.m, 0
  br i1 %2, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %3

3:                                                ; preds = %.noexc10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %3, %.noexc10
  %4 = phi ptr [ %i.i, %3 ], [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %3 ], [ %i.l, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.q = ptrtoaddr ptr %4 to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  %i.v = sub i64 %i.s, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x i32>, ptr %i.w, align 4
  %wide.load14 = load <4 x i32>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %wide.load, ptr %i.y, align 4
  store <4 x i32> %wide.load14, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.ae, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.011
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011
  store i32 %i.ac, ptr %i.ad, align 4
  %i.ae = add nuw i64 %.011, 1                    ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.u
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !10
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIlSaIlEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 108, ptr %0, align 8
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
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 6 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.m = add nsw i64 %i.g, -1                     ; 2 uses
  %2 = icmp eq i64 %i.m, 0
  br i1 %2, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %3

3:                                                ; preds = %.noexc10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %3, %.noexc10
  %4 = phi ptr [ %i.i, %3 ], [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %3 ], [ %i.l, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.q = ptrtoaddr ptr %4 to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  %i.v = sub i64 %i.s, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8
  %wide.load14 = load <2 x i64>, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x i64> %wide.load, ptr %i.y, align 8
  store <2 x i64> %wide.load14, ptr %i.z, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.ae, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.011
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.011
  store i64 %i.ac, ptr %i.ad, align 8
  %i.ae = add nuw i64 %.011, 1                    ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.u
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !12
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX17FBXExportPropertyC2ERKSt6vectorIfSaIfEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 102, ptr %0, align 8
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
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 6 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.m = add nsw i64 %i.g, -1                     ; 2 uses
  %2 = icmp eq i64 %i.m, 0
  br i1 %2, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %3

3:                                                ; preds = %.noexc10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %3, %.noexc10
  %4 = phi ptr [ %i.i, %3 ], [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %3 ], [ %i.l, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.q = ptrtoaddr ptr %4 to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 2                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  %i.v = sub i64 %i.s, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.u, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x float>, ptr %i.w, align 4
  %wide.load14 = load <4 x float>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x float> %wide.load, ptr %i.y, align 4
  store <4 x float> %wide.load14, ptr %i.z, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.ae, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.011
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.011
  store float %i.ac, ptr %i.ad, align 4
  %i.ae = add nuw i64 %.011, 1                    ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.u
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !14
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
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #16 ; 6 uses
  store ptr %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 %i.g     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.j, ptr %i.k, align 8
  store i8 0, ptr %i.i, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.m = add nsw i64 %i.g, -1                     ; 2 uses
  %2 = icmp eq i64 %i.m, 0
  br i1 %2, label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i, label %3

3:                                                ; preds = %.noexc10
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.l, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %3, %.noexc10
  %4 = phi ptr [ %i.i, %3 ], [ %i.i, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.j, %3 ], [ %i.l, %.noexc10 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.0.i.i.i.i.i, ptr %i.n, align 8
  %i.o = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.p = load ptr, ptr %1, align 8                ; 4 uses
  %.not = icmp eq ptr %i.o, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  %i.q = ptrtoaddr ptr %4 to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 4 uses
  %min.iters.check = icmp ult i64 %i.u, 8
  %i.v = sub i64 %i.s, %i.q
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.u, -4                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x double>, ptr %i.w, align 8
  %wide.load14 = load <2 x double>, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %wide.load, ptr %i.y, align 8
  store <2 x double> %wide.load14, ptr %i.z, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %.011.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %_ZNSt12_Vector_baseIhSaIhEEC2EmRKS0_.exit.thread.i
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %.011 = phi i64 [ %i.ae, %.lr.ph ], [ %.011.ph, %.lr.ph.preheader15 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.011
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.011
  store double %i.ac, ptr %i.ad, align 8
  %i.ae = add nuw i64 %.011, 1                    ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.u
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !16
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
  %i.i = load <2 x float>, ptr %1, align 4
  %i.j = load float, ptr %i.h, align 4
  %i.k = insertelement <2 x float> %i.i, float %i.j, i64 1
  %i.l = fpext <2 x float> %i.k to <2 x double>
  store <2 x double> %i.l, ptr %i.b, align 8
  %i.m = load <2 x float>, ptr %i.g, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load float, ptr %i.f, align 4
  %i.p = insertelement <2 x float> %i.m, float %i.o, i64 1
  %i.q = fpext <2 x float> %i.p to <2 x double>
  store <2 x double> %i.q, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load <2 x float>, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4
  %i.w = insertelement <2 x float> %i.s, float %i.v, i64 1
  %i.x = fpext <2 x float> %i.w to <2 x double>
  store <2 x double> %i.x, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.z = load <2 x float>, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = insertelement <2 x float> %i.z, float %i.ac, i64 1
  %i.ae = fpext <2 x float> %i.ad to <2 x double>
  store <2 x double> %i.ae, ptr %i.aa, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load <2 x float>, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = insertelement <2 x float> %i.ag, float %i.aj, i64 1
  %i.al = fpext <2 x float> %i.ak to <2 x double>
  store <2 x double> %i.al, ptr %i.ah, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load <2 x float>, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = insertelement <2 x float> %i.an, float %i.aq, i64 1
  %i.as = fpext <2 x float> %i.ar to <2 x double>
  store <2 x double> %i.as, ptr %i.ao, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = load <2 x float>, ptr %i.at, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = insertelement <2 x float> %i.au, float %i.ax, i64 1
  %i.az = fpext <2 x float> %i.ay to <2 x double>
  store <2 x double> %i.az, ptr %i.av, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bb = load <2 x float>, ptr %i.ba, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = insertelement <2 x float> %i.bb, float %i.be, i64 1
  %i.bg = fpext <2 x float> %i.bf to <2 x double>
  store <2 x double> %i.bg, ptr %i.bc, align 8
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
end_hunk_0
