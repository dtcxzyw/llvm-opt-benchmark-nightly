inline.NumInlined: 8096
inline.NumDeleted: 3435
begin_hunk_0_@_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE:bb.a
  %.0 = phi i32 [ %i.p, %bb.c ], [ %i.i, %bb.b ]  ; 3 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !467    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.w = load i32, ptr %i.v, align 4, !tbaa !35   ; 2 uses
  %.not25 = icmp eq i32 %i.w, -1
  br i1 %.not25, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !200
  tail call void @_ZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull %i.h, ptr noundef %i.aa, ptr noundef nonnull %2)
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !469 ; 4 uses
  %i.ac = load ptr, ptr %2, align 8, !tbaa !467   ; 5 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %.not = icmp eq i64 %i.af, %i.u
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.u
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !33
  %i.ai = getelementptr i8, ptr %i.ah, i64 4
  %.val = load i32, ptr %i.ai, align 4, !tbaa !42 ; 2 uses
  %.not.i = icmp ugt i32 %.0, %.val
  %cond.fr = freeze i1 %.not.i
  br i1 %cond.fr, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aj = phi ptr [ %i.ab, %bb.e ], [ %i.ab, %bb.f ], [ %i.q, %bb.d ]
  %i.ak = phi ptr [ %i.ac, %bb.e ], [ %i.ac, %bb.f ], [ %i.r, %bb.d ]
  %.1 = phi i32 [ %.0, %bb.e ], [ %.val, %bb.f ], [ %.0, %bb.d ]
  %.not21 = icmp eq i32 %.1, -1
  br i1 %.not21, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.g
  %i.al = phi ptr [ %i.ab, %bb.f ], [ %i.aj, %bb.g ]
  %i.am = phi ptr [ %i.ac, %bb.f ], [ %i.ak, %bb.g ]
  tail call fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_(ptr %i.am, ptr %i.al)
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE5clearEv.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !146  ; 2 uses
  %.not76 = icmp eq i32 %i.b, -1
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !470
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !204  ; 2 uses
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !471
  %i.m = load ptr, ptr %3, align 8, !tbaa !467    ; 4 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  %i.r = icmp ult i64 %i.q, %i.i
  br i1 %i.r, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !469
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.o                       ; 3 uses
  %i.w = shl nuw nsw i64 %i.i, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #38 ; 4 uses
  %i.y = icmp sgt i64 %i.v, 0
  br i1 %i.y, label %bb.d, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.m, i64 %i.v, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.m, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.p) #39
  br label %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i

_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i: ; preds = %bb.e, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.x, ptr %3, align 8, !tbaa !467
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.z, ptr %i.s, align 8, !tbaa !469
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aa, ptr %i.k, align 8, !tbaa !471
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIPKN6google8protobuf15FieldDescriptorESaIS4_EE13_M_deallocateEPS4_m.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !206 ; 2 uses
  %i.ad = load i32, ptr %0, align 8, !tbaa !198
  %i.ae = sext i32 %i.ad to i64
  %.idx = mul nsw i64 %i.ae, 88
  %i.af = add nsw i64 %.idx, 88                   ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ac, i64 %i.af
  %.not80 = icmp eq i64 %i.af, 0
  br i1 %.not80, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit
  %.072.lcssa = phi i32 [ 0, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE7reserveEm.exit ], [ %.1, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ]
  ret i32 %.072.lcssa

bb.f:                                             ; preds = %.lr.ph, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit
  %indvars.iv = phi i64 [ -1, %.lr.ph ], [ %indvars.iv.next, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ]
  %.03182 = phi ptr [ %i.ac, %.lr.ph ], [ %i.ed, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ] ; 17 uses
  %.07281 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit ] ; 7 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03182, i64 3
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = and i8 %i.ak, 8
  %.not.i.i.not = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.not, label %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.03182, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = and i8 %i.an, 16
  %.not.i = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %.03182, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !50 ; 2 uses
  %.0.i = select i1 %.not.i, ptr null, ptr %i.aq  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i) ]
  %i.ar = load i32, ptr %i.ah, align 8, !tbaa !472
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !54
  %i.ay = ptrtoint ptr %.0.i to i64
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = sdiv exact i64 %i.ba, 56
  %sext = shl i64 %i.bb, 32
  %i.bc = ashr exact i64 %sext, 30
  %i.bd = getelementptr inbounds i8, ptr %i.at, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %.03182, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !42 ; 3 uses
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp eq i64 %i.bf, %i.bi
  br i1 %i.bj, label %bb.h, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i36 = icmp ugt i32 %.07281, %i.bh
  %spec.select.i.i = select i1 %.not.i.i36, i32 -1, i32 %i.bh ; 2 uses
  %i.bk = load ptr, ptr %i.ai, align 8, !tbaa !469 ; 4 uses
  %i.bl = load ptr, ptr %i.k, align 8, !tbaa !471
  %.not.i.i.i37 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i.i37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %.03182, ptr %i.bk, align 8, !tbaa !33
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr %i.bm, ptr %i.ai, align 8, !tbaa !469
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.j:                                             ; preds = %bb.h
  %i.bn = load ptr, ptr %3, align 8, !tbaa !467   ; 4 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 6 uses
  %i.br = icmp eq i64 %i.bq, 9223372036854775800
  br i1 %i.br, label %bb.k, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.bs = ashr exact i64 %i.bq, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bs, i64 1)
  %i.bt = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bs ; 2 uses
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #38 ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bq ; 2 uses
  store ptr %.03182, ptr %i.bx, align 8, !tbaa !33
  %i.by = icmp sgt i64 %i.bq, 0
  br i1 %i.by, label %bb.l, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr align 8 %i.bn, i64 %i.bq, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bq) #39
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.m, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i
  store ptr %i.bw, ptr %3, align 8, !tbaa !467
  store ptr %i.bz, ptr %i.ai, align 8, !tbaa !469
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.ca, ptr %i.k, align 8, !tbaa !471
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.f
  br i1 %.not76, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 3 uses
  %.not35 = icmp eq i32 %i.cc, -1
  br i1 %.not35, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = lshr i32 %i.cc, 5
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3
  %i.ch = and i32 %i.cc, 31
  %i.ci = lshr i32 %i.cg, %i.ch
  %i.cj = trunc i32 %i.ci to i1
  br i1 %i.cj, label %bb.p, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.p:                                             ; preds = %bb.o
  %i.ck = tail call noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor12has_presenceEv(ptr noundef nonnull align 8 dereferenceable(88) %.03182)
  br i1 %i.ck, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = getelementptr i8, ptr %.03182, i64 32
  %.val.i39 = load ptr, ptr %i.cl, align 8, !tbaa !101 ; 2 uses
  %.not.i.i40 = icmp eq ptr %.val.i39, null
  br i1 %.not.i.i40, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, label %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i

_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i: ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.val.i39, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !254
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 51
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !31, !range !84, !noundef !50
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit: ; preds = %bb.q, %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i
  %i.cr = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection31IsImplicitPresenceFieldNonEmptyERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03182)
  br i1 %i.cr, label %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread: ; preds = %_ZN6google8protobuf12_GLOBAL__N_110IsMapEntryEPKNS0_15FieldDescriptorE.exit.i, %bb.p, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.03182, i64 4
  %.val.i41 = load i32, ptr %i.cs, align 4, !tbaa !42 ; 2 uses
  %.not.i.i42 = icmp ugt i32 %.07281, %.val.i41
  %spec.select.i.i43 = select i1 %.not.i.i42, i32 -1, i32 %.val.i41 ; 2 uses
  %i.ct = load ptr, ptr %i.ai, align 8, !tbaa !469 ; 4 uses
  %i.cu = load ptr, ptr %i.k, align 8, !tbaa !471
  %.not.i.i.i44 = icmp eq ptr %i.ct, %i.cu
  br i1 %.not.i.i.i44, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread
  store ptr %.03182, ptr %i.ct, align 8, !tbaa !33
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cv, ptr %i.ai, align 8, !tbaa !469
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.s:                                             ; preds = %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit.thread
  %i.cw = load ptr, ptr %3, align 8, !tbaa !467   ; 4 uses
  %i.cx = ptrtoint ptr %i.ct to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy                    ; 6 uses
  %i.da = icmp eq i64 %i.cz, 9223372036854775800
  br i1 %i.da, label %bb.t, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45: ; preds = %bb.s
  %i.db = ashr exact i64 %i.cz, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.db, i64 1)
  %i.dc = add nsw i64 %.sroa.speculated.i.i.i.i.i46, %i.db ; 2 uses
  %i.dd = tail call i64 @llvm.umin.i64(i64 %i.dc, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i47 = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i47)
  %i.de = shl nuw nsw i64 %i.dd, 3
  %i.df = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.de) #38 ; 4 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 %i.cz ; 2 uses
  store ptr %.03182, ptr %i.dg, align 8, !tbaa !33
  %i.dh = icmp sgt i64 %i.cz, 0
  br i1 %i.dh, label %bb.u, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48

bb.u:                                             ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr align 8 %i.cw, i64 %i.cz, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48: ; preds = %bb.u, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i45
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.not.i17.i.i.i.i49 = icmp eq ptr %i.cw, null
  br i1 %.not.i17.i.i.i.i49, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.cz) #39
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50: ; preds = %bb.v, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i48
  store ptr %i.df, ptr %3, align 8, !tbaa !467
  store ptr %i.di, ptr %i.ai, align 8, !tbaa !469
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %i.dd
  store ptr %i.dj, ptr %i.k, align 8, !tbaa !471
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.w:                                             ; preds = %bb.n, %_ZNK6google8protobuf8internal16ReflectionSchema11InRealOneofEPKNS0_15FieldDescriptorE.exit
  %i.dk = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection19HasFieldWithHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %.03182)
  br i1 %i.dk, label %bb.x, label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.03182, i64 4
  %.val.i52 = load i32, ptr %i.dl, align 4, !tbaa !42 ; 2 uses
  %.not.i.i53 = icmp ugt i32 %.07281, %.val.i52
  %spec.select.i.i54 = select i1 %.not.i.i53, i32 -1, i32 %.val.i52 ; 2 uses
  %i.dm = load ptr, ptr %i.ai, align 8, !tbaa !469 ; 4 uses
  %i.dn = load ptr, ptr %i.k, align 8, !tbaa !471
  %.not.i.i.i55 = icmp eq ptr %i.dm, %i.dn
  br i1 %.not.i.i.i55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %.03182, ptr %i.dm, align 8, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.do, ptr %i.ai, align 8, !tbaa !469
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

bb.z:                                             ; preds = %bb.x
  %i.dp = load ptr, ptr %3, align 8, !tbaa !467   ; 4 uses
  %i.dq = ptrtoint ptr %i.dm to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr                    ; 6 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775800
  br i1 %i.dt, label %bb.aa, label %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
  unreachable

_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56: ; preds = %bb.z
  %i.du = ashr exact i64 %i.ds, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i57 = tail call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i.i57, %i.du ; 2 uses
  %i.dw = tail call i64 @llvm.umin.i64(i64 %i.dv, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i.i58 = icmp ne i64 %i.dv, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i58)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #38 ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 %i.ds ; 2 uses
  store ptr %.03182, ptr %i.dz, align 8, !tbaa !33
  %i.ea = icmp sgt i64 %i.ds, 0
  br i1 %i.ea, label %bb.ab, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59

bb.ab:                                            ; preds = %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr align 8 %i.dp, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59: ; preds = %bb.ab, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i56
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.not.i17.i.i.i.i60 = icmp eq ptr %i.dp, null
  br i1 %.not.i17.i.i.i.i60, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef %i.ds) #39
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61: ; preds = %bb.ac, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i.i59
  store ptr %i.dy, ptr %3, align 8, !tbaa !467
  store ptr %i.eb, ptr %i.ai, align 8, !tbaa !469
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dw
  store ptr %i.ec, ptr %i.k, align 8, !tbaa !471
  br label %_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit

_ZZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb0EPSt6vectorIPKNS0_15FieldDescriptorESaIS6_EEEEiRKNS0_7MessageERKNS0_10DescriptorET0_ENKUlRS5_E_clESH_.exit: ; preds = %bb.o, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61, %bb.y, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50, %bb.r, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.i, %bb.g, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit, %bb.w
  %.1 = phi i32 [ %.07281, %_ZNK6google8protobuf10Reflection26IsFieldPresentGivenHasbitsERKNS0_7MessageEPKNS0_15FieldDescriptorEPKjj.exit ], [ %.07281, %bb.g ], [ %spec.select.i.i43, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i50 ], [ %.07281, %bb.w ], [ %spec.select.i.i54, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i61 ], [ %spec.select.i.i, %bb.i ], [ %spec.select.i.i, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i ], [ %spec.select.i.i43, %bb.r ], [ %spec.select.i.i54, %bb.y ], [ %.07281, %bb.o ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.03182, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.ed, %i.ag
  br i1 %.not, label %._crit_edge, label %bb.f
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_117FieldNumberSorterEEvT_SE_T0_(ptr %0, ptr %1) unnamed_addr #16 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 128
  %scevgep.i.i = getelementptr i8, ptr %0, i64 8  ; 3 uses
  br i1 %i.h, label %.lr.ph.i.i.i, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i
  %.sroa.0.019.i.idx.i.i = phi i64 [ %.sroa.0.019.i.add.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i ], [ 8, %bb.b ] ; 4 uses
  %.pn18.i.i.i = phi ptr [ %.sroa.0.019.i.ptr.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %.sroa.0.019.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.019.i.idx.i.i ; 4 uses
  %i.i = load ptr, ptr %.sroa.0.019.i.ptr.i.i, align 8, !tbaa !33 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 4
  %.val.i.i.i.i = load i32, ptr %i.k, align 4, !tbaa !42 ; 3 uses
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.l, align 4, !tbaa !42
  %i.m = icmp slt i32 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = icmp samesign ugt i64 %.sroa.0.019.i.idx.i.i, 8
  br i1 %i.n, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.sroa.0.019.i.idx.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i, i64 8
  store ptr %i.j, ptr %i.o, align 8, !tbaa !33
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.p = load ptr, ptr %.pn18.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val2.i7.i.i.i.i = load i32, ptr %i.q, align 4, !tbaa !42
  %i.r = icmp slt i32 %.val.i.i.i.i, %.val2.i7.i.i.i.i
  br i1 %i.r, label %.lr.ph.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %bb.f ]
  %.sroa.0.09.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pn18.i.i.i, %bb.f ] ; 3 uses
  %.sroa.03.08.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i, %bb.f ]
  store ptr %i.s, ptr %.sroa.03.08.i.i.i.i, align 8, !tbaa !33
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i, i64 -8 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 4
  %.val2.i.i.i.i.i = load i32, ptr %i.u, align 4, !tbaa !42
  %i.v = icmp slt i32 %.val.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i, !llvm.loop !473

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.019.i.ptr.i.i, %bb.f ], [ %.sroa.0.09.i.i.i.i, %.lr.ph.i.i.i.i ]
  store ptr %i.i, ptr %.sink.i.i.i, align 8, !tbaa !33
  %.sroa.0.019.i.add.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i, 8 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i, 128
  br i1 %.not.i.i.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !474

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit.i.i: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.w, %1
  br i1 %.not6.i.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i12.i.i

.lr.ph.i12.i.i:                                   ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i
  %.sroa.0.07.i.i.i = phi ptr [ %i.ag, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i ], [ %i.w, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit.i.i ] ; 5 uses
  %i.x = load ptr, ptr %.sroa.0.07.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val.val.i.i.i.i = load i32, ptr %i.y, align 4, !tbaa !42 ; 2 uses
  %.sroa.0.06.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i, i64 -8 ; 2 uses
  %i.z = load ptr, ptr %.sroa.0.06.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.val2.i7.i.i13.i.i = load i32, ptr %i.aa, align 4, !tbaa !42
  %i.ab = icmp slt i32 %.val.val.i.i.i.i, %.val2.i7.i.i13.i.i
  br i1 %i.ab, label %.lr.ph.i.i15.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i

.lr.ph.i.i15.i.i:                                 ; preds = %.lr.ph.i12.i.i, %.lr.ph.i.i15.i.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i15.i.i ], [ %i.z, %.lr.ph.i12.i.i ]
  %.sroa.0.09.i.i16.i.i = phi ptr [ %.sroa.0.0.i.i18.i.i, %.lr.ph.i.i15.i.i ], [ %.sroa.0.06.i.i.i.i, %.lr.ph.i12.i.i ] ; 3 uses
  %.sroa.03.08.i.i17.i.i = phi ptr [ %.sroa.0.09.i.i16.i.i, %.lr.ph.i.i15.i.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i12.i.i ]
  store ptr %i.ac, ptr %.sroa.03.08.i.i17.i.i, align 8, !tbaa !33
  %.sroa.0.0.i.i18.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i16.i.i, i64 -8 ; 2 uses
  %i.ad = load ptr, ptr %.sroa.0.0.i.i18.i.i, align 8, !tbaa !33 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val2.i.i.i19.i.i = load i32, ptr %i.ae, align 4, !tbaa !42
  %i.af = icmp slt i32 %.val.val.i.i.i.i, %.val2.i.i.i19.i.i
  br i1 %i.af, label %.lr.ph.i.i15.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i, !llvm.loop !473

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i: ; preds = %.lr.ph.i.i15.i.i, %.lr.ph.i12.i.i
  %.sroa.03.0.lcssa.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i, %.lr.ph.i12.i.i ], [ %.sroa.0.09.i.i16.i.i, %.lr.ph.i.i15.i.i ]
  store ptr %i.x, ptr %.sroa.03.0.lcssa.i.i.i.i, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 8 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.ag, %1
  br i1 %.not.i14.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i12.i.i, !llvm.loop !475

bb.g:                                             ; preds = %bb.b
  %.not17.i22.i.i = icmp eq ptr %scevgep.i.i, %1
  br i1 %.not17.i22.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i23.i.i

.lr.ph.i23.i.i:                                   ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i
  %.sroa.0.019.i24.i.i = phi ptr [ %.sroa.0.0.i31.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i ], [ %scevgep.i.i, %bb.g ] ; 6 uses
  %.pn18.i25.i.i = phi ptr [ %.sroa.0.019.i24.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i ], [ %0, %bb.g ] ; 4 uses
  %i.ah = load ptr, ptr %.sroa.0.019.i24.i.i, align 8, !tbaa !33 ; 2 uses
  %i.ai = load ptr, ptr %0, align 8, !tbaa !33    ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ah, i64 4
  %.val.i.i26.i.i = load i32, ptr %i.aj, align 4, !tbaa !42 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 4
  %.val1.i.i27.i.i = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.al = icmp slt i32 %.val.i.i26.i.i, %.val1.i.i27.i.i
  br i1 %i.al, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i23.i.i
  %i.am = ptrtoint ptr %.sroa.0.019.i24.i.i to i64
  %i.an = sub i64 %i.am, %i.b                     ; 3 uses
  %i.ao = ashr exact i64 %i.an, 3                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 1
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i, i64 16
  %i.ar = sub nsw i64 0, %i.ao
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.as, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.an, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

bb.j:                                             ; preds = %bb.h
  %i.at = icmp eq i64 %i.an, 8
  br i1 %i.at, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %.pn18.i25.i.i, i64 8
  store ptr %i.ai, ptr %i.au, align 8, !tbaa !33
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

bb.l:                                             ; preds = %.lr.ph.i23.i.i
  %i.av = load ptr, ptr %.pn18.i25.i.i, align 8, !tbaa !33 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %.val2.i7.i.i28.i.i = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ax = icmp slt i32 %.val.i.i26.i.i, %.val2.i7.i.i28.i.i
  br i1 %i.ax, label %.lr.ph.i.i33.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i

.lr.ph.i.i33.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i33.i.i
  %i.ay = phi ptr [ %i.az, %.lr.ph.i.i33.i.i ], [ %i.av, %bb.l ]
  %.sroa.0.09.i.i34.i.i = phi ptr [ %.sroa.0.0.i.i36.i.i, %.lr.ph.i.i33.i.i ], [ %.pn18.i25.i.i, %bb.l ] ; 3 uses
  %.sroa.03.08.i.i35.i.i = phi ptr [ %.sroa.0.09.i.i34.i.i, %.lr.ph.i.i33.i.i ], [ %.sroa.0.019.i24.i.i, %bb.l ]
  store ptr %i.ay, ptr %.sroa.03.08.i.i35.i.i, align 8, !tbaa !33
  %.sroa.0.0.i.i36.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i34.i.i, i64 -8 ; 2 uses
  %i.az = load ptr, ptr %.sroa.0.0.i.i36.i.i, align 8, !tbaa !33 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  %.val2.i.i.i37.i.i = load i32, ptr %i.ba, align 4, !tbaa !42
  %i.bb = icmp slt i32 %.val.i.i26.i.i, %.val2.i.i.i37.i.i
  br i1 %i.bb, label %.lr.ph.i.i33.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i, !llvm.loop !473

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i: ; preds = %.lr.ph.i.i33.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i30.i.i = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.019.i24.i.i, %bb.l ], [ %.sroa.0.09.i.i34.i.i, %.lr.ph.i.i33.i.i ]
  store ptr %i.ah, ptr %.sink.i30.i.i, align 8, !tbaa !33
  %.sroa.0.0.i31.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i24.i.i, i64 8 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.sroa.0.0.i31.i.i, %1
  br i1 %.not.i32.i.i, label %_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit, label %.lr.ph.i23.i.i, !llvm.loop !474

_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i29.i.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_T0_.exit.i.i.i, %bb.a, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_117FieldNumberSorterEEEEvT_SH_T0_.exit.i.i, %bb.g
  ret void
}

declare void @_ZNK6google8protobuf8internal12ExtensionSet12AppendToListEPKNS0_10DescriptorEPKNS0_14DescriptorPoolEPSt6vectorIPKNS0_15FieldDescriptorESaISC_EE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection32IsEmptyIgnoringUnknownFieldsImplERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.c = tail call noundef i32 @_ZNK6google8protobuf10Reflection25IsEmptyOrCollectSetFieldsILb1EDnEEiRKNS0_7MessageERKNS0_10DescriptorET0_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(160) %i.b, ptr null)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE:bb.a
bb.e:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.i, align 8, !tbaa !507
  %i.p = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i32 %i.o, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 3627) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 13, ptr nonnull @.str.108)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.r = and i8 %.sroa.5.053, -16                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i32 0, ptr %.054, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.054, i64 4
  store i8 %i.r, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !31
  br label %bb.an

bb.i:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = call noundef ptr @_ZNK6google8protobuf10Reflection25GetDefaultMessageInstanceEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.u)
  %i.w = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store ptr %i.v, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.j:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.z = load <2 x i32>, ptr %i.x, align 8, !tbaa !31
  store <2 x i32> %i.z, ptr %.054, align 8, !tbaa !3
  br label %bb.an

bb.k:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.ab) ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !536
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !537 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %i.ac, ptr %3, align 8, !tbaa !546
  store ptr @"_ZZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_E8type_key", ptr %i.e, align 8, !tbaa !548
  call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !549
  %i.aj = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %bb.n       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.ak = extractvalue { ptr, ptr } %i.aj, 0
  %.not.i = icmp eq ptr %i.ak, null               ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = extractvalue { ptr, ptr } %i.aj, 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !551
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i unwind label %bb.ai

bb.o:                                             ; preds = %bb.m, %bb.l
  %.014.i = phi ptr [ %i.ao, %bb.m ], [ undef, %bb.l ]
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #37
  unreachable

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i: ; preds = %bb.o
  br i1 %.not.i, label %bb.q, label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit"

bb.q:                                             ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i
  %i.as = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38, !noalias !553 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEE, i64 16), ptr %i.as, align 8, !tbaa !149, !noalias !553
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false), !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !177, !noalias !556 ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = icmp slt i32 %i.av, 0
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #40
          to label %.noexc.i.i.i unwind label %.thread, !noalias !556

.noexc.i.i.i:                                     ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i, label %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i: ; preds = %bb.s
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ay) #38
          to label %.lr.ph.i.i.i unwind label %.loopexit, !noalias !556 ; 3 uses

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  br label %bb.u

._crit_edge.i.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.032.4.i.i.i, %.sroa.14.2.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i, label %bb.t

._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i: ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.032.0.lcssa103.i.i.i = phi ptr [ %.sroa.032.4.i.i.i, %._crit_edge.i.i.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.26.0.lcssa98.i.i.i = phi ptr [ %.sroa.26.4.i.i.i, %._crit_edge.i.i.i ], [ null, %bb.s ]
  %.pre.i.i.i = ptrtoint ptr %.sroa.032.0.lcssa103.i.i.i to i64 ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = ptrtoint ptr %.sroa.14.2.i.i.i to i64   ; 3 uses
  %i.bd = ptrtoint ptr %.sroa.032.4.i.i.i to i64  ; 4 uses
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bf, i1 true)
  %i.bh = shl nuw nsw i64 %i.bg, 1
  %i.bi = xor i64 %i.bh, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.032.4.i.i.i, ptr nonnull %.sroa.14.2.i.i.i, i64 noundef %i.bi)
          to label %.noexc16.i.i.i unwind label %.loopexit, !noalias !556

.noexc16.i.i.i:                                   ; preds = %bb.t
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.032.4.i.i.i, ptr nonnull %.sroa.14.2.i.i.i)
          to label %.preheader.i.i.i.i.i.i unwind label %.loopexit, !noalias !556

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i, %bb.t, %.noexc16.i.i.i, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i
  %.sroa.26.1.i.i.i.ph = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i ], [ %.sroa.26.4.i.i.i, %bb.t ], [ %.sroa.26.4.i.i.i, %.noexc16.i.i.i ], [ %.sroa.26.0.lcssa96.i.i.i, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i ]
  %.sroa.032.1.i.i.i.ph = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i ], [ %.sroa.032.4.i.i.i, %bb.t ], [ %.sroa.032.4.i.i.i, %.noexc16.i.i.i ], [ %.sroa.032.0.lcssa101.i.i.i, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.thread:                                          ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 2 uses
  %.sroa.032.071.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.sroa.032.4.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 6 uses
  %.sroa.14.070.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.sroa.14.2.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 6 uses
  %.sroa.26.069.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %.sroa.26.4.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 2 uses
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !182, !noalias !556
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %indvars.iv.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !170, !noalias !556 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.14.070.i.i.i, %.sroa.26.069.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.bm, ptr %.sroa.14.070.i.i.i, align 4, !tbaa !3, !noalias !556
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bn = ptrtoint ptr %.sroa.14.070.i.i.i to i64
  %i.bo = ptrtoint ptr %.sroa.032.071.i.i.i to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 6 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775804
  br i1 %i.bq, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !556

.noexc18.i.i.i:                                   ; preds = %bb.x
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.br = ashr exact i64 %i.bp, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.br ; 2 uses
  %i.bt = call i64 @llvm.umin.i64(i64 %i.bs, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bu = shl nuw nsw i64 %i.bt, 2
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #38
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !556 ; 4 uses

.noexc19.i.i.i:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.bp ; 2 uses
  store i32 %i.bm, ptr %i.bw, align 4, !tbaa !3, !noalias !556
  %i.bx = icmp sgt i64 %i.bp, 0
  br i1 %i.bx, label %bb.y, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i

bb.y:                                             ; preds = %.noexc19.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bv, ptr align 4 %.sroa.032.071.i.i.i, i64 %i.bp, i1 false), !noalias !556
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.y, %.noexc19.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.071.i.i.i, i64 noundef %i.bp) #39, !noalias !556
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bt
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i, %bb.v
  %.sroa.26.4.i.i.i = phi ptr [ %i.by, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.26.069.i.i.i, %bb.v ] ; 7 uses
  %.pn.i.i.i = phi ptr [ %i.bw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.14.070.i.i.i, %bb.v ] ; 4 uses
  %.sroa.032.4.i.i.i = phi ptr [ %i.bv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.032.071.i.i.i, %bb.v ] ; 12 uses
  %.sroa.14.2.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 4 ; 6 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bz = load i32, ptr %i.au, align 4, !tbaa !177, !noalias !556
  %i.ca = sext i32 %i.bz to i64
  %i.cb = icmp slt i64 %indvars.iv.next.i.i.i, %i.ca
  br i1 %i.cb, label %bb.u, label %._crit_edge.i.i.i, !llvm.loop !561

.loopexit.i.i.i:                                  ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.loopexit.split-lp.i.i.i:                         ; preds = %bb.x
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.preheader.i.i.i.i.i.i:                           ; preds = %.noexc16.i.i.i, %bb.z
  %.sroa.09.0.i.i.i.i.i.i = phi ptr [ %i.cc, %bb.z ], [ %.sroa.032.4.i.i.i, %.noexc16.i.i.i ] ; 6 uses
  %.not.i.i.i20.i.i.i = icmp eq ptr %.sroa.09.0.i.i.i.i.i.i, %.pn.i.i.i
  br i1 %.not.i.i.i20.i.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.cd = load i32, ptr %.sroa.09.0.i.i.i.i.i.i, align 4, !tbaa !3, !noalias !556 ; 2 uses
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !3, !noalias !556
  %i.cf = icmp eq i32 %i.cd, %i.ce
  br i1 %i.cf, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, !llvm.loop !562

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i: ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.cg, %.sroa.14.2.i.i.i
  br i1 %.not18.i.i.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i, %bb.ab
  %i.ch = phi i32 [ %i.cj, %bb.ab ], [ %i.cd, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i ]
  %i.ci = phi ptr [ %i.cm, %bb.ab ], [ %i.cg, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i ] ; 3 uses
  %.sroa.0.019.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.ab ], [ %.sroa.09.0.i.i.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i ] ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3, !noalias !556 ; 3 uses
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i.i.i, i64 4 ; 2 uses
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !3, !noalias !556
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i = phi ptr [ %.sroa.0.019.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.cl, %bb.aa ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %.not.i.i21.i.i.i = icmp eq ptr %i.ci, %.pn.i.i.i
  br i1 %.not.i.i21.i.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !563

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i: ; preds = %bb.ab, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.09.0.i.i.i.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i.i.i.i ], [ %.sroa.0.1.i.i.i.i.i, %bb.ab ] ; 2 uses
  %.not.i.i22.i.i.i = icmp eq ptr %.sroa.0.0.lcssa.i.i.i.i.i, %.pn.i.i.i
  br i1 %.not.i.i22.i.i.i, label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i.i, i64 4
  %.pre.i.i = ptrtoint ptr %i.cn to i64
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %i.bc, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %i.bc, %.preheader.i.i.i.i.i.i ]
  %.sroa.032.0.lcssa101.i.i.i = phi ptr [ %.sroa.032.0.lcssa103.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %.sroa.032.4.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %.sroa.032.4.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %.sroa.032.4.i.i.i, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.26.0.lcssa96.i.i.i = phi ptr [ %.sroa.26.0.lcssa98.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %.sroa.26.4.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %.sroa.26.4.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %.sroa.26.4.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.co = phi i64 [ %.pre.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %i.bd, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %i.bd, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %i.bd, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cp = sub i64 %.pre-phi.i.i, %i.co
  %i.cq = ashr exact i64 %i.cp, 2
  invoke void @_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.150") align 8 %4, ptr %.sroa.032.0.lcssa101.i.i.i, i64 %i.cq)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i
  %.not.i.i.i24.i.i.i = icmp eq ptr %.sroa.032.0.lcssa101.i.i.i, null
  br i1 %.not.i.i.i24.i.i.i, label %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cr = ptrtoint ptr %.sroa.26.0.lcssa96.i.i.i to i64
  %i.cs = sub i64 %i.cr, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0.lcssa101.i.i.i, i64 noundef %i.cs) #39
  br label %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i"

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.sroa.26.2.i.i.i = phi ptr [ %.sroa.14.070.i.i.i, %.loopexit.split-lp.i.i.i ], [ %.sroa.14.070.i.i.i, %.loopexit.i.i.i ], [ %.sroa.26.1.i.i.i.ph, %.loopexit ]
  %.sroa.032.2.i.i.i = phi ptr [ %.sroa.032.071.i.i.i, %.loopexit.split-lp.i.i.i ], [ %.sroa.032.071.i.i.i, %.loopexit.i.i.i ], [ %.sroa.032.1.i.i.i.ph, %.loopexit ] ; 3 uses
  %.pn13.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i25.i.i.i = icmp eq ptr %.sroa.032.2.i.i.i, null
  br i1 %.not.i.i.i25.i.i.i, label %.body.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ae
  %i.ct = ptrtoint ptr %.sroa.26.2.i.i.i to i64
  %i.cu = ptrtoint ptr %.sroa.032.2.i.i.i to i64
  %i.cv = sub i64 %i.ct, %i.cu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.2.i.i.i, i64 noundef %i.cv) #39
  br label %.body.i

"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i": ; preds = %bb.ad, %bb.ac
  %i.cw = load ptr, ptr %i.at, align 8, !tbaa !564 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !566
  %i.cz = load <2 x ptr>, ptr %4, align 16, !tbaa !202
  store <2 x ptr> %i.cz, ptr %i.at, align 8, !tbaa !202
  %i.da = load ptr, ptr %i.f, align 16, !tbaa !566
  store ptr %i.da, ptr %i.cx, align 8, !tbaa !566
  %.not.i.i.i.i.i22.i = icmp eq ptr %i.cw, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i22.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i

_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i:               ; preds = %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i"
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.dd) #39
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !564 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i
  %i.de = load ptr, ptr %i.f, align 16, !tbaa !566
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %.pr.i to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.dh) #39
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.af, %_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i, %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i unwind label %bb.aj

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.di = load ptr, ptr %i.ah, align 8, !tbaa !549
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store ptr %i.as, ptr %i.g, align 8, !tbaa !567
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.222") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.dj = load i8, ptr %i.h, align 8, !tbaa !584, !range !84, !alias.scope !587, !noundef !50
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i: ; preds = %.noexc.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !587 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.dm = load i64, ptr %i.g, align 8, !tbaa !551, !noalias !592
  store i64 %i.dm, ptr %i.dl, align 8, !tbaa !551
  br label %bb.ag

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i: ; preds = %.noexc.i
  %.pr45.i = load ptr, ptr %i.g, align 8, !tbaa !551 ; 3 uses
  %.not.i.i23.i = icmp eq ptr %.pr45.i, null
  br i1 %.not.i.i23.i, label %bb.ag, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i
  %i.dn = load ptr, ptr %.pr45.i, align 8, !tbaa !149
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr45.i) #35, !inline_history !593
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !551
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ag)
          to label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #37
  unreachable

bb.ai:                                            ; preds = %bb.n
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #37
  unreachable

end_hunk_1
begin_hunk_2_@_ZNK6google8protobuf10Reflection18CreateTcParseTableEv:bb.a
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !96  ; 2 uses
  switch i8 %i.bs, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit [
    i8 12, label %bb.s
    i8 9, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %i.bt = ptrtoint ptr %i.bd to i64
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.bu = ptrtoint ptr %.sink7.i.i.i to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %.0.in.i.i.i = sdiv exact i64 %i.bv, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.bw = ashr exact i64 %sext.i.i, 30
  %i.bx = getelementptr inbounds i8, ptr %i.be, i64 %i.bw
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3
  %i.bz = trunc i32 %i.by to i8
  %i.ca = and i8 %i.bz, 1
  br label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %.0.i3.i.i = phi i8 [ %i.ca, %bb.s ], [ 0, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i ] ; 2 uses
  %i.cb = load i32, ptr %i.l, align 8, !tbaa !146
  %i.cc = icmp eq i32 %i.cb, -1
  br i1 %i.cc, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %i.cd = load ptr, ptr %i.m, align 8, !tbaa !147
  br i1 %.not.i.i.i, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !101
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.t
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.ci, null
  br i1 %.not1.i.i, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.v:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !102
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.v, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.u
  %.sink7.in.i.i = phi ptr [ %i.cm, %bb.v ], [ %i.cj, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.cg, %bb.u ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.cn = ptrtoint ptr %i.bd to i64
  %i.co = ptrtoint ptr %.sink7.i.i to i64
  %i.cp = sub i64 %i.cn, %i.co
  %.0.in.i.i = sdiv exact i64 %i.cp, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.cq = ashr exact i64 %sext.i, 30
  %i.cr = getelementptr inbounds i8, ptr %i.cd, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !3
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %.0.i = phi i32 [ %i.cs, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i ], [ -1, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit ] ; 2 uses
  %i.ct = load i32, ptr %i.n, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.ct, -1
  br i1 %.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i.i, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68

bb.x:                                             ; preds = %bb.w
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !101
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68: ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i69 = icmp eq ptr %i.cy, null
  br i1 %.not1.i.i69, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

bb.y:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68
  %i.da = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !102
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71: ; preds = %bb.y, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70, %bb.x
  %.sink7.in.i.i72 = phi ptr [ %i.dc, %bb.y ], [ %i.cz, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70 ], [ %i.cw, %bb.x ]
  %.sink7.i.i73 = load ptr, ptr %.sink7.in.i.i72, align 8, !tbaa !33
  %i.dd = ptrtoint ptr %i.bd to i64
  %i.de = ptrtoint ptr %.sink7.i.i73 to i64
  %i.df = sub i64 %i.dd, %i.de
  %.0.in.i.i74 = sdiv exact i64 %i.df, 88
  %sext.i75 = shl i64 %.0.in.i.i74, 32
  %i.dg = ashr exact i64 %sext.i75, 30
  %i.dh = getelementptr inbounds i8, ptr %i.be, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !3
  %.lobit = lshr i32 %i.di, 31
  %i.dj = trunc nuw nsw i32 %.lobit to i8
  br label %bb.z

bb.z:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71
  %i.dk = phi i8 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit ], [ %i.dj, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71 ] ; 2 uses
  %i.dl = zext i8 %i.bs to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !97
  %i.do = icmp eq i32 %i.dn, 9
  br i1 %i.do, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %.not.i.i.i, label %bb.ab, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77

bb.ab:                                            ; preds = %bb.aa
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !101
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77: ; preds = %bb.aa
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i78 = icmp eq ptr %i.dt, null
  br i1 %.not1.i.i.i78, label %bb.ac, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 104
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

bb.ac:                                            ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i77
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !102
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 136
  br label %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.ab, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79, %bb.ac
  %.sink7.in.i.i.i80 = phi ptr [ %i.dx, %bb.ac ], [ %i.du, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i79 ], [ %i.dr, %bb.ab ]
  %.sink7.i.i.i81 = load ptr, ptr %.sink7.in.i.i.i80, align 8, !tbaa !33
  %i.dy = ptrtoint ptr %i.bd to i64
  %i.dz = ptrtoint ptr %.sink7.i.i.i81 to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %.0.in.i.i.i82 = sdiv exact i64 %i.ea, 88
  %sext.i.i83 = shl i64 %.0.in.i.i.i82, 32
  %i.eb = ashr exact i64 %sext.i.i83, 30
  %i.ec = getelementptr inbounds i8, ptr %i.be, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !3
  %i.ee = trunc i32 %i.ed to i8
  %i.ef = lshr i8 %i.ee, 1
  %i.eg = and i8 %i.ef, 1
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit, %bb.z
  %i.eh = phi i8 [ 0, %bb.z ], [ %i.eg, %_ZNK6google8protobuf10Reflection13IsMicroStringEPKNS0_15FieldDescriptorE.exit ] ; 2 uses
  %.not.i.i84 = icmp eq ptr %.sroa.15.0210, %.sroa.27.0209
  br i1 %.not.i.i84, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.bd, ptr %.sroa.15.0210, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 8
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 12
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !259
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 16
  store i16 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !599
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 18
  store i8 %.0.i3.i.i, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !263
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 19
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 1, !tbaa !263
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 20
  store i8 0, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !263
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 21
  store i8 %i.dk, ptr %.sroa.12.0..sroa_idx, align 1, !tbaa !263
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15.0210, i64 22
  store i8 %i.eh, ptr %.sroa.13.0..sroa_idx, align 2, !tbaa !263
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit

bb.af:                                            ; preds = %bb.ad
  %i.ei = ptrtoint ptr %.sroa.15.0210 to i64
  %i.ej = ptrtoint ptr %.sroa.0155.0211 to i64
  %i.ek = sub i64 %i.ei, %i.ej                    ; 6 uses
  %i.el = icmp eq i64 %i.ek, 9223372036854775800
  br i1 %i.el, label %bb.ag, label %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
          to label %.noexc86 unwind label %.loopexit.split-lp

.noexc86:                                         ; preds = %bb.ag
  unreachable

_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.em = sdiv exact i64 %i.ek, 24                ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.em, i64 1)
  %i.en = add nsw i64 %.sroa.speculated.i.i.i.i, %i.em ; 2 uses
  %i.eo = tail call i64 @llvm.umin.i64(i64 %i.en, i64 384307168202282325) ; 2 uses
  %.not.i.i.i.i85 = icmp ne i64 %i.en, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i85)
  %i.ep = mul nuw nsw i64 %i.eo, 24
  %i.eq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ep) #38
          to label %.noexc87 unwind label %.loopexit ; 4 uses

.noexc87:                                         ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.ek ; 10 uses
  store ptr %i.bd, ptr %i.er, align 8, !tbaa !33
  %.sroa.6.0..sroa_idx137 = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx137, align 8, !tbaa !3
  %.sroa.7.0..sroa_idx139 = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx139, align 4, !tbaa !259
  %.sroa.8.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i16 0, ptr %.sroa.8.0..sroa_idx141, align 8, !tbaa !599
  %.sroa.9.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %i.er, i64 18
  store i8 %.0.i3.i.i, ptr %.sroa.9.0..sroa_idx143, align 2, !tbaa !263
  %.sroa.10.0..sroa_idx145 = getelementptr inbounds nuw i8, ptr %i.er, i64 19
  store i8 0, ptr %.sroa.10.0..sroa_idx145, align 1, !tbaa !263
  %.sroa.11.0..sroa_idx147 = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  store i8 0, ptr %.sroa.11.0..sroa_idx147, align 4, !tbaa !263
  %.sroa.12.0..sroa_idx149 = getelementptr inbounds nuw i8, ptr %i.er, i64 21
  store i8 %i.dk, ptr %.sroa.12.0..sroa_idx149, align 1, !tbaa !263
  %.sroa.13.0..sroa_idx151 = getelementptr inbounds nuw i8, ptr %i.er, i64 22
  store i8 %i.eh, ptr %.sroa.13.0..sroa_idx151, align 2, !tbaa !263
  %i.es = icmp sgt i64 %i.ek, 0
  br i1 %i.es, label %bb.ah, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.ah:                                            ; preds = %.noexc87
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eq, ptr align 8 %.sroa.0155.0211, i64 %i.ek, i1 false)
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.ah, %.noexc87
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0155.0211, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.0211, i64 noundef %i.ek) #39
  %.pre222.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  %.pre222 = phi ptr [ %.pre222.pre, %bb.ai ], [ %.pre222226, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %i.eo
  br label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit: ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.ae
  %.pre222227 = phi ptr [ %.pre222, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.pre222226, %bb.ae ]
  %i.eu = phi ptr [ %.pre222, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %i.ba, %bb.ae ] ; 2 uses
  %.sroa.27.3 = phi ptr [ %i.et, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.27.0209, %bb.ae ] ; 6 uses
  %.pn = phi ptr [ %i.er, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.15.0210, %bb.ae ] ; 4 uses
  %.sroa.0155.3 = phi ptr [ %i.eq, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i ], [ %.sroa.0155.0211, %bb.ae ] ; 23 uses
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 24 ; 10 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !204
  %i.ex = sext i32 %i.ew to i64
  %i.ey = icmp slt i64 %indvars.iv.next, %i.ex
  br i1 %i.ey, label %bb.p, label %._crit_edge, !llvm.loop !604

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

.loopexit.split-lp:                               ; preds = %bb.ag
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit": ; preds = %bb.o, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i", %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge", %bb.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i"
  %.not.i.i284 = phi i1 [ true, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ false, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ false, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ false, %bb.i ], [ false, %bb.o ]
  %.sroa.0155.0.lcssa280 = phi ptr [ %.sroa.0155.0.lcssa281, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.0155.3, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %.sroa.0155.3, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %.sroa.0155.3, %bb.i ], [ %.sroa.0155.3, %bb.o ] ; 4 uses
  %.sroa.15.0.lcssa279 = phi ptr [ %.sroa.15.0.lcssa278, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.15.2, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %.sroa.15.2, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %.sroa.15.2, %bb.i ], [ %.sroa.15.2, %bb.o ]
  %.sroa.27.0.lcssa274 = phi ptr [ %.sroa.27.0.lcssa275, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.27.3, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %.sroa.27.3, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %.sroa.27.3, %bb.i ], [ %.sroa.27.3, %bb.o ] ; 2 uses
  %.pre-phi235 = phi i64 [ %.pre234, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %i.r, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %i.r, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %i.r, %bb.i ], [ %i.r, %bb.o ] ; 3 uses
  %.pre-phi231 = phi i64 [ %.pre230, %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge" ], [ %i.p, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %i.p, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ], [ %i.p, %bb.i ], [ %i.p, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.ez = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  store i8 0, ptr %4, align 1, !tbaa !605
  %i.fa = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 0, ptr %i.fa, align 1, !tbaa !607
  invoke void @_ZN6google8protobuf8internal17TailCallTableInfoC1EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE(ptr noundef nonnull align 8 dereferenceable(140) %3, ptr noundef %i.ez, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr %.sroa.0155.0.lcssa280, i64 %.pre-phi235)
          to label %bb.aj unwind label %bb.am

bb.aj:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %i.fb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !608
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !610
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg                    ; 2 uses
  %i.fi = ashr exact i64 %i.fh, 5                 ; 2 uses
  %i.fj = trunc i64 %i.fi to i32                  ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !611
  %i.fm = shl nuw i32 1, %i.fl                    ; 2 uses
  %i.fn = icmp eq i32 %i.fm, %i.fj
  br i1 %i.fn, label %bb.al, label %bb.ak, !prof !7

bb.ak:                                            ; preds = %bb.aj
  %sext190 = shl i64 %i.fh, 27
  %i.fo = ashr i64 %sext190, 32
  %i.fp = sext i32 %i.fm to i64
  %i.fq = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.fo, i64 noundef %i.fp, ptr noundef nonnull @.str.109)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplEiiPKc.exit unwind label %bb.an

bb.al:                                            ; preds = %bb.aj
  %i.fr = shl i32 %i.fj, 4
  %i.fs = add i32 %i.fr, 56                       ; 2 uses
  %i.ft = trunc i32 %i.fs to i16                  ; 2 uses
  %.mask = and i32 %i.fs, 65528
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !634 ; 8 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !634 ; 3 uses
  %.not8.i = icmp eq ptr %i.fw, %i.fy
  br i1 %.not8.i, label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.al
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = add i64 %i.fz, -32
  %i.gc = sub i64 %i.gb, %i.ga                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.gc, 128
  br i1 %min.iters.check, label %.lr.ph.i.preheader325, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %i.gd = lshr i64 %i.gc, 5
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %n.mod.vf = and i64 %i.ge, 3                    ; 2 uses
  %i.gf = icmp eq i64 %n.mod.vf, 0
  %i.gg = select i1 %i.gf, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.ge, %i.gg               ; 2 uses
  %i.gh = shl i64 %n.vec, 5
  %i.gi = getelementptr i8, ptr %i.fw, i64 %i.gh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ <i32 2, i32 0>, %vector.ph ], [ %i.hz, %vector.body ]
  %vec.phi298 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.ia, %vector.body ]
  %i.gj = shl i64 %index, 5                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.fw, i64 %i.gj ; 2 uses
  %i.gk = getelementptr i8, ptr %i.fw, i64 %i.gj  ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fw, i64 %i.gj  ; 2 uses
  %i.gm = getelementptr i8, ptr %i.fw, i64 %i.gj  ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.go = getelementptr i8, ptr %i.gk, i64 40
  %i.gp = getelementptr i8, ptr %i.gl, i64 72
  %i.gq = getelementptr i8, ptr %i.gm, i64 104
  %i.gr = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.gs = getelementptr i8, ptr %i.gk, i64 48
  %i.gt = getelementptr i8, ptr %i.gl, i64 80
  %i.gu = getelementptr i8, ptr %i.gm, i64 112
  %i.gv = load ptr, ptr %i.gr, align 8, !tbaa !635
  %i.gw = load ptr, ptr %i.gs, align 8, !tbaa !635
  %i.gx = insertelement <2 x ptr> poison, ptr %i.gv, i64 0
  %i.gy = insertelement <2 x ptr> %i.gx, ptr %i.gw, i64 1
  %i.gz = load ptr, ptr %i.gt, align 8, !tbaa !635
  %i.ha = load ptr, ptr %i.gu, align 8, !tbaa !635
  %i.hb = insertelement <2 x ptr> poison, ptr %i.gz, i64 0
  %i.hc = insertelement <2 x ptr> %i.hb, ptr %i.ha, i64 1
  %i.hd = load ptr, ptr %i.gn, align 8, !tbaa !638
  %i.he = load ptr, ptr %i.go, align 8, !tbaa !638
  %i.hf = insertelement <2 x ptr> poison, ptr %i.hd, i64 0
  %i.hg = insertelement <2 x ptr> %i.hf, ptr %i.he, i64 1
  %i.hh = load ptr, ptr %i.gp, align 8, !tbaa !638
  %i.hi = load ptr, ptr %i.gq, align 8, !tbaa !638
  %i.hj = insertelement <2 x ptr> poison, ptr %i.hh, i64 0
  %i.hk = insertelement <2 x ptr> %i.hj, ptr %i.hi, i64 1
  %i.hl = ptrtoint <2 x ptr> %i.gy to <2 x i64>
  %i.hm = ptrtoint <2 x ptr> %i.hc to <2 x i64>
  %i.hn = ptrtoint <2 x ptr> %i.hg to <2 x i64>
  %i.ho = ptrtoint <2 x ptr> %i.hk to <2 x i64>
  %i.hp = sub <2 x i64> %i.hl, %i.hn
  %i.hq = sub <2 x i64> %i.hm, %i.ho
  %i.hr = lshr <2 x i64> %i.hp, splat (i64 1)
  %i.hs = lshr <2 x i64> %i.hq, splat (i64 1)
  %i.ht = trunc <2 x i64> %i.hr to <2 x i32>
  %i.hu = and <2 x i32> %i.ht, splat (i32 -2)
  %i.hv = trunc <2 x i64> %i.hs to <2 x i32>
  %i.hw = and <2 x i32> %i.hv, splat (i32 -2)
  %i.hx = add <2 x i32> %vec.phi, splat (i32 3)
  %i.hy = add <2 x i32> %vec.phi298, splat (i32 3)
  %i.hz = add <2 x i32> %i.hx, %i.hu              ; 2 uses
  %i.ia = add <2 x i32> %i.hy, %i.hw              ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ib = icmp eq i64 %index.next, %n.vec
  br i1 %i.ib, label %middle.block, label %vector.body, !llvm.loop !639

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.ia, %i.hz
  %i.ic = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx)
  br label %.lr.ph.i.preheader325

.lr.ph.i.preheader325:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.010.i.ph = phi i32 [ 2, %.lr.ph.i.preheader ], [ %i.ic, %middle.block ]
  %.sroa.05.09.i.ph = phi ptr [ %i.fw, %.lr.ph.i.preheader ], [ %i.gi, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader325, %.lr.ph.i
  %.010.i = phi i32 [ %i.im, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader325 ]
  %.sroa.05.09.i = phi ptr [ %i.in, %.lr.ph.i ], [ %.sroa.05.09.i.ph, %.lr.ph.i.preheader325 ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !635
  %i.ig = load ptr, ptr %i.id, align 8, !tbaa !638
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = ptrtoint ptr %i.ig to i64
  %i.ij = sub i64 %i.ih, %i.ii
  %sh.diff.i = lshr i64 %i.ij, 1
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.ik = and i32 %tr.sh.diff.i, -2
  %i.il = add i32 %.010.i, 3
  %i.im = add i32 %i.il, %i.ik                    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i, i64 32 ; 2 uses
  %.not.i89 = icmp eq ptr %i.in, %i.fy
  br i1 %.not.i89, label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit, label %.lr.ph.i, !llvm.loop !640

_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit: ; preds = %.lr.ph.i
  %i.io = shl i32 %i.im, 1
  br label %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit

_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit: ; preds = %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit, %bb.al
  %.0.lcssa.i = phi i32 [ 4, %bb.al ], [ %i.io, %_ZNK6google8protobuf8internal17TailCallTableInfo15NumToEntryTable6size16Ev.exit.loopexit ]
  %i.ip = or disjoint i32 %.mask, 2
  %i.iq = add i32 %i.ip, %.0.lcssa.i
  %i.ir = and i32 %i.iq, -4                       ; 2 uses
  %i.is = trunc i64 %.pre-phi235 to i32
  %i.it = mul i32 %i.is, 12
  %i.iu = add i32 %i.it, 4
  %i.iv = add i32 %i.iu, %i.ir
  %i.iw = and i32 %i.iv, -8                       ; 2 uses
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !641
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !642
  %i.jc = ptrtoint ptr %i.ja to i64
end_hunk_2
