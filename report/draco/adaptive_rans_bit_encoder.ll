Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/draco/original/adaptive_rans_bit_encoder?download=true
inline.NumInlined: 294
inline.NumDeleted: 175
begin_hunk_0_@_ZN5draco22AdaptiveRAnsBitEncoder11EndEncodingEPNS_13EncoderBufferE:bb.a
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
  %.sroa.17.0142 = phi ptr [ %.sroa.17.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.17.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 5 uses
  %.sroa.10.0141 = phi ptr [ %.sroa.10.2, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.067.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 3 uses
  %.sroa.067.0140 = phi ptr [ %.sroa.067.3, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ], [ %.sroa.067.2, %_ZNSt6vectorIhSaIhEE7reserveEm.exit ] ; 7 uses
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
          to label %.noexc34 unwind label %.loopexit.split-lp

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
          to label %.noexc35 unwind label %.loopexit ; 4 uses

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

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.lr.ph155:                                        ; preds = %._crit_edge, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit
  %.sroa.050.0153 = phi ptr [ %i.bj, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ %.sroa.10.0.lcssa, %._crit_edge ]
  %.sroa.051.0152 = phi ptr [ %spec.select3.i, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ %.sroa.0.0.copyload.i.i, %._crit_edge ]
  %.sroa.8.0151 = phi i32 [ %spec.select.i, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ %.sroa.2.0.copyload.i.i, %._crit_edge ] ; 2 uses
  %.sroa.19.0150 = phi i32 [ %i.ch, %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit ], [ 4096, %._crit_edge ] ; 4 uses
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
  %i.bs = add nsw i32 %.sroa.9.0149, 1
  %i.bt = sext i32 %.sroa.9.0149 to i64
  %i.bu = getelementptr inbounds i8, ptr %i.o, i64 %i.bt
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !16
  %i.bv = lshr i32 %.sroa.19.0150, 8
  br label %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit

_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit: ; preds = %bb.h, %.lr.ph155
  %.sroa.9.1 = phi i32 [ %.sroa.9.0149, %.lr.ph155 ], [ %i.bs, %bb.h ] ; 7 uses
  %i.bw = phi i32 [ %.sroa.19.0150, %.lr.ph155 ], [ %i.bv, %bb.h ] ; 3 uses
  %i.bx = zext i8 %i.bo to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @_ZN5draco16vp10_fastdiv_tabE, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !30
  %2 = tail call i32 @llvm.umulh.i32(i32 %i.bw, i32 %i.bz)
  %i.ca = add i32 %2, %i.bw
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !31
  %i.cd = lshr i32 %i.ca, %i.cc
  %i.ce = zext i8 %i.bl to i32
  %i.cf = select i1 %.not.i, i32 %i.ce, i32 0
  %reass.add.i = sub nuw nsw i32 256, %i.bp
  %reass.mul.i = mul i32 %i.cd, %reass.add.i
  %i.cg = add nuw nsw i32 %i.bw, %i.cf
  %i.ch = add i32 %i.cg, %reass.mul.i             ; 6 uses
  %i.ci = icmp ne ptr %spec.select3.i, %i.z
  %i.cj = icmp ne i32 %spec.select.i, 0
  %.not3.i37 = or i1 %i.ci, %i.cj
  br i1 %.not3.i37, label %.lr.ph155, label %._crit_edge156, !llvm.loop !24

._crit_edge156:                                   ; preds = %_ZNSt16reverse_iteratorISt13_Bit_iteratorEppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.ck = add i32 %i.ch, -4096                    ; 3 uses
  %i.cl = icmp ult i32 %i.ck, 64
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge156.thread, %._crit_edge156
  %.sroa.19.0.lcssa174 = phi i32 [ 4096, %._crit_edge156.thread ], [ %i.ch, %._crit_edge156 ]
  %.sroa.9.0.lcssa173 = phi i32 [ 0, %._crit_edge156.thread ], [ %.sroa.9.1, %._crit_edge156 ] ; 2 uses
  %i.cm = trunc i32 %.sroa.19.0.lcssa174 to i8
  %i.cn = sext i32 %.sroa.9.0.lcssa173 to i64
  %i.co = getelementptr inbounds i8, ptr %i.o, i64 %i.cn
  store i8 %i.cm, ptr %i.co, align 1, !tbaa !16
  %i.cp = add nsw i32 %.sroa.9.0.lcssa173, 1
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.j:                                             ; preds = %._crit_edge156
  %i.cq = icmp ult i32 %i.ck, 16384
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = sext i32 %.sroa.9.1 to i64
  %i.cs = getelementptr inbounds i8, ptr %i.o, i64 %i.cr
  %i.ct = trunc nuw nsw i32 %i.ch to i16
  %i.cu = add nuw nsw i16 %i.ct, 12288
  store i16 %i.cu, ptr %i.cs, align 1
  %i.cv = add nsw i32 %.sroa.9.1, 2
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.l:                                             ; preds = %bb.j
  %i.cw = icmp ult i32 %i.ck, 4194304
  br i1 %i.cw, label %bb.m, label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

bb.m:                                             ; preds = %bb.l
  %i.cx = sext i32 %.sroa.9.1 to i64
  %i.cy = getelementptr inbounds i8, ptr %i.o, i64 %i.cx ; 2 uses
  %i.cz = add nuw nsw i32 %i.ch, 8384512
  %i.da = trunc i32 %i.ch to i8
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !16
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.dc = lshr i32 %i.cz, 8
  %i.dd = trunc nuw i32 %i.dc to i16
  store i16 %i.dd, ptr %i.db, align 1
  %i.de = add nsw i32 %.sroa.9.1, 3
  br label %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit

_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit:    ; preds = %bb.m, %bb.k, %bb.i, %bb.l
  %.0.i = phi i32 [ %i.cp, %bb.i ], [ %i.cv, %bb.k ], [ %i.de, %bb.m ], [ %.sroa.9.1, %bb.l ]
  store i32 %.0.i, ptr %i.a, align 4, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !45
  %i.dh = icmp slt i64 %i.dg, 1
  br i1 %i.dh, label %bb.n, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

bb.n:                                             ; preds = %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !46
  %i.dk = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dl = load ptr, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.dp, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull %i.dk)
          to label %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit unwind label %bb.q

_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit:    ; preds = %bb.n
  %.pr = load i64, ptr %i.df, align 8, !tbaa !45
  %i.dq = icmp slt i64 %.pr, 1
  br i1 %i.dq, label %bb.o, label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit

bb.o:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !32
  %i.ds = zext i32 %i.dr to i64
  %i.dt = load ptr, ptr %i.di, align 8, !tbaa !46
  %i.du = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ds
  %i.dv = load ptr, ptr %1, align 8, !tbaa !46    ; 2 uses
  %i.dw = ptrtoint ptr %i.dt to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  invoke void @_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(41) %1, ptr %i.dz, ptr noundef nonnull %i.o, ptr noundef nonnull %i.du)
          to label %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit unwind label %bb.q

_ZN5draco13EncoderBuffer6EncodeEPKvm.exit:        ; preds = %_ZN5dracoL13ans_write_endEPNS_8AnsCoderE.exit, %_ZN5draco13EncoderBuffer6EncodeIjEEbRKT_.exit, %bb.o
  %i.ea = load ptr, ptr %0, align 8, !tbaa !11
  store ptr %i.ea, ptr %i.b, align 8
  store i32 0, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not.i.i.i = icmp eq ptr %.sroa.067.0.lcssa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit43, label %bb.p

bb.p:                                             ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit
  %i.eb = ptrtoint ptr %.sroa.17.0.lcssa to i64
  %i.ec = ptrtoint ptr %.sroa.067.0.lcssa to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0.lcssa, i64 noundef %i.ed) #11
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit43

_ZNSt6vectorIhSaIhEED2Ev.exit43:                  ; preds = %_ZN5draco13EncoderBuffer6EncodeEPKvm.exit, %bb.p
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.m) #11
  ret void

bb.q:                                             ; preds = %bb.o, %bb.n
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.q
  %.sroa.067.0137 = phi ptr [ %.sroa.067.0.lcssa, %bb.q ], [ %.sroa.067.0140, %.loopexit ], [ %.sroa.067.0140, %.loopexit.split-lp ] ; 3 uses
  %.sroa.17.0131 = phi ptr [ %.sroa.17.0.lcssa, %bb.q ], [ %.sroa.17.0142, %.loopexit ], [ %.sroa.17.0142, %.loopexit.split-lp ]
  %.pn22.pn = phi { ptr, i32 } [ %i.ee, %bb.q ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %.sroa.067.0137, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ef = ptrtoint ptr %.sroa.17.0131 to i64
  %i.eg = ptrtoint ptr %.sroa.067.0137 to i64
  %i.eh = sub i64 %i.ef, %i.eg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.067.0137, i64 noundef %i.eh) #11
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread

_ZNSt6vectorIhSaIhEED2Ev.exit45:                  ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit.thread
  %i.ei = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %.sroa.098.0115, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIhSaIhEED2Ev.exit47, label %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread

_ZNSt6vectorIhSaIhEED2Ev.exit45.thread:           ; preds = %bb.s, %bb.r, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183, %_ZNSt6vectorIhSaIhEED2Ev.exit45
  %.sroa.098.0111122182 = phi ptr [ %i.o, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183 ], [ %.sroa.098.0115, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ], [ %i.o, %bb.r ], [ %i.o, %bb.s ] ; 2 uses
  %.sroa.11.0106123181 = phi ptr [ %i.p, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183 ], [ %.sroa.11.0110, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ], [ %i.p, %bb.r ], [ %i.p, %bb.s ]
  %.pn22.pn124179 = phi { ptr, i32 } [ %i.v, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread183 ], [ %i.ei, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ], [ %.pn22.pn, %bb.r ], [ %.pn22.pn, %bb.s ]
  %i.ej = ptrtoint ptr %.sroa.11.0106123181 to i64
  %i.ek = ptrtoint ptr %.sroa.098.0111122182 to i64
  %i.el = sub i64 %i.ej, %i.ek
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.098.0111122182, i64 noundef %i.el) #11
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit47

_ZNSt6vectorIhSaIhEED2Ev.exit47:                  ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread, %_ZNSt6vectorIhSaIhEED2Ev.exit45
  %.pn22.pn124180 = phi { ptr, i32 } [ %.pn22.pn124179, %_ZNSt6vectorIhSaIhEED2Ev.exit45.thread ], [ %i.ei, %_ZNSt6vectorIhSaIhEED2Ev.exit45 ]
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
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIcSaIcEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPcS1_EET_S9_St20forward_iterator_tag:bb.a
  br i1 %i.bx, label %iter.check130, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

iter.check130:                                    ; preds = %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55
  %min.iters.check113 = icmp ult i64 %i.l, 4
  %i.by = sub i64 %i.b, %i.k
  %diff.check112 = icmp ugt i64 %i.by, -32
  %or.cond184 = or i1 %min.iters.check113, %diff.check112
  br i1 %or.cond184, label %.lr.ph.i.i.i.i.i57.preheader, label %vector.main.loop.iter.check114

vector.main.loop.iter.check114:                   ; preds = %iter.check130
  %min.iters.check115 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check115, label %vec.epilog.ph134, label %vector.ph116

vector.ph116:                                     ; preds = %vector.main.loop.iter.check114
  %i.bz = and i64 %i.l, 28
  %n.vec117 = and i64 %i.l, 9223372036854775776   ; 5 uses
  %i.ca = and i64 %i.l, 31
  %i.cb = getelementptr i8, ptr %1, i64 %n.vec117
  %i.cc = getelementptr i8, ptr %2, i64 %n.vec117
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body118 ] ; 3 uses
  %next.gep120 = getelementptr i8, ptr %1, i64 %index119 ; 2 uses
  %next.gep121 = getelementptr i8, ptr %2, i64 %index119 ; 2 uses
  %i.cd = getelementptr i8, ptr %next.gep121, i64 16
  %wide.load122 = load <16 x i8>, ptr %next.gep121, align 1, !tbaa !16
  %wide.load123 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !16
  %i.ce = getelementptr i8, ptr %next.gep120, i64 16
  store <16 x i8> %wide.load122, ptr %next.gep120, align 1, !tbaa !16
  store <16 x i8> %wide.load123, ptr %i.ce, align 1, !tbaa !16
  %index.next124 = add nuw i64 %index119, 32      ; 2 uses
  %i.cf = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.cf, label %middle.block125, label %vector.body118, !llvm.loop !53

middle.block125:                                  ; preds = %vector.body118
  %cmp.n126 = icmp eq i64 %i.l, %n.vec117
  br i1 %cmp.n126, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block125
  %min.epilog.iters.check133 = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check133, label %.lr.ph.i.i.i.i.i57.preheader, label %vec.epilog.ph134, !prof !61

vec.epilog.ph134:                                 ; preds = %vector.main.loop.iter.check114, %vec.epilog.iter.check132
  %vec.epilog.resume.val127 = phi i64 [ %n.vec117, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check114 ]
  %n.vec135 = and i64 %i.l, 9223372036854775804   ; 4 uses
  %i.cg = and i64 %i.l, 3
  %i.ch = getelementptr i8, ptr %1, i64 %n.vec135
  %i.ci = getelementptr i8, ptr %2, i64 %n.vec135
  br label %vec.epilog.vector.body136

vec.epilog.vector.body136:                        ; preds = %vec.epilog.vector.body136, %vec.epilog.ph134
  %index137 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph134 ], [ %index.next141, %vec.epilog.vector.body136 ] ; 3 uses
  %next.gep138 = getelementptr i8, ptr %1, i64 %index137
  %next.gep139 = getelementptr i8, ptr %2, i64 %index137
  %wide.load140 = load <4 x i8>, ptr %next.gep139, align 1, !tbaa !16
  store <4 x i8> %wide.load140, ptr %next.gep138, align 1, !tbaa !16
  %index.next141 = add nuw i64 %index137, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next141, %n.vec135
  br i1 %i.cj, label %vec.epilog.middle.block142, label %vec.epilog.vector.body136, !llvm.loop !54

vec.epilog.middle.block142:                       ; preds = %vec.epilog.vector.body136
  %cmp.n143 = icmp eq i64 %i.l, %n.vec135
  br i1 %cmp.n143, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i57.preheader

.lr.ph.i.i.i.i.i57.preheader:                     ; preds = %iter.check130, %vec.epilog.iter.check132, %vec.epilog.middle.block142
  %.012.i.i.i.i.i58.ph = phi i64 [ %i.l, %iter.check130 ], [ %i.ca, %vec.epilog.iter.check132 ], [ %i.cg, %vec.epilog.middle.block142 ]
  %.0811.i.i.i.i.i59.ph = phi ptr [ %1, %iter.check130 ], [ %i.cb, %vec.epilog.iter.check132 ], [ %i.ch, %vec.epilog.middle.block142 ]
  %.0910.i.i.i.i.i60.ph = phi ptr [ %2, %iter.check130 ], [ %i.cc, %vec.epilog.iter.check132 ], [ %i.ci, %vec.epilog.middle.block142 ]
  br label %.lr.ph.i.i.i.i.i57

.lr.ph.i.i.i.i.i57:                               ; preds = %.lr.ph.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i57
  %.012.i.i.i.i.i58 = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i57 ], [ %.012.i.i.i.i.i58.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0811.i.i.i.i.i59 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i57 ], [ %.0811.i.i.i.i.i59.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %.0910.i.i.i.i.i60 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i57 ], [ %.0910.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i57.preheader ] ; 2 uses
  %i.ck = load i8, ptr %.0910.i.i.i.i.i60, align 1, !tbaa !16
  store i8 %i.ck, ptr %.0811.i.i.i.i.i59, align 1, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i60, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i59, i64 1
  %i.cn = add nsw i64 %.012.i.i.i.i.i58, -1
  %i.co = icmp samesign ugt i64 %.012.i.i.i.i.i58, 1
  br i1 %i.co, label %.lr.ph.i.i.i.i.i57, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit, !llvm.loop !55

bb.n:                                             ; preds = %bb.b
  %i.cp = load ptr, ptr %0, align 8, !tbaa !62    ; 5 uses
  %i.cq = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cr = sub i64 %i.i, %i.cq                     ; 4 uses
  %i.cs = sub i64 9223372036854775807, %i.cr
  %i.ct = icmp ult i64 %i.cs, %i.c
  br i1 %i.ct, label %bb.o, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit

bb.o:                                             ; preds = %bb.n
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit:    ; preds = %bb.n
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.cr, i64 %i.c)
  %i.cu = add i64 %.sroa.speculated.i, %i.cr      ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %i.cr
  %i.cw = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 9223372036854775807)
  %i.cx = select i1 %i.cv, i64 9223372036854775807, i64 %i.cw ; 3 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit, label %bb.p

bb.p:                                             ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #13
  br label %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit, %bb.p
  %i.cz = phi ptr [ %i.cy, %bb.p ], [ null, %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.da = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cq                    ; 4 uses
  %i.dc = icmp sgt i64 %i.db, 1
  br i1 %i.dc, label %bb.q, label %bb.r, !prof !58

bb.q:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cp, i64 %i.db, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %_ZNSt12_Vector_baseIcSaIcEE11_M_allocateEm.exit
  %i.dd = icmp eq i64 %i.db, 1
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = load i8, ptr %i.cp, align 1, !tbaa !16
  store i8 %i.de, ptr %i.cz, align 1, !tbaa !16
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.df = getelementptr i8, ptr %i.cz, i64 %i.db  ; 2 uses
  %i.dg = icmp sgt i64 %i.c, 0
  br i1 %i.dg, label %.lr.ph.i.i.i.i.i.i.i.i63.preheader, label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

.lr.ph.i.i.i.i.i.i.i.i63.preheader:               ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.df, ptr align 1 %2, i64 %i.c, i1 false), !tbaa !16
  %i.dh = add i64 %i.a, %i.da
  %i.di = add i64 %i.b, %i.cq
  %i.dj = sub i64 %i.dh, %i.di
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dj
  br label %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67

_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67: ; preds = %.lr.ph.i.i.i.i.i.i.i.i63.preheader, %bb.t
  %.08.lcssa.i.i.i.i.i.i.i.i62 = phi ptr [ %i.df, %bb.t ], [ %scevgep, %.lr.ph.i.i.i.i.i.i.i.i63.preheader ] ; 3 uses
  %i.dk = sub i64 %i.i, %i.da                     ; 4 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.u, label %bb.v, !prof !58

bb.u:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.08.lcssa.i.i.i.i.i.i.i.i62, ptr align 1 %1, i64 %i.dk, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt22__uninitialized_copy_aIPKhPccET0_T_S4_S3_RSaIT1_E.exit67
  %i.dm = icmp eq i64 %i.dk, 1
  br i1 %i.dm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dn = load i8, ptr %1, align 1, !tbaa !16
  store i8 %i.dn, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, align 1, !tbaa !16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.do = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i.i.i.i62, i64 %i.dk
  %.not.i69 = icmp eq ptr %i.cp, null
  br i1 %.not.i69, label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dp = sub i64 %i.h, %i.cq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dp) #11
  br label %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit

_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !62
  store ptr %i.do, ptr %i.f, align 8, !tbaa !57
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cx
  store ptr %i.dq, ptr %i.d, align 8, !tbaa !56
  br label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit

_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i57, %.lr.ph.i.i.i.i.i, %middle.block125, %vec.epilog.middle.block142, %middle.block161, %vec.epilog.middle.block178, %_ZSt22__uninitialized_move_aIPcS0_SaIcEET0_T_S3_S2_RT1_.exit55, %_ZSt13move_backwardIPcS0_ET0_T_S2_S1_.exit, %_ZNSt12_Vector_baseIcSaIcEE13_M_deallocateEPcm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umulh.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 long", !8, i64 0}
!10 = !{!"_ZTSSt18_Bit_iterator_base", !9, i64 0, !5, i64 8}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !5, i64 8}
!13 = !{!"_ZTSSt13_Bit_iterator", !10, i64 0}
!14 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !13, i64 0, !13, i64 16, !9, i64 32}
!15 = !{!14, !9, i64 32}
!16 = !{!4, !4, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"p1 omnipotent char", !8, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = distinct !{!20, !"_ZNSt6vectorIbSaIbEE6rbeginEv"}
!21 = distinct !{!21, !20, !"_ZNSt6vectorIbSaIbEE6rbeginEv: argument 0"}
!22 = distinct !{!22, !"_ZNSt6vectorIbSaIbEE4rendEv"}
!23 = distinct !{!23, !22, !"_ZNSt6vectorIbSaIbEE4rendEv: argument 0"}
!24 = distinct !{!24, !17}
!25 = !{!21}
!26 = !{!23}
!27 = !{!"long", !4, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSN5draco12fastdiv_elemE", !5, i64 0, !5, i64 4}
!30 = !{!29, !5, i64 0}
!31 = !{!29, !5, i64 4}
!32 = !{!5, !5, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE12_Vector_implE", !19, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIcSaIcEE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorIcSaIcEE", !34, i64 0}
!36 = !{!"p1 _ZTSN5draco13EncoderBuffer10BitEncoderE", !8, i64 0}
!37 = !{!"_ZTSSt10_Head_baseILm0EPN5draco13EncoderBuffer10BitEncoderELb0EE", !36, i64 0}
!38 = !{!"_ZTSSt11_Tuple_implILm0EJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !37, i64 0}
!39 = !{!"_ZTSSt5tupleIJPN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EEE", !38, i64 0}
!40 = !{!"_ZTSSt15__uniq_ptr_implIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_dataIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_ELb1ELb1EE", !40, i64 0}
!42 = !{!"_ZTSSt10unique_ptrIN5draco13EncoderBuffer10BitEncoderESt14default_deleteIS2_EE", !41, i64 0}
!43 = !{!"bool", !4, i64 0}
!44 = !{!"_ZTSN5draco13EncoderBufferE", !35, i64 0, !42, i64 24, !27, i64 32, !43, i64 40}
!45 = !{!44, !27, i64 32}
!46 = !{!18, !18, i64 0}
!47 = distinct !{!47, !17, !59, !60}
!48 = distinct !{!48, !17, !59, !60}
!49 = distinct !{!49, !17, !59}
!50 = distinct !{!50, !17, !59, !60}
!51 = distinct !{!51, !17, !59, !60}
!52 = distinct !{!52, !17, !59}
!53 = distinct !{!53, !17, !59, !60}
!54 = distinct !{!54, !17, !59, !60}
!55 = distinct !{!55, !17, !59}
!56 = !{!19, !18, i64 16}
!57 = !{!19, !18, i64 8}
!58 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!59 = !{!"llvm.loop.isvectorized", i32 1}
!60 = !{!"llvm.loop.unroll.runtime.disable"}
!61 = !{!"branch_weights", i32 4, i32 28}
!62 = !{!19, !18, i64 0}
end_hunk_1
