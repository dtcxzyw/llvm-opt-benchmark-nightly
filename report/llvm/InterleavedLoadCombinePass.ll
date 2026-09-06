Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/InterleavedLoadCombinePass?download=true
inline.NumInlined: 2125
inline.NumDeleted: 1268
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_110VectorInfo13computeFromLIEPN4llvm8LoadInstERS0_RKNS1_10DataLayoutE:bb.a
  br label %.lr.ph.i.i.i.i53

.lr.ph.i.i.i.i53:                                 ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i58, %.lr.ph.i.preheader.i.i.i51
  %.06.i.i.i.i54 = phi ptr [ %i.oi, %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i58 ], [ %i.oh, %.lr.ph.i.preheader.i.i.i51 ] ; 3 uses
  %i.oi = getelementptr inbounds i8, ptr %.06.i.i.i.i54, i64 -24 ; 2 uses
  %i.oj = getelementptr i8, ptr %.06.i.i.i.i54, i64 -16
  %.val.i.i.i.i55 = load ptr, ptr %i.oj, align 8  ; 2 uses
  %i.ok = getelementptr i8, ptr %.06.i.i.i.i54, i64 -8
  %.val4.i.i.i.i56 = load i32, ptr %i.ok, align 8, !tbaa !89
  %i.ol = icmp ult i32 %.val4.i.i.i.i56, 65
  %i.om = icmp eq ptr %.val.i.i.i.i55, null
  %or.cond.i.i.i.i.i57 = select i1 %i.ol, i1 true, i1 %i.om
  br i1 %or.cond.i.i.i.i.i57, label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i58, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i.i53
  call void @_ZdaPv(ptr noundef nonnull %.val.i.i.i.i55) #20
  br label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i58

_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i58: ; preds = %bb.cf, %.lr.ph.i.i.i.i53
  %.not.i.i.i.i59 = icmp eq ptr %.val.i.i.i48, %i.oi
  br i1 %.not.i.i.i.i59, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i60, label %.lr.ph.i.i.i.i53, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i60: ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i58
  %.pre.i.i.i61 = load ptr, ptr %i.ms, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i62

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i62: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i60, %_ZN4llvm5APIntD2Ev.exit.i.i47
  %i.on = phi ptr [ %.pre.i.i.i61, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i60 ], [ %.val.i.i.i48, %_ZN4llvm5APIntD2Ev.exit.i.i47 ] ; 2 uses
  %i.oo = icmp eq ptr %i.on, %i.mt
  br i1 %i.oo, label %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit, label %bb.cg

bb.cg:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i62
  call void @free(ptr noundef %i.on) #19
  br label %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit

_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i62, %bb.cg
  %i.op = load i32, ptr %i.mr, align 8, !tbaa !89
  %i.oq = icmp ugt i32 %i.op, 64
  br i1 %i.oq, label %bb.ch, label %_ZN4llvm5APIntD2Ev.exit.i64

bb.ch:                                            ; preds = %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit
  %i.or = load ptr, ptr %i.mq, align 8, !tbaa !90 ; 2 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %_ZN4llvm5APIntD2Ev.exit.i64, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZdaPv(ptr noundef nonnull %i.or) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i64

_ZN4llvm5APIntD2Ev.exit.i64:                      ; preds = %bb.ci, %bb.ch, %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit
  %.val.i.i = load ptr, ptr %i.mm, align 8, !tbaa !29 ; 3 uses
  %.val2.i.i = load i32, ptr %i.mo, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i = icmp eq i32 %.val2.i.i, 0
  br i1 %.not5.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %_ZN4llvm5APIntD2Ev.exit.i64
  %i.ot = zext i32 %.val2.i.i to i64
  %.idx.i.i = mul nuw nsw i64 %i.ot, 24
  %i.ou = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i.i
  br label %.lr.ph.i.i.i65

.lr.ph.i.i.i65:                                   ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i, %.lr.ph.i.preheader.i.i
  %.06.i.i.i = phi ptr [ %i.ov, %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i ], [ %i.ou, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.ov = getelementptr inbounds i8, ptr %.06.i.i.i, i64 -24 ; 2 uses
  %i.ow = getelementptr i8, ptr %.06.i.i.i, i64 -16
  %.val.i.i.i66 = load ptr, ptr %i.ow, align 8    ; 2 uses
  %i.ox = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.val4.i.i.i = load i32, ptr %i.ox, align 8, !tbaa !89
  %i.oy = icmp ult i32 %.val4.i.i.i, 65
  %i.oz = icmp eq ptr %.val.i.i.i66, null
  %or.cond.i.i.i.i = select i1 %i.oy, i1 true, i1 %i.oz
  br i1 %or.cond.i.i.i.i, label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.i.i.i65
  call void @_ZdaPv(ptr noundef nonnull %.val.i.i.i66) #20
  br label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i

_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i: ; preds = %bb.cj, %.lr.ph.i.i.i65
  %.not.i.i.i67 = icmp eq ptr %.val.i.i, %i.ov
  br i1 %.not.i.i.i67, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, label %.lr.ph.i.i.i65, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i: ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i
  %.pre.i.i68 = load ptr, ptr %i.mm, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i, %_ZN4llvm5APIntD2Ev.exit.i64
  %i.pa = phi ptr [ %.pre.i.i68, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i ], [ %.val.i.i, %_ZN4llvm5APIntD2Ev.exit.i64 ] ; 2 uses
  %i.pb = icmp eq ptr %i.pa, %i.mn
  br i1 %i.pb, label %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i
  call void @free(ptr noundef %i.pa) #19
  br label %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit

_ZN12_GLOBAL__N_110PolynomialD2Ev.exit:           ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load ptr, ptr %i.m, align 8, !tbaa !79
  %i.pc = getelementptr i8, ptr %.val, i64 32
  %.val.val = load i32, ptr %i.pc, align 8, !tbaa !85
  %i.pd = zext i32 %.val.val to i64
  %i.pe = icmp samesign ult i64 %indvars.iv.next, %i.pd
  br i1 %i.pe, label %bb.bw, label %.loopexit, !llvm.loop !353

.loopexit:                                        ; preds = %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit, %_ZNSt3setIPN4llvm11InstructionESt4lessIS2_ESaIS2_EE6insertEOS2_.exit, %bb.c, %bb.b
  %.0.ph = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ true, %_ZNSt3setIPN4llvm11InstructionESt4lessIS2_ESaIS2_EE6insertEOS2_.exit ], [ true, %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit ] ; 3 uses
  %.pr = load i32, ptr %i.h, align 8, !tbaa !89
  %i.pf = icmp ugt i32 %.pr, 64
  br i1 %i.pf, label %bb.cl, label %_ZN4llvm5APIntD2Ev.exit.i69

bb.cl:                                            ; preds = %.loopexit
  %i.pg = load ptr, ptr %i.g, align 8, !tbaa !90  ; 2 uses
  %i.ph = icmp eq ptr %i.pg, null
  br i1 %i.ph, label %_ZN4llvm5APIntD2Ev.exit.i69, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdaPv(ptr noundef nonnull %i.pg) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i69

_ZN4llvm5APIntD2Ev.exit.i69:                      ; preds = %bb.a, %bb.cm, %bb.cl, %.loopexit
  %.0102 = phi i1 [ %.0.ph, %.loopexit ], [ %.0.ph, %bb.cm ], [ %.0.ph, %bb.cl ], [ false, %bb.a ]
  %.val.i.i70 = load ptr, ptr %i.c, align 8, !tbaa !29 ; 3 uses
  %.val2.i.i71 = load i32, ptr %i.e, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i72 = icmp eq i32 %.val2.i.i71, 0
  br i1 %.not5.i.i.i72, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i84, label %.lr.ph.i.preheader.i.i73

.lr.ph.i.preheader.i.i73:                         ; preds = %_ZN4llvm5APIntD2Ev.exit.i69
  %i.pi = zext i32 %.val2.i.i71 to i64
  %.idx.i.i74 = mul nuw nsw i64 %i.pi, 24
  %i.pj = getelementptr inbounds nuw i8, ptr %.val.i.i70, i64 %.idx.i.i74
  br label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i80, %.lr.ph.i.preheader.i.i73
  %.06.i.i.i76 = phi ptr [ %i.pk, %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i80 ], [ %i.pj, %.lr.ph.i.preheader.i.i73 ] ; 3 uses
  %i.pk = getelementptr inbounds i8, ptr %.06.i.i.i76, i64 -24 ; 2 uses
  %i.pl = getelementptr i8, ptr %.06.i.i.i76, i64 -16
  %.val.i.i.i77 = load ptr, ptr %i.pl, align 8    ; 2 uses
  %i.pm = getelementptr i8, ptr %.06.i.i.i76, i64 -8
  %.val4.i.i.i78 = load i32, ptr %i.pm, align 8, !tbaa !89
  %i.pn = icmp ult i32 %.val4.i.i.i78, 65
  %i.po = icmp eq ptr %.val.i.i.i77, null
  %or.cond.i.i.i.i79 = select i1 %i.pn, i1 true, i1 %i.po
  br i1 %or.cond.i.i.i.i79, label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i80, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i.i75
  call void @_ZdaPv(ptr noundef nonnull %.val.i.i.i77) #20
  br label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i80

_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i80: ; preds = %bb.cn, %.lr.ph.i.i.i75
  %.not.i.i.i81 = icmp eq ptr %.val.i.i70, %i.pk
  br i1 %.not.i.i.i81, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i82, label %.lr.ph.i.i.i75, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i82: ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i80
  %.pre.i.i83 = load ptr, ptr %i.c, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i84

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i84: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i82, %_ZN4llvm5APIntD2Ev.exit.i69
  %i.pp = phi ptr [ %.pre.i.i83, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i82 ], [ %.val.i.i70, %_ZN4llvm5APIntD2Ev.exit.i69 ] ; 2 uses
  %i.pq = icmp eq ptr %i.pp, %i.d
  br i1 %i.pq, label %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit85, label %bb.co

bb.co:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i84
  call void @free(ptr noundef %i.pp) #19
  br label %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit85

_ZN12_GLOBAL__N_110PolynomialD2Ev.exit85:         ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i84, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  ret i1 %.0102
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_110VectorInfo14computeFromBCIEPN4llvm11BitCastInstERS0_RKNS1_10DataLayoutE(ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(912) %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"struct.(anonymous namespace)::VectorInfo", align 8 ; 20 uses
  %4 = alloca %"struct.(anonymous namespace)::VectorInfo::ElementInfo", align 8 ; 11 uses
  %5 = alloca %"class.(anonymous namespace)::Polynomial", align 8 ; 8 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113  ; 6 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp ult i8 %i.c, 30
  br i1 %i.d, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 255
  %i.j = icmp ne i32 %i.i, 18
  %.not5781 = icmp eq ptr %i.f, null
  %.not57 = or i1 %.not5781, %i.j
  br i1 %.not57, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !85   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !85   ; 2 uses
  %i.q = urem i32 %i.n, %i.p
  %i.r = udiv exact i32 %i.n, %i.p                ; 4 uses
  %.not58 = icmp eq i32 %i.q, 0
  br i1 %.not58, label %bb.d, label %bb.ac

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.u = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %2, ptr noundef %i.t) #19 ; 2 uses
  %.fca.1.extract17 = extractvalue { i64, i8 } %i.u, 1
  %i.v = trunc nuw i8 %.fca.1.extract17 to i1
  br i1 %i.v, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.d
  %.fca.0.extract16 = extractvalue { i64, i8 } %i.u, 0 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %2, ptr noundef %i.x) #19 ; 2 uses
  %.fca.1.extract = extractvalue { i64, i8 } %i.y, 1
  %i.z = trunc nuw i8 %.fca.1.extract to i1
  br i1 %i.z, label %bb.f, label %_ZNK4llvm8TypeSizecvmEv.exit61

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  tail call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.2) #22
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit61:                   ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.aa = trunc i64 %.fca.0.extract16 to i32
  %.fca.0.extract = extractvalue { i64, i8 } %i.y, 0
  %i.ab = trunc i64 %.fca.0.extract to i32
  %i.ac = mul i32 %i.r, %i.aa
  %.not59 = icmp eq i32 %i.ac, %i.ab
  br i1 %.not59, label %bb.g, label %bb.ac

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN12_GLOBAL__N_110VectorInfoE, i64 16), ptr %3, align 8, !tbaa !19
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  store i32 0, ptr %i.ae, align 8, !tbaa !58
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.af, align 8, !tbaa !59
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i8 0, i64 16, i1 false)
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.ai, align 8, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !58
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 88
  store ptr null, ptr %i.ak, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !60
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 104
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !61
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  store ptr %i.f, ptr %i.ao, align 8, !tbaa !79
  %i.ap = load i32, ptr %i.o, align 8, !tbaa !85  ; 2 uses
  %i.aq = zext i32 %i.ap to i64                   ; 3 uses
  %i.ar = mul nuw nsw i64 %i.aq, 152
  %i.as = add nuw nsw i64 %i.ar, 8
  %i.at = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.as) #21 ; 2 uses
  store i64 %i.aq, ptr %i.at, align 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.av = icmp eq i32 %i.ap, 0
  br i1 %i.av, label %_ZN12_GLOBAL__N_110VectorInfoC2EPN4llvm15FixedVectorTypeE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [152 x i8], ptr %i.au, i64 %i.aq
  br label %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.i

_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.i:         ; preds = %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.i, %bb.h
  %i.ax = phi ptr [ %i.au, %bb.h ], [ %i.bf, %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.i ] ; 10 uses
  store i32 -1, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i8 0, i64 12, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store i32 0, ptr %i.ba, align 8, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 28
  store i32 4, ptr %i.bb, align 4, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  store i32 1, ptr %i.bc, align 8, !tbaa !89
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store i64 0, ptr %i.bd, align 8, !tbaa !90
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store ptr null, ptr %i.be, align 8, !tbaa !99
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 152 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.aw
  br i1 %i.bg, label %_ZN12_GLOBAL__N_110VectorInfoC2EPN4llvm15FixedVectorTypeE.exit, label %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.i

_ZN12_GLOBAL__N_110VectorInfoC2EPN4llvm15FixedVectorTypeE.exit: ; preds = %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  store ptr %i.au, ptr %i.bh, align 8, !tbaa !100
  %i.bi = load i8, ptr %i.b, align 8, !tbaa !52
  switch i8 %i.bi, label %_ZN12_GLOBAL__N_110VectorInfo7computeEPN4llvm5ValueERS0_RKNS1_10DataLayoutE.exit.thread [
    i8 95, label %.split
    i8 63, label %_ZN12_GLOBAL__N_110VectorInfo7computeEPN4llvm5ValueERS0_RKNS1_10DataLayoutE.exit
    i8 81, label %.split79
  ]

.split:                                           ; preds = %_ZN12_GLOBAL__N_110VectorInfoC2EPN4llvm15FixedVectorTypeE.exit
  %i.bj = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_110VectorInfo14computeFromSVIEPN4llvm17ShuffleVectorInstERS0_RKNS1_10DataLayoutE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(912) %2), !inline_history !7
  br i1 %i.bj, label %.preheader87, label %_ZN12_GLOBAL__N_110VectorInfo7computeEPN4llvm5ValueERS0_RKNS1_10DataLayoutE.exit.thread

.split79:                                         ; preds = %_ZN12_GLOBAL__N_110VectorInfoC2EPN4llvm15FixedVectorTypeE.exit
  %i.bk = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_110VectorInfo14computeFromBCIEPN4llvm11BitCastInstERS0_RKNS1_10DataLayoutE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(912) %2), !inline_history !7
  br i1 %i.bk, label %.preheader87, label %_ZN12_GLOBAL__N_110VectorInfo7computeEPN4llvm5ValueERS0_RKNS1_10DataLayoutE.exit.thread

_ZN12_GLOBAL__N_110VectorInfo7computeEPN4llvm5ValueERS0_RKNS1_10DataLayoutE.exit: ; preds = %_ZN12_GLOBAL__N_110VectorInfoC2EPN4llvm15FixedVectorTypeE.exit
  %i.bl = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_110VectorInfo13computeFromLIEPN4llvm8LoadInstERS0_RKNS1_10DataLayoutE(ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(912) %2), !inline_history !7
  br i1 %i.bl, label %.preheader87, label %_ZN12_GLOBAL__N_110VectorInfo7computeEPN4llvm5ValueERS0_RKNS1_10DataLayoutE.exit.thread

.preheader87:                                     ; preds = %_ZN12_GLOBAL__N_110VectorInfo7computeEPN4llvm5ValueERS0_RKNS1_10DataLayoutE.exit, %.split, %.split79
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !79
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !85
  %.not = icmp eq i32 %i.bo, 0
  br i1 %.not, label %._crit_edge91, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader87
  %.not92 = icmp eq i32 %i.n, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 128 ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 136 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 128 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 128
  br i1 %.not92, label %._crit_edge91, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.cd = zext i32 %i.r to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.05290.us = phi i32 [ %i.eo, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 3 uses
  %i.ce = udiv i32 %.05290.us, %i.r
  %i.cf = zext i32 %i.ce to i64                   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader.us, %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.us
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_110PolynomialD2Ev.exit.us ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !100
  %i.ch = getelementptr inbounds nuw [152 x i8], ptr %i.cg, i64 %i.cf ; 5 uses
  %i.ci = trunc nuw i64 %indvars.iv to i32
  %i.cj = mul i64 %indvars.iv, %.fca.0.extract16
  %i.ck = and i64 %i.cj, 4294967295
  call void @llvm.experimental.noalias.scope.decl(metadata !370)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %5, ptr noundef nonnull align 8 dereferenceable(144) %i.ch, i64 16, i1 false)
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !29, !alias.scope !370
  store i32 0, ptr %i.br, align 8, !tbaa !86, !alias.scope !370
  store i32 4, ptr %i.bs, align 4, !tbaa !87, !alias.scope !370
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !86, !noalias !370
  %.not.i.i.i.i.us = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i.us, label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.co = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(112) %i.bp, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.cn) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i.us

_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i.us: ; preds = %bb.j, %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !89, !noalias !370 ; 2 uses
  store i32 %i.cr, ptr %i.bu, align 8, !tbaa !89, !alias.scope !370
  %i.cs = icmp ult i32 %i.cr, 65
  br i1 %i.cs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i.us
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, ptr noundef nonnull align 8 dereferenceable(12) %i.cp) #19
  br label %_ZNK12_GLOBAL__N_110PolynomialplEm.exit.us

bb.l:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i.us
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !90, !noalias !370
  store i64 %i.ct, ptr %i.bt, align 8, !tbaa !90, !alias.scope !370
  br label %_ZNK12_GLOBAL__N_110PolynomialplEm.exit.us

_ZNK12_GLOBAL__N_110PolynomialplEm.exit.us:       ; preds = %bb.l, %bb.k
  %i.cu = call noundef nonnull align 8 dereferenceable(12) ptr @_ZN4llvm5APIntpLEm(ptr noundef nonnull align 8 dereferenceable(12) %i.bt, i64 noundef %i.ck) #19 ; 0 uses
  %i.cv = icmp eq i64 %indvars.iv, 0
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_110PolynomialplEm.exit.us
  %i.cw = load ptr, ptr %i.bh, align 8, !tbaa !100
  %i.cx = getelementptr inbounds nuw [152 x i8], ptr %i.cw, i64 %i.cf
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 144
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !99
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZNK12_GLOBAL__N_110PolynomialplEm.exit.us
  %i.da = phi ptr [ %i.cz, %bb.m ], [ null, %_ZNK12_GLOBAL__N_110PolynomialplEm.exit.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(144) %5, i64 16, i1 false)
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !29
  store i32 0, ptr %i.bx, align 8, !tbaa !86
  store i32 4, ptr %i.by, align 4, !tbaa !87
  %i.db = load i32, ptr %i.br, align 8, !tbaa !86
  %.not.i.i.i.i62.us = icmp eq i32 %i.db, 0
  br i1 %.not.i.i.i.i62.us, label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i63.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dc = call fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEEEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(112) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.bp) ; 0 uses
  br label %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i63.us

_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i63.us: ; preds = %bb.o, %bb.n
  %i.dd = load i32, ptr %i.bu, align 8, !tbaa !89 ; 2 uses
  store i32 %i.dd, ptr %i.ca, align 8, !tbaa !89
  %i.de = icmp ult i32 %i.dd, 65
  br i1 %i.de, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i63.us
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %i.bt) #19
  br label %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoC2ENS_10PolynomialEPN4llvm8LoadInstE.exit.us

bb.q:                                             ; preds = %_ZN4llvm11SmallVectorISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELj4EEC2ERKS7_.exit.i.i63.us
  %i.df = load i64, ptr %i.bt, align 8, !tbaa !90
  store i64 %i.df, ptr %i.bz, align 8, !tbaa !90
  br label %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoC2ENS_10PolynomialEPN4llvm8LoadInstE.exit.us

_ZN12_GLOBAL__N_110VectorInfo11ElementInfoC2ENS_10PolynomialEPN4llvm8LoadInstE.exit.us: ; preds = %bb.q, %bb.p
  store ptr %i.da, ptr %i.cb, align 8, !tbaa !99
  %i.dg = load ptr, ptr %i.cc, align 8, !tbaa !100
  %i.dh = add i32 %.05290.us, %i.ci
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [152 x i8], ptr %i.dg, i64 %i.di ; 2 uses
  %i.dk = call fastcc noundef nonnull align 8 dereferenceable(144) ptr @_ZN12_GLOBAL__N_110PolynomialaSEOS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.dj, ptr noundef nonnull align 8 dereferenceable(152) %4) ; 0 uses
  %i.dl = load ptr, ptr %i.cb, align 8, !tbaa !99
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !99
  %i.dn = load i32, ptr %i.ca, align 8, !tbaa !89
  %i.do = icmp ugt i32 %i.dn, 64
  br i1 %i.do, label %bb.r, label %_ZN4llvm5APIntD2Ev.exit.i.i.us

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoC2ENS_10PolynomialEPN4llvm8LoadInstE.exit.us
  %i.dp = load ptr, ptr %i.bz, align 8, !tbaa !90 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_ZN4llvm5APIntD2Ev.exit.i.i.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.dp) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i.i.us

_ZN4llvm5APIntD2Ev.exit.i.i.us:                   ; preds = %bb.s, %bb.r, %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoC2ENS_10PolynomialEPN4llvm8LoadInstE.exit.us
  %.val.i.i.i.us = load ptr, ptr %i.bv, align 8, !tbaa !29 ; 3 uses
  %.val2.i.i.i.us = load i32, ptr %i.bx, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i.i.us = icmp eq i32 %.val2.i.i.i.us, 0
  br i1 %.not5.i.i.i.i.us, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.us, label %.lr.ph.i.preheader.i.i.i.us

.lr.ph.i.preheader.i.i.i.us:                      ; preds = %_ZN4llvm5APIntD2Ev.exit.i.i.us
  %i.dr = zext i32 %.val2.i.i.i.us to i64
  %.idx.i.i.i.us = mul nuw nsw i64 %i.dr, 24
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i.i.us, i64 %.idx.i.i.i.us
  br label %.lr.ph.i.i.i.i.us

.lr.ph.i.i.i.i.us:                                ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i.us, %.lr.ph.i.preheader.i.i.i.us
  %.06.i.i.i.i.us = phi ptr [ %i.dt, %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i.us ], [ %i.ds, %.lr.ph.i.preheader.i.i.i.us ] ; 3 uses
  %i.dt = getelementptr inbounds i8, ptr %.06.i.i.i.i.us, i64 -24 ; 2 uses
  %i.du = getelementptr i8, ptr %.06.i.i.i.i.us, i64 -16
  %.val.i.i.i.i.us = load ptr, ptr %i.du, align 8 ; 2 uses
  %i.dv = getelementptr i8, ptr %.06.i.i.i.i.us, i64 -8
  %.val4.i.i.i.i.us = load i32, ptr %i.dv, align 8, !tbaa !89
  %i.dw = icmp ult i32 %.val4.i.i.i.i.us, 65
  %i.dx = icmp eq ptr %.val.i.i.i.i.us, null
  %or.cond.i.i.i.i.i.us = select i1 %i.dw, i1 true, i1 %i.dx
  br i1 %or.cond.i.i.i.i.i.us, label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i.us, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.us
  call void @_ZdaPv(ptr noundef nonnull %.val.i.i.i.i.us) #20
  br label %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i.us

_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i.us: ; preds = %bb.t, %.lr.ph.i.i.i.i.us
  %.not.i.i.i.i64.us = icmp eq ptr %.val.i.i.i.us, %i.dt
  br i1 %.not.i.i.i.i64.us, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.us, label %.lr.ph.i.i.i.i.us, !llvm.loop !1

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.us: ; preds = %_ZNSt4pairIN12_GLOBAL__N_110Polynomial4BOpsEN4llvm5APIntEED2Ev.exit.i.i.i.i.us
  %.pre.i.i.i.us = load ptr, ptr %i.bv, align 8, !tbaa !29
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.us

_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.us: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.us, %_ZN4llvm5APIntD2Ev.exit.i.i.us
  %i.dy = phi ptr [ %.pre.i.i.i.us, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i.i.i.us ], [ %.val.i.i.i.us, %_ZN4llvm5APIntD2Ev.exit.i.i.us ] ; 2 uses
  %i.dz = icmp eq ptr %i.dy, %i.bw
  br i1 %i.dz, label %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit.us, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.us
  call void @free(ptr noundef %i.dy) #19
  br label %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit.us

_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit.us: ; preds = %bb.u, %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.i.us
  %i.ea = load i32, ptr %i.bu, align 8, !tbaa !89
  %i.eb = icmp ugt i32 %i.ea, 64
  br i1 %i.eb, label %bb.v, label %_ZN4llvm5APIntD2Ev.exit.i.us

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit.us
  %i.ec = load ptr, ptr %i.bt, align 8, !tbaa !90 ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %_ZN4llvm5APIntD2Ev.exit.i.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ec) #20
  br label %_ZN4llvm5APIntD2Ev.exit.i.us

_ZN4llvm5APIntD2Ev.exit.i.us:                     ; preds = %bb.w, %bb.v, %_ZN12_GLOBAL__N_110VectorInfo11ElementInfoD2Ev.exit.us
  %.val.i.i.us = load ptr, ptr %i.bp, align 8, !tbaa !29 ; 3 uses
  %.val2.i.i.us = load i32, ptr %i.br, align 8, !tbaa !86 ; 2 uses
  %.not5.i.i.i.us = icmp eq i32 %.val2.i.i.us, 0
  br i1 %.not5.i.i.i.us, label %_ZN4llvm23SmallVectorTemplateBaseISt4pairIN12_GLOBAL__N_110Polynomial4BOpsENS_5APIntEELb0EE13destroy_rangeEPS6_S8_.exit.i.i.us, label %.lr.ph.i.preheader.i.i.us

.lr.ph.i.preheader.i.i.us:                        ; preds = %_ZN4llvm5APIntD2Ev.exit.i.us
  %i.ee = zext i32 %.val2.i.i.us to i64
  %.idx.i.i.us = mul nuw nsw i64 %i.ee, 24
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i.i.us, i64 %.idx.i.i.us
  br label %.lr.ph.i.i.i66.us
end_hunk_0
