Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpDenseSymMatrix?download=true
inline.NumInlined: 571
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5Ipopt15DependentResultIdEC2ERKdRKSt6vectorIPKNS_12TaggedObjectESaIS7_EERKS4_IdSaIdEE:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.p, ptr %i.q, align 8, !tbaa !118
  store i32 0, ptr %i.o, align 4, !tbaa !73
  %i.r = getelementptr i8, ptr %i.o, i64 4        ; 3 uses
  %i.s = add nsw i64 %i.l, -1                     ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc21
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.s, 2   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !73
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i

_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc21
  %.0.i.i.i.i.i = phi ptr [ %i.u, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.r, %.noexc21 ], [ null, %_ZNSt6vectorIjSaIjEE17_S_check_init_lenEmRKS0_.exit.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.i.i.i.i.i, ptr %i.v, align 8, !tbaa !115
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !117  ; 2 uses
  %i.z = load ptr, ptr %3, align 8, !tbaa !71     ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %.not.i.i.i.i22 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i22, label %.noexc24, label %bb.d

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.ad = icmp ugt i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %.noexc.i.i, label %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, !prof !210

.noexc.i.i:                                       ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc23 unwind label %bb.i

.noexc23:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ae = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #19
          to label %.noexc24 unwind label %bb.i

.noexc24:                                         ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i
  %i.af = phi ptr [ null, %_ZNSt12_Vector_baseIjSaIjEEC2EmRKS0_.exit.thread.i ], [ %i.ae, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.af, ptr %i.w, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !72
  %i.aj = load ptr, ptr %3, align 8, !tbaa !211   ; 3 uses
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !211
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 8
  br i1 %i.ao, label %bb.e, label %bb.f, !prof !89

bb.e:                                             ; preds = %.noexc24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.af, ptr align 8 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.f:                                             ; preds = %.noexc24
  %i.ap = icmp eq i64 %i.an, 8
  br i1 %i.ap, label %bb.g, label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = load double, ptr %i.aj, align 8, !tbaa !58
  store double %i.aq, ptr %i.af, align 8, !tbaa !58
  br label %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.e, %bb.f, %bb.g
  %i.ar = getelementptr inbounds i8, ptr %i.af, i64 %i.an
  store ptr %i.ar, ptr %i.ag, align 8, !tbaa !117
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !67  ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = trunc i64 %i.ax to i32
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit
  ret void

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.i:                                             ; preds = %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit, %bb.o
  %i.bc = phi ptr [ %i.bw, %bb.o ], [ %i.at, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ] ; 2 uses
  %i.bd = phi ptr [ %i.bx, %bb.o ], [ %i.as, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %_ZNSt6vectorIdSaIdEEC2ERKS1_.exit ] ; 5 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %i.bf, null
  br i1 %.not, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  invoke void @_ZN5Ipopt8Observer13RequestAttachENS0_10NotifyTypeEPKNS_7SubjectE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 2, ptr noundef nonnull %i.bg)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = load ptr, ptr %2, align 8, !tbaa !65    ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !69
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !62
  %i.bm = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv
  store i32 %i.bl, ptr %i.bn, align 4, !tbaa !73
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !67
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.bo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bp = load ptr, ptr %i.w, align 8, !tbaa !71  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = load ptr, ptr %i.ai, align 8, !tbaa !72
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.n:                                             ; preds = %.lr.ph
  %i.bu = load ptr, ptr %i.e, align 8, !tbaa !116
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  store i32 0, ptr %i.bv, align 4, !tbaa !73
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.bw = phi ptr [ %i.bh, %bb.k ], [ %i.bc, %bb.n ] ; 2 uses
  %i.bx = phi ptr [ %.pre, %bb.k ], [ %i.bd, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %sext = shl i64 %i.ca, 29
  %i.cb = ashr i64 %sext, 32
  %i.cc = icmp slt i64 %indvars.iv.next, %i.cb
  br i1 %i.cc, label %.lr.ph, label %._crit_edge, !llvm.loop !208

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.m, %bb.l, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.i ], [ %i.bo, %bb.l ], [ %i.bo, %bb.m ] ; 2 uses
  %i.cd = load ptr, ptr %i.e, align 8, !tbaa !116 ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i25, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !118
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cd, i64 noundef %i.ci) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.p, %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.h ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit ], [ %.pn, %bb.p ]
  tail call void @_ZN5Ipopt8ObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #18
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt8Observer13RequestAttachENS0_10NotifyTypeEPKNS_7SubjectE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %.not.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %2, ptr %i.c, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.f, ptr %i.b, align 8, !tbaa !91
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !120  ; 4 uses
  %i.h = ptrtoint ptr %i.c to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 6 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #22
  unreachable

_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3
  %mul2.i.i = ashr exact i64 %i.j, 2
  %3 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i, i64 1) ; 2 uses
  %i.m = icmp ult i64 %3, %i.l
  %i.n = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.o = select i1 %i.m, i64 1152921504606846975, i64 %i.n ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #19 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.j ; 2 uses
  store ptr %2, ptr %i.r, align 8, !tbaa !88
  %i.s = icmp sgt i64 %i.j, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPKN5Ipopt7SubjectESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.not.i17.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.w) #20
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !120
  store ptr %i.t, ptr %i.b, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  store ptr %i.x, ptr %i.d, align 8, !tbaa !119
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.b, %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !121 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit
  store ptr %0, ptr %i.aa, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !121
  br label %_ZNK5Ipopt7Subject14AttachObserverENS_8Observer10NotifyTypeEPS1_.exit

bb.h:                                             ; preds = %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE9push_backERKS3_.exit
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !81  ; 4 uses
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.ae to i64               ; 2 uses
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775800
  br i1 %i.ai, label %bb.i, label %_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #22
  unreachable

_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.aj = ashr exact i64 %i.ah, 3
  %mul2.i.i.i = ashr exact i64 %i.ah, 2
  %4 = tail call i64 @llvm.umax.i64(i64 %mul2.i.i.i, i64 1) ; 2 uses
  %i.ak = icmp ult i64 %4, %i.aj
  %i.al = tail call i64 @llvm.umin.i64(i64 %4, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #19 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ah ; 2 uses
  store ptr %0, ptr %i.ap, align 8, !tbaa !84
  %i.aq = icmp sgt i64 %i.ah, 0
  br i1 %i.aq, label %bb.j, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %i.ae, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPN5Ipopt8ObserverESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !82
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.au) #20
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.ao, ptr %i.y, align 8, !tbaa !81
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !121
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  store ptr %i.av, ptr %i.ab, align 8, !tbaa !82
  br label %_ZNK5Ipopt7Subject14AttachObserverENS_8Observer10NotifyTypeEPS1_.exit

_ZNK5Ipopt7Subject14AttachObserverENS_8Observer10NotifyTypeEPS1_.exit: ; preds = %bb.g, %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt15DependentResultIdED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt15DependentResultIdEE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #20
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !116  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !118
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt8ObserverE, i64 16), ptr %0, align 8, !tbaa !15
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !91   ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !120  ; 2 uses
  %.not.i4 = icmp eq ptr %i.q, %i.r
  br i1 %.not.i4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.t, %i.s
  %i.v = ashr exact i64 %i.u, 3
  br label %bb.f

bb.d:                                             ; preds = %bb.f
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %._crit_edge, label %bb.f, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.d, %_ZNSt6vectorIjSaIjEED2Ev.exit
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !120  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN5Ipopt8ObserverD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !119
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #20, !inline_history !212
  br label %_ZN5Ipopt8ObserverD2Ev.exit

bb.f:                                             ; preds = %.lr.ph, %bb.d
  %.0.i5 = phi i64 [ %i.v, %.lr.ph ], [ %i.ac, %bb.d ]
  %i.ac = add i64 %.0.i5, -1                      ; 3 uses
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !120
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ac
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !88
  invoke void @_ZN5Ipopt8Observer13RequestDetachENS0_10NotifyTypeEPKNS_7SubjectE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, ptr noundef %i.af)
          to label %bb.d unwind label %bb.g, !llvm.loop !3, !inline_history !212

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #21, !inline_history !212
  unreachable

_ZN5Ipopt8ObserverD2Ev.exit:                      ; preds = %._crit_edge, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt15DependentResultIdED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZN5Ipopt15DependentResultIdED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #18
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt15DependentResultIdE19ReceiveNotificationENS_8Observer10NotifyTypeEPKNS_7SubjectE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = add i32 %1, -1
  %or.cond = icmp ult i32 %i.a, 2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.b, align 8, !tbaa !110
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt8ObserverD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Ipopt8ObserverE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !91   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %.not4 = icmp eq ptr %i.c, %i.d
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub i64 %i.f, %i.e
  %i.h = ashr exact i64 %i.g, 3
  br label %bb.d

bb.b:                                             ; preds = %bb.d
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !120  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #20
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %.05 = phi i64 [ %i.h, %.lr.ph ], [ %i.o, %bb.b ]
  %i.o = add i64 %.05, -1                         ; 3 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !120
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88
  invoke void @_ZN5Ipopt8Observer13RequestDetachENS0_10NotifyTypeEPKNS_7SubjectE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, ptr noundef %i.r)
          to label %bb.b unwind label %bb.e, !llvm.loop !3

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #21
  unreachable
}
end_hunk_0
begin_hunk_1_@_ZN5Ipopt8Observer13RequestDetachENS0_10NotifyTypeEPKNS_7SubjectE:bb.a
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit46, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit48, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.h ], [ %i.aj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit48 ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit46 ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.c ] ; 2 uses
  %.not11 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.d
  br i1 %.not11, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.ak = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.al = sub i64 %i.ak, %i.f
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %.not.i.i = icmp eq ptr %i.an, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.e, %i.ao                     ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 8
  br i1 %i.aq, label %bb.m, label %bb.n, !prof !89

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.am, ptr nonnull align 8 %i.an, i64 %i.ap, i1 false)
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !91
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.n:                                             ; preds = %bb.l
  %i.ar = icmp eq i64 %i.ap, 8
  br i1 %i.ar, label %bb.o, label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !88
  store ptr %i.as, ptr %i.am, align 8, !tbaa !88
  br label %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit

_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit: ; preds = %bb.k, %bb.m, %bb.n, %bb.o
  %i.at = phi ptr [ %i.d, %bb.o ], [ %i.d, %bb.n ], [ %.pre.i.i, %bb.m ], [ %i.d, %bb.k ]
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 -8
  store ptr %i.au, ptr %i.c, align 8, !tbaa !91
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZNSt6vectorIPKN5Ipopt7SubjectESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EE.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !80 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !80 ; 7 uses
  %i.az = ptrtoint ptr %i.ay to i64               ; 3 uses
  %i.ba = ptrtoint ptr %i.aw to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba                    ; 3 uses
  %i.bc = ashr i64 %i.bb, 5                       ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %i.be = and i64 %i.bb, -32
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.aw, i64 %i.be ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.br, %bb.t ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.bq, %bb.t ] ; 9 uses
  %i.bf = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !84
  %i.bg = icmp eq ptr %i.bf, %0
  br i1 %i.bg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !84
  %i.bj = icmp eq ptr %i.bi, %0
  br i1 %i.bj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !84
  %i.bm = icmp eq ptr %i.bl, %0
  br i1 %i.bm, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit54, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !84
  %i.bp = icmp eq ptr %i.bo, %0
  br i1 %i.bp, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit56, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.br = add nsw i64 %.052.i.i.i.i, -1
  %i.bs = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.bs, label %bb.p, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !213

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.t
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.az, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bb, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.aw, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPKN5Ipopt7SubjectESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.thread ] ; 5 uses
  %i.bt = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.bt, label %_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit [
    i64 3, label %bb.u
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.u:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bu = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !84
  %i.bv = icmp eq ptr %i.bu, %0
  br i1 %i.bv, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.v, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.bw, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bx = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !84
  %i.by = icmp eq ptr %i.bx, %0
  br i1 %i.by, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.w, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.bz, %bb.w ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ca = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !84
  %i.cb = icmp eq ptr %i.ca, %0
  %spec.select.i.i.i.i = select i1 %i.cb, ptr %.sroa.032.2.i.i.i.i, ptr %i.ay
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit54: ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit56: ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i: ; preds = %bb.p, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit54, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit56, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.u
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.u ], [ %i.ce, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit56 ], [ %i.cc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.cd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i.loopexit.split.loop.exit54 ], [ %.sroa.032.051.i.i.i.i, %bb.p ] ; 2 uses
  %.not9.i = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.ay
  br i1 %.not9.i, label %_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i
  %i.cf = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.cg = sub i64 %i.cf, %i.ba
  %i.ch = getelementptr inbounds i8, ptr %i.aw, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ci, %i.ay
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.az, %i.cj                    ; 3 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.z, label %bb.aa, !prof !89

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ch, ptr nonnull align 8 %i.ci, i64 %i.ck, i1 false)
  %.pre.i.i.i4 = load ptr, ptr %i.ax, align 8, !tbaa !121
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %bb.ab, label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.cn = load ptr, ptr %i.ci, align 8, !tbaa !84
  store ptr %i.cn, ptr %i.ch, align 8, !tbaa !84
  br label %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i

_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i: ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x
  %i.co = phi ptr [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %.pre.i.i.i4, %bb.z ], [ %i.ay, %bb.x ]
  %i.cp = getelementptr inbounds i8, ptr %i.co, i64 -8
  store ptr %i.cp, ptr %i.ax, align 8, !tbaa !121
  br label %_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit

_ZNK5Ipopt7Subject14DetachObserverENS_8Observer10NotifyTypeEPS1_.exit: ; preds = %_ZNSt6vectorIPN5Ipopt8ObserverESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EE.exit.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN5Ipopt8ObserverESt6vectorIS4_SaIS4_EEEES4_ET_SA_SA_RKT0_.exit.i, %._crit_edge.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { builtin allocsize(0) }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !57}
!1 = distinct !{null}
!2 = distinct !{!2, !57}
!3 = distinct !{!3, !57}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN5Ipopt16ReferencedObjectE", !9, i64 8}
!13 = !{!12, !9, i64 8}
!14 = !{!"vtable pointer", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"p1 _ZTSN5Ipopt11MatrixSpaceE", !16, i64 0}
!18 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_11MatrixSpaceEEE", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"any p2 pointer", !16, i64 0}
!21 = !{!"p2 _ZTSN5Ipopt8ObserverE", !20, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"_ZTSNSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE12_Vector_implE", !22, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIPN5Ipopt8ObserverESaIS2_EE", !23, i64 0}
!25 = !{!"_ZTSSt6vectorIPN5Ipopt8ObserverESaIS2_EE", !24, i64 0}
!26 = !{!"_ZTSN5Ipopt7SubjectE", !25, i64 8}
!27 = !{!"_ZTSN5Ipopt12TaggedObjectE", !12, i64 0, !26, i64 16, !9, i64 48, !9, i64 52}
!28 = !{!"bool", !8, i64 0}
!29 = !{!"_ZTSN5Ipopt6MatrixE", !27, i64 0, !18, i64 56, !9, i64 64, !28, i64 68}
!30 = !{!"p1 _ZTSN5Ipopt14SymMatrixSpaceE", !16, i64 0}
!31 = !{!"_ZTSN5Ipopt9SymMatrixE", !29, i64 0, !30, i64 72}
!32 = !{!31, !30, i64 72}
!33 = !{!"p1 _ZTSN5Ipopt19DenseSymMatrixSpaceE", !16, i64 0}
!34 = !{!"p1 double", !16, i64 0}
!35 = !{!"_ZTSN5Ipopt14DenseSymMatrixE", !31, i64 0, !33, i64 80, !34, i64 88, !28, i64 96}
!36 = !{!"_ZTSN5Ipopt11MatrixSpaceE", !12, i64 0, !9, i64 12, !9, i64 16}
!37 = !{!36, !9, i64 16}
!38 = !{!36, !9, i64 12}
!39 = !{!35, !34, i64 88}
!40 = !{!35, !28, i64 96}
!41 = !{!"p1 _ZTSN5Ipopt11VectorSpaceE", !16, i64 0}
!42 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_11VectorSpaceEEE", !41, i64 0}
!43 = !{!"p1 _ZTSNSt7__cxx114listIPN5Ipopt15DependentResultIdEESaIS4_EEE", !16, i64 0}
!44 = !{!"_ZTSN5Ipopt13CachedResultsIdEE", !9, i64 8, !43, i64 16}
!45 = !{!"double", !8, i64 0}
!46 = !{!"_ZTSN5Ipopt6VectorE", !27, i64 0, !42, i64 56, !44, i64 64, !9, i64 88, !45, i64 96, !9, i64 104, !45, i64 112, !9, i64 120, !45, i64 128, !9, i64 136, !45, i64 144, !9, i64 152, !45, i64 160, !9, i64 168, !45, i64 176, !9, i64 184, !45, i64 192, !9, i64 200, !28, i64 204}
!47 = !{!"p1 _ZTSN5Ipopt16DenseVectorSpaceE", !16, i64 0}
!48 = !{!"_ZTSN5Ipopt11DenseVectorE", !46, i64 0, !47, i64 208, !34, i64 216, !34, i64 224, !28, i64 232, !28, i64 233, !45, i64 240}
!49 = !{!48, !34, i64 216}
!50 = !{!48, !28, i64 232}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!48, !28, i64 233}
!54 = !{!48, !47, i64 208}
!55 = !{!"_ZTSN5Ipopt11VectorSpaceE", !12, i64 0, !9, i64 12}
!56 = !{!55, !9, i64 12}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!45, !45, i64 0}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"llvm.loop.unroll.disable"}
!62 = !{!27, !9, i64 48}
!63 = !{!"p2 _ZTSN5Ipopt12TaggedObjectE", !20, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseIPKN5Ipopt12TaggedObjectESaIS3_EE17_Vector_impl_dataE", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!64, !63, i64 0}
!66 = !{!64, !63, i64 16}
!67 = !{!64, !63, i64 8}
!68 = !{!"p1 _ZTSN5Ipopt12TaggedObjectE", !16, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!71 = !{!70, !34, i64 0}
!72 = !{!70, !34, i64 16}
!73 = !{!9, !9, i64 0}
!74 = !{!"p1 _ZTSN5Ipopt19DenseGenMatrixSpaceE", !16, i64 0}
!75 = !{!"_ZTSN5Ipopt14DenseGenMatrix13FactorizationE", !8, i64 0}
!76 = !{!"p1 int", !16, i64 0}
!77 = !{!"_ZTSN5Ipopt14DenseGenMatrixE", !29, i64 0, !74, i64 72, !34, i64 80, !28, i64 88, !75, i64 92, !76, i64 96}
!78 = !{!77, !34, i64 80}
!79 = !{!"long", !8, i64 0}
!80 = !{!21, !21, i64 0}
!81 = !{!22, !21, i64 0}
!82 = !{!22, !21, i64 16}
!83 = !{!"p1 _ZTSN5Ipopt8ObserverE", !16, i64 0}
!84 = !{!83, !83, i64 0}
!85 = !{!"p2 _ZTSN5Ipopt7SubjectE", !20, i64 0}
!86 = !{!85, !85, i64 0}
!87 = !{!"p1 _ZTSN5Ipopt7SubjectE", !16, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!90 = !{!"_ZTSNSt12_Vector_baseIPKN5Ipopt7SubjectESaIS3_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!91 = !{!90, !85, i64 8}
!92 = !{!44, !43, i64 16}
!93 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !16, i64 0}
!94 = !{!"_ZTSNSt8__detail15_List_node_baseE", !93, i64 0, !93, i64 8}
!95 = !{!94, !93, i64 0}
!96 = !{!"p1 _ZTSN5Ipopt15DependentResultIdEE", !16, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"_ZTSNSt12_Vector_baseIPKN5Ipopt7SubjectESaIS3_EE12_Vector_implE", !90, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseIPKN5Ipopt7SubjectESaIS3_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorIPKN5Ipopt7SubjectESaIS3_EE", !99, i64 0}
!101 = !{!"_ZTSN5Ipopt8ObserverE", !100, i64 8}
!102 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !76, i64 0, !76, i64 8, !76, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !102, i64 0}
!104 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !103, i64 0}
!105 = !{!"_ZTSSt6vectorIjSaIjEE", !104, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !70, i64 0}
!107 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !106, i64 0}
!108 = !{!"_ZTSSt6vectorIdSaIdEE", !107, i64 0}
!109 = !{!"_ZTSN5Ipopt15DependentResultIdEE", !101, i64 0, !28, i64 32, !45, i64 40, !105, i64 48, !108, i64 72}
!110 = !{!109, !28, i64 32}
!111 = !{!"_ZTSNSt8__detail17_List_node_headerE", !94, i64 0, !79, i64 16}
!112 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EE10_List_implE", !111, i64 0}
!113 = !{!"_ZTSNSt7__cxx1110_List_baseIPN5Ipopt15DependentResultIdEESaIS4_EEE", !112, i64 0}
!114 = !{!113, !79, i64 16}
!115 = !{!102, !76, i64 8}
!116 = !{!102, !76, i64 0}
!117 = !{!70, !34, i64 8}
!118 = !{!102, !76, i64 16}
!119 = !{!90, !85, i64 16}
!120 = !{!90, !85, i64 0}
!121 = !{!22, !21, i64 8}
!122 = !{!29, !9, i64 64}
!123 = !{!35, !33, i64 80}
!124 = distinct !{ptr @_ZN5Ipopt6MatrixD2Ev, null, null}
!125 = !{ptr @_ZN5Ipopt14DenseSymMatrixD0Ev}
!126 = distinct !{!126, !57}
!127 = distinct !{!127, !57, !59, !60}
!128 = distinct !{!128, !61}
!129 = distinct !{!129, !57}
!130 = distinct !{!130, !57, !59}
!131 = distinct !{!131, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !57, !59, !60}
!135 = distinct !{!135, !57}
!136 = distinct !{!136, !57, !59}
!137 = distinct !{!137, !"LVerDomain"}
!138 = distinct !{!138, !137}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !57, !59, !60}
!141 = distinct !{!141, !57}
!142 = distinct !{!142, !57, !59}
!143 = !{!132}
!144 = !{!133}
!145 = !{!138}
!146 = !{!139}
!147 = distinct !{!147, !57}
!148 = distinct !{!148, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi"}
!149 = distinct !{!149, !148, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi: argument 0"}
!150 = distinct !{!150, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi"}
!151 = distinct !{!151, !150, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi: argument 0"}
!152 = distinct !{null}
!153 = distinct !{null, null}
!154 = distinct !{!154, !57}
!155 = distinct !{!155, !57}
!156 = distinct !{!156, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi"}
!157 = distinct !{!157, !156, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi: argument 0"}
!158 = distinct !{!158, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi"}
!159 = distinct !{!159, !158, !"_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi: argument 0"}
!160 = distinct !{!160, !57}
!161 = !{!"p1 _ZTSN5Ipopt8SmartPtrINS_6VectorEEE", !16, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt8SmartPtrINS0_6VectorEEESaIS3_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!163 = !{!162, !161, i64 0}
!164 = !{!149}
!165 = !{!"p1 _ZTSN5Ipopt6VectorE", !16, i64 0}
!166 = !{!"_ZTSN5Ipopt8SmartPtrINS_6VectorEEE", !165, i64 0}
!167 = !{!166, !165, i64 0}
!168 = !{!"p1 _ZTSN5Ipopt8SmartPtrIKNS_6VectorEEE", !16, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseIN5Ipopt8SmartPtrIKNS0_6VectorEEESaIS4_EE17_Vector_impl_dataE", !168, i64 0, !168, i64 8, !168, i64 16}
!170 = !{!169, !168, i64 0}
!171 = !{!"_ZTSN5Ipopt8SmartPtrIKNS_6VectorEEE", !165, i64 0}
end_hunk_1
