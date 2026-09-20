Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/LocalParams?download=true
inline.NumInlined: 555
inline.NumDeleted: 343
begin_hunk_0_@_ZN6openzl11LocalParamsC2ERK14ZL_LocalParams:bb.a
  %i.ap = load ptr, ptr %1, align 8, !tbaa !93
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.02234
  %.sroa.0.0.copyload = load i64, ptr %i.aq, align 4
  invoke void @_ZN6openzl11LocalParams11addIntParamE11ZL_IntParam(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 %.sroa.0.0.copyload)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.ar = add nuw i64 %.02234, 1                  ; 2 uses
  %i.as = load i64, ptr %i.k, align 8, !tbaa !91
  %i.at = icmp ult i64 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph, label %._crit_edge, !llvm.loop !87

bb.h:                                             ; preds = %.lr.ph
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

._crit_edge37:                                    ; preds = %bb.l, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE7reserveEm.exit
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !94 ; 6 uses
  %i.ay = icmp ugt i64 %i.ax, 384307168202282325
  br i1 %i.ay, label %.invoke, label %bb.i

.invoke:                                          ; preds = %bb.a, %._crit_edge, %._crit_edge37
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #21
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %._crit_edge37
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !38
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !39  ; 4 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = sdiv exact i64 %i.be, 24
  %i.bg = icmp ult i64 %i.bf, %i.ax
  br i1 %i.bg, label %_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = sub i64 %i.bj, %i.bd                    ; 3 uses
  %i.bl = mul nuw nsw i64 %i.ax, 24
  %i.bm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #19
          to label %.noexc31 unwind label %bb.f   ; 4 uses

.noexc31:                                         ; preds = %_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE11_M_allocateEm.exit.i
  %i.bn = icmp sgt i64 %i.bk, 0
  br i1 %i.bn, label %bb.j, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

bb.j:                                             ; preds = %.noexc31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.bb, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i

_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %bb.j, %.noexc31
  %.not.i8.i29 = icmp eq ptr %i.bb, null
  br i1 %.not.i8.i29, label %_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #20
  %.pre43.pre = load i64, ptr %i.aw, align 8, !tbaa !94
  br label %_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI11ZL_RefParamSaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.k, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %.pre43 = phi i64 [ %.pre43.pre, %bb.k ], [ %i.ax, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i ]
  store ptr %i.bm, ptr %i.c, align 8, !tbaa !39
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bk
  store ptr %i.bo, ptr %i.bh, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.ax
  store ptr %i.bp, ptr %i.az, align 8, !tbaa !38
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
  %i.cd = load ptr, ptr %i.c, align 8, !tbaa !39  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !38
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
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.c, align 4
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.b, align 8, !tbaa !30
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !29
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !29   ; 4 uses
  %i.i = ptrtoint ptr %i.c to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 6 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775800
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.m  ; 2 uses
  %i.n = icmp ult i64 %2, %i.m
  %i.o = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.k ; 2 uses
  store i64 %1, ptr %i.s, align 4
  %i.t = icmp sgt i64 %i.k, 0
  br i1 %i.t, label %bb.e, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr align 4 %i.h, i64 %i.k, i1 false)
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorI11ZL_IntParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #20
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorI11ZL_IntParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.r, ptr %i.a, align 8, !tbaa !29
  store ptr %i.u, ptr %i.b, align 8, !tbaa !30
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.v, ptr %i.d, align 8, !tbaa !31
  br label %_ZNSt6vectorI11ZL_IntParamSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI11ZL_IntParamSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.b, %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.w = phi ptr [ %i.g, %bb.b ], [ %i.u, %_ZNSt6vectorI11ZL_IntParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
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
  %i.a = load i32, ptr %1, align 8, !tbaa !58
  tail call void @_ZN6openzl11LocalParams16insertKeyOrThrowEi(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !59   ; 4 uses
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #19, !noalias !109 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.c, i1 false), !noalias !109
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.f, i64 %i.c, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.g, align 8, !tbaa !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !62
  %.not.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = ptrtoint ptr %i.d to i64
  store i64 %i.m, ptr %i.j, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.n, ptr %i.i, align 8, !tbaa !61
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !65   ; 10 uses
  %i.p = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
          to label %.noexc9.a unwind label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i6

.noexc9.a:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i, %i.t    ; 2 uses
  %i.u = icmp ult i64 %2, %i.t
  %i.v = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i8 = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i8)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #19
          to label %.noexc10 unwind label %_ZNKSt14default_deleteIA_hEclIhEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i6 ; 10 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  %i.aa = ptrtoint ptr %i.d to i64
  store i64 %i.aa, ptr %i.z, align 8, !tbaa !64
  %.not10.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc10
  %i.ab = add i64 %i.p, -8
  %i.ac = sub i64 %i.ab, %i.q                     ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.af = add i64 %i.p, -8
  %i.ag = sub i64 %i.af, %i.q
  %i.ah = and i64 %i.ag, -8
  %i.ai = add i64 %i.ah, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.y, i64 %i.ai
  %scevgep26 = getelementptr i8, ptr %i.o, i64 %i.ai
  %bound0 = icmp ult ptr %i.y, %scevgep26
  %bound1 = icmp ult ptr %i.o, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.y, i64 %i.aj   ; 2 uses
  %i.al = getelementptr i8, ptr %i.o, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.am ; 2 uses
  %next.gep27 = getelementptr i8, ptr %i.o, i64 %i.am ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.an = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep27, align 8, !tbaa !64, !alias.scope !112, !noalias !110
  %wide.load28 = load <2 x i64>, ptr %i.an, align 8, !tbaa !64, !alias.scope !112, !noalias !110
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !64, !alias.scope !113, !noalias !112
  store <2 x i64> %wide.load28, ptr %i.ao, align 8, !tbaa !64, !alias.scope !113, !noalias !112
  %i.ap = getelementptr i8, ptr %next.gep27, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep27, align 8, !tbaa !64, !alias.scope !112, !noalias !110
  store <2 x ptr> splat (ptr null), ptr %i.ap, align 8, !tbaa !64, !alias.scope !112, !noalias !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i.preheader30

.lr.ph.i.i.i.i.preheader30:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.o, %vector.memcheck ], [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader30, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader30 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.ar = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !64, !alias.scope !111, !noalias !110
  store i64 %i.ar, ptr %.012.i.i.i.i, align 8, !tbaa !64, !alias.scope !110, !noalias !111
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !64, !alias.scope !111, !noalias !110
  %i.as = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.j
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !108

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc10
  %.0.lcssa.i.i.i.i = phi ptr [ %i.y, %.noexc10 ], [ %i.ak, %middle.block ], [ %i.at, %.lr.ph.i.i.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i, label %.noexc, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.r) #20
  br label %.noexc

.noexc:                                           ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i
  store ptr %i.y, ptr %i.h, align 8, !tbaa !65
  store ptr %i.au, ptr %i.i, align 8, !tbaa !61
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  store ptr %i.av, ptr %i.k, align 8, !tbaa !62
  br label %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit: ; preds = %.noexc, %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !35 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !35
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !34
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

bb.i:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EE9push_backEOS4_.exit
  %i.bd = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 4 uses
  %i.be = ptrtoint ptr %i.ay to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775800
  br i1 %i.bh, label %.noexc2, label %_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i

.noexc2:                                          ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #21
  unreachable

_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.bi = sdiv exact i64 %i.bg, 24                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.bi ; 2 uses
  %i.bj = icmp ult i64 %3, %i.bi
  %i.bk = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.bl = select i1 %i.bj, i64 384307168202282325, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = mul nuw nsw i64 %i.bl, 24
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #19 ; 5 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bg ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.bp = icmp sgt i64 %i.bg, 0
  br i1 %i.bp, label %bb.j, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr align 8 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorI12ZL_CopyParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.bn, ptr %i.aw, align 8, !tbaa !34
  store ptr %i.bq, ptr %i.ax, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.br, ptr %i.az, align 8, !tbaa !33
  br label %_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit

_ZNSt10unique_ptrIA_hSt14default_deleteIS0_EED2Ev.exit: ; preds = %bb.h, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.bs = phi ptr [ %i.bc, %bb.h ], [ %i.bq, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.bt = phi ptr [ %.pre, %bb.h ], [ %i.bn, %_ZNSt6vectorI12ZL_CopyParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !116
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = ptrtoint ptr %i.bt to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !117
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.h, ptr %i.c, align 8, !tbaa !40
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !39
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE9push_backERKS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !39   ; 4 uses
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
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.n  ; 2 uses
  %i.o = icmp ult i64 %2, %i.n
  %i.p = tail call i64 @llvm.umin.i64(i64 %2, i64 384307168202282325)
  %i.q = select i1 %i.o, i64 384307168202282325, i64 %i.p ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.r = mul nuw nsw i64 %i.q, 24
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #19 ; 5 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.l ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !69
  %i.u = icmp sgt i64 %i.l, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorI11ZL_RefParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorI11ZL_RefParamSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #20
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !39
  store ptr %i.v, ptr %i.c, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.q
  store ptr %i.w, ptr %i.e, align 8, !tbaa !38
  br label %_ZNSt6vectorI11ZL_RefParamSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorI11ZL_RefParamSaIS0_EE9push_backERKS0_.exit: ; preds = %bb.b, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.x = phi ptr [ %i.h, %bb.b ], [ %i.v, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ]
  %i.y = phi ptr [ %.pre, %bb.b ], [ %i.s, %_ZNSt6vectorI11ZL_RefParamSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.y, ptr %i.z, align 8, !tbaa !118
  %i.aa = ptrtoint ptr %i.x to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = sdiv exact i64 %i.ac, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !65     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIA_hSt14default_deleteIS1_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !64 ; 2 uses
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
  %.pr = load ptr, ptr %0, align 8, !tbaa !65
  br label %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit

_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10unique_ptrIA_hSt14default_deleteIS1_EESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIA_hSt14default_deleteIS1_EES4_EvT_S6_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !62
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !120
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
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !39   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.ab = load <2 x ptr>, ptr %i.x, align 8, !tbaa !67
  store <2 x ptr> %i.ab, ptr %i.w, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !38
end_hunk_0
