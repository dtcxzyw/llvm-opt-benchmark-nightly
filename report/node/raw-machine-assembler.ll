Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/raw-machine-assembler?download=true
inline.NumInlined: 912
inline.NumDeleted: 390
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2v88internal8compiler19RawMachineAssembler26CreateNodeFromPredecessorsERKSt6vectorIPNS1_10BasicBlockESaIS5_EERKS3_IPNS1_4NodeESaISB_EEPKNS1_8OperatorESF_:bb.a

bb.e:                                             ; preds = %bb.c
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.e
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #20 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  %.pre = load ptr, ptr %1, align 8
  %.pre77 = load ptr, ptr %i.a, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit: ; preds = %bb.e, %_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.p = phi ptr [ %.pre77, %_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre, %_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ %i.c, %bb.e ] ; 2 uses
  %.sroa.034.2 = phi ptr [ %i.n, %_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.e ] ; 4 uses
  %.sroa.25.2 = phi ptr [ %i.o, %_ZNSt12_Vector_baseIPN2v88internal8compiler4NodeESaIS4_EE13_M_deallocateEPS4_m.exit.i ], [ null, %bb.e ] ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.p
  br i1 %i.r, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit
  %.sroa.034.0.lcssa = phi ptr [ %.sroa.034.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit ], [ %.sroa.034.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.034.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit ], [ %.sroa.13.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %.sroa.25.0.lcssa = phi ptr [ %.sroa.25.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit ], [ %.sroa.25.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit ] ; 2 uses
  %i.s = load ptr, ptr %4, align 8                ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %._crit_edge73, label %.lr.ph72

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit
  %.sroa.031.064 = phi ptr [ %i.aq, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit ], [ %i.q, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit ] ; 2 uses
  %.sroa.25.063 = phi ptr [ %.sroa.25.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.25.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit ] ; 3 uses
  %.sroa.13.062 = phi ptr [ %.sroa.13.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.034.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit ] ; 3 uses
  %.sroa.034.061 = phi ptr [ %.sroa.034.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.034.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE7reserveEm.exit ] ; 5 uses
  %i.w = load ptr, ptr %.sroa.031.064, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.x, align 8
  %i.y = load ptr, ptr %2, align 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.sroa.0.0.copyload.i15 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.062, %.sroa.25.063
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %.sroa.13.062, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ab = ptrtoint ptr %.sroa.25.063 to i64
  %i.ac = ptrtoint ptr %.sroa.034.061 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.h, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #20 ; 4 uses
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  %i.an = load ptr, ptr %i.z, align 8
  store ptr %i.an, ptr %i.am, align 8
  %i.ao = icmp sgt i64 %i.ad, 0
  br i1 %i.ao, label %bb.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.al, ptr align 8 %.sroa.034.061, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.034.061, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.061, i64 noundef %i.ad) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.f, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.sroa.034.3 = phi ptr [ %i.al, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.034.061, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.am, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.13.062, %bb.f ]
  %.sroa.25.3 = phi ptr [ %i.ap, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.25.063, %bb.f ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.031.064, i64 8 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.p
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

._crit_edge73:                                    ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24, %._crit_edge
  %.sroa.034.1.lcssa = phi ptr [ %.sroa.034.0.lcssa, %._crit_edge ], [ %.sroa.034.4, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24 ] ; 4 uses
  %.sroa.13.1.lcssa = phi ptr [ %.sroa.13.0.lcssa, %._crit_edge ], [ %.sroa.13.4, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24 ]
  %.sroa.25.1.lcssa = phi ptr [ %.sroa.25.0.lcssa, %._crit_edge ], [ %.sroa.25.4, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24 ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = ptrtoint ptr %.sroa.13.1.lcssa to i64
  %i.av = ptrtoint ptr %.sroa.034.1.lcssa to i64  ; 2 uses
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = trunc i64 %i.ax to i32
  %i.az = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef %3, i32 noundef %i.ay, ptr noundef %.sroa.034.1.lcssa, i1 noundef zeroext false) #18 ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %.sroa.034.1.lcssa, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge73
  %i.ba = ptrtoint ptr %.sroa.25.1.lcssa to i64
  %i.bb = sub i64 %i.ba, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.1.lcssa, i64 noundef %i.bb) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

.lr.ph72:                                         ; preds = %._crit_edge, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24
  %.sroa.026.070 = phi ptr [ %i.br, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24 ], [ %i.s, %._crit_edge ] ; 2 uses
  %.sroa.25.169 = phi ptr [ %.sroa.25.4, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24 ], [ %.sroa.25.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.13.168 = phi ptr [ %.sroa.13.4, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24 ], [ %.sroa.13.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.034.167 = phi ptr [ %.sroa.034.4, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24 ], [ %.sroa.034.0.lcssa, %._crit_edge ] ; 5 uses
  %i.bc = load ptr, ptr %.sroa.026.070, align 8   ; 2 uses
  %.not.i17 = icmp eq ptr %.sroa.13.168, %.sroa.25.169
  br i1 %.not.i17, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph72
  store ptr %i.bc, ptr %.sroa.13.168, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24

bb.m:                                             ; preds = %.lr.ph72
  %i.bd = ptrtoint ptr %.sroa.25.169 to i64
  %i.be = ptrtoint ptr %.sroa.034.167 to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.n, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i18

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i18: ; preds = %bb.m
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i19 = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i19, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i20 = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i20)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #20 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 2 uses
  store ptr %i.bc, ptr %i.bo, align 8
  %i.bp = icmp sgt i64 %i.bf, 0
  br i1 %i.bp, label %bb.o, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i21

bb.o:                                             ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i18
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bn, ptr align 8 %.sroa.034.167, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i21

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i21: ; preds = %bb.o, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i18
  %.not.i17.i.i22 = icmp eq ptr %.sroa.034.167, null
  br i1 %.not.i17.i.i22, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i23, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i21
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.167, i64 noundef %i.bf) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i23

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i23: ; preds = %bb.p, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i21
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit24: ; preds = %bb.l, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i23
  %.sroa.034.4 = phi ptr [ %i.bn, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i23 ], [ %.sroa.034.167, %bb.l ] ; 2 uses
  %.pn54 = phi ptr [ %i.bo, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i23 ], [ %.sroa.13.168, %bb.l ]
  %.sroa.25.4 = phi ptr [ %i.bq, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i23 ], [ %.sroa.25.169, %bb.l ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn54, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.026.070, i64 8 ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.u
  br i1 %i.bs, label %._crit_edge73, label %.lr.ph72

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %bb.k, %._crit_edge73, %bb.b
  %.0 = phi ptr [ %i.l, %bb.b ], [ %i.az, %._crit_edge73 ], [ %i.az, %bb.k ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal8compiler19RawMachineAssembler13MakePhiBinaryEPNS1_4NodeEiS4_S4_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load i32, ptr %i.b, align 4              ; 4 uses
  %i.d = icmp eq i32 %i.c, 2
  br i1 %i.d, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i8 @_ZN2v88internal8compiler19PhiRepresentationOfEPKNS1_8OperatorE(ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.f = sub nsw i32 %i.c, %2                     ; 3 uses
  %i.g = icmp eq i32 %2, 1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 251658240
  %.not.i.i.i = icmp eq i32 %i.n, 251658240
  %i.o = ptrtoint ptr %1 to i64
  %i.p = add i64 %i.o, 32
  %i.q = inttoptr i64 %i.p to ptr                 ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = add i64 %i.s, 16
  %i.u = inttoptr i64 %i.t to ptr
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread

bb.g:                                             ; preds = %bb.b
  %i.v = sext i32 %2 to i64                       ; 2 uses
  %i.w = icmp slt i32 %2, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.x = shl nuw nsw i64 %i.v, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #20 ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.v
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = add i64 %i.ab, 32
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.o

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit
  %.not.i = icmp eq ptr %.sroa.13.3, %.sroa.25.3
  br i1 %.not.i, label %._crit_edge.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  store ptr %3, ptr %.sroa.13.3, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit

._crit_edge.thread:                               ; preds = %bb.i, %._crit_edge
  %.sroa.13.0.lcssa201 = phi ptr [ %.sroa.13.3, %._crit_edge ], [ null, %bb.i ]
  %.sroa.0109.0.lcssa200 = phi ptr [ %.sroa.0109.3, %._crit_edge ], [ null, %bb.i ] ; 4 uses
  %i.ae = ptrtoint ptr %.sroa.13.0.lcssa201 to i64
  %i.af = ptrtoint ptr %.sroa.0109.0.lcssa200 to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 6 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.k, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %._crit_edge.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %._crit_edge.thread
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i43 = icmp ne i64 %i.am, 0
  tail call void @llvm.assume(i1 %.not.i.i.i43)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #20 ; 4 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.ag ; 2 uses
  store ptr %3, ptr %i.ap, align 8
  %i.aq = icmp sgt i64 %i.ag, 0
  br i1 %i.aq, label %bb.l, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 8 %.sroa.0109.0.lcssa200, i64 %i.ag, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.0109.0.lcssa200, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0.lcssa200, i64 noundef %i.ag) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.j, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %.sroa.0109.2 = phi ptr [ %i.ao, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.0109.3, %bb.j ] ; 4 uses
  %.pn = phi ptr [ %i.ap, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.13.3, %bb.j ]
  %.sroa.25.2 = phi ptr [ %i.ar, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.25.3, %bb.j ]
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.av = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 noundef zeroext %i.e, i32 noundef %2) #18
  %i.aw = ptrtoint ptr %.sroa.13.2 to i64
  %i.ax = ptrtoint ptr %.sroa.0109.2 to i64       ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = lshr exact i64 %i.ay, 3
  %i.ba = trunc i64 %i.az to i32
  %i.bb = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.at, ptr noundef %i.av, i32 noundef %i.ba, ptr noundef %.sroa.0109.2, i1 noundef zeroext false) #18 ; 2 uses
  %.not.i.i.i44 = icmp eq ptr %.sroa.0109.2, null
  br i1 %.not.i.i.i44, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit
  %i.bc = ptrtoint ptr %.sroa.25.2 to i64
  %i.bd = sub i64 %i.bc, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.2, i64 noundef %i.bd) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit

bb.o:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.25.0158 = phi ptr [ %i.z, %.lr.ph ], [ %.sroa.25.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.13.0157 = phi ptr [ %i.y, %.lr.ph ], [ %.sroa.13.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 3 uses
  %.sroa.0109.0156 = phi ptr [ %i.y, %.lr.ph ], [ %.sroa.0109.3, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit ] ; 5 uses
  %i.be = load ptr, ptr %1, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv, %i.bh
  br i1 %i.bi, label %bb.q, label %bb.p, !prof !6

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #19
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bj = load i32, ptr %i.aa, align 4
  %i.bk = and i32 %i.bj, 251658240
  %.not.i.i.i45 = icmp eq i32 %i.bk, 251658240
  br i1 %.not.i.i.i45, label %bb.r, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit47

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr %i.ad, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = add i64 %i.bm, 16
  %i.bo = inttoptr i64 %i.bn to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit47

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit47: ; preds = %bb.q, %bb.r
  %.sink.i.i.i46 = phi ptr [ %i.bo, %bb.r ], [ %i.ad, %bb.q ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i46, i64 %indvars.iv
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.13.0157, %.sroa.25.0158
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit47
  store ptr %i.bq, ptr %.sroa.13.0157, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit

bb.t:                                             ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit47
  %i.br = ptrtoint ptr %.sroa.25.0158 to i64
  %i.bs = ptrtoint ptr %.sroa.0109.0156 to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.u, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %i.bw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bv ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bv
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #20 ; 4 uses
  %i.cc = getelementptr inbounds i8, ptr %i.cb, i64 %i.bt ; 2 uses
  store ptr %i.bq, ptr %i.cc, align 8
  %i.cd = icmp sgt i64 %i.bt, 0
  br i1 %i.cd, label %bb.v, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cb, ptr align 8 %.sroa.0109.0156, i64 %i.bt, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.v, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0109.0156, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0109.0156, i64 noundef %i.bt) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.w, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.s, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %.sroa.0109.3 = phi ptr [ %i.cb, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0109.0156, %bb.s ] ; 3 uses
  %.pn138 = phi ptr [ %i.cc, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.13.0157, %bb.s ]
  %.sroa.25.3 = phi ptr [ %i.ce, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.25.0158, %bb.s ] ; 3 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn138, i64 8 ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !21

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit: ; preds = %bb.n, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit
  %i.cf = icmp eq i32 %i.f, 1
  br i1 %i.cf, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit..thread_crit_edge, label %bb.aa

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit..thread_crit_edge: ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  %.pre = load ptr, ptr %1, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 20
  %.pre177 = load i32, ptr %.phi.trans.insert, align 4
  br label %.thread

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread: ; preds = %bb.f, %bb.e
  %.sink.i.i.i = phi ptr [ %i.u, %bb.f ], [ %i.q, %bb.e ]
  %i.cg = load ptr, ptr %.sink.i.i.i, align 8     ; 2 uses
  %i.ch = icmp eq i32 %i.f, 1
  br i1 %i.ch, label %.thread, label %bb.aa

.thread:                                          ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit..thread_crit_edge, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread
  %i.ci = phi i32 [ %i.j, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread ], [ %.pre177, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit..thread_crit_edge ]
  %.039135137 = phi ptr [ %i.cg, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread ], [ %i.bb, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit..thread_crit_edge ]
  %i.cj = icmp slt i32 %2, %i.ci
  br i1 %i.cj, label %bb.y, label %bb.x, !prof !6

bb.x:                                             ; preds = %.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #19
  unreachable

bb.y:                                             ; preds = %.thread
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = and i32 %i.cl, 251658240
  %.not.i.i.i48 = icmp eq i32 %i.cm, 251658240
  %i.cn = ptrtoint ptr %1 to i64
  %i.co = add i64 %i.cn, 32
  %i.cp = inttoptr i64 %i.co to ptr               ; 2 uses
  br i1 %.not.i.i.i48, label %bb.z, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit50

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = add i64 %i.cr, 16
  %i.ct = inttoptr i64 %i.cs to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit50

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit50: ; preds = %bb.y, %bb.z
  %.sink.i.i.i49 = phi ptr [ %i.ct, %bb.z ], [ %i.cp, %bb.y ]
  %i.cu = zext nneg i32 %2 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i49, i64 %i.cu
  %i.cw = load ptr, ptr %i.cv, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit60

bb.aa:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit
  %.039134 = phi ptr [ %i.cg, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit.thread ], [ %i.bb, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit ] ; 2 uses
  %i.cx = icmp slt i32 %2, %i.c
  br i1 %i.cx, label %.lr.ph167, label %._crit_edge168.thread

.lr.ph167:                                        ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cz = ptrtoint ptr %1 to i64
  %i.da = add i64 %i.cz, 32
  %i.db = inttoptr i64 %i.da to ptr               ; 2 uses
  %i.dc = zext i32 %2 to i64
  %5 = icmp sgt i32 %2, -1
  br label %6

._crit_edge168:                                   ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71
  %.not.i51 = icmp eq ptr %.sroa.10.2, %.sroa.19.2
  br i1 %.not.i51, label %._crit_edge168.thread, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge168
  store ptr %4, ptr %.sroa.10.2, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit58

._crit_edge168.thread:                            ; preds = %bb.aa, %._crit_edge168
  %.sroa.10.0.lcssa207 = phi ptr [ %.sroa.10.2, %._crit_edge168 ], [ null, %bb.aa ]
  %.sroa.0.0.lcssa206 = phi ptr [ %.sroa.0.2, %._crit_edge168 ], [ null, %bb.aa ] ; 4 uses
  %i.dd = ptrtoint ptr %.sroa.10.0.lcssa207 to i64
  %i.de = ptrtoint ptr %.sroa.0.0.lcssa206 to i64
  %i.df = sub i64 %i.dd, %i.de                    ; 6 uses
  %i.dg = icmp eq i64 %i.df, 9223372036854775800
  br i1 %i.dg, label %bb.ac, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i52

bb.ac:                                            ; preds = %._crit_edge168.thread
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i52: ; preds = %._crit_edge168.thread
  %i.dh = ashr exact i64 %i.df, 3                 ; 3 uses
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.di = add nsw i64 %.sroa.speculated.i.i.i53, %i.dh ; 2 uses
  %i.dj = icmp ult i64 %i.di, %i.dh
  %i.dk = tail call i64 @llvm.umin.i64(i64 %i.di, i64 1152921504606846975)
  %i.dl = select i1 %i.dj, i64 1152921504606846975, i64 %i.dk ; 3 uses
  %.not.i.i.i54 = icmp ne i64 %i.dl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i54)
  %i.dm = shl nuw nsw i64 %i.dl, 3
  %i.dn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #20 ; 4 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.df ; 2 uses
  store ptr %4, ptr %i.do, align 8
  %i.dp = icmp sgt i64 %i.df, 0
  br i1 %i.dp, label %bb.ad, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i55

bb.ad:                                            ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr align 8 %.sroa.0.0.lcssa206, i64 %i.df, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i55

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i55: ; preds = %bb.ad, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i52
  %.not.i17.i.i56 = icmp eq ptr %.sroa.0.0.lcssa206, null
  br i1 %.not.i17.i.i56, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i57, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i55
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa206, i64 noundef %i.df) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i57

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i57: ; preds = %bb.ae, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i55
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dl
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit58

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit58: ; preds = %bb.ab, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i57
  %.sroa.0.1 = phi ptr [ %i.dn, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i57 ], [ %.sroa.0.2, %bb.ab ] ; 4 uses
  %.pn139 = phi ptr [ %i.do, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i57 ], [ %.sroa.10.2, %bb.ab ]
  %.sroa.19.1 = phi ptr [ %i.dq, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i57 ], [ %.sroa.19.2, %bb.ab ]
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn139, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.du = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i8 noundef zeroext %i.e, i32 noundef %i.f) #18
  %i.dv = ptrtoint ptr %.sroa.10.1 to i64
  %i.dw = ptrtoint ptr %.sroa.0.1 to i64          ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = lshr exact i64 %i.dx, 3
  %i.dz = trunc i64 %i.dy to i32
  %i.ea = tail call noundef ptr @_ZN2v88internal8compiler7TFGraph7NewNodeEPKNS1_8OperatorEiPKPNS1_4NodeEb(ptr noundef nonnull align 8 dereferenceable(104) %i.ds, ptr noundef %i.du, i32 noundef %i.dz, ptr noundef %.sroa.0.1, i1 noundef zeroext false) #18 ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit60, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit58
  %i.eb = ptrtoint ptr %.sroa.19.1 to i64
  %i.ec = sub i64 %i.eb, %i.dw
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ec) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit60

6:                                                ; preds = %.lr.ph167, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71
  %indvars.iv174 = phi i64 [ %i.dc, %.lr.ph167 ], [ %indvars.iv.next175, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71 ] ; 3 uses
  %.sroa.19.0164 = phi ptr [ null, %.lr.ph167 ], [ %.sroa.19.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71 ] ; 3 uses
  %.sroa.10.0163 = phi ptr [ null, %.lr.ph167 ], [ %.sroa.10.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71 ] ; 3 uses
  %.sroa.0.0162 = phi ptr [ null, %.lr.ph167 ], [ %.sroa.0.2, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71 ] ; 5 uses
  br i1 %5, label %bb.ag, label %7, !prof !6

7:                                                ; preds = %6
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6) #19
  unreachable

bb.ag:                                            ; preds = %6
  %i.ed = load ptr, ptr %1, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 20
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = trunc nuw i64 %indvars.iv174 to i32
  %i.eh = icmp sgt i32 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ai, label %bb.ah, !prof !6

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7) #19
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ei = load i32, ptr %i.cy, align 4
  %i.ej = and i32 %i.ei, 251658240
  %.not.i.i.i61 = icmp eq i32 %i.ej, 251658240
  br i1 %.not.i.i.i61, label %bb.aj, label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit63

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load ptr, ptr %i.db, align 8
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = add i64 %i.el, 16
  %i.en = inttoptr i64 %i.em to ptr
  br label %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit63

_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit63: ; preds = %bb.ai, %bb.aj
  %.sink.i.i.i62 = phi ptr [ %i.en, %bb.aj ], [ %i.db, %bb.ai ]
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sink.i.i.i62, i64 %indvars.iv174
  %i.ep = load ptr, ptr %i.eo, align 8            ; 2 uses
  %.not.i.i64 = icmp eq ptr %.sroa.10.0163, %.sroa.19.0164
  br i1 %.not.i.i64, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit63
  store ptr %i.ep, ptr %.sroa.10.0163, align 8
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71

bb.al:                                            ; preds = %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit63
  %i.eq = ptrtoint ptr %.sroa.19.0164 to i64
  %i.er = ptrtoint ptr %.sroa.0.0162 to i64
  %i.es = sub i64 %i.eq, %i.er                    ; 6 uses
  %i.et = icmp eq i64 %i.es, 9223372036854775800
  br i1 %i.et, label %bb.am, label %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i65

bb.am:                                            ; preds = %bb.al
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i65: ; preds = %bb.al
  %i.eu = ashr exact i64 %i.es, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i66 = tail call i64 @llvm.umax.i64(i64 %i.eu, i64 1)
  %i.ev = add nsw i64 %.sroa.speculated.i.i.i.i66, %i.eu ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %i.eu
  %i.ex = tail call i64 @llvm.umin.i64(i64 %i.ev, i64 1152921504606846975)
  %i.ey = select i1 %i.ew, i64 1152921504606846975, i64 %i.ex ; 3 uses
  %.not.i.i.i.i67 = icmp ne i64 %i.ey, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i67)
  %i.ez = shl nuw nsw i64 %i.ey, 3
  %i.fa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ez) #20 ; 4 uses
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.es ; 2 uses
  store ptr %i.ep, ptr %i.fb, align 8
  %i.fc = icmp sgt i64 %i.es, 0
  br i1 %i.fc, label %bb.an, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i68

bb.an:                                            ; preds = %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i65
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fa, ptr align 8 %.sroa.0.0162, i64 %i.es, i1 false)
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i68

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i68: ; preds = %bb.an, %_ZNKSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i65
  %.not.i17.i.i.i69 = icmp eq ptr %.sroa.0.0162, null
  br i1 %.not.i17.i.i.i69, label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i70, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i68
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0162, i64 noundef %i.es) #21
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i70

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i70: ; preds = %bb.ao, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i68
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ey
  br label %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backEOS4_.exit71: ; preds = %bb.ak, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i70
  %.sroa.0.2 = phi ptr [ %i.fa, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i70 ], [ %.sroa.0.0162, %bb.ak ] ; 3 uses
  %.pn140 = phi ptr [ %i.fb, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i70 ], [ %.sroa.10.0163, %bb.ak ]
  %.sroa.19.2 = phi ptr [ %i.fd, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i70 ], [ %.sroa.19.0164, %bb.ak ] ; 3 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn140, i64 8 ; 5 uses
  %indvars.iv.next175 = add nuw nsw i64 %indvars.iv174, 1 ; 2 uses
  %i.fe = trunc nuw i64 %indvars.iv.next175 to i32
  %i.ff = icmp sgt i32 %i.c, %i.fe
  br i1 %i.ff, label %6, label %._crit_edge168, !llvm.loop !22

_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit60: ; preds = %bb.af, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit58, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit50
  %.039133 = phi ptr [ %.039135137, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit50 ], [ %.039134, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit58 ], [ %.039134, %bb.af ] ; 5 uses
  %.037 = phi ptr [ %i.cw, %_ZN2v88internal8compiler14NodeProperties13GetValueInputEPNS1_4NodeEi.exit50 ], [ %i.ea, %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EE9push_backERKS4_.exit58 ], [ %i.ea, %bb.af ] ; 5 uses
  %i.fg = load ptr, ptr %1, align 8               ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 28
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %bb.aq, label %bb.ap, !prof !6

bb.ap:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit60
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.11) #19
  unreachable

bb.aq:                                            ; preds = %_ZNSt6vectorIPN2v88internal8compiler4NodeESaIS4_EED2Ev.exit60
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 20
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties15HasContextInputEPKNS1_8OperatorE(ptr noundef nonnull %i.fg) #18
  %i.fn = load ptr, ptr %1, align 8
  %i.fo = tail call noundef zeroext i1 @_ZN2v88internal8compiler18OperatorProperties18HasFrameStateInputEPKNS1_8OperatorE(ptr noundef %i.fn) #18
  %i.fp = load ptr, ptr %1, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load i32, ptr %i.fq, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = and i32 %i.ft, 251658240
  %.not.i.i.i72 = icmp eq i32 %i.fu, 251658240
  %i.fv = ptrtoint ptr %1 to i64
  %i.fw = add i64 %i.fv, 32
  %i.fx = inttoptr i64 %i.fw to ptr               ; 8 uses
  br i1 %.not.i.i.i72, label %bb.ar, label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

bb.ar:                                            ; preds = %bb.aq
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = add i64 %i.fz, 16
  %i.gb = inttoptr i64 %i.ga to ptr
  br label %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit

_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit: ; preds = %bb.aq, %bb.ar
  %.sink.i.i.i73 = phi ptr [ %i.gb, %bb.ar ], [ %i.fx, %bb.aq ]
  %i.gc = zext i1 %i.fm to i32
  %i.gd = zext i1 %i.fo to i32
  %i.ge = add i32 %i.fl, %i.gc
  %i.gf = add i32 %i.ge, %i.gd
  %i.gg = add i32 %i.gf, %i.fr
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i73, i64 %i.gh
  %i.gj = load ptr, ptr %i.gi, align 8            ; 5 uses
  tail call void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 3) #18
  %i.gk = load i32, ptr %i.fs, align 4
  %i.gl = and i32 %i.gk, 251658240
  %.not.i.i74 = icmp eq i32 %i.gl, 251658240
  %i.gm = load ptr, ptr %i.fx, align 8            ; 4 uses
  br i1 %.not.i.i74, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = add i64 %i.gn, 16
  %i.gp = inttoptr i64 %i.go to ptr               ; 2 uses
  %i.gq = load ptr, ptr %i.gp, align 8            ; 2 uses
  %.not.i75 = icmp eq ptr %i.gq, %.039133
  br i1 %.not.i75, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i: ; preds = %_ZN2v88internal8compiler14NodeProperties15GetControlInputEPNS1_4NodeEi.exit
  %.not18.i = icmp eq ptr %i.gm, %.039133
  br i1 %.not18.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i
  %i.gr = phi ptr [ %i.fx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.gp, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.gs = phi ptr [ %i.gm, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.gq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ] ; 2 uses
  %i.gt = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i ], [ %i.gm, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i ]
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -24 ; 2 uses
  %.not14.i = icmp eq ptr %i.gs, null
  br i1 %.not14.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.gs, ptr noundef nonnull %i.gu) #18
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i
  store ptr %.039133, ptr %i.gr, align 8
  %.not15.i = icmp eq ptr %.039133, null
  br i1 %.not15.i, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.039133, ptr noundef nonnull %i.gu) #18
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i, %bb.at, %bb.au
  %i.gv = load i32, ptr %i.fs, align 4
  %i.gw = and i32 %i.gv, 251658240
  %.not.i.i76 = icmp eq i32 %i.gw, 251658240
  br i1 %.not.i.i76, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i82, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i77

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i82: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.gx = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = add i64 %i.gy, 16
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %.not.i83 = icmp eq ptr %i.hc, %.037
  br i1 %.not.i83, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit84, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i79

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i77: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.he = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not18.i78 = icmp eq ptr %i.he, %.037
  br i1 %.not18.i78, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit84, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i79

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i79: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i77, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i82
  %i.hf = phi ptr [ %i.hd, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i77 ], [ %i.hb, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i82 ]
  %i.hg = phi ptr [ %i.he, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i77 ], [ %i.hc, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i82 ] ; 2 uses
  %i.hh = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i77 ], [ %i.gx, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i82 ]
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 -48 ; 2 uses
  %.not14.i80 = icmp eq ptr %i.hg, null
  br i1 %.not14.i80, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i79
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull %i.hi) #18
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i79
  store ptr %.037, ptr %i.hf, align 8
  %.not15.i81 = icmp eq ptr %.037, null
  br i1 %.not15.i81, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit84, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %.037, ptr noundef nonnull %i.hi) #18
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit84

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit84: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i82, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i77, %bb.aw, %bb.ax
  %i.hj = load i32, ptr %i.fs, align 4
  %i.hk = and i32 %i.hj, 251658240
  %.not.i.i85 = icmp eq i32 %i.hk, 251658240
  br i1 %.not.i.i85, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i91, label %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i86

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i91: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit84
  %i.hl = load ptr, ptr %i.fx, align 8            ; 2 uses
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = add i64 %i.hm, 16
  %i.ho = inttoptr i64 %i.hn to ptr
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8            ; 2 uses
  %.not.i92 = icmp eq ptr %i.hq, %i.gj
  br i1 %.not.i92, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit93, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i88

_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i86: ; preds = %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit84
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.hs = load ptr, ptr %i.hr, align 8            ; 2 uses
  %.not18.i87 = icmp eq ptr %i.hs, %i.gj
  br i1 %.not18.i87, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit93, label %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i88

_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i88: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i86, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i91
  %i.ht = phi ptr [ %i.hr, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i86 ], [ %i.hp, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i91 ]
  %i.hu = phi ptr [ %i.hs, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i86 ], [ %i.hq, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i91 ] ; 2 uses
  %i.hv = phi ptr [ %1, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i86 ], [ %i.hl, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i91 ]
  %i.hw = getelementptr inbounds i8, ptr %i.hv, i64 -72 ; 2 uses
  %.not14.i89 = icmp eq ptr %i.hu, null
  br i1 %.not14.i89, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i88
  tail call void @_ZN2v88internal8compiler4Node9RemoveUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef nonnull %i.hw) #18
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZN2v88internal8compiler4Node9GetUsePtrEi.exit.i88
  store ptr %i.gj, ptr %i.ht, align 8
  %.not15.i90 = icmp eq ptr %i.gj, null
  br i1 %.not15.i90, label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit93, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @_ZN2v88internal8compiler4Node9AppendUseEPNS2_3UseE(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, ptr noundef nonnull %i.hw) #18
  br label %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit93

_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit93: ; preds = %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.i91, %_ZN2v88internal8compiler4Node11GetInputPtrEi.exit.thread.i86, %bb.az, %bb.ba
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hy = tail call noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i8 noundef zeroext %i.e, i32 noundef 2) #18
  tail call void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef nonnull %1, ptr noundef %i.hy) #18
  br label %bb.bb

bb.bb:                                            ; preds = %bb.a, %_ZN2v88internal8compiler4Node12ReplaceInputEiPS2_.exit93
  ret void
}

declare noundef zeroext i8 @_ZN2v88internal8compiler19PhiRepresentationOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder3PhiENS0_21MachineRepresentationEi(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler4Node14TrimInputCountEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

declare void @_ZN2v88internal8compiler14NodeProperties8ChangeOpEPNS1_4NodeEPKNS1_8OperatorE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 4 dereferenceable(12) ptr @_ZN2v88internal8compiler19IfValueParametersOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder7IfValueEiiNS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i8 @_ZN2v88internal8compiler12BranchHintOfEPKNS1_8OperatorE(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN2v88internal8compiler21CommonOperatorBuilder9IfDefaultENS0_10BranchHintE(ptr noundef nonnull align 8 dereferenceable(16), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #5
end_hunk_0
