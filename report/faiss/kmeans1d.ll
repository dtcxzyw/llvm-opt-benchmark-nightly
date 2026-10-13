Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/kmeans1d?download=true
inline.NumInlined: 735
inline.NumDeleted: 376
begin_hunk_0_@_ZN5faiss10smawk_implERKSt6vectorIlSaIlEES4_RKSt8functionIFfllEEPl:bb.a
  %i.ad = ptrtoint ptr %i.y to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 6 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #19
          to label %.noexc27 unwind label %.loopexit ; 4 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  %i.ap = load i64, ptr %i.ab, align 8, !tbaa !17
  store i64 %i.ap, ptr %i.ao, align 8, !tbaa !17
  %i.aq = icmp sgt i64 %i.af, 0
  br i1 %i.aq, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc27
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.aa, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc27
  %.not.i17.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #20
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  %.pre61 = load ptr, ptr %i.a, align 8, !tbaa !24
  %.pre62 = load ptr, ptr %0, align 8, !tbaa !19
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.h
  %i.as = phi ptr [ %.pre62, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.w, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %.pre61, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.x, %bb.h ] ; 2 uses
  %i.au = phi ptr [ %i.ar, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.y, %bb.h ] ; 3 uses
  %.pn46 = phi ptr [ %i.ao, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.z, %bb.h ]
  %i.av = phi ptr [ %i.an, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.aa, %bb.h ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn46, i64 8 ; 2 uses
  %i.ax = add i64 %.037, 2                        ; 2 uses
  %i.ay = ptrtoint ptr %i.at to i64
  %i.az = ptrtoint ptr %i.as to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 3
  %i.bc = icmp ult i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.g, label %._crit_edge, !llvm.loop !83

.loopexit:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  invoke void @_ZN5faiss11interpolateERKSt6vectorIlSaIlEES4_RKSt8functionIFfllEEPl(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.024, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i28 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = ptrtoint ptr %i.u to i64
  %i.be = ptrtoint ptr %i.v to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.bf) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bg = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i29 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIlSaIlEED2Ev.exit30, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit30

_ZNSt6vectorIlSaIlEED2Ev.exit30:                  ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZNSt6vectorIlSaIlEED2Ev.exit30
  ret void

bb.r:                                             ; preds = %bb.m, %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.r
  %i.bn = phi ptr [ %i.u, %bb.r ], [ %i.y, %.loopexit ], [ %i.y, %.loopexit.split-lp ]
  %i.bo = phi ptr [ %i.v, %bb.r ], [ %i.aa, %.loopexit ], [ %i.aa, %.loopexit.split-lp ] ; 3 uses
  %.pn = phi { ptr, i32 } [ %i.bm, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i31 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIlSaIlEED2Ev.exit32, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.br) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit32

_ZNSt6vectorIlSaIlEED2Ev.exit32:                  ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit32, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit32 ], [ %i.o, %bb.d ]
  %i.bs = load ptr, ptr %4, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIlSaIlEED2Ev.exit34, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !25
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit34

_ZNSt6vectorIlSaIlEED2Ev.exit34:                  ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss5smawkEllRKSt8functionIFfllEEPl(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector", align 8       ; 8 uses
  %5 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = icmp ugt i64 %0, 1152921504606846975
  br i1 %i.a, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %0, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %.noexc12

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br label %bb.b

.noexc12:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.b = shl nuw nsw i64 %0, 3
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #19 ; 6 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %0 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !25
  store i64 0, ptr %i.c, align 8, !tbaa !17
  %i.f = getelementptr i8, ptr %i.c, i64 8        ; 3 uses
  %i.g = add nsw i64 %0, -1                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc12
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.g, 3   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i.i.i.i.i.i.i
  br label %bb.b

bb.b:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc12, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i
  %i.j = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.d, %.noexc12 ], [ %i.d, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 2 uses
  %i.k = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.c, %.noexc12 ], [ %i.c, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 11 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.f, %.noexc12 ], [ %i.i, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.l, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.m = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.m, label %bb.c, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i13

bb.c:                                             ; preds = %bb.b
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #18
          to label %.noexc19 unwind label %bb.i

.noexc19:                                         ; preds = %bb.c
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i13: ; preds = %bb.b
  %.not.i.i.i.i14 = icmp eq i64 %1, 0
  br i1 %.not.i.i.i.i14, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i18, label %bb.d

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i18: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i13
  %i.n = shl nuw nsw i64 %1, 3
  %i.o = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19
          to label %.noexc20 unwind label %bb.i   ; 6 uses

.noexc20:                                         ; preds = %bb.d
  store ptr %i.o, ptr %5, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %1 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.p, ptr %i.q, align 8, !tbaa !25
  store i64 0, ptr %i.o, align 8, !tbaa !17
  %i.r = getelementptr i8, ptr %i.o, i64 8        ; 3 uses
  %i.s = add nsw i64 %1, -1                       ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.e, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i15

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i15: ; preds = %.noexc20
  %.idx.i.i.i.i.i.i.i16 = shl nuw nsw i64 %i.s, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i16, i1 false), !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i.i.i.i.i16
  br label %bb.e

bb.e:                                             ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i15, %.noexc20, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i18
  %i.v = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i18 ], [ %i.p, %.noexc20 ], [ %i.p, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i15 ] ; 2 uses
  %i.w = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i18 ], [ %i.o, %.noexc20 ], [ %i.o, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i15 ] ; 11 uses
  %.0.i.i.i.i.i17 = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i18 ], [ %i.r, %.noexc20 ], [ %i.u, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i15 ] ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i.i.i.i.i17, ptr %i.x, align 8, !tbaa !24
  %i.y = icmp eq ptr %i.k, %.0.i.i.i.i.i
  br i1 %i.y, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %6 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %7 = ptrtoaddr ptr %i.k to i64
  %i.z = add i64 %6, -8
  %i.aa = sub i64 %i.z, %7                        ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader59, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 4 uses
  %i.ad = shl i64 %n.vec, 3
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.af = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.k, i64 %i.af ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %vec.ind, ptr %next.gep, align 8, !tbaa !17
  store <2 x i64> %step.add, ptr %i.ag, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i.preheader59

.lr.ph.i.preheader59:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.sroa.02.05.i.ph = phi ptr [ %i.k, %.lr.ph.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader59, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader59 ] ; 2 uses
  %.sroa.02.05.i = phi ptr [ %i.ai, %.lr.ph.i ], [ %.sroa.02.05.i.ph, %.lr.ph.i.preheader59 ] ; 2 uses
  store i64 %indvars.iv.i, ptr %.sroa.02.05.i, align 8, !tbaa !17
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i, i64 8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %.0.i.i.i.i.i
  br i1 %i.aj, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !85

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit: ; preds = %.lr.ph.i, %middle.block, %bb.e
  %i.ak = icmp eq ptr %i.w, %.0.i.i.i.i.i17
  br i1 %i.ak, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit27, label %.lr.ph.i23.preheader

.lr.ph.i23.preheader:                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  %8 = ptrtoaddr ptr %.0.i.i.i.i.i17 to i64
  %9 = ptrtoaddr ptr %i.w to i64
  %i.al = add i64 %8, -8
  %i.am = sub i64 %i.al, %9                       ; 2 uses
  %i.an = lshr i64 %i.am, 3
  %i.ao = add nuw nsw i64 %i.an, 1                ; 2 uses
  %min.iters.check44 = icmp ult i64 %i.am, 24
  br i1 %min.iters.check44, label %.lr.ph.i23.preheader58, label %vector.ph45

vector.ph45:                                      ; preds = %.lr.ph.i23.preheader
  %n.vec46 = and i64 %i.ao, 4611686018427387900   ; 4 uses
  %i.ap = shl i64 %n.vec46, 3
  %i.aq = getelementptr i8, ptr %i.w, i64 %i.ap
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph45
  %index48 = phi i64 [ 0, %vector.ph45 ], [ %index.next52, %vector.body47 ] ; 2 uses
  %vec.ind49 = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph45 ], [ %vec.ind.next53, %vector.body47 ] ; 3 uses
  %step.add50 = add nuw <2 x i64> %vec.ind49, splat (i64 2)
  %i.ar = shl i64 %index48, 3
  %next.gep51 = getelementptr i8, ptr %i.w, i64 %i.ar ; 2 uses
  %i.as = getelementptr i8, ptr %next.gep51, i64 16
  store <2 x i64> %vec.ind49, ptr %next.gep51, align 8, !tbaa !17
  store <2 x i64> %step.add50, ptr %i.as, align 8, !tbaa !17
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %vec.ind.next53 = add nuw <2 x i64> %vec.ind49, splat (i64 4)
  %i.at = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.at, label %middle.block54, label %vector.body47, !llvm.loop !86

middle.block54:                                   ; preds = %vector.body47
  %cmp.n55 = icmp eq i64 %i.ao, %n.vec46
  br i1 %cmp.n55, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit27, label %.lr.ph.i23.preheader58

.lr.ph.i23.preheader58:                           ; preds = %.lr.ph.i23.preheader, %middle.block54
  %indvars.iv.i24.ph = phi i64 [ 0, %.lr.ph.i23.preheader ], [ %n.vec46, %middle.block54 ]
  %.sroa.02.05.i25.ph = phi ptr [ %i.w, %.lr.ph.i23.preheader ], [ %i.aq, %middle.block54 ]
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %.lr.ph.i23.preheader58, %.lr.ph.i23
  %indvars.iv.i24 = phi i64 [ %indvars.iv.next.i26, %.lr.ph.i23 ], [ %indvars.iv.i24.ph, %.lr.ph.i23.preheader58 ] ; 2 uses
  %.sroa.02.05.i25 = phi ptr [ %i.au, %.lr.ph.i23 ], [ %.sroa.02.05.i25.ph, %.lr.ph.i23.preheader58 ] ; 2 uses
  store i64 %indvars.iv.i24, ptr %.sroa.02.05.i25, align 8, !tbaa !17
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i24, 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i25, i64 8 ; 2 uses
  %i.av = icmp eq ptr %i.au, %.0.i.i.i.i.i17
  br i1 %i.av, label %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit27, label %.lr.ph.i23, !llvm.loop !87

_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit27: ; preds = %.lr.ph.i23, %middle.block54, %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit
  invoke void @_ZN5faiss10smawk_implERKSt6vectorIlSaIlEES4_RKSt8functionIFfllEEPl(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit27
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = ptrtoint ptr %i.v to i64
  %i.ax = ptrtoint ptr %i.w to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ay) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i28 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.az = ptrtoint ptr %i.j to i64
  %i.ba = ptrtoint ptr %i.k to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.bb) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit31

bb.j:                                             ; preds = %_ZSt4iotaIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEiEvT_S7_T0_.exit27
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIlSaIlEED2Ev.exit31, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = ptrtoint ptr %i.v to i64
  %i.bf = ptrtoint ptr %i.w to i64
  %i.bg = sub i64 %i.be, %i.bf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.bg) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit31

_ZNSt6vectorIlSaIlEED2Ev.exit31:                  ; preds = %bb.k, %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.i ], [ %i.bd, %bb.j ], [ %i.bd, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %.not.i.i.i32 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIlSaIlEED2Ev.exit33, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit31
  %i.bh = ptrtoint ptr %i.j to i64
  %i.bi = ptrtoint ptr %i.k to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.bj) #20
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit33

_ZNSt6vectorIlSaIlEED2Ev.exit33:                  ; preds = %bb.l, %_ZNSt6vectorIlSaIlEED2Ev.exit31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss5smawkEllPKfPl(i64 noundef %0, i64 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.std::function", align 8     ; 12 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !17
  store ptr %2, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.b, ptr %4, align 8, !tbaa !43
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !15
  store ptr @"_ZNSt17_Function_handlerIFfllEZN5faiss5smawkEllPKfPlE3$_0E9_M_invokeERKSt9_Any_dataOlSA_", ptr %i.d, align 8, !tbaa !23
  store ptr @"_ZNSt17_Function_handlerIFfllEZN5faiss5smawkEllPKfPlE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr %i.c, align 8, !tbaa !21
  invoke void @_ZN5faiss5smawkEllRKSt8functionIFfllEEPl(i64 noundef %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = invoke noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %.not.i3 = icmp eq ptr %i.j, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #22
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef float @"_ZNSt17_Function_handlerIFfllEZN5faiss5smawkEllPKfPlE3$_0E9_M_invokeERKSt9_Any_dataOlSA_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #10 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !91
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.a, align 8, !tbaa !92
  %.val4 = load i64, ptr %1, align 8, !tbaa !17
  %.val5 = load i64, ptr %2, align 8, !tbaa !17
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !41
  %.val3.val = load i64, ptr %.val3, align 8, !tbaa !17
  %i.b = mul nsw i64 %.val3.val, %.val4
  %i.c = getelementptr [4 x i8], ptr %.val.val, i64 %i.b
  %i.d = getelementptr [4 x i8], ptr %i.c, i64 %.val5
  %i.e = load float, ptr %i.d, align 4, !tbaa !44
  ret float %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFfllEZN5faiss5smawkEllPKfPlE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN5faiss5smawkEllPKfPlE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN5faiss5smawkEllPKfPlE3$_0", ptr %0, align 8, !tbaa !46
end_hunk_0
