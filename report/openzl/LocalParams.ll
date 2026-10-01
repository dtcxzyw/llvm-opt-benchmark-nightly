Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/LocalParams?download=true
inline.NumInlined: 555
inline.NumDeleted: 343
begin_hunk_0_@_ZN6openzl11LocalParamsC2ERK14ZL_LocalParams:bb.a
  %.pre43 = phi i64 [ %.pre43.pre, %bb.k ], [ %i.ax, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i ]
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !40
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store ptr %i.bo, ptr %i.bh, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ax
  store ptr %i.bp, ptr %i.az, align 8, !tbaa !39
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE7reserveEm.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EE7reserveEm.exit: ; preds = %bb.i, %_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.bq = phi i64 [ %i.ax, %bb.i ], [ %.pre43, %_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE13_M_deallocateEPS0_m.exit.i ]
  %.not42 = icmp eq i64 %i.bq, 0
  br i1 %.not42, label %._crit_edge40, label %.lr.ph39

.lr.ph36:                                         ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE7reserveEm.exit, %bb.l
  %.02035 = phi i64 [ %i.bt, %bb.l ], [ 0, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE7reserveEm.exit ] ; 2 uses
  %i.br = load ptr, ptr %i.s, align 8, !tbaa !95
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.02035
  invoke void @_ZN6openzl11LocalParams12addCopyParamE12ZL_CopyParam(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull byval(%struct.ZL_CopyParam) align 8 %i.bs)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.lr.ph36
  %i.bt = add nuw i64 %.02035, 1                  ; 2 uses
  %i.bu = load i64, ptr %i.t, align 8, !tbaa !92
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph36, label %._crit_edge37, !llvm.loop !88

bb.m:                                             ; preds = %.lr.ph36
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge40:                                    ; preds = %bb.n, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE7reserveEm.exit
  ret void

.lr.ph39:                                         ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EE7reserveEm.exit, %bb.n
  %.038 = phi i64 [ %i.bz, %bb.n ], [ 0, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE7reserveEm.exit ] ; 2 uses
  %i.bx = load ptr, ptr %i.av, align 8, !tbaa !96
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.038
  invoke void @_ZN6openzl11LocalParams11addRefParamE11ZL_RefParam(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull byval(%struct.ZL_RefParam) align 8 %i.by)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.lr.ph39
  %i.bz = add nuw i64 %.038, 1                    ; 2 uses
  %i.ca = load i64, ptr %i.aw, align 8, !tbaa !94
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph39, label %._crit_edge40, !llvm.loop !89

bb.o:                                             ; preds = %.lr.ph39
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m, %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.au, %bb.h ], [ %i.bw, %bb.m ], [ %i.cc, %bb.o ], [ %i.ao, %bb.f ]
  tail call void @_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.j) #22
  tail call void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.d) #22
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !39
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #20
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit:      ; preds = %bb.p, %bb.q
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !34  ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !33
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #20
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit

_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit:     ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, %bb.r
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !29  ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cp to i64
  %i.cu = sub i64 %i.cs, %i.ct
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.cu) #20
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, %bb.s
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl11LocalParams11addIntParamE11ZL_IntParam(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  tail call void @_ZN6openzl11LocalParams16insertKeyOrThrowEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %.sroa.0.0.extract.trunc)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !30
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  store i64 %1, ptr %i.s, align 4, !tbaa !36
  %i.t = icmp sgt i64 %i.j, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #20
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !29
  store ptr %i.u, ptr %i.b, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !31
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI11ZL_IntParamSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.b, %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.w = phi ptr [ %i.f, %bb.b ], [ %i.u, %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.x = phi ptr [ %.pre, %bb.b ], [ %i.r, %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !97
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !98
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl11LocalParams12addCopyParamE12ZL_CopyParam(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef byval(%struct.ZL_CopyParam) align 8 captures(none) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !59
  tail call void @_ZN6openzl11LocalParams16insertKeyOrThrowEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #19, !noalias !106 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.c, i1 false), !noalias !106
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.f, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !62   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %.not.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.d to i64
  store i64 %i.m, ptr %i.j, align 8, !tbaa !65
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !62
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !66   ; 7 uses
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc9 unwind label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i6

.noexc9:                                          ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i, %i.t  ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i8)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #19
          to label %.noexc10 unwind label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i6 ; 7 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = ptrtoint ptr %i.d to i64
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !65
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc10
  %i.ac = add i64 %i.p, -8
  %i.ad = sub i64 %i.ac, %i.q                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 3
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.af, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.z, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.o, i64 %i.aj ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ak = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !65, !alias.scope !108, !noalias !107
  %wide.load28 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !65, !alias.scope !108, !noalias !107
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !65, !alias.scope !107, !noalias !108
  store <2 x i64> %wide.load28, ptr %i.al, align 8, !tbaa !65, !alias.scope !107, !noalias !108
  %i.am = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !65, !alias.scope !108, !noalias !107
  store <2 x ptr> splat (ptr null), ptr %i.am, align 8, !tbaa !65, !alias.scope !108, !noalias !107
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ao = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !108, !noalias !107
  store i64 %i.ao, ptr %.012.i.i.i.i, align 8, !tbaa !65, !alias.scope !107, !noalias !108
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !65, !alias.scope !108, !noalias !107
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, %i.j
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i = phi ptr [ %i.z, %.noexc10 ], [ %i.ah, %middle.block ], [ %i.aq, %.lr.ph.i.i.i.i ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.z, ptr %i.h, align 8, !tbaa !66
  store ptr %i.ar, ptr %i.i, align 8, !tbaa !62
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.as, ptr %i.k, align 8, !tbaa !63
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit: ; preds = %.noexc, %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !35 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.av, %i.ax
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  store ptr %i.az, ptr %i.au, align 8, !tbaa !35
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !34
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !34 ; 4 uses
  %i.bb = ptrtoint ptr %i.av to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %.noexc2, label %_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i

.noexc2:                                          ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bf = sdiv exact i64 %i.bd, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 384307168202282325)
  %i.bj = select i1 %i.bh, i64 384307168202282325, i64 %i.bi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bk = mul nuw nsw i64 %i.bj, 24
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #19 ; 5 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.j, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bd) #20
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.bl, ptr %i.at, align 8, !tbaa !34
  store ptr %i.bo, ptr %i.au, align 8, !tbaa !35
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.bp, ptr %i.aw, align 8, !tbaa !33
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.bq = phi ptr [ %i.az, %bb.h ], [ %i.bo, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.br = phi ptr [ %.pre, %bb.h ], [ %i.bl, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !111
  %i.bt = ptrtoint ptr %i.bq to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = sdiv exact i64 %i.bv, 24
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !112
  ret void

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i6: ; preds = %bb.f, %_ZNKSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #20
  resume { ptr, i32 } %lpad.thr_comm.split-lp
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl11LocalParams11addRefParamE11ZL_RefParam(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr nofree noundef readonly byval(%struct.ZL_RefParam) align 8 captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !71
  tail call void @_ZN6openzl11LocalParams16insertKeyOrThrowEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !41   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !41
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !40
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !40   ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 6 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorI11ZL_RefParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorI11ZL_RefParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.n = sdiv exact i64 %i.l, 24                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 384307168202282325)
  %i.r = select i1 %i.p, i64 384307168202282325, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = mul nuw nsw i64 %i.r, 24
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #19 ; 5 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.e, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorI11ZL_RefParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorI11ZL_RefParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #20
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !40
  store ptr %i.w, ptr %i.c, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.r
  store ptr %i.x, ptr %i.e, align 8, !tbaa !39
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.b, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.y = phi ptr [ %i.h, %bb.b ], [ %i.w, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.z = phi ptr [ %.pre, %bb.b ], [ %i.t, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !113
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !66     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #20
  br label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i

_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i, %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !63
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #20
  br label %_ZNSt12_Vector_baseISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt12_Vector_baseISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i.i.i, align 8, !tbaa !73 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 16) #20
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i
  %i.k = load i64, ptr %i.e, align 8, !tbaa !23
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6openzl11LocalParamsaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.openzl::LocalParams", align 8 ; 5 uses
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN6openzl11LocalParamsC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %2, ptr noundef nonnull align 8 dereferenceable(200) %1)
  %i.a = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6openzl11LocalParamsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %2) #22 ; 0 uses
  call void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(200) ptr @_ZN6openzl11LocalParamsaSEOS0_(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !115
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = load <2 x ptr>, ptr %i.b, align 8, !tbaa !67
  store <2 x ptr> %i.f, ptr %i.a, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  store ptr %i.h, ptr %i.d, align 8, !tbaa !31
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = ptrtoint ptr %i.c to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.k) #20
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EEaSEOS2_.exit

_ZNSt6vectorI11ZL_IntParamSaIS0_EEaSEOS2_.exit:   ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !34   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !67
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33
  store ptr %i.s, ptr %i.o, align 8, !tbaa !33
  %.not.i.i.i.i.i7 = icmp eq ptr %i.n, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i7, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EEaSEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI11ZL_IntParamSaIS0_EEaSEOS2_.exit
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #20
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EEaSEOS2_.exit

_ZNSt6vectorI12ZL_CopyParamSaIS0_EEaSEOS2_.exit:  ; preds = %_ZNSt6vectorI11ZL_IntParamSaIS0_EEaSEOS2_.exit, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !40   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !67
  store <2 x ptr> %i.ab, ptr %i.w, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !39
  %.not.i.i.i.i.i8 = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i8, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EEaSEOS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EEaSEOS2_.exit
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #20
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EEaSEOS2_.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EEaSEOS2_.exit:   ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EEaSEOS2_.exit, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.aj = icmp eq ptr %1, %0
  br i1 %i.aj, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEEaSEOS5_.exit, label %bb.e, !prof !74

bb.e:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EEaSEOS2_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !72 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not5.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_deallocate_nodesEPS2_.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %i.al, %bb.e ] ; 2 uses
  %i.am = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #20
  %.not.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_deallocate_nodesEPS2_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_deallocate_nodesEPS2_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.e
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_deallocate_nodesEPS2_.exit.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !23
  %i.as = shl i64 %i.ar, 3
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.as) #20
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i: ; preds = %bb.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_deallocate_nodesEPS2_.exit.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !117
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !22 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 4 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !75
  store ptr %i.ay, ptr %i.ao, align 8, !tbaa !75
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i
  %i.az = phi ptr [ %i.ao, %bb.g ], [ %i.av, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit.i.i.i ] ; 2 uses
  store ptr %i.az, ptr %i.ah, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !72 ; 3 uses
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !72
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !76
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !76
  %.not.i12.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i12.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_update_bbeginEv.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !36
  %i.bk = sext i32 %i.bj to i64
  %i.bl = urem i64 %i.bk, %i.bb
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.bl
  store ptr %i.ak, ptr %i.bm, align 8, !tbaa !77
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_update_bbeginEv.exit.i.i.i

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_update_bbeginEv.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  store i64 0, ptr %i.bn, align 8, !tbaa !78
  store i64 1, ptr %i.ba, align 8, !tbaa !23
  store ptr null, ptr %i.aw, align 8, !tbaa !75
  store ptr %i.aw, ptr %i.ai, align 8, !tbaa !22
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEEaSEOS5_.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEEaSEOS5_.exit: ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EEaSEOS2_.exit, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_update_bbeginEv.exit.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !66 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !62 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !63
  %i.bv = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !118
  store <2 x ptr> %i.bv, ptr %i.bo, align 8, !tbaa !118
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !63
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !63
  %.not4.i.i.i.i.i = icmp eq ptr %i.bq, %i.bs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEEaSEOS5_.exit, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bz, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i ], [ %i.bq, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEEaSEOS5_.exit ] ; 2 uses
  %i.by = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.by) #20
  br label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i9 = icmp eq ptr %i.bz, %i.bs
  br i1 %.not.i.i.i.i.i9, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i.i.i, %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEEaSEOS5_.exit
  %.not.i.i1.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EEaSEOS6_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.ca = ptrtoint ptr %i.bu to i64
  %i.cb = ptrtoint ptr %i.bq to i64
  %i.cc = sub i64 %i.ca, %i.cb
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.cc) #20
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EEaSEOS6_.exit

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EEaSEOS6_.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i.i.i, %bb.j
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl11LocalParamsD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !65 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #20
  br label %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !63
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #20
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.o, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit ] ; 2 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !73 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #20
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !23
  %i.t = shl i64 %i.s, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.t, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !22   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.x = load i64, ptr %i.r, align 8, !tbaa !23
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #20
  br label %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit

_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !39
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #20
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit:      ; preds = %_ZNSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEED2Ev.exit, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !33
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #20
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit

_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit:     ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !29 ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #20
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit

_ZNSt6vectorI11ZL_IntParamSaIS0_EED2Ev.exit:      ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EED2Ev.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl11LocalParams16insertKeyOrThrowEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.b, ptr %2, align 8, !tbaa !120
  %i.c = call { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %.fca.1.extract = extractvalue { ptr, i8 } %i.c, 1
  %i.d = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @__cxa_allocate_exception(i64 112) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.f = load i32, ptr %i.a, align 4, !tbaa !36
  call void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, i32 noundef %i.f) #22
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %3, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !82
  invoke void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105) %i.e, i64 %i.i, ptr %i.g)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN6openzl9ExceptionE, ptr nonnull @_ZN6openzl9ExceptionD2Ev) #21
          to label %bb.j unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !81     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.o = load i64, ptr %i.m, align 8, !tbaa !83
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.k, %bb.f ]
  %.1 = phi i1 [ true, %bb.e ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0, %bb.f ]
  %i.q = load ptr, ptr %4, align 8, !tbaa !81     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8, !tbaa !83
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br i1 %.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  call void @__cxa_free_exception(ptr %i.e) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a
  ret void

bb.j:                                             ; preds = %bb.d
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #22
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !84
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !82   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !81
  %i.k = load i64, ptr %i.e, align 8, !tbaa !83
  store i64 %i.k, ptr %i.c, align 8, !tbaa !83
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !82
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !82
  store ptr %i.e, ptr %i.b, align 8, !tbaa !81
  store i64 0, ptr %i.m, align 8, !tbaa !82
  store i8 0, ptr %i.e, align 8, !tbaa !83
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEi(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i32 noundef %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 false) ; 5 uses
  %i.b = icmp ult i32 %i.a, 10
  br i1 %i.b, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.030.i = phi i32 [ %i.j, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02329.i = phi i32 [ %i.i, %bb.g ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = icmp ult i32 %.02329.i, 100
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = add i32 %.030.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = icmp ult i32 %.02329.i, 1000
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = add i32 %.030.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ult i32 %.02329.i, 10000
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add i32 %.030.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.i = udiv i32 %.02329.i, 10000
  %i.j = add i32 %.030.i, 4                       ; 2 uses
  %i.k = icmp ult i32 %.02329.i, 100000
  br i1 %i.k, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit, label %.lr.ph.i, !llvm.loop !121

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.022.i = phi i32 [ %i.h, %bb.f ], [ %i.d, %bb.b ], [ %i.f, %bb.d ], [ 1, %bb.a ], [ %i.j, %bb.g ] ; 2 uses
  %.lobit = lshr i32 %1, 31                       ; 2 uses
  %i.l = add i32 %.022.i, %.lobit
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %0, align 8, !tbaa !84
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.m, i8 noundef signext 45)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit
  %i.o = zext nneg i32 %.lobit to i64
  %i.p = load ptr, ptr %0, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 4 uses
  %i.r = icmp ugt i32 %i.a, 99
  br i1 %i.r, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.s = add i32 %.022.i, -1
  br label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.i11, %.lr.ph.preheader.i
  %.020.i = phi i32 [ %i.v, %.lr.ph.i11 ], [ %i.a, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ag, %.lr.ph.i11 ], [ %i.s, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = urem i32 %.020.i, 100
  %i.u = shl nuw nsw i32 %i.t, 1
  %i.v = udiv i32 %.020.i, 100                    ; 2 uses
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !83
  %i.aa = zext i32 %.01819.i to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !83
  %i.ac = load i8, ptr %i.x, align 2, !tbaa !83
  %i.ad = add i32 %.01819.i, -1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ae
  store i8 %i.ac, ptr %i.af, align 1, !tbaa !83
  %i.ag = add i32 %.01819.i, -2
  %i.ah = icmp ugt i32 %.020.i, 9999
  br i1 %i.ah, label %.lr.ph.i11, label %._crit_edge.i, !llvm.loop !122

._crit_edge.i:                                    ; preds = %.lr.ph.i11, %bb.h
  %.0.lcssa.i = phi i32 [ %i.a, %bb.h ], [ %i.v, %.lr.ph.i11 ] ; 3 uses
  %i.ai = icmp samesign ugt i32 %.0.lcssa.i, 9
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i
  %i.aj = shl nuw nsw i32 %.0.lcssa.i, 1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !83
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !83
  %i.ap = load i8, ptr %i.al, align 2, !tbaa !83
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit

bb.j:                                             ; preds = %._crit_edge.i
  %i.aq = trunc nuw nsw i32 %.0.lcssa.i to i8
  %i.ar = or disjoint i8 %i.aq, 48
  br label %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit: ; preds = %bb.i, %bb.j
  %storemerge.i = phi i8 [ %i.ar, %bb.j ], [ %i.ap, %bb.i ]
  store i8 %storemerge.i, ptr %i.q, align 1, !tbaa !83
  ret void

bb.k:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit
  %i.as = landingpad { ptr, i32 }
          catch ptr null
  %i.at = extractvalue { ptr, i32 } %i.as, 0
  tail call void @__clang_call_terminate(ptr %i.at) #23
  unreachable
}

declare void @_ZN6openzl9ExceptionC1ESt17basic_string_viewIcSt11char_traitsIcEENS_4poly4impl15source_locationE(ptr noundef nonnull align 8 dereferenceable(105), i64, ptr) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(105) dereferenceable(105) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !83
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !83
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #22
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl11LocalParams11addIntParamEii(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.2.0.insert.ext = zext i32 %2 to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %1 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  tail call void @_ZN6openzl11LocalParams11addIntParamE11ZL_IntParam(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %.sroa.0.0.insert.insert)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl11LocalParams12addCopyParamEiPKvm(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.ZL_CopyParam, align 8       ; 4 uses
  store i32 %1, ptr %4, align 8, !tbaa !59
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.b, align 8, !tbaa !60
  tail call void @_ZN6openzl11LocalParams12addCopyParamE12ZL_CopyParam(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull byval(%struct.ZL_CopyParam) align 8 %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl11LocalParams11addRefParamEiPKvm(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %struct.ZL_RefParam, align 8        ; 4 uses
  store i32 %1, ptr %4, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %3, ptr %i.b, align 8, !tbaa !124
  tail call void @_ZN6openzl11LocalParams11addRefParamE11ZL_RefParam(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull byval(%struct.ZL_RefParam) align 8 %4)
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #22 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6openzl9ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(105) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6openzl9ExceptionE, i64 16), ptr %0, align 8, !tbaa !86
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !83
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #20, !inline_history !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6openzl9ExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !83
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #20, !inline_history !125
  br label %_ZN6openzl9ExceptionD2Ev.exit

_ZN6openzl9ExceptionD2Ev.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(105) %0) #22, !inline_history !125
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #20
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i8 } @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKiSF_NS1_10_AllocNodeISaINS1_10_Hash_nodeIiLb0EEEEEEEESt4pairINS1_14_Node_iteratorIiLb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !76
  %.not.not = icmp eq i64 %i.b, 0
  br i1 %.not.not, label %bb.b, label %.thread34

.thread34:                                        ; preds = %bb.a
  %i.c = load i32, ptr %1, align 4, !tbaa !36     ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.g = urem i64 %i.d, %i.f                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !22
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %.critedge, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i32, ptr %1, align 4                ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.028.0.in = phi ptr [ %i.k, %bb.b ], [ %.sroa.028.0, %bb.d ]
  %.sroa.028.0 = load ptr, ptr %.sroa.028.0.in, align 8, !tbaa !73 ; 4 uses
  %.not = icmp eq ptr %.sroa.028.0, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.028.0, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !36
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %bb.c, !llvm.loop !126

bb.e:                                             ; preds = %bb.c
  %i.p = sext i32 %i.l to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !23
  %i.s = urem i64 %i.p, %i.r
  br label %.critedge

bb.f:                                             ; preds = %.thread34
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !73   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !36
  %i.w = icmp eq i32 %i.c, %i.v
  br i1 %i.w, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %i.c, %i.aa
  br i1 %i.x, label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit, label %.lr.ph.i.i, !llvm.loop !127

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.020.i.i = phi ptr [ %i.y, %bb.g ], [ %i.t, %bb.f ]
  %i.y = load ptr, ptr %.020.i.i, align 8, !tbaa !73 ; 4 uses
  %.not18.i.i = icmp eq ptr %i.y, null
  br i1 %.not18.i.i, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !36  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = urem i64 %i.ab, %i.f
  %.not19.i.i = icmp eq i64 %i.ac, %i.g
  br i1 %.not19.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i, !llvm.loop !127

..loopexit_crit_edge21.i.i:                       ; preds = %bb.h
  br label %.critedge, !llvm.loop !127

.critedge:                                        ; preds = %.lr.ph.i.i, %bb.e, %..loopexit_crit_edge21.i.i, %.thread34
  %i.ad = phi i64 [ %i.s, %bb.e ], [ %i.g, %.thread34 ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ae = phi i64 [ %i.p, %bb.e ], [ %i.d, %.thread34 ], [ %i.d, %..loopexit_crit_edge21.i.i ], [ %i.d, %.lr.ph.i.i ]
  %i.af = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  store ptr null, ptr %i.af, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %1, align 4, !tbaa !36
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !36
  %i.ai = invoke ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.af, i64 noundef 1)
          to label %_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit unwind label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20: ; preds = %.critedge
  %i.aj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 16) #20
  resume { ptr, i32 } %i.aj

_ZNKSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE15_M_find_node_trIiEEPNS1_10_Hash_nodeIiLb0EEEmRKT_m.exit: ; preds = %bb.g, %bb.d, %.critedge, %bb.f
  %.sroa.031.1 = phi ptr [ %.sroa.028.0, %bb.d ], [ %i.ai, %.critedge ], [ %i.t, %bb.f ], [ %i.y, %bb.g ]
  %.sroa.432.1 = phi i8 [ 0, %bb.d ], [ 1, %.critedge ], [ 0, %bb.f ], [ 0, %bb.g ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.1, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.432.1, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIiLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !76
  %i.h = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.e, i64 noundef %i.g, i64 noundef %4) ; 2 uses
  %i.i = extractvalue { i8, i64 } %i.h, 0
  %i.j = trunc i8 %i.i to i1
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { i8, i64 } %i.h, 1
  invoke void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.k)
          to label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #22 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !78
  invoke void @__cxa_rethrow() #21
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #23
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b
  %i.r = load i64, ptr %i.d, align 8, !tbaa !23
  %i.s = urem i64 %2, %i.r
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.0 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !77   ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  store ptr %i.w, ptr %3, align 8, !tbaa !73
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !77
  store ptr %3, ptr %i.x, align 8, !tbaa !73
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  store ptr %i.z, ptr %3, align 8, !tbaa !73
  store ptr %3, ptr %i.y, align 8, !tbaa !72
  %i.aa = load ptr, ptr %3, align 8, !tbaa !73    ; 2 uses
  %.not11.i = icmp eq ptr %i.aa, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !23
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !36
  %i.ae = sext i32 %i.ad to i64
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !77
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.y, ptr %i.u, align 8, !tbaa !77
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE22_M_insert_bucket_beginEmPNS1_10_Hash_nodeIiLb0EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !76
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !76
  ret ptr %3
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !75
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !74

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #19 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !72
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !73 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = sext i32 %i.k to i64
  %i.m = urem i64 %i.l, %1                        ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !77   ; 2 uses
  %.not27 = icmp eq ptr %i.o, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !72
  store ptr %i.p, ptr %.02530, align 8, !tbaa !73
  store ptr %.02530, ptr %i.g, align 8, !tbaa !72
  store ptr %i.g, ptr %i.n, align 8, !tbaa !77
  %i.q = load ptr, ptr %.02530, align 8, !tbaa !73
  %.not28 = icmp eq ptr %i.q, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.r, align 8, !tbaa !77
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !73
  store ptr %i.s, ptr %.02530, align 8, !tbaa !73
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !77
  store ptr %.02530, ptr %i.t, align 8, !tbaa !73
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.m, %bb.f ], [ %i.m, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.u = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !23
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.z) #20
  br label %_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.aa, align 8, !tbaa !23
  store ptr %.0.i, ptr %0, align 8, !tbaa !22
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"any p2 pointer", !13, i64 0}
!15 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!18 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !17, i64 0}
!19 = !{!"float", !9, i64 0}
!20 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !19, i64 0, !16, i64 8}
!21 = !{!"_ZTSSt10_HashtableIiiSaIiENSt8__detail9_IdentityESt8equal_toIiESt4hashIiENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE", !15, i64 0, !16, i64 8, !18, i64 16, !16, i64 24, !20, i64 32, !17, i64 48}
!22 = !{!21, !15, i64 0}
!23 = !{!21, !16, i64 8}
!24 = !{!"_ZTS17ZL_LocalIntParams", !13, i64 0, !16, i64 8}
!25 = !{!"_ZTS18ZL_LocalCopyParams", !13, i64 0, !16, i64 8}
!26 = !{!"_ZTS17ZL_LocalRefParams", !13, i64 0, !16, i64 8}
!27 = !{!"_ZTS14ZL_LocalParams", !24, i64 0, !25, i64 16, !26, i64 32}
!28 = !{!"_ZTSNSt12_Vector_baseI11ZL_IntParamSaIS0_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!29 = !{!28, !13, i64 0}
!30 = !{!28, !13, i64 8}
!31 = !{!28, !13, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseI12ZL_CopyParamSaIS0_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!33 = !{!32, !13, i64 16}
!34 = !{!32, !13, i64 0}
!35 = !{!32, !13, i64 8}
!36 = !{!10, !10, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"_ZTSNSt12_Vector_baseI11ZL_RefParamSaIS0_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!39 = !{!38, !13, i64 16}
!40 = !{!38, !13, i64 0}
!41 = !{!38, !13, i64 8}
!42 = !{!"_ZTSNSt12_Vector_baseI11ZL_IntParamSaIS0_EE12_Vector_implE", !28, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseI11ZL_IntParamSaIS0_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorI11ZL_IntParamSaIS0_EE", !43, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseI12ZL_CopyParamSaIS0_EE12_Vector_implE", !32, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseI12ZL_CopyParamSaIS0_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorI12ZL_CopyParamSaIS0_EE", !46, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseI11ZL_RefParamSaIS0_EE12_Vector_implE", !38, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseI11ZL_RefParamSaIS0_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorI11ZL_RefParamSaIS0_EE", !49, i64 0}
!51 = !{!"_ZTSSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE", !21, i64 0}
!52 = !{!"p1 _ZTSSt10unique_ptrIA_hSt14default_deleteIS0_EE", !13, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_Vector_implE", !53, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE", !54, i64 0}
!56 = !{!"_ZTSSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE", !55, i64 0}
!57 = !{!"_ZTSN6openzl11LocalParamsE", !27, i64 0, !44, i64 48, !47, i64 72, !50, i64 96, !51, i64 120, !56, i64 176}
!58 = !{!"_ZTS12ZL_CopyParam", !10, i64 0, !13, i64 8, !16, i64 16}
!59 = !{!58, !10, i64 0}
!60 = !{!58, !16, i64 16}
!61 = !{!58, !13, i64 8}
!62 = !{!53, !52, i64 8}
!63 = !{!53, !52, i64 16}
!64 = !{!"p1 omnipotent char", !13, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!53, !52, i64 0}
!67 = !{!13, !13, i64 0}
!68 = !{!16, !16, i64 0}
!69 = !{i64 0, i64 4, !36, i64 8, i64 8, !67, i64 16, i64 8, !68}
!70 = !{!"_ZTS11ZL_RefParam", !10, i64 0, !13, i64 8, !16, i64 16}
!71 = !{!70, !10, i64 0}
!72 = !{!21, !17, i64 16}
!73 = !{!18, !17, i64 0}
!74 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!75 = !{!21, !17, i64 48}
!76 = !{!21, !16, i64 24}
!77 = !{!17, !17, i64 0}
!78 = !{!20, !16, i64 8}
!79 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !64, i64 0}
!80 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !79, i64 0, !16, i64 8, !9, i64 16}
!81 = !{!80, !64, i64 0}
!82 = !{!80, !16, i64 8}
!83 = !{!9, !9, i64 0}
!84 = !{!79, !64, i64 0}
!85 = !{!"vtable pointer", !8, i64 0}
!86 = !{!85, !85, i64 0}
!87 = distinct !{!87, !37}
!88 = distinct !{!88, !37}
!89 = distinct !{!89, !37}
!90 = !{!20, !19, i64 0}
!91 = !{!27, !16, i64 8}
!92 = !{!27, !16, i64 24}
!93 = !{!27, !13, i64 0}
!94 = !{!27, !16, i64 40}
!95 = !{!27, !13, i64 16}
!96 = !{!27, !13, i64 32}
!97 = !{!57, !13, i64 0}
!98 = !{!57, !16, i64 8}
!99 = distinct !{!99, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm"}
!100 = distinct !{!100, !99, !"_ZSt11make_uniqueIA_hENSt8__detail9_MakeUniqIT_E7__arrayEm: argument 0"}
!101 = distinct !{!101, !"_ZSt19__relocate_object_aISt10unique_ptrIA_hSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_"}
!102 = distinct !{!102, !101, !"_ZSt19__relocate_object_aISt10unique_ptrIA_hSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!103 = distinct !{!103, !101, !"_ZSt19__relocate_object_aISt10unique_ptrIA_hSt14default_deleteIS1_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!104 = distinct !{!104, !37, !109, !110}
!105 = distinct !{!105, !37, !110, !109}
!106 = !{!100}
!107 = !{!102}
!108 = !{!103}
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = !{!"llvm.loop.unroll.runtime.disable"}
!111 = !{!57, !13, i64 16}
!112 = !{!57, !16, i64 24}
!113 = !{!57, !13, i64 32}
!114 = !{!57, !16, i64 40}
!115 = !{i64 0, i64 8, !67, i64 8, i64 8, !68, i64 16, i64 8, !67, i64 24, i64 8, !68, i64 32, i64 8, !67, i64 40, i64 8, !68}
!116 = !{!19, !19, i64 0}
!117 = !{i64 0, i64 4, !116, i64 8, i64 8, !68}
!118 = !{!52, !52, i64 0}
!119 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIiLb0EEEEEE", !13, i64 0}
!120 = !{!119, !119, i64 0}
!121 = distinct !{!121, !37}
!122 = distinct !{!122, !37}
!123 = !{!70, !13, i64 8}
!124 = !{!70, !16, i64 16}
!125 = !{ptr @_ZN6openzl9ExceptionD2Ev}
!126 = distinct !{!126, !37}
!127 = distinct !{!127, !37}
!128 = distinct !{!128, !37}
end_hunk_0
