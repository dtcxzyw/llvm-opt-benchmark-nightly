Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/subproc?download=true
inline.NumInlined: 105
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@subprocess_alive:bb.a
.critedge14:                                      ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %.critedge14, %bb.d, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %.critedge14 ], [ 0, %bb.d ], [ -1, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN14common_subproc12is_supportedEv() local_unnamed_addr #9 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN14common_subprocD2Ev(ptr noundef nonnull align 8 dead_on_return(41) dereferenceable(41) %0) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = invoke i32 @subprocess_destroy(ptr noundef nonnull %0)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store atomic i8 0, ptr %i.a seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #22
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN14common_subproc6createERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEiSA_PKc(ptr noundef nonnull align 8 dereferenceable(41) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 10 uses
  %6 = alloca %"class.std::vector", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call fastcc void @_ZL11to_cstr_vecRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = load ptr, ptr %3, align 8, !tbaa !34
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.d = icmp eq ptr %i.a, %i.c
  %i.e = icmp eq ptr %4, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %5, align 8, !tbaa !26     ; 3 uses
  %i.g = invoke i32 @subprocess_create(ptr noundef %i.f, i32 noundef %2, ptr noundef nonnull %0)
          to label %bb.k unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke fastcc void @_ZL11to_cstr_vecRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %5, align 8, !tbaa !26     ; 3 uses
  %i.j = load ptr, ptr %3, align 8, !tbaa !34
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.l = icmp eq ptr %i.j, %i.k
  %i.m = load ptr, ptr %6, align 8                ; 7 uses
  %spec.select = select i1 %i.l, ptr null, ptr %i.m
  %i.n = invoke i32 @subprocess_create_ex(ptr noundef %i.i, i32 noundef %2, ptr noundef %spec.select, ptr noundef %4, ptr noundef nonnull %0)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.s) #23
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %.pr27 = load ptr, ptr %5, align 8, !tbaa !26
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.pr.pre = load ptr, ptr %5, align 8, !tbaa !26
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit19

bb.i:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i18, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit19, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.m to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.z) #23
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit19

_ZNSt6vectorIPcSaIS0_EED2Ev.exit19:               ; preds = %bb.j, %bb.i, %bb.h
  %.pr = phi ptr [ %.pr.pre, %bb.h ], [ %i.i, %bb.i ], [ %i.i, %bb.j ]
  %.pn = phi { ptr, i32 } [ %i.t, %bb.h ], [ %i.u, %bb.i ], [ %i.u, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.m

bb.k:                                             ; preds = %bb.b, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit
  %i.aa = phi ptr [ %i.f, %bb.b ], [ %.pr27, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit ] ; 3 uses
  %.014 = phi i32 [ %i.g, %bb.b ], [ %i.n, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit ]
  %i.ab = icmp eq i32 %.014, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = zext i1 %i.ab to i8
  store atomic i8 %i.ad, ptr %i.ac seq_cst, align 8
  %i.ae = load atomic i8, ptr %i.ac seq_cst, align 8, !range !20, !noundef !21
  %.not.i.i.i20 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit21, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !27
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.aa to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.aj) #23
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit21

_ZNSt6vectorIPcSaIS0_EED2Ev.exit21:               ; preds = %bb.k, %bb.l
  %i.ak = trunc nuw i8 %i.ae to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret i1 %i.ak

bb.m:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EED2Ev.exit19, %bb.c
  %i.al = phi ptr [ %.pr, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit19 ], [ %i.f, %bb.c ] ; 3 uses
  %.pn16 = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIPcSaIS0_EED2Ev.exit19 ], [ %i.h, %bb.c ]
  %.not.i.i.i22 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit23, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aq) #23
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit23

_ZNSt6vectorIPcSaIS0_EED2Ev.exit23:               ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %.pn16
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL11to_cstr_vecRKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !37     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 5
  %i.h = add nsw i64 %i.g, 1                      ; 4 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #24
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.not45 = icmp eq i64 %i.h, 0
  br i1 %.not45, label %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.a

_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.a: ; preds = %bb.b
  %2 = shl nuw nsw i64 %i.h, 3
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %2) #25 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %0, align 8, !tbaa !26
  store ptr %3, ptr %i.k, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.h ; 2 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !27
  br label %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit

_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit:           ; preds = %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.a, %bb.b
  %.promoted30 = phi ptr [ %i.l, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 2 uses
  %.promoted = phi ptr [ %3, %_ZNSt12_Vector_baseIPcSaIS0_EE11_M_allocateEm.exit.i.a ], [ null, %bb.b ] ; 4 uses
  %.not28 = icmp eq ptr %i.c, %i.b
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit
  %i.n = phi ptr [ %.promoted, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit ], [ %i.bb, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21 ] ; 5 uses
  %i.o = phi ptr [ %.promoted30, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit ], [ %i.bc, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21 ] ; 3 uses
  %i.p = phi ptr [ %.promoted, %_ZNSt6vectorIPcSaIS0_EE7reserveEm.exit ], [ %i.bd, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21 ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, %i.o
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.r, ptr %i.q, align 8, !tbaa !38
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

bb.d:                                             ; preds = %._crit_edge
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.n to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.e, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
          to label %.noexc10 unwind label %bb.n

.noexc10:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #25
          to label %.noexc11 unwind label %bb.n   ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr null, ptr %i.ad, align 8, !tbaa !11
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.f, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.n, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.f, %.noexc11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.u) #23
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  store ptr %i.ac, ptr %0, align 8, !tbaa !26
  store ptr %i.af, ptr %i.q, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !27
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21
  %i.ah = phi ptr [ %.promoted, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21 ] ; 7 uses
  %i.ai = phi ptr [ %.promoted30, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21 ] ; 5 uses
  %i.aj = phi ptr [ %.promoted, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21 ] ; 3 uses
  %.sroa.025.029 = phi ptr [ %i.c, %.lr.ph ], [ %i.be, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21 ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.025.029, align 8, !tbaa !42 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.aj, %i.ai
  br i1 %.not.i.i12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.m, align 8, !tbaa !38
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21

bb.j:                                             ; preds = %bb.h
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.ah to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.k, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #24
          to label %.noexc19 unwind label %.loopexit.split-lp.a

.noexc19:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13: ; preds = %bb.j
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i14 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i14, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i.i15 = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i15)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #25
          to label %.noexc20 unwind label %.loopexit ; 5 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store ptr %i.ak, ptr %i.ax, align 8, !tbaa !11
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.l, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16

bb.l:                                             ; preds = %.noexc20
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.ah, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16: ; preds = %bb.l, %.noexc20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %.not.i17.i.i.i17 = icmp eq ptr %i.ah, null
  br i1 %.not.i17.i.i.i17, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ao) #23
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18: ; preds = %bb.m, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i16
  store ptr %i.aw, ptr %0, align 8, !tbaa !26
  store ptr %i.az, ptr %i.m, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au ; 2 uses
  store ptr %i.ba, ptr %i.j, align 8, !tbaa !27
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21

_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit21:    ; preds = %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18, %bb.i
  %i.bb = phi ptr [ %i.aw, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18 ], [ %i.ah, %bb.i ] ; 2 uses
  %i.bc = phi ptr [ %i.ba, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18 ], [ %i.ai, %bb.i ] ; 2 uses
  %i.bd = phi ptr [ %i.az, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i18 ], [ %i.al, %bb.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.b
  br i1 %.not, label %._crit_edge, label %bb.h

.loopexit:                                        ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i13
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.a:                             ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit:      ; preds = %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.c
  ret void

bb.n:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp.a, %bb.n
  %4 = phi ptr [ %i.ai, %.loopexit.split-lp.a ], [ %i.o, %bb.n ], [ %i.ai, %.loopexit ]
  %5 = phi ptr [ %i.ah, %.loopexit.split-lp.a ], [ %i.n, %bb.n ], [ %i.ah, %.loopexit ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.a ], [ %i.bf, %bb.n ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = ptrtoint ptr %4 to i64
  %i.bh = ptrtoint ptr %5 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  tail call void @_ZdlPvm(ptr noundef nonnull %5, i64 noundef %i.bi) #23
  br label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %bb.o, %bb.p
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext i1 @_ZNK14common_subproc10has_handleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32
  %i.f = icmp sgt i32 %i.e, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN14common_subproc5aliveEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @subprocess_alive(ptr noundef nonnull %0)
  %i.e = icmp ne i32 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define noundef ptr @_ZN14common_subproc10stdin_fileEv(ptr nofree noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @subprocess_stdin(ptr noundef nonnull %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define noundef ptr @_ZN14common_subproc11stdout_fileEv(ptr nofree noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @subprocess_stdout(ptr noundef nonnull %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define noundef ptr @_ZN14common_subproc11stderr_fileEv(ptr nofree noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @subprocess_stderr(ptr noundef nonnull %0) #26
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN14common_subproc11close_stdinEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(41) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  store ptr null, ptr %0, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN14common_subproc9terminateEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic i8, ptr %i.a seq_cst, align 8, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNK14common_subproc10has_handleEv.exit, label %_ZNK14common_subproc10has_handleEv.exit.thread

_ZNK14common_subproc10has_handleEv.exit:          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !32
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZNK14common_subproc10has_handleEv.exit.thread

bb.b:                                             ; preds = %_ZNK14common_subproc10has_handleEv.exit
  %i.g = tail call i32 @subprocess_terminate(ptr noundef nonnull %0) ; 0 uses
  br label %_ZNK14common_subproc10has_handleEv.exit.thread

_ZNK14common_subproc10has_handleEv.exit.thread:   ; preds = %bb.a, %bb.b, %_ZNK14common_subproc10has_handleEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN14common_subproc4joinEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 -1, ptr %i.a, align 4, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load atomic i8, ptr %i.b seq_cst, align 8, !range !20, !noundef !21
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @subprocess_join(ptr noundef nonnull %0, ptr noundef nonnull %i.a) ; 0 uses
  %i.f = call i32 @subprocess_destroy(ptr noundef nonnull %0) ; 0 uses
  store atomic i8 0, ptr %i.b seq_cst, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.g
}

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @_ZL24subprocess_fds_above_stdPi(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp sgt i32 %i.a, 2
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.a, i32 noundef 0, i32 noundef 3) ; 6 uses
  %.not = icmp eq i32 %i.c, -1
  br i1 %.not, label %.loopexit30.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.c, i32 noundef 1, i32 noundef 0) ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = or i32 %i.d, 1
  %i.g = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.c, i32 noundef 2, i32 noundef %i.f)
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.i, %bb.d, %bb.c
  %.lcssa33 = phi i32 [ %i.c, %bb.d ], [ %i.c, %bb.c ], [ %i.w, %bb.i ], [ %i.w, %bb.j ]
  %i.i = tail call ptr @__errno_location() #21    ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8
  %i.k = tail call i32 @close(i32 noundef %.lcssa33) ; 0 uses
  store i32 %i.j, ptr %i.i, align 4, !tbaa !8
  br label %.loopexit30

.loopexit30.loopexit:                             ; preds = %bb.h, %bb.b
  %.pre = tail call ptr @__errno_location() #21
  br label %.loopexit30

.loopexit30:                                      ; preds = %.loopexit30.loopexit, %bb.e
  %.pre-phi = phi ptr [ %.pre, %.loopexit30.loopexit ], [ %i.i, %bb.e ] ; 2 uses
  %i.l = load i32, ptr %.pre-phi, align 4, !tbaa !8
  %i.m = load i32, ptr %0, align 4, !tbaa !8
  %i.n = tail call i32 @close(i32 noundef %i.m)   ; 0 uses
end_hunk_0
