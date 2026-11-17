Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/extend?download=true
inline.NumInlined: 378
inline.NumDeleted: 153
begin_hunk_0_@_ZN7CaDiCaL8External26traverse_witnesses_forwardERNS_15WitnessIteratorE:bb.a
  store ptr %i.al, ptr %i.k, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.am = phi ptr [ %i.r, %bb.e ], [ %i.ah, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.an = phi ptr [ %i.s, %bb.e ], [ %i.al, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.ao = phi ptr [ %i.w, %bb.e ], [ %i.ak, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.aq = load i32, ptr %i.v, align 4, !tbaa !13  ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.d
  %.sroa.044.1.lcssa = phi ptr [ %.sroa.044.0, %bb.d ], [ %i.v, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %.lcssa = phi ptr [ %i.p, %bb.d ], [ %i.ap, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ]
  %i.ar = load i32, ptr %.lcssa, align 4, !tbaa !13
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 32
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.044.1.lcssa, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !13
  %i.aw = sext i32 %i.av to i64
  %i.ax = add i64 %i.at, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.044.1.lcssa, i64 16 ; 3 uses
  %.not5770 = icmp eq ptr %i.ay, %i.g
  br i1 %.not5770, label %.critedge, label %.lr.ph73

.lr.ph73:                                         ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit27
  %.sroa.044.271 = phi ptr [ %i.az, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit27 ], [ %i.ay, %._crit_edge ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.044.271, i64 4 ; 4 uses
  %i.ba = load i32, ptr %.sroa.044.271, align 4, !tbaa !13 ; 3 uses
  %.not12 = icmp eq i32 %i.ba, 0
  br i1 %.not12, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph73
  %i.bb = load ptr, ptr %i.l, align 8, !tbaa !11  ; 4 uses
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !12
  %.not.i18 = icmp eq ptr %i.bb, %i.bc
  br i1 %.not.i18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !13
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.bd, ptr %i.l, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit27

bb.k:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %2, align 8, !tbaa !14    ; 4 uses
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 5 uses
  %i.bi = icmp eq i64 %i.bh, 9223372036854775804
  br i1 %i.bi, label %.invoke, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19

.invoke:                                          ; preds = %bb.f, %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19: ; preds = %bb.k
  %i.bj = ashr exact i64 %i.bh, 2                 ; 3 uses
  %.sroa.speculated.i.i.i20 = call i64 @llvm.umax.i64(i64 %i.bj, i64 1)
  %i.bk = add nsw i64 %.sroa.speculated.i.i.i20, %i.bj ; 2 uses
  %i.bl = icmp ult i64 %i.bk, %i.bj
  %i.bm = call i64 @llvm.umin.i64(i64 %i.bk, i64 2305843009213693951)
  %i.bn = select i1 %i.bl, i64 2305843009213693951, i64 %i.bm ; 3 uses
  %.not.i.i.i21 = icmp ne i64 %i.bn, 0
  call void @llvm.assume(i1 %.not.i.i.i21)
  %i.bo = shl nuw nsw i64 %i.bn, 2
  %i.bp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #11
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bh ; 2 uses
  store i32 %i.ba, ptr %i.bq, align 4, !tbaa !13
  %i.br = icmp sgt i64 %i.bh, 0
  br i1 %i.br, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22

bb.l:                                             ; preds = %.noexc26
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr align 4 %i.be, i64 %i.bh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22: ; preds = %bb.l, %.noexc26
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.not.i17.i.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i17.i.i23, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22
  call void @_ZdlPv(ptr noundef nonnull %i.be) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i22
  store ptr %i.bp, ptr %2, align 8, !tbaa !14
  store ptr %i.bs, ptr %i.l, align 8, !tbaa !11
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bn
  store ptr %i.bt, ptr %i.m, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit27

_ZNSt6vectorIiSaIiEE9push_backERKi.exit27:        ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i24
  %.not57 = icmp eq ptr %i.az, %i.g
  br i1 %.not57, label %.critedge, label %.lr.ph73

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i19, %.critedge, %.invoke
  %lpad.loopexit.split-lp146 = landingpad { ptr, i32 }
          cleanup
  %i.bu = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i28 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.bu) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.bv = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorIiSaIiEED2Ev.exit30, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.bv) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit30

_ZNSt6vectorIiSaIiEED2Ev.exit30:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %lpad.loopexit.split-lp146

.critedge:                                        ; preds = %.lr.ph73, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit27, %._crit_edge
  %.sroa.044.3 = phi ptr [ %i.ay, %._crit_edge ], [ %i.az, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit27 ], [ %i.az, %.lr.ph73 ] ; 2 uses
  %i.bw = load ptr, ptr %1, align 8, !tbaa !190
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.ax)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.p:                                             ; preds = %.critedge
  br i1 %i.bz, label %bb.q, label %..critedge15.loopexit_crit_edge

..critedge15.loopexit_crit_edge:                  ; preds = %bb.p
  %.pre90.pre = load ptr, ptr %3, align 8, !tbaa !14
  br label %.critedge15

bb.q:                                             ; preds = %bb.p
  %i.ca = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %i.cb = load ptr, ptr %i.l, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.cb, %i.ca
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.q
  store ptr %i.ca, ptr %i.l, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.q, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.cc = load ptr, ptr %3, align 8, !tbaa !14    ; 5 uses
  %i.cd = load ptr, ptr %i.j, align 8, !tbaa !11  ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.cd, %i.cc
  br i1 %.not.i.i31, label %_ZNSt6vectorIiSaIiEE5clearEv.exit33, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32:      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  store ptr %i.cc, ptr %i.j, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit33

_ZNSt6vectorIiSaIiEE5clearEv.exit33:              ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32
  %i.ce = phi ptr [ %i.cd, %_ZNSt6vectorIiSaIiEE5clearEv.exit ], [ %i.cc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i32 ]
  %.not58 = icmp eq ptr %.sroa.044.3, %i.g
  br i1 %.not58, label %.critedge15, label %bb.d, !llvm.loop !220

.critedge15:                                      ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit33, %..critedge15.loopexit_crit_edge
  %i.cf = phi ptr [ %.pre90.pre, %..critedge15.loopexit_crit_edge ], [ %i.cc, %_ZNSt6vectorIiSaIiEE5clearEv.exit33 ] ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIiSaIiEED2Ev.exit35, label %bb.r

bb.r:                                             ; preds = %.critedge15
  call void @_ZdlPv(ptr noundef nonnull %i.cf) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZNSt6vectorIiSaIiEED2Ev.exit35:                  ; preds = %bb.b, %.critedge15, %bb.r
  %.2116 = phi i1 [ %i.bz, %bb.r ], [ %i.bz, %.critedge15 ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.cg = load ptr, ptr %2, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIiSaIiEED2Ev.exit37, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit35
  call void @_ZdlPv(ptr noundef nonnull %i.cg) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit37

_ZNSt6vectorIiSaIiEED2Ev.exit37:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit35, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_ZNSt6vectorIiSaIiEED2Ev.exit37
  %.3 = phi i1 [ %.2116, %_ZNSt6vectorIiSaIiEED2Ev.exit37 ], [ true, %bb.a ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8External12conclude_satEv(ptr noundef nonnull align 8 dereferenceable(568) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.0", align 8     ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 225 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !223, !range !188, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 1, !tbaa !223
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.h = load i8, ptr %i.g, align 8, !tbaa !186, !range !188, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7CaDiCaL8External6extendEv(ptr noundef nonnull align 8 dereferenceable(568) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !183
  %.not718 = icmp slt i32 %i.k, 1
  br i1 %.not718, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

._crit_edge.a:                                    ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %bb.e
  %i.q = load ptr, ptr %0, align 8, !tbaa !51
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !222
  invoke void @_ZN7CaDiCaL5Proof12conclude_satERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %2 = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.t = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.u = phi ptr [ null, %.lr.ph ], [ %i.be, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 6 uses
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.w = load i32, ptr %i.n, align 8, !tbaa !53
  %i.x = load ptr, ptr %i.l, align 8, !tbaa !52   ; 2 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = zext i32 %i.w to i64
  %i.ad = add nsw i64 %i.ab, %i.ac
  %i.ae = icmp ugt i64 %i.ad, %indvars.iv
  %indvars21 = trunc i64 %indvars.iv to i32       ; 3 uses
  br i1 %i.ae, label %_ZNK7CaDiCaL8External4ivalEi.exit, label %_ZNK7CaDiCaL8External4ivalEi.exit.thread

_ZNK7CaDiCaL8External4ivalEi.exit.thread:         ; preds = %bb.f
  %i.af = sub i32 0, %indvars21
  br label %bb.g

_ZNK7CaDiCaL8External4ivalEi.exit:                ; preds = %bb.f
  %i.ag = lshr i64 %indvars.iv, 6
  %.zext.i = and i64 %i.ag, 67108863
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.zext.i
  %i.ai = and i64 %indvars.iv, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !54
  %i.al = and i64 %i.ak, %i.aj
  %.fr = freeze i64 %i.al
  %.not17 = icmp eq i64 %.fr, 0
  %i.am = sub nsw i32 0, %indvars21
  %spec.select = select i1 %.not17, i32 %i.am, i32 %indvars21
  br label %bb.g

bb.g:                                             ; preds = %_ZNK7CaDiCaL8External4ivalEi.exit, %_ZNK7CaDiCaL8External4ivalEi.exit.thread
  %i.an = phi i32 [ %i.af, %_ZNK7CaDiCaL8External4ivalEi.exit.thread ], [ %spec.select, %_ZNK7CaDiCaL8External4ivalEi.exit ] ; 2 uses
  %.not.i9 = icmp eq ptr %i.u, %i.t
  br i1 %.not.i9, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.an, ptr %i.u, align 4, !tbaa !13
  %3 = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  store ptr %3, ptr %i.o, align 8, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.i:                                             ; preds = %bb.g
  %i.ao = ptrtoint ptr %i.t to i64
  %i.ap = ptrtoint ptr %2 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775804
  br i1 %i.ar, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #10
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.as = ashr exact i64 %i.aq, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 2305843009213693951)
  %i.aw = select i1 %i.au, i64 2305843009213693951, i64 %i.av ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ax = shl nuw nsw i64 %i.aw, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #11
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  store i32 %i.an, ptr %i.az, align 4, !tbaa !13
  %i.ba = icmp sgt i64 %i.aq, 0
  br i1 %i.ba, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ay, ptr align 4 %2, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc10
  %4 = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %2, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %2) #12
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ay, ptr %1, align 8, !tbaa !14
  store ptr %4, ptr %i.o, align 8, !tbaa !11
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.aw ; 2 uses
  store ptr %i.bb, ptr %i.p, align 8, !tbaa !12
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.h
  %i.bc = phi ptr [ %i.ay, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %2, %bb.h ]
  %i.bd = phi ptr [ %i.bb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.t, %bb.h ]
  %i.be = phi ptr [ %4, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %3, %bb.h ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.bf = load i32, ptr %i.j, align 8, !tbaa !183
  %i.bg = sext i32 %i.bf to i64
  %.not7.not = icmp slt i64 %indvars.iv, %i.bg
  br i1 %.not7.not, label %bb.f, label %._crit_edge.a, !llvm.loop !221

bb.m:                                             ; preds = %._crit_edge.a
  %i.bh = load ptr, ptr %1, align 8, !tbaa !14    ; 2 uses
  %.not.i.i.i11 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit
  ret void

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.j, %._crit_edge.a
  %lpad.loopexit.split-lp20 = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %1, align 8, !tbaa !14
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %i.bi = phi ptr [ %2, %.loopexit.split-lp.loopexit ], [ %.pre, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp20, %.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i12 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit13, label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.bi) #12
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit13

_ZNSt6vectorIiSaIiEED2Ev.exit13:                  ; preds = %.loopexit.split-lp, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %lpad.phi
}

declare void @_ZN7CaDiCaL5Proof12conclude_satERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = sext i1 %4 to i8                        ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !227
  %i.d = load ptr, ptr %0, align 8, !tbaa !52
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !53   ; 2 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.l to i64                     ; 3 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %i.r = sub i64 %i.h, %i.q
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.m, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %2 to i64                       ; 4 uses
  %i.w = sub nsw i64 %i.p, %i.v
  %i.x = add i64 %i.w, %i.u                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.z = add nsw i64 %3, %i.p                     ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 63
  %i.ac = sdiv i64 %i.z, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ac
  %i.ae = and i64 %i.z, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %.024.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.x, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %storemerge.i.i.i, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.ab, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.j, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i ], [ %i.l, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.ah = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.ah, i32 63, i32 %i.ag ; 2 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.ah, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.ai = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.al = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0  ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.al, i32 63, i32 %i.ak ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.al, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.am = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ao = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !54
  %i.ap = and i64 %i.aj, %i.ao
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.aq = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !54
  %i.ar = or i64 %i.aq, %i.an
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.as = xor i64 %i.an, -1
  %i.at = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !54
  %i.au = and i64 %i.at, %i.as
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.e, %bb.d
  %storemerge.i.i.i.i.i = phi i64 [ %i.ar, %bb.d ], [ %i.au, %bb.e ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !54
  %i.av = add nsw i64 %.024.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.024.i.i.i.i.i, 1
  br i1 %i.aw, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !224

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i, %bb.c
  %i.ax = add nsw i64 %3, %i.v                    ; 3 uses
  %i.ay = sdiv i64 %i.ax, 64
  %.idx = shl nsw i64 %i.ay, 3
  %i.az = and i64 %i.ax, -9223372036854775745
  %i.ba = icmp ugt i64 %i.az, -9223372036854775808
  %storemerge.idx.i.i.i75 = select i1 %i.ba, i64 -8, i64 0
  %i.bb = add nsw i64 %storemerge.idx.i.i.i75, %.idx ; 2 uses
  %storemerge.i.i.i76 = getelementptr inbounds i8, ptr %1, i64 %i.bb ; 4 uses
  %i.bc = trunc i64 %i.ax to i32
  %i.bd = and i32 %i.bc, 63                       ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.f

bb.f:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not26.i.i.i = icmp eq i32 %2, 0
  br i1 %.not26.i.i.i, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bf = shl nsw i64 -1, %i.v                    ; 2 uses
  br i1 %4, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load i64, ptr %1, align 8, !tbaa !54
  %i.bh = or i64 %i.bg, %i.bf
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bi = xor i64 %i.bf, -1
  %i.bj = load i64, ptr %1, align 8, !tbaa !54
  %i.bk = and i64 %i.bj, %i.bi
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

_ZSt14__fill_bvectorPmjjb.exit.i.i.i:             ; preds = %bb.i, %bb.h
  %storemerge.i.i.i.i = phi i64 [ %i.bk, %bb.i ], [ %i.bh, %bb.h ]
  store i64 %storemerge.i.i.i.i, ptr %1, align 8, !tbaa !54
  %.pre = ptrtoint ptr %i.be to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i, %bb.f
  %.pre-phi = phi i64 [ %.pre, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %i.s, %bb.f ]
  %.0.i.i.i = phi ptr [ %i.be, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %1, %bb.f ]
  %i.bl = ptrtoint ptr %storemerge.i.i.i76 to i64
  %i.bm = sub i64 %i.bl, %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i, i8 %.neg, i64 %i.bm, i1 false)
  %.not27.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = sub nuw nsw i32 64, %i.bd
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = lshr i64 -1, %i.bo                      ; 2 uses
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bq = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !54
  %i.br = or i64 %i.bq, %i.bp
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bs = xor i64 %i.bp, -1
  %i.bt = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !54
  %i.bu = and i64 %i.bt, %i.bs
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.m, %bb.l
  %storemerge.i28.i.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.br, %bb.l ]
  store i64 %storemerge.i28.i.i.i, ptr %storemerge.i.i.i76, align 8, !tbaa !54
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.n:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not25.i.i.i = icmp eq i32 %2, %i.bd
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = shl nsw i64 -1, %i.v
  %i.bw = sub nuw nsw i32 64, %i.bd
end_hunk_0
