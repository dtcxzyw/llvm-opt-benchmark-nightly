Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ItaniumDemangle?download=true
inline.NumInlined: 2019
inline.NumDeleted: 419
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE18parseTemplateParamEv:bb.a
  %i.ca = load ptr, ptr %i.bu, align 8, !tbaa !32 ; 5 uses
  %i.cb = ptrtoint ptr %i.bw to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 6 uses
  %i.ce = ashr exact i64 %i.cd, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cg = icmp eq ptr %i.ca, %i.cf
  %i.ch = shl i64 %i.cd, 1                        ; 2 uses
  br i1 %i.cg, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ci = tail call noalias ptr @malloc(i64 noundef %i.ch) #21 ; 5 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt9terminatev() #23
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ck = icmp sgt i64 %i.cd, 8
  br i1 %i.ck, label %bb.r, label %bb.s, !prof !109

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.ca, i64 %i.cd, i1 false)
  br label %_ZSt4copyIPPN4llvh16itanium_demangle24ForwardTemplateReferenceES4_ET0_T_S6_S5_.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.cl = icmp eq i64 %i.cd, 8
  br i1 %i.cl, label %bb.t, label %_ZSt4copyIPPN4llvh16itanium_demangle24ForwardTemplateReferenceES4_ET0_T_S6_S5_.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.cm = load ptr, ptr %i.ca, align 8, !tbaa !103
  store ptr %i.cm, ptr %i.ci, align 8, !tbaa !103
  br label %_ZSt4copyIPPN4llvh16itanium_demangle24ForwardTemplateReferenceES4_ET0_T_S6_S5_.exit.i.i

_ZSt4copyIPPN4llvh16itanium_demangle24ForwardTemplateReferenceES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r
  store ptr %i.ci, ptr %i.bu, align 8, !tbaa !32
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE7reserveEm.exit.i

bb.u:                                             ; preds = %bb.n
  %i.cn = tail call ptr @realloc(ptr noundef %i.ca, i64 noundef %i.ch) #22 ; 3 uses
  store ptr %i.cn, ptr %i.bu, align 8, !tbaa !32
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.v, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE7reserveEm.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE7reserveEm.exit.i: ; preds = %bb.u, %_ZSt4copyIPPN4llvh16itanium_demangle24ForwardTemplateReferenceES4_ET0_T_S6_S5_.exit.i.i
  %i.cp = phi ptr [ %i.cn, %bb.u ], [ %i.ci, %_ZSt4copyIPPN4llvh16itanium_demangle24ForwardTemplateReferenceES4_ET0_T_S6_S5_.exit.i.i ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cd
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.ce
  store ptr %i.cr, ptr %i.bx, align 8, !tbaa !34
  br label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE9push_backERKS3_.exit

_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE9push_backERKS3_.exit: ; preds = %bb.m, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE7reserveEm.exit.i
  %i.cs = phi ptr [ %i.cq, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE7reserveEm.exit.i ], [ %i.bw, %bb.m ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store ptr %i.ct, ptr %i.bv, align 16, !tbaa !33
  store ptr %i.bp, ptr %i.cs, align 8, !tbaa !103
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.w:                                             ; preds = %bb.i
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !30
  %i.cx = load ptr, ptr %i.cu, align 16, !tbaa !29 ; 2 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3
  %.not = icmp ult i64 %.0, %i.db
  br i1 %.not, label %bb.x, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.0
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !71
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %bb.c, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit, %bb.e, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i, %bb.a, %bb.b, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA5_KcEEEPNS0_4NodeEDpOT0_.exit, %bb.x, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE9push_backERKS3_.exit, %bb.w
  %.2 = phi ptr [ %i.bp, %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_24ForwardTemplateReferenceELm4EE9push_backERKS3_.exit ], [ %i.av, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_8NameTypeEJRA5_KcEEEPNS0_4NodeEDpOT0_.exit ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit ], [ null, %bb.w ], [ %i.dd, %bb.x ], [ null, %bb.a ], [ null, %bb.b ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i ], [ null, %bb.e ], [ null, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE13parseDecltypeEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 16, !tbaa !11    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !7
  %i.e = icmp eq i8 %i.d, 68
  br i1 %i.e, label %bb.c, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  store ptr %i.f, ptr %0, align 16, !tbaa !11
  %.not.i2 = icmp eq ptr %i.f, %i.c
  br i1 %.not.i2, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = icmp eq i8 %i.g, 116
  br i1 %i.h, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.f, align 1, !tbaa !7
  %i.j = icmp eq i8 %i.i, 84
  br i1 %i.j, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit4, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit4: ; preds = %bb.e, %bb.d
  %storemerge = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store ptr %storemerge, ptr %0, align 16, !tbaa !11
  %i.k = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4864) %0) ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit4
  %i.m = load ptr, ptr %0, align 16, !tbaa !11    ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !25
  %.not.i8 = icmp eq ptr %i.m, %i.n
  br i1 %.not.i8, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %i.m, align 1, !tbaa !7
  %i.p = icmp eq i8 %i.o, 69
  br i1 %i.p, label %bb.h, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.q, ptr %0, align 16, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !38  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !57   ; 2 uses
  %i.v = add i64 %i.u, -4016
  %i.w = icmp ult i64 %i.v, -4080
  br i1 %i.w, label %bb.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13EnclosingExprEJRA10_KcRPNS0_4NodeERA2_S7_EEESB_DpOT0_.exit

bb.i:                                             ; preds = %bb.h
  %i.x = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.i
  store ptr %i.s, ptr %i.x, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 0, ptr %i.z, align 8, !tbaa !57
  store ptr %i.x, ptr %i.r, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13EnclosingExprEJRA10_KcRPNS0_4NodeERA2_S7_EEESB_DpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13EnclosingExprEJRA10_KcRPNS0_4NodeERA2_S7_EEESB_DpOT0_.exit: ; preds = %bb.h, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.aa = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.ab = phi ptr [ %i.x, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.s, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = add nsw i64 %i.aa, 64
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !57
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 %i.aa ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store <4 x i8> <i8 47, i8 1, i8 1, i8 1>, ptr %i.ag, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle13EnclosingExprE, i64 16), ptr %i.af, align 8, !tbaa !47
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr @.str.26, ptr %i.ah, align 8, !tbaa !62
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr getelementptr inbounds nuw (i8, ptr @.str.26, i64 9), ptr %.sroa.23.0..sroa_idx.i.i.i, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr %i.k, ptr %i.ai, align 8, !tbaa !144
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr @.str.27, ptr %i.aj, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store ptr getelementptr inbounds nuw (i8, ptr @.str.27, i64 1), ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !62
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit.thread: ; preds = %bb.c, %bb.f, %bb.g, %bb.e, %bb.a, %bb.b, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13EnclosingExprEJRA10_KcRPNS0_4NodeERA2_S7_EEESB_DpOT0_.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit4
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.f ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit4 ], [ %i.af, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_13EnclosingExprEJRA10_KcRPNS0_4NodeERA2_S7_EEESB_DpOT0_.exit ], [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.g ], [ null, %bb.c ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE12parseAbiTagsEPNS0_4NodeE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(4864) %0, ptr noundef %1) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 16, !tbaa !11    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i16 = icmp eq ptr %i.b, %i.c
  br i1 %.not.i16, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.be, %bb.g ] ; 4 uses
  %i.f = phi ptr [ %i.b, %.lr.ph ], [ %i.bd, %bb.g ] ; 3 uses
  %.0517 = phi ptr [ %1, %.lr.ph ], [ %i.aq, %bb.g ] ; 5 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !7
  %i.h = icmp eq i8 %i.g, 66
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 4 uses
  store ptr %i.i, ptr %0, align 16, !tbaa !11
  %.not.i.not.i.i = icmp eq ptr %i.e, %i.i
  br i1 %.not.i.not.i.i, label %.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i.i

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i.i: ; preds = %bb.c
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7
  %i.k = add i8 %i.j, -58
  %or.cond28.i.i = icmp ult i8 %i.k, -10
  br i1 %or.cond28.i.i, label %.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i.preheader

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i.preheader: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 4 uses
  store ptr %i.l, ptr %0, align 16, !tbaa !11
  %i.m = load i8, ptr %i.i, align 1, !tbaa !7
  %i.n = sext i8 %i.m to i64
  %i.o = add nsw i64 %i.n, -48                    ; 2 uses
  %.not.i15.not.i.i42 = icmp eq ptr %i.e, %i.l
  br i1 %.not.i15.not.i.i42, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph, !llvm.loop !114

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i.preheader
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i, !llvm.loop !114

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i
  %i.p = phi i64 [ %i.o, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph ], [ %i.x, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i ] ; 2 uses
  %i.q = phi ptr [ %i.l, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph ], [ %i.t, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i ] ; 4 uses
  %.pr.i.i = load i8, ptr %i.q, align 1, !tbaa !7
  %i.r = add i8 %.pr.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.r, 10
  br i1 %or.cond.i.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit.i

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i
  %i.s = mul i64 %i.p, 10
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 4 uses
  store ptr %i.t, ptr %0, align 16, !tbaa !11
  %i.u = load i8, ptr %i.q, align 1, !tbaa !7
  %i.v = sext i8 %i.u to i64
  %i.w = add i64 %i.s, -48
  %i.x = add i64 %i.w, %i.v                       ; 2 uses
  %.not.i15.not.i.i = icmp eq ptr %i.e, %i.t
  br i1 %.not.i15.not.i.i, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i, !llvm.loop !114

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i, !llvm.loop !114

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i.preheader
  %.lcssa40 = phi ptr [ %i.t, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge ], [ %i.l, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i.preheader ]
  %.lcssa = phi i64 [ %i.x, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge ], [ %i.o, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i.i.preheader ]
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit.i, !llvm.loop !114

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit.i: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i
  %i.y = phi ptr [ %.lcssa40, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i ], [ %i.q, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i ] ; 3 uses
  %i.z = phi i64 [ %.lcssa, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE7consumeEv.exit.i._ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i ], [ %i.p, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit17thread-pre-split.i.i ] ; 3 uses
  %i.aa = ptrtoint ptr %i.e to i64
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, %i.z
  br i1 %i.ad, label %.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE19parseBareSourceNameEv.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE19parseBareSourceNameEv.exit: ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 2 uses
  store ptr %i.ae, ptr %0, align 16, !tbaa !11
  %i.af = icmp samesign eq i64 %i.z, 0
  br i1 %i.af, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE19parseBareSourceNameEv.exit
  %2 = load ptr, ptr %i.d, align 16, !tbaa !38    ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %i.ai = add i64 %i.ah, -4032
  %i.aj = icmp ult i64 %i.ai, -4080
  br i1 %i.aj, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.f, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.e
  store ptr %2, ptr %i.ak, align 8, !tbaa !54
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !57
  store ptr %i.ak, ptr %i.d, align 16, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i, %bb.d
  %3 = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.ah, %bb.d ] ; 2 uses
  %4 = phi ptr [ %i.ak, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %2, %bb.d ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = add nsw i64 %3, 48
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !57
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %3 ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0517, i64 9
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !50
  %i.at = getelementptr inbounds nuw i8, ptr %.0517, i64 10
  %i.au = load i8, ptr %i.at, align 2, !tbaa !146
  %i.av = getelementptr inbounds nuw i8, ptr %.0517, i64 11
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !147
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i8 8, ptr %i.ax, align 8, !tbaa !70
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 9
  store i8 %i.as, ptr %i.ay, align 1, !tbaa !50
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 10
  store i8 %i.au, ptr %i.az, align 2, !tbaa !146
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 11
  store i8 %i.aw, ptr %i.ba, align 1, !tbaa !147
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle10AbiTagAttrE, i64 16), ptr %i.aq, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.0517, ptr %i.bb, align 8, !tbaa !148
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.y, ptr %i.bc, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %i.ae, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !62
  %i.bd = load ptr, ptr %0, align 16, !tbaa !11   ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !25  ; 2 uses
  %.not.i = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.b, %bb.g, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE19parseBareSourceNameEv.exit, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit.i, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i.i, %bb.c, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE19parseBareSourceNameEv.exit ], [ %i.aq, %bb.g ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parsePositiveIntegerEPm.exit.i ], [ null, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit.i.i ], [ null, %bb.c ], [ %.0517, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnqualifiedNameEPNS4_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4864) %0, ptr noundef %1) unnamed_addr #2 align 2 {
bb.a:
  %.val22 = load ptr, ptr %0, align 16, !tbaa !11 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val23 = load ptr, ptr %i.a, align 8, !tbaa !25 ; 6 uses
  %i.b = ptrtoint ptr %.val23 to i64              ; 2 uses
  %i.c = ptrtoint ptr %.val22 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not.i.not = icmp eq ptr %.val23, %.val22
  br i1 %.not.i.not, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29.thread.thread, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit: ; preds = %bb.a
  %i.e = load i8, ptr %.val22, align 1, !tbaa !7  ; 2 uses
  %i.f = icmp eq i8 %i.e, 85
  br i1 %i.f, label %bb.b, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit29

bb.b:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4lookEj.exit
  %i.g = icmp ult i64 %i.d, 2
  br i1 %i.g, label %.critedge18, label %_ZNK10StringView10startsWithES_.exit.i82

_ZNK10StringView10startsWithES_.exit.i82:         ; preds = %bb.b
  %i.h = load i16, ptr %.val22, align 1
  %i.i = icmp ne i16 29781, %i.h
  %i.j = zext i1 %i.i to i32
  %.not9.i.i.i.i.i.i84 = icmp eq i32 %i.j, 0
  br i1 %.not9.i.i.i.i.i.i84, label %bb.c, label %_ZNK10StringView10startsWithES_.exit.i56

bb.c:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i82
  %i.k = getelementptr inbounds nuw i8, ptr %.val22, i64 2 ; 8 uses
  store ptr %i.k, ptr %0, align 16, !tbaa !11
  %i.l = icmp eq ptr %.val23, %i.k
  br i1 %i.l, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr %i.k, align 1, !tbaa !7
  %i.n = sext i8 %i.m to i32
  %isdigittmp.i68 = add nsw i32 %i.n, -48
  %isdigit.i69 = icmp ult i32 %isdigittmp.i68, 10
  br i1 %isdigit.i69, label %.lr.ph.i75, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80

.lr.ph.i75:                                       ; preds = %bb.d, %bb.e
  %.val911.i76 = phi ptr [ %i.q, %bb.e ], [ %i.k, %bb.d ] ; 4 uses
  %i.o = load i8, ptr %.val911.i76, align 1, !tbaa !7
  %i.p = sext i8 %i.o to i32
  %isdigittmp2.i77 = add nsw i32 %i.p, -48
  %isdigit3.i78 = icmp ult i32 %isdigittmp2.i77, 10
  br i1 %isdigit3.i78, label %bb.e, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80

bb.e:                                             ; preds = %.lr.ph.i75
  %i.q = getelementptr inbounds nuw i8, ptr %.val911.i76, i64 1 ; 5 uses
  store ptr %i.q, ptr %0, align 16, !tbaa !11
  %.not.i79 = icmp eq ptr %.val23, %i.q
  br i1 %.not.i79, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80, label %.lr.ph.i75, !llvm.loop !63

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80: ; preds = %.lr.ph.i75, %bb.e, %bb.c, %bb.d
  %i.r = phi ptr [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.q, %bb.e ], [ %.val911.i76, %.lr.ph.i75 ] ; 3 uses
  %.sroa.0.0.i71 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i75 ]
  %.sroa.3.0.i72 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.q, %bb.e ], [ %.val911.i76, %.lr.ph.i75 ]
  %.not.i64 = icmp eq ptr %i.r, %.val23
  br i1 %.not.i64, label %.critedge18, label %bb.f

bb.f:                                             ; preds = %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE11parseNumberEb.exit80
  %i.s = load i8, ptr %i.r, align 1, !tbaa !7
  %i.t = icmp eq i8 %i.s, 95
  br i1 %i.t, label %bb.g, label %.critedge18

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.u, ptr %0, align 16, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4848 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !38  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !57   ; 2 uses
  %i.z = add i64 %i.y, -4048
  %i.aa = icmp ult i64 %i.z, -4080
  br i1 %i.aa, label %bb.h, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15UnnamedTypeNameEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #21 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt9terminatev() #23
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63: ; preds = %bb.h
  store ptr %i.w, ptr %i.ab, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ad, align 8, !tbaa !57
  store ptr %i.ab, ptr %i.v, align 16, !tbaa !38
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15UnnamedTypeNameEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE4makeINS0_15UnnamedTypeNameEJR10StringViewEEEPNS0_4NodeEDpOT0_.exit: ; preds = %bb.g, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63
  %i.ae = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63 ], [ %i.y, %bb.g ] ; 2 uses
  %i.af = phi ptr [ %i.ab, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63 ], [ %i.w, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = add nsw i64 %i.ae, 32
  store i64 %i.ah, ptr %i.ag, align 8, !tbaa !57
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ae ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store <4 x i8> <i8 39, i8 1, i8 1, i8 1>, ptr %i.ak, align 8, !tbaa !7
  store ptr getelementptr inbounds nuw inrange(-16, 72) (i8, ptr @_ZTVN4llvh16itanium_demangle15UnnamedTypeNameE, i64 16), ptr %i.aj, align 8, !tbaa !47
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %.sroa.0.0.i71, ptr %i.al, align 8, !tbaa !62
  %.sroa.2.0..sroa_idx.i.i.i62 = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %.sroa.3.0.i72, ptr %.sroa.2.0..sroa_idx.i.i.i62, align 8, !tbaa !62
  br label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE20parseUnnamedTypeNameEPNS4_9NameStateE.exit.thread119

_ZNK10StringView10startsWithES_.exit.i56:         ; preds = %_ZNK10StringView10startsWithES_.exit.i82
  %i.am = load i16, ptr %.val22, align 1
  %i.an = icmp ne i16 27733, %i.am
  %i.ao = zext i1 %i.an to i32
  %.not9.i.i.i.i.i.i58 = icmp eq i32 %i.ao, 0
  br i1 %.not9.i.i.i.i.i.i58, label %bb.j, label %.critedge18

bb.j:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i56
  %i.ap = getelementptr inbounds nuw i8, ptr %.val22, i64 2 ; 3 uses
  store ptr %i.ap, ptr %0, align 16, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 738 ; 3 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !150, !range !111, !noundef !112
  store i8 1, ptr %i.aq, align 2, !tbaa !150
  %i.as = ptrtoint ptr %i.ap to i64
  %i.at = sub i64 %i.b, %i.as
  %i.au = icmp ult i64 %i.at, 2
  br i1 %i.au, label %bb.k, label %_ZNK10StringView10startsWithES_.exit.i49

_ZNK10StringView10startsWithES_.exit.i49:         ; preds = %bb.j
  %i.av = load i16, ptr %i.ap, align 1
  %i.aw = icmp ne i16 17782, %i.av
  %i.ax = zext i1 %i.aw to i32
  %.not9.i.i.i.i.i.i51 = icmp eq i32 %i.ax, 0
  br i1 %.not9.i.i.i.i.i.i51, label %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit54, label %bb.k

_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfE10StringView.exit54: ; preds = %_ZNK10StringView10startsWithES_.exit.i49
  %i.ay = getelementptr inbounds nuw i8, ptr %.val22, i64 4 ; 2 uses
  store ptr %i.ay, ptr %0, align 16, !tbaa !11
  br label %bb.w

bb.k:                                             ; preds = %_ZNK10StringView10startsWithES_.exit.i49, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !27
  %i.bc = load ptr, ptr %i.az, align 16, !tbaa !26
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = tail call fastcc noundef ptr @_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9parseTypeEv(ptr noundef nonnull align 16 dereferenceable(4864) %0), !inline_history !151 ; 2 uses
  %.not.not.i124 = icmp eq ptr %i.bg, null
  br i1 %.not.not.i124, label %_ZN14SwapAndRestoreIbED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit44
  %i.bj = phi ptr [ %i.bg, %.lr.ph ], [ %i.ck, %_ZN4llvh16itanium_demangle2DbIN12_GLOBAL__N_116DefaultAllocatorEE9consumeIfEc.exit44 ]
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !27 ; 3 uses
  %i.bl = load ptr, ptr %i.bh, align 16, !tbaa !28
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.m, label %_ZN4llvh16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit47

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %i.az, align 16, !tbaa !26 ; 5 uses
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = ptrtoint ptr %i.bn to i64
end_hunk_0
