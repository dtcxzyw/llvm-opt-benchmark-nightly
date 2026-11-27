Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/adaptive_rans_bit_encoder?download=true
inline.NumInlined: 294
inline.NumDeleted: 175
begin_hunk_0_@_ZN5draco22AdaptiveRAnsBitEncoder13StartEncodingEv:bb.a
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5draco22AdaptiveRAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !12
  %i.f = load ptr, ptr %0, align 8, !tbaa !11     ; 3 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = shl nsw i64 %i.i, 3
  %i.k = zext i32 %i.e to i64
  %i.l = add nsw i64 %i.j, %i.k                   ; 6 uses
  %i.m = add i64 %i.l, 16                         ; 5 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %.noexc, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #12
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.thread, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #13 ; 15 uses
  %i.p = getelementptr i8, ptr %i.o, i64 %i.m     ; 5 uses
  store i8 0, ptr %i.o, align 1, !tbaa !16
  %i.q = add nsw i64 %i.l, 15                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.thread, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %.noexc26
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.q, i1 false)
  %i.t = icmp slt i64 %i.l, 0
  br i1 %i.t, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.thread, label %bb.b

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.thread:        ; preds = %.noexc26, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.sroa.098.0115 = phi ptr [ %i.o, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ] ; 2 uses
  %.sroa.11.0110 = phi ptr [ %i.p, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.p, %.noexc26 ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
          to label %.noexc27 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit45

.noexc27:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.thread
  unreachable

bb.b:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE7reserveEm.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #13
          to label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183 ; 2 uses

_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183:        ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i: ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.l
  br label %_ZNSt6vectorIhSaIhEE7reserveEm.exit

_ZNSt6vectorIhSaIhEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i, %bb.b
  %.sroa.067.2 = phi ptr [ %i.u, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ null, %bb.b ] ; 4 uses
  %.sroa.17.2 = phi ptr [ %i.w, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit.i ], [ null, %bb.b ] ; 2 uses
  %.sroa.2.0.copyload.i = load i32, ptr %i.d, align 8 ; 2 uses
  %i.x = icmp ne ptr %i.f, %i.c
  %i.y = icmp ne i32 %.sroa.2.0.copyload.i, 0
  %.not3.i139 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %.not3.i139, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %.sroa.0.0.copyload.i.i.pre = load ptr, ptr %i.b, align 8, !noalias !25
  %.sroa.2.0.copyload.i.i.pre = load i32, ptr %i.d, align 8, !noalias !25
  %.pre = load ptr, ptr %0, align 8, !tbaa !11, !noalias !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIhSaIhEE7reserveEm.exit
  %i.z = phi ptr [ %i.c, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.2.0.copyload.i.i = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.2.0.copyload.i.i.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.0.0.copyload.i.i = phi ptr [ %i.c, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.0.0.copyload.i.i.pre, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.067.0.lcssa = phi ptr [ %.sroa.067.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.067.3, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.10.0.lcssa = phi ptr [ %.sroa.067.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.10.2, %._crit_edge.loopexit ]
  %.sroa.17.0.lcssa = phi ptr [ %.sroa.17.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ], [ %.sroa.17.3, %._crit_edge.loopexit ] ; 2 uses
  %i.aa = icmp ne ptr %.sroa.0.0.copyload.i.i, %i.z
  %i.ab = icmp ne i32 %.sroa.2.0.copyload.i.i, 0
  %.not3.i37148 = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %.not3.i37148, label %.lr.ph155, label %._crit_edge156.thread

._crit_edge156.thread:                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  br label %bb.i

.lr.ph:                                           ; preds = %_ZNSt6vectorIhSaIhEE7reserveEm.exit, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %.018145 = phi double [ %i.ba, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ 5.000000e-01, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 2 uses
  %.sroa.060.0144 = phi ptr [ %spec.select125, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %i.f, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 2 uses
  %.sroa.863.0143 = phi i32 [ %spec.select, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ 0, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 3 uses
  %.sroa.17.0142 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.17.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 4 uses
  %.sroa.10.0141 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.067.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 3 uses
  %.sroa.067.0140 = phi ptr [ %.sroa.067.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.067.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 6 uses
  %i.ac = zext nneg i32 %.sroa.863.0143 to i64
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = load i64, ptr %.sroa.060.0144, align 8, !tbaa !28
  %i.af = and i64 %i.ae, %i.ad
  %.not128 = icmp eq i64 %i.af, 0
  %i.ag = tail call double @llvm.fmuladd.f64(double %.018145, double 2.560000e+02, double 5.000000e-01)
  %i.ah = fptoui double %i.ag to i32              ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 256
  %i.aj = tail call i32 @llvm.umax.i32(i32 %i.ah, i32 1)
  %i.ak = trunc i32 %i.aj to i8
  %i.al = select i1 %i.ai, i8 -1, i8 %i.ak        ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.10.0141, %.sroa.17.0142
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i8 %i.al, ptr %.sroa.10.0141, align 1, !tbaa !16
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.d:                                             ; preds = %.lr.ph
  %i.am = ptrtoint ptr %.sroa.17.0142 to i64
  %i.an = ptrtoint ptr %.sroa.067.0140 to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 8 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775807
  br i1 %i.ap, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 1)
  %i.aq = add i64 %.sroa.speculated.i.i.i.i, %i.ao ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  %i.as = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 9223372036854775807)
  %i.at = select i1 %i.ar, i64 9223372036854775807, i64 %i.as ; 3 uses
  %.not.i.i.i.i33 = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i33)
  %i.au = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.at) #13
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao ; 2 uses
  store i8 %i.al, ptr %i.av, align 1, !tbaa !16
  %i.aw = icmp sgt i64 %i.ao, 0
  br i1 %i.aw, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.f:                                             ; preds = %.noexc35
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %.sroa.067.0140, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.f, %.noexc35
  %.not.i17.i.i.i = icmp eq ptr %.sroa.067.0140, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0140, i64 noundef %i.ao) #11
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.at
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, %bb.c
  %.sroa.067.3 = phi ptr [ %i.au, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.067.0140, %bb.c ] ; 2 uses
  %.pn = phi ptr [ %i.av, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.10.0141, %bb.c ]
  %.sroa.17.3 = phi ptr [ %i.ax, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %.sroa.17.0142, %bb.c ] ; 2 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.ay = uitofp i1 %.not128 to double
  %i.az = fmul nnan double %i.ay, 7.812500e-03
  %i.ba = tail call noundef double @llvm.fmuladd.f64(double %.018145, double f0x3FEFC00000000000, double %i.az)
  %i.bb = add i32 %.sroa.863.0143, 1
  %i.bc = icmp eq i32 %.sroa.863.0143, 63         ; 2 uses
  %spec.select = select i1 %i.bc, i32 0, i32 %i.bb ; 2 uses
  %spec.select125.idx = select i1 %i.bc, i64 8, i64 0
  %spec.select125 = getelementptr inbounds nuw i8, ptr %.sroa.060.0144, i64 %spec.select125.idx ; 2 uses
  %i.bd = icmp ne ptr %spec.select125, %i.c
  %i.be = icmp ne i32 %spec.select, %.sroa.2.0.copyload.i
  %.not3.i = select i1 %i.bd, i1 true, i1 %i.be
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge.loopexit

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i, %bb.e
  %lpad.loopexit.split-lp195 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph155:                                        ; preds = %._crit_edge, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit
  %.sroa.050.0153 = phi ptr [ %i.bj, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ %.sroa.10.0.lcssa, %._crit_edge ]
  %.sroa.051.0152 = phi ptr [ %spec.select3.i, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ %.sroa.0.0.copyload.i.i, %._crit_edge ]
  %.sroa.8.0151 = phi i32 [ %spec.select.i, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ %.sroa.2.0.copyload.i.i, %._crit_edge ] ; 2 uses
  %.sroa.19.0150 = phi i32 [ %i.cf, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ 4096, %._crit_edge ] ; 4 uses
  %.sroa.9.0149 = phi i32 [ %.sroa.9.1, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ 0, %._crit_edge ] ; 3 uses
  %i.bf = add i32 %.sroa.8.0151, -1
  %i.bg = icmp eq i32 %.sroa.8.0151, 0            ; 2 uses
  %spec.select.i = select i1 %i.bg, i32 63, i32 %i.bf ; 3 uses
  %spec.select3.idx.i = select i1 %i.bg, i64 -8, i64 0
  %spec.select3.i = getelementptr inbounds i8, ptr %.sroa.051.0152, i64 %spec.select3.idx.i ; 3 uses
  %i.bh = zext nneg i32 %spec.select.i to i64
  %i.bi = load i64, ptr %spec.select3.i, align 8, !tbaa !28
  %i.bj = getelementptr inbounds i8, ptr %.sroa.050.0153, i64 -1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !16  ; 2 uses
  %i.bl = sub i8 0, %i.bk                         ; 2 uses
  %i.bm = shl nuw i64 1, %i.bh
  %i.bn = and i64 %i.bi, %i.bm
  %.not.i = icmp eq i64 %i.bn, 0                  ; 2 uses
  %i.bo = select i1 %.not.i, i8 %i.bk, i8 %i.bl   ; 2 uses
  %i.bp = zext i8 %i.bo to i32                    ; 2 uses
  %i.bq = shl nuw nsw i32 %i.bp, 12
  %.not19.i = icmp ult i32 %.sroa.19.0150, %i.bq
  br i1 %.not19.i, label %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph155
  %i.br = trunc i32 %.sroa.19.0150 to i8
  %2 = add nsw i32 %.sroa.9.0149, 1
  %3 = sext i32 %.sroa.9.0149 to i64
  %i.bs = getelementptr inbounds i8, ptr %i.o, i64 %3
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !16
  %4 = lshr i32 %.sroa.19.0150, 8
  br label %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit

_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit: ; preds = %bb.h, %.lr.ph155
  %.sroa.9.1 = phi i32 [ %.sroa.9.0149, %.lr.ph155 ], [ %2, %bb.h ] ; 7 uses
  %i.bt = phi i32 [ %.sroa.19.0150, %.lr.ph155 ], [ %4, %bb.h ] ; 3 uses
  %i.bu = zext i8 %i.bo to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @_ZN5draco16vp10_fastdiv_tabE, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !30
  %i.bx = tail call i32 @llvm.umulh.i32(i32 %i.bt, i32 %i.bw)
  %i.by = add nuw i32 %i.bx, %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !31
  %i.cb = lshr i32 %i.by, %i.ca
  %i.cc = zext i8 %i.bl to i32
  %i.cd = select i1 %.not.i, i32 %i.cc, i32 0
  %reass.add.i = sub nuw nsw i32 256, %i.bp
  %reass.mul.i = mul i32 %i.cb, %reass.add.i
  %i.ce = add nuw nsw i32 %i.bt, %i.cd
  %i.cf = add i32 %i.ce, %reass.mul.i             ; 6 uses
  %i.cg = icmp ne ptr %spec.select3.i, %i.z
  %i.ch = icmp ne i32 %spec.select.i, 0
  %.not3.i37 = or i1 %i.cg, %i.ch
  br i1 %.not3.i37, label %.lr.ph155, label %._crit_edge156, !llvm.loop !24

._crit_edge156:                                   ; preds = %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ci = add i32 %i.cf, -4096                    ; 3 uses
  %i.cj = icmp ult i32 %i.ci, 64
  br i1 %i.cj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge156.thread, %._crit_edge156
  %.sroa.19.0.lcssa174 = phi i32 [ 4096, %._crit_edge156.thread ], [ %i.cf, %._crit_edge156 ]
  %.sroa.9.0.lcssa173 = phi i32 [ 0, %._crit_edge156.thread ], [ %.sroa.9.1, %._crit_edge156 ] ; 2 uses
  %i.ck = trunc i32 %.sroa.19.0.lcssa174 to i8
  %5 = sext i32 %.sroa.9.0.lcssa173 to i64
  %i.cl = getelementptr inbounds i8, ptr %i.o, i64 %5
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !16
  %i.cm = add nsw i32 %.sroa.9.0.lcssa173, 1
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.j:                                             ; preds = %._crit_edge156
  %i.cn = icmp ult i32 %i.ci, 16384
  br i1 %i.cn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %6 = sext i32 %.sroa.9.1 to i64
  %i.co = getelementptr inbounds i8, ptr %i.o, i64 %6
  %i.cp = trunc nuw nsw i32 %i.cf to i16
  %i.cq = add nuw nsw i16 %i.cp, 12288
  store i16 %i.cq, ptr %i.co, align 1
  %i.cr = add nsw i32 %.sroa.9.1, 2
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.l:                                             ; preds = %bb.j
  %i.cs = icmp ult i32 %i.ci, 4194304
  br i1 %i.cs, label %bb.m, label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.m:                                             ; preds = %bb.l
  %7 = sext i32 %.sroa.9.1 to i64
  %i.ct = getelementptr inbounds i8, ptr %i.o, i64 %7 ; 2 uses
  %i.cu = add nuw nsw i32 %i.cf, 8384512
  %i.cv = trunc i32 %i.cf to i8
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cx = lshr i32 %i.cu, 8
  %i.cy = trunc nuw i32 %i.cx to i16
  store i16 %i.cy, ptr %i.cw, align 1
  %i.cz = add nsw i32 %.sroa.9.1, 3
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit:    ; preds = %bb.m, %bb.k, %bb.i, %bb.l
  %.0.i = phi i32 [ %i.cm, %bb.i ], [ %i.cr, %bb.k ], [ %i.cz, %bb.m ], [ %.sroa.9.1, %bb.l ]
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !32
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !45
  %i.dc = icmp slt i64 %i.db, 1
  br i1 %i.dc, label %bb.n, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

bb.n:                                             ; preds = %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !46
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dg = load ptr, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds i8, ptr %i.dg, i64 %i.dj
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.dk, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.df)
          to label %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit unwind label %bb.q

_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit:    ; preds = %bb.n
  %.pr = load i64, ptr %i.da, align 8, !tbaa !45
  %i.dl = icmp slt i64 %.pr, 1
  br i1 %i.dl, label %bb.o, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

bb.o:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit
  %i.dm = load i32, ptr %i.a, align 4, !tbaa !32
  %i.dn = zext i32 %i.dm to i64
  %i.do = load ptr, ptr %i.dd, align 8, !tbaa !46
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.dn
  %i.dq = load ptr, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.dr = ptrtoint ptr %i.do to i64
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 %i.dt
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.du, ptr noundef nonnull %i.o, ptr noundef nonnull %i.dp)
          to label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit unwind label %bb.q

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit:        ; preds = %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit, %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit, %bb.o
  %i.dv = load ptr, ptr %0, align 8, !tbaa !11
  store ptr %i.dv, ptr %i.b, align 8
  store i32 0, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not.i.i.i = icmp eq ptr %.sroa.067.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit43, label %bb.p

bb.p:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit
  %i.dw = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.dx = ptrtoint ptr %.sroa.067.0.lcssa to i64
  %i.dy = sub i64 %i.dw, %i.dx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0.lcssa, i64 noundef %i.dy) #11
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit43

_ZNSt6vectorIhSaIhEED2Ev.exit43:                  ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.m) #11
  ret void

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp, %bb.q
  %.sroa.067.0137 = phi ptr [ %.sroa.067.0.lcssa, %bb.q ], [ %.sroa.067.0140, %.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %.sroa.17.0131 = phi ptr [ %.sroa.17.0.lcssa, %bb.q ], [ %.sroa.17.0142, %.loopexit.split-lp.loopexit.split-lp ]
  %.pn22.pn = phi { ptr, i32 } [ %i.dz, %bb.q ], [ %lpad.loopexit.split-lp195, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %.sroa.067.0137, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ea = ptrtoint ptr %.sroa.17.0131 to i64
  %i.eb = ptrtoint ptr %.sroa.067.0137 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0137, i64 noundef %i.ec) #11
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread

_ZNSt6vectorIhSaIhEED2Ev.exit45:                  ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.thread
  %i.ed = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.sroa.098.0115, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIhSaIhEED2Ev.exit47, label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread

_ZNSt6vectorIhSaIhEED2Ev.exit45.thread:           ; preds = %bb.s, %bb.r, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183, %_ZNSt6vectorIhSaIhEED2Ev.exit45
  %.sroa.098.0111122182 = phi ptr [ %i.o, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183 ], [ %.sroa.098.0115, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ], [ %i.o, %bb.r ], [ %i.o, %bb.s ] ; 2 uses
  %.sroa.11.0106123181 = phi ptr [ %i.p, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183 ], [ %.sroa.11.0110, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ], [ %i.p, %bb.r ], [ %i.p, %bb.s ]
  %.pn22.pn124179 = phi { ptr, i32 } [ %i.v, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183 ], [ %i.ed, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ], [ %.pn22.pn, %bb.r ], [ %.pn22.pn, %bb.s ]
  %i.ee = ptrtoint ptr %.sroa.11.0106123181 to i64
  %i.ef = ptrtoint ptr %.sroa.098.0111122182 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0111122182, i64 noundef %i.eg) #11
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit47

_ZNSt6vectorIhSaIhEED2Ev.exit47:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit45
  %.pn22.pn124180 = phi { ptr, i32 } [ %.pn22.pn124179, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread ], [ %i.ed, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ]
  resume { ptr, i32 } %.pn22.pn124180
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %2 to i64                   ; 5 uses
  %i.c = sub i64 %i.a, %i.b                       ; 23 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !57   ; 12 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not54 = icmp ult i64 %i.j, %i.c
  br i1 %.not54, label %bb.n, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.l = sub i64 %i.i, %i.k                       ; 18 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !58

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !16
  store i8 %i.s, ptr %i.g, align 1, !tbaa !16
  br label %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !57
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !58

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !16
  br label %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  %i.ac = icmp sgt i64 %i.c, 0
  br i1 %i.ac, label %iter.check162, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check162:                                    ; preds = %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit
  %min.iters.check146 = icmp ult i64 %i.c, 4
  %i.ad = sub i64 %i.b, %i.k
  %diff.check148 = icmp ugt i64 %i.ad, -32
  %or.cond = or i1 %min.iters.check146, %diff.check148
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check149

vector.main.loop.iter.check149:                   ; preds = %iter.check162
  %min.iters.check150 = icmp ult i64 %i.c, 32
  br i1 %min.iters.check150, label %vec.epilog.ph166, label %vector.ph151

vector.ph151:                                     ; preds = %vector.main.loop.iter.check149
  %i.ae = and i64 %i.c, 28
  %n.vec152 = and i64 %i.c, 9223372036854775776   ; 5 uses
  %i.af = and i64 %i.c, 31
  %i.ag = getelementptr i8, ptr %1, i64 %n.vec152
  %i.ah = getelementptr i8, ptr %2, i64 %n.vec152
  br label %vector.body153
end_hunk_0
