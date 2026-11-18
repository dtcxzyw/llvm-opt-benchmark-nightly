Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/text_format?download=true
inline.NumInlined: 5149
inline.NumDeleted: 1899
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10TextFormat7Printer12PrintMessageERKNS0_7MessageEPNS1_17BaseTextGeneratorE:bb.a
  %.not1.i.i.i.i.i.i.i = icmp eq i8 %i.bn, 0      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_116FieldIndexSorterEEEEvT_T0_.exit.i.i.i.i, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.j
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !422
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !422
  %i.br = icmp slt i32 %i.bo, %i.bq
  br i1 %i.br, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_116FieldIndexSorterEEEEvT_T0_.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  br i1 %.not1.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.i.i.i.i.i: ; preds = %bb.k
  %i.bs = load ptr, ptr %i.bf, align 8, !tbaa !423
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.sink7.i.i.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !tbaa !251
  %i.bu = ptrtoint ptr %.sink7.i.i.i.i.i.i.i.i to i64
  %i.bv = sub i64 %i.bh, %i.bu
  %.0.in.i.i.i.i.i.i.i.i = sdiv exact i64 %i.bv, 88
  %.0.i.i.i.i.i.i.i.i = trunc i64 %.0.in.i.i.i.i.i.i.i.i to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !423
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %.sink7.i14.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !tbaa !251
  %i.bz = ptrtoint ptr %i.bi to i64
  %i.ca = ptrtoint ptr %.sink7.i14.i.i.i.i.i.i.i to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %.0.in.i15.i.i.i.i.i.i.i = sdiv exact i64 %i.cb, 88
  %.0.i16.i.i.i.i.i.i.i = trunc i64 %.0.in.i15.i.i.i.i.i.i.i to i32
  %i.cc = icmp slt i32 %.0.i.i.i.i.i.i.i.i, %.0.i16.i.i.i.i.i.i.i
  br i1 %i.cc, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_116FieldIndexSorterEEEEvT_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.thread.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.i.i.i.i.i, %bb.k, %.split.i.i.i.i.i
  store ptr %i.bi, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !251
  br label %bb.i, !llvm.loop !12

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_116FieldIndexSorterEEEEvT_T0_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN6google8protobuf12_GLOBAL__N_116FieldIndexSorterEEclIPKNS3_15FieldDescriptorENS_17__normal_iteratorIPSA_St6vectorISA_SaISA_EEEEEEbRT_T0_.exit.i.i.i.i.i, %.split.i.i.i.i.i, %bb.j
  store ptr %i.bd, ptr %.sroa.03.0.i.i.i.i.i, align 8, !tbaa !251
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.cd, %i.at
  br i1 %.not.i.i.i.i39, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_116FieldIndexSorterEEvT_SE_T0_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !812

bb.l:                                             ; preds = %bb.g
  call fastcc void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterINS3_12_GLOBAL__N_116FieldIndexSorterEEEEvT_SH_T0_(ptr %i.ar, ptr %i.at)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_116FieldIndexSorterEEvT_SE_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_116FieldIndexSorterEEvT_SE_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterINS3_12_GLOBAL__N_116FieldIndexSorterEEEEvT_T0_.exit.i.i.i.i, %bb.l, %bb.h, %bb.f, %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE9push_backEOS4_.exit37
  %i.ce = load ptr, ptr %3, align 8, !tbaa !421   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !421 ; 2 uses
  %.not49 = icmp eq ptr %i.ce, %i.cg
  br i1 %.not49, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.m, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_116FieldIndexSorterEEvT_SE_T0_.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !816, !range !255, !noundef !256
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.p, label %bb.n

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_116FieldIndexSorterEEvT_SE_T0_.exit, %bb.m
  %.sroa.042.050 = phi ptr [ %i.cl, %bb.m ], [ %i.ce, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPPKN6google8protobuf15FieldDescriptorESt6vectorIS6_SaIS6_EEEENS3_12_GLOBAL__N_116FieldIndexSorterEEvT_SE_T0_.exit ] ; 2 uses
  %i.ck = load ptr, ptr %.sroa.042.050, align 8, !tbaa !251
  invoke void @_ZNK6google8protobuf10TextFormat7Printer10PrintFieldERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.s, ptr noundef %i.ck, ptr noundef nonnull %2)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.lr.ph
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.042.050, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cl, %i.cg
  br i1 %.not, label %._crit_edge, label %.lr.ph

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i29, %_ZNKSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.e, %bb.n, %bb.o
  %lpad.loopexit.split-lp66 = landingpad { ptr, i32 }
          cleanup
  %i.cm = load ptr, ptr %3, align 8, !tbaa !419   ; 3 uses
  %.not.i.i.i40 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit41, label %bb.s

bb.n:                                             ; preds = %._crit_edge
  %i.cn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK6google8protobuf10TextFormat7Printer18PrintUnknownFieldsERKNS0_15UnknownFieldSetEPNS1_17BaseTextGeneratorEi(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull %2, i32 noundef 10)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.p:                                             ; preds = %bb.o, %._crit_edge
  %i.co = load ptr, ptr %3, align 8, !tbaa !419   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !420
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.co to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.ct) #40
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit, %bb.d, %bb.a
  ret void

bb.s:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !420
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cm to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef %i.cy) #40
  br label %_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit41

_ZNSt6vectorIPKN6google8protobuf15FieldDescriptorESaIS4_EED2Ev.exit41: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #37
  resume { ptr, i32 } %lpad.loopexit.split-lp66
}

declare void @_ZNK6google8protobuf10Reflection10ListFieldsERKNS0_7MessageEPSt6vectorIPKNS0_15FieldDescriptorESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer10PrintFieldERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !guid !821 {
bb.a:
  %5 = alloca %"struct.google::protobuf::internal::MapEntries", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 2, !tbaa !822, !range !255, !noundef !256
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %i.f = and i8 %i.e, 32
  %.not = icmp ne i8 %i.f, 0
  %or.cond.not = select i1 %i.c, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.h = load i8, ptr %i.g, align 2, !tbaa !367
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !369
  %.off = add i32 %i.k, -9
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6google8protobuf10TextFormat7Printer23PrintShortRepeatedFieldERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4)
  br label %bb.an

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  %i.m = and i8 %i.e, 32
  %.not87 = icmp eq i8 %i.m, 0
  br i1 %.not87, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.n = tail call noundef i32 @_ZNK6google8protobuf10Reflection9FieldSizeERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br label %bb.h

bb.e:                                             ; preds = %._crit_edge
  %i.o = tail call noundef zeroext i1 @_ZNK6google8protobuf10Reflection8HasFieldERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3)
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !423
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !415
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 51
  %i.u = load i8, ptr %i.t, align 1, !tbaa !239, !range !255, !noundef !256
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.080 = phi i32 [ %i.n, %bb.d ], [ 1, %bb.g ], [ 0, %bb.f ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = and i8 %i.x, 16
  %.not88 = icmp eq i8 %i.y, 0                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  br i1 %.not88, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZN6google8protobuf8internal21MapFieldPrinterHelper7SortMapERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorE(ptr dead_on_unwind nonnull writable sret(%"struct.google::protobuf::internal::MapEntries") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = icmp sgt i32 %.080, 0
  br i1 %i.z, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ae = ptrtoint ptr %3 to i64                  ; 2 uses
  %i.af = xor i64 %i.ae, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ag = mul i64 %i.af, -2543921745674291987
  %i.ah = tail call i64 @llvm.bswap.i64(i64 %i.ag)
  %i.ai = xor i64 %i.ah, %i.ae
  %i.aj = mul i64 %i.ai, -2543921745674291987
  %i.ak = tail call i64 @llvm.bswap.i64(i64 %i.aj) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.am = lshr i64 %i.ak, 7
  %i.an = trunc i64 %i.ak to i8
  %i.ao = and i8 %i.an, 127
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = insertelement <16 x i8> poison, i8 %i.ao, i64 0
  %i.ar = shufflevector <16 x i8> %i.aq, <16 x i8> poison, <16 x i32> zeroinitializer
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.ad, 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  %wide.trip.count = zext nneg i32 %.080 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit ] ; 3 uses
  %i.au = load i8, ptr %i.l, align 1
  %i.av = and i8 %i.au, 32
  %.not89 = icmp eq i8 %i.av, 0
  %i.aw = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ax = select i1 %.not89, i32 -1, i32 %i.aw    ; 5 uses
  invoke void @_ZNK6google8protobuf10TextFormat7Printer14PrintFieldNameERKNS0_7MessageEiiPKNS0_10ReflectionEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.ax, i32 noundef %.080, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4)
          to label %bb.m unwind label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.ay = load i8, ptr %i.aa, align 2, !tbaa !367
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf15FieldDescriptor17kTypeToCppTypeMapE, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !369
  %i.bc = icmp eq i32 %i.bb, 10
  br i1 %i.bc, label %bb.n, label %bb.aj

bb.n:                                             ; preds = %bb.m
  %i.bd = invoke noundef zeroext i1 @_ZNK6google8protobuf10TextFormat7Printer19TryRedactFieldValueERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS1_17BaseTextGeneratorEb(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nonnull align 8 poison, ptr noundef nonnull %3, ptr noundef %4, i1 noundef zeroext true)
          to label %bb.o unwind label %bb.ag

bb.o:                                             ; preds = %bb.n
  br i1 %i.bd, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load i64, ptr %i.ac, align 8, !tbaa !240 ; 4 uses
  %i.bf = icmp ne i64 %i.be, 0
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = icmp ult i64 %i.be, 2
  br i1 %i.bg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %i.al, align 8, !tbaa !241
  %.not.i.i.i.i.i = icmp ult i64 %i.bh, 131072
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !251
  %i.bj = icmp eq ptr %i.bi, %3
  %spec.select.i.i.i.i = select i1 %i.bj, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %bb.w

bb.s:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.ad, align 8, !tbaa !239 ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.bk, i32 0, i32 1, i32 1)
  %i.bl = load i64, ptr %i.al, align 8, !tbaa !241, !noalias !823
  %i.bm = and i64 %i.bl, 65535
  %i.bn = xor i64 %i.bm, %i.am
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.ap, align 8, !tbaa !239 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %bb.s
  %.pn.i6.i.i.i = phi i64 [ %i.bn, %bb.s ], [ %i.cg, %bb.v ]
  %.sroa.13.0.i.i.i.i = phi i64 [ 0, %bb.s ], [ %i.cf, %bb.v ]
  %.sroa.6.0.i.i.i.i = and i64 %.pn.i6.i.i.i, %i.be ; 4 uses
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %.sroa.6.0.i.i.i.i
  tail call void @llvm.prefetch.p0(ptr %i.bo, i32 0, i32 3, i32 1)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.6.0.i.i.i.i
  %i.bq = load <16 x i8>, ptr %i.bp, align 1, !tbaa !239 ; 2 uses
  %i.br = icmp eq <16 x i8> %i.ar, %i.bq
  %i.bs = bitcast <16 x i1> %i.br to i16          ; 2 uses
  %.not45.i.i.i.i = icmp eq i16 %i.bs, 0
  br i1 %.not45.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.u
  %.sroa.017.046.i.i.i.i = phi i16 [ %i.cc, %bb.u ], [ %i.bs, %bb.t ] ; 3 uses
  %i.bt = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.017.046.i.i.i.i, i1 true)
  %i.bu = zext nneg i16 %i.bt to i64
  %i.bv = add i64 %.sroa.6.0.i.i.i.i, %i.bu
  %i.bw = and i64 %i.bv, %i.be                    ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, i64 %i.bw ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !251
  %i.bz = icmp eq ptr %i.by, %3
  br i1 %i.bz, label %.thread32.i.i.i.i, label %bb.u, !prof !285

.thread32.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bw
  br label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i

bb.u:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i16 %.sroa.017.046.i.i.i.i, -1
  %i.cc = and i16 %i.cb, %.sroa.017.046.i.i.i.i   ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.cc, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.u, %bb.t
  %i.cd = icmp eq <16 x i8> %i.bq, splat (i8 -128)
  %i.ce = bitcast <16 x i1> %i.cd to i16
  %.not43.i.i.i.i = icmp eq i16 %i.ce, 0
  br i1 %.not43.i.i.i.i, label %bb.v, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i, !prof !286

bb.v:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cf = add i64 %.sroa.13.0.i.i.i.i, 16         ; 2 uses
  %i.cg = add i64 %i.cf, %.sroa.6.0.i.i.i.i
  br label %bb.t, !llvm.loop !10

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %.thread32.i.i.i.i
  %.sroa.0.4.ph.i.i.i.i = phi ptr [ %i.ca, %.thread32.i.i.i.i ], [ null, %._crit_edge.i.i.i.i ]
  %.sroa.3.4.ph.i.i.i.i = phi ptr [ %i.bx, %.thread32.i.i.i.i ], [ undef, %._crit_edge.i.i.i.i ]
  %.fca.0.insert.i.i.i.i = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph.i.i.i.i, 0
  %.fca.1.insert.i.i.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i.i.i, ptr %.sroa.3.4.ph.i.i.i.i, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.q, %bb.r, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i
  %.pn.i.i.i = phi { ptr, ptr } [ %.fca.1.insert.i.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyIPKN6google8protobuf15FieldDescriptorESt10unique_ptrIKNS5_10TextFormat21FastFieldValuePrinterESt14default_deleteISC_EEEENS1_6HashEqIS8_vE4HashENSI_2EqESaISt4pairIKS8_SF_EEE10find_largeIS8_EENSP_8iteratorERKT_m.exit.i.i.i ], [ { ptr null, ptr undef }, %bb.q ], [ %spec.select.i.i.i.i, %bb.r ] ; 2 uses
  %i.ch = extractvalue { ptr, ptr } %.pn.i.i.i, 0
  %i.ci = icmp eq ptr %i.ch, null
  %i.cj = extractvalue { ptr, ptr } %.pn.i.i.i, 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.in.i = select i1 %i.ci, ptr %i.as, ptr %i.ck
  %i.cl = load ptr, ptr %.in.i, align 8, !tbaa !229 ; 6 uses
  %i.cm = load i8, ptr %i.l, align 1
  %i.cn = and i8 %i.cm, 32
  %.not90 = icmp eq i8 %i.cn, 0
  br i1 %.not90, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not88, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %6 = load ptr, ptr %i.at, align 8, !tbaa !426
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !428
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection18GetRepeatedMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEi(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, i32 noundef %i.aw)
          to label %bb.ab unwind label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cr = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection10GetMessageERKNS0_7MessageEPKNS0_15FieldDescriptorEPNS0_14MessageFactoryE(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %3, ptr noundef null)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa, %bb.y, %bb.z
  %i.cs = phi ptr [ %i.cq, %bb.z ], [ %i.cp, %bb.y ], [ %i.cr, %bb.aa ] ; 4 uses
  %i.ct = load i8, ptr %i.ab, align 4, !tbaa !226, !range !255, !noundef !256
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = load ptr, ptr %i.cl, align 8, !tbaa !228
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 112
  %i.cx = load ptr, ptr %i.cw, align 8
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i32 noundef %i.ax, i32 noundef %.080, i1 noundef zeroext %i.cu, ptr noundef %4)
          to label %bb.ac unwind label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %4, align 8, !tbaa !228
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.db = load i8, ptr %i.ab, align 4, !tbaa !226, !range !255, !noundef !256
  %i.dc = trunc nuw i8 %i.db to i1
  %i.dd = load ptr, ptr %i.cl, align 8, !tbaa !228
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 120
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i32 noundef %i.ax, i32 noundef %.080, i1 noundef zeroext %i.dc, ptr noundef nonnull %4)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.dg, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZNK6google8protobuf10TextFormat7Printer5PrintERKNS0_7MessageEPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull %4)
          to label %bb.ah unwind label %bb.ag

bb.ag:                                            ; preds = %.invoke, %bb.l, %bb.n, %bb.aj, %bb.ak, %bb.ai, %bb.ah, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google8protobuf8internal10MapEntriesD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.dh

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %i.di = load ptr, ptr %4, align 8, !tbaa !228
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8
  invoke void %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.ai unwind label %bb.ag

bb.ai:                                            ; preds = %bb.ah
  %i.dl = load i8, ptr %i.ab, align 4, !tbaa !226, !range !255, !noundef !256
  %i.dm = trunc nuw i8 %i.dl to i1
  %i.dn = load ptr, ptr %i.cl, align 8, !tbaa !228
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 128
  %i.dp = load ptr, ptr %i.do, align 8
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.cs, i32 noundef %i.ax, i32 noundef %.080, i1 noundef zeroext %i.dm, ptr noundef nonnull %4)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit unwind label %bb.ag

bb.aj:                                            ; preds = %bb.m
  %i.dq = load ptr, ptr %4, align 8, !tbaa !228
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 2, ptr nonnull @.str.18)
          to label %bb.ak unwind label %bb.ag

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3, i32 noundef %i.ax, ptr noundef nonnull %4)
          to label %.invoke unwind label %bb.ag

.invoke:                                          ; preds = %bb.ak
  %i.dt = load i8, ptr %i.ab, align 4, !tbaa !226, !range !255, !noundef !256
  %i.du = trunc nuw i8 %i.dt to i1
  %i.dv = load ptr, ptr %4, align 8, !tbaa !228
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8
  %.str.19..str.20 = select i1 %i.du, ptr @.str.19, ptr @.str.20
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.str.19..str.20, i64 noundef 1)
          to label %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit unwind label %bb.ag, !inline_history !2

_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit: ; preds = %.invoke, %bb.ai
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.l, !llvm.loop !819

.critedge:                                        ; preds = %_ZN6google8protobuf10TextFormat17BaseTextGenerator12PrintLiteralILm2EEEvRAT__Kc.exit, %bb.o, %bb.k
  %7 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !426      ; 3 uses
  %.not.i.i.i.i85 = icmp eq ptr %8, null
  br i1 %.not.i.i.i.i85, label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i, label %bb.al

bb.al:                                            ; preds = %.critedge
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !429
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %8 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %8, i64 noundef %i.ec) #40
  br label %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i: ; preds = %bb.al, %.critedge
  %i.ed = load ptr, ptr %5, align 8, !tbaa !432   ; 5 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !433 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ed, %i.ef
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i86

.lr.ph.i.i.i.i86:                                 ; preds = %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i, %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ek, %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.ed, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i ] ; 2 uses
  %i.eg = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !428 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIKN6google8protobuf7MessageEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIKN6google8protobuf7MessageEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i86
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !228
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8
  tail call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #37, !inline_history !820
  br label %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIKN6google8protobuf7MessageEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i86
  %i.ek = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ek, %i.ef
  br i1 %.not.i.i.i1.i, label %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i86, !llvm.loop !13

_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, %_ZNSt6vectorIPKN6google8protobuf7MessageESaIS4_EED2Ev.exit.i
  %.not.i.i1.i.i = icmp eq ptr %i.ed, null
  br i1 %.not.i.i1.i.i, label %_ZN6google8protobuf8internal10MapEntriesD2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !434
  %i.en = ptrtoint ptr %i.em to i64
  %i.eo = ptrtoint ptr %i.ed to i64
  %i.ep = sub i64 %i.en, %i.eo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ed, i64 noundef %i.ep) #40
  br label %_ZN6google8protobuf8internal10MapEntriesD2Ev.exit

_ZN6google8protobuf8internal10MapEntriesD2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIKN6google8protobuf7MessageESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  br label %bb.an

bb.an:                                            ; preds = %_ZN6google8protobuf8internal10MapEntriesD2Ev.exit, %bb.c
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer23PrintFieldValueToStringERKNS0_7MessageEPKNS0_15FieldDescriptorEiPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, i32 noundef %3, ptr noundef initializes((8, 16)) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !guid !824 {
bb.a:
  %5 = alloca %"class.google::protobuf::io::StringOutputStream", align 8 ; 5 uses
  %6 = alloca %"class.google::protobuf::TextFormat::Printer::TextGenerator", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !237
  %i.b = load ptr, ptr %4, align 8, !tbaa !238
  store i8 0, ptr %i.b, align 1, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  call void @_ZN6google8protobuf2io18StringOutputStreamC1EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #37
  %i.c = load i32, ptr %0, align 8, !tbaa !392    ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %6, align 8, !tbaa !228
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store ptr %5, ptr %i.d, align 8, !tbaa !396
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !397
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  store i32 0, ptr %i.f, align 8, !tbaa !398
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 1, ptr %i.g, align 4, !tbaa !399
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 29 ; 3 uses
  store i8 0, ptr %i.h, align 1, !tbaa !400
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 30
  store i8 0, ptr %i.i, align 2, !tbaa !401
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %i.c, ptr %i.j, align 8, !tbaa !402
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 36
  store i32 %i.c, ptr %i.k, align 4, !tbaa !403
  %i.l = invoke { ptr, ptr } @_ZNK6google8protobuf7Message11GetMetadataEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = extractvalue { ptr, ptr } %i.l, 1
  invoke void @_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.m, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %6)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %6, align 8, !tbaa !228
  %i.n = load i8, ptr %i.h, align 1, !tbaa !400, !range !255, !noundef !256
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !396  ; 2 uses
  %i.q = load i32, ptr %i.f, align 8, !tbaa !398
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !228
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.p, i32 noundef %i.q)
          to label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit unwind label %bb.e, !inline_history !404

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #39, !inline_history !404
  unreachable

_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  ret void

bb.f:                                             ; preds = %bb.a, %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6google8protobuf10TextFormat7Printer13TextGeneratorE, i64 16), ptr %6, align 8, !tbaa !228
  %i.x = load i8, ptr %i.h, align 1, !tbaa !400, !range !255, !noundef !256
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit8, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !396  ; 2 uses
  %i.aa = load i32, ptr %i.f, align 8, !tbaa !398
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !228
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i32 noundef %i.aa)
          to label %_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit8 unwind label %bb.h, !inline_history !404

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #39, !inline_history !404
  unreachable

_ZN6google8protobuf10TextFormat7Printer13TextGeneratorD2Ev.exit8: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10TextFormat7Printer15PrintFieldValueERKNS0_7MessageEPKNS0_10ReflectionEPKNS0_15FieldDescriptorEiPNS1_17BaseTextGeneratorE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !guid !827 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ult i64 %i.b, 2
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !241
  %.not.i.i.i.i.i = icmp ult i64 %i.f, 131072
  br i1 %.not.i.i.i.i.i, label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !251
  %i.i = icmp eq ptr %i.h, %3
  %.fca.1.insert.i.i.i.i.i = insertvalue { ptr, ptr } { ptr @_ZN4absl12lts_2025051218container_internal11kSooControlE, ptr poison }, ptr %i.g, 1
  %spec.select.i.i.i.i = select i1 %i.i, { ptr, ptr } %.fca.1.insert.i.i.i.i.i, { ptr, ptr } { ptr null, ptr undef }
  br label %_ZNK6google8protobuf10TextFormat7Printer15GetFieldPrinterEPKNS0_15FieldDescriptorE.exit

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !239  ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.k, i32 0, i32 1, i32 1)
  %i.l = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.m = xor i64 %i.l, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.n = mul i64 %i.m, -2543921745674291987
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n)
  %i.p = xor i64 %i.o, %i.l
  %i.q = mul i64 %i.p, -2543921745674291987
  %i.r = tail call noundef i64 @llvm.bswap.i64(i64 %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load i64, ptr %i.s, align 8, !tbaa !241, !noalias !828
  %i.u = and i64 %i.t, 65535
  %i.v = lshr i64 %i.r, 7
  %i.w = xor i64 %i.u, %i.v
  %i.x = trunc i64 %i.r to i8
  %i.y = and i8 %i.x, 127
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !239 ; 2 uses
  %i.aa = insertelement <16 x i8> poison, i8 %i.y, i64 0
  %i.ab = shufflevector <16 x i8> %i.aa, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
end_hunk_0
