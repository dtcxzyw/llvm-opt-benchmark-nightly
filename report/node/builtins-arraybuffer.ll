Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/builtins-arraybuffer?download=true
inline.NumInlined: 1050
inline.NumDeleted: 477
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internalL11SliceHelperENS0_16BuiltinArgumentsEPNS0_7IsolateEPKcb:bb.a
  %i.hk = icmp eq i64 %i.hf, %i.hj
  br i1 %i.hk, label %bb.ay, label %.critedge11

bb.ay:                                            ; preds = %bb.ax
  %i.hl = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 198, ptr null, i64 0) #16
  %i.hm = load i64, ptr %i.hl, align 8
  %i.hn = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.hm, ptr noundef null) #16
  br label %bb.bk

.critedge11:                                      ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit247..critedge11_crit_edge, %bb.ax
  %i.ho = phi i64 [ %.pre514, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit247..critedge11_crit_edge ], [ %i.fu, %bb.ax ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store i64 %i.ho, ptr %15, align 8
  %i.hp = call noundef i64 @_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.hq = uitofp i64 %i.hp to double
  %i.hr = fcmp ogt double %.sroa.speculated, %i.hq
  br i1 %i.hr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %.critedge11
  %i.hs = select i1 %4, i32 197, i32 18
  %i.ht = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %i.hs, ptr null, i64 0) #16
  %i.hu = load i64, ptr %i.ht, align 8
  %i.hv = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.hu, ptr noundef null) #16
  br label %bb.bk

bb.ba:                                            ; preds = %.critedge11
  br i1 %4, label %.critedge13, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hw = load i64, ptr %i.r, align 8
  %i.hx = add i64 %i.hw, 71
  %i.hy = inttoptr i64 %i.hx to ptr
  %i.hz = load atomic volatile i32, ptr %i.hy monotonic, align 4
  %i.ia = and i32 %i.hz, 4
  %.not505 = icmp eq i32 %i.ia, 0
  br i1 %.not505, label %.critedge13, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ib = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.ib, ptr %5, align 8
  %i.ic = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 65, ptr nonnull %5, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.id = load i64, ptr %i.ic, align 8
  %i.ie = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.id, ptr noundef null) #16
  br label %bb.bk

.critedge13:                                      ; preds = %bb.ba, %bb.bb
  %i.if = fptoui double %i.co to i64              ; 4 uses
  %i.ig = fptoui double %.sroa.speculated to i64  ; 4 uses
  %.not = icmp eq i64 %i.ig, 0
  br i1 %.not, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %.critedge13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  %i.ih = load i64, ptr %i.r, align 8
  store i64 %i.ih, ptr %16, align 8
  %i.ii = call noundef i64 @_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %16) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %i.ij = load i64, ptr %i.r, align 8             ; 3 uses
  br i1 %4, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ik = add i64 %i.ij, 71
  %i.il = inttoptr i64 %i.ik to ptr
  %i.im = load atomic volatile i32, ptr %i.il monotonic, align 4
  %i.in = and i32 %i.im, 32
  %.not506 = icmp eq i32 %i.in, 0
  br i1 %.not506, label %bb.bi, label %bb.bf, !prof !6

bb.bf:                                            ; preds = %bb.be
  %i.io = icmp ult i64 %i.ii, %i.if
  br i1 %i.io, label %.critedge203, label %bb.bg

.critedge203:                                     ; preds = %bb.bf
  %i.ip = load i64, ptr %i.fr, align 8
  br label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.iq = sub nuw i64 %i.ii, %i.if
  %spec.select = call i64 @llvm.umin.i64(i64 %i.iq, i64 %i.ig)
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bd
  %i.ir = add i64 %i.ij, 55
  %i.is = inttoptr i64 %i.ir to ptr
  %i.it = load i64, ptr %i.is, align 8
  %i.iu = inttoptr i64 %i.it to ptr
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 %i.if
  %i.iw = load i64, ptr %i.fr, align 8
  %i.ix = add i64 %i.iw, 55
  %i.iy = inttoptr i64 %i.ix to ptr
  %i.iz = load i64, ptr %i.iy, align 8
  %i.ja = inttoptr i64 %i.iz to ptr
  call void @_ZN2v84base14Relaxed_MemcpyEPVcPVKcm(ptr noundef %i.ja, ptr noundef %i.iv, i64 noundef %i.ig)
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.be
  %.0182.ph = phi i64 [ %spec.select, %bb.bg ], [ %i.ig, %bb.be ]
  %i.jb = add i64 %i.ij, 55
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = load i64, ptr %i.jc, align 8
  %i.je = inttoptr i64 %i.jd to ptr
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.if
  %i.jg = load i64, ptr %i.fr, align 8
  %i.jh = add i64 %i.jg, 55
  %i.ji = inttoptr i64 %i.jh to ptr
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = inttoptr i64 %i.jj to ptr
  call void @_ZN2v88internal9CopyBytesIhEEvPT_PKS2_m(ptr noundef %i.jk, ptr noundef %i.jf, i64 noundef %.0182.ph)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %.critedge13
  %i.jl = load i64, ptr %i.fr, align 8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.v, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %bb.as, %bb.av, %bb.aw, %bb.ay, %bb.bj, %.critedge203, %bb.bc, %bb.az, %.critedge199, %bb.aq, %bb.ag, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit214, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit219, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit218
  %.sroa.0365.6 = phi i64 [ %i.ah, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit214 ], [ %i.au, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit218 ], [ %i.bc, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit219 ], [ %i.ci, %bb.v ], [ %i.dj, %bb.ag ], [ %i.fp, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.ft, %.critedge199 ], [ %i.gg, %bb.aq ], [ %i.gr, %bb.as ], [ %i.hn, %bb.ay ], [ %i.hv, %bb.az ], [ %i.jl, %bb.bj ], [ %i.ip, %.critedge203 ], [ %i.ie, %bb.bc ], [ %i.hc, %bb.aw ], [ %i.gx, %bb.av ]
  store ptr %i.b, ptr %i.a, align 8
  %i.jm = load i32, ptr %i.e, align 8
  %i.jn = add nsw i32 %i.jm, -1
  store i32 %i.jn, ptr %i.e, align 8
  %i.jo = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.jo, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.bl, !prof !6

bb.bl:                                            ; preds = %bb.bk
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #16
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.bl, %bb.bk
  ret i64 %.sroa.0365.6
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i8 noundef zeroext) local_unnamed_addr #11 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.532", align 8 ; 5 uses
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = add i64 %i.a, 71
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.e = and i32 %i.d, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load atomic volatile i32, ptr %i.c monotonic, align 4
  %i.g = and i32 %i.f, 32
  %.not1 = icmp eq i32 %i.g, 0
  br i1 %.not1, label %.critedge, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.532") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  %.not2 = icmp eq ptr %i.h, null
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i64 [ %i.j, %bb.d ], [ 0, %bb.c ]
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.f

.critedge:                                        ; preds = %bb.a, %bb.b
  %i.k = add i64 %i.a, 39
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load i64, ptr %i.l, align 8
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  %.1 = phi i64 [ %.0, %bb.e ], [ %i.m, %.critedge ]
  ret i64 %.1
}

declare ptr @_ZN2v88internal6Object18SpeciesConstructorEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_10JSFunctionEEE(ptr noundef, ptr, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal9Execution3NewEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS_4base6VectorIKS6_EE(ptr noundef, ptr, ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal6Object9SameValueENS0_6TaggedIS1_EES3_(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v84base14Relaxed_MemcpyEPVcPVKcm(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %.not33 = icmp eq i64 %2, 0
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %i.c = icmp eq i64 %i.b, 0
  %or.cond3034 = or i1 %.not33, %i.c
  br i1 %or.cond3034, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %5 = load atomic volatile i8, ptr %1 monotonic, align 1
  store atomic volatile i8 %5, ptr %0 monotonic, align 1
  %6 = add i64 %2, -1                             ; 2 uses
  %.not = icmp eq i64 %6, 0
  %7 = ptrtoint ptr %3 to i64
  %8 = and i64 %7, 7
  %9 = icmp eq i64 %8, 0
  %or.cond30 = select i1 %.not, i1 true, i1 %9
  br i1 %or.cond30, label %.critedge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %12 = load atomic volatile i8, ptr %4 monotonic, align 1
  store atomic volatile i8 %12, ptr %3 monotonic, align 1
  %13 = add i64 %2, -2                            ; 2 uses
  %.not.1 = icmp eq i64 %13, 0
  %14 = ptrtoint ptr %10 to i64
  %15 = and i64 %14, 7
  %16 = icmp eq i64 %15, 0
  %or.cond30.1 = select i1 %.not.1, i1 true, i1 %16
  br i1 %or.cond30.1, label %.critedge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 3 uses
  %18 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %19 = load atomic volatile i8, ptr %11 monotonic, align 1
  store atomic volatile i8 %19, ptr %10 monotonic, align 1
  %20 = add i64 %2, -3                            ; 2 uses
  %.not.2 = icmp eq i64 %20, 0
  %21 = ptrtoint ptr %17 to i64
  %22 = and i64 %21, 7
  %23 = icmp eq i64 %22, 0
  %or.cond30.2 = select i1 %.not.2, i1 true, i1 %23
  br i1 %or.cond30.2, label %.critedge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %26 = load atomic volatile i8, ptr %18 monotonic, align 1
  store atomic volatile i8 %26, ptr %17 monotonic, align 1
  %27 = add i64 %2, -4                            ; 2 uses
  %.not.3 = icmp eq i64 %27, 0
  %28 = ptrtoint ptr %24 to i64
  %29 = and i64 %28, 7
  %30 = icmp eq i64 %29, 0
  %or.cond30.3 = select i1 %.not.3, i1 true, i1 %30
  br i1 %or.cond30.3, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 3 uses
  %32 = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %33 = load atomic volatile i8, ptr %25 monotonic, align 1
  store atomic volatile i8 %33, ptr %24 monotonic, align 1
  %34 = add i64 %2, -5                            ; 2 uses
  %.not.4 = icmp eq i64 %34, 0
  %35 = ptrtoint ptr %31 to i64
  %36 = and i64 %35, 7
  %37 = icmp eq i64 %36, 0
  %or.cond30.4 = select i1 %.not.4, i1 true, i1 %37
  br i1 %or.cond30.4, label %.critedge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %39 = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %40 = load atomic volatile i8, ptr %32 monotonic, align 1
  store atomic volatile i8 %40, ptr %31 monotonic, align 1
  %41 = add i64 %2, -6                            ; 2 uses
  %.not.5 = icmp eq i64 %41, 0
  %42 = ptrtoint ptr %38 to i64
  %43 = and i64 %42, 7
  %44 = icmp eq i64 %43, 0
  %or.cond30.5 = select i1 %.not.5, i1 true, i1 %44
  br i1 %or.cond30.5, label %.critedge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.f = load atomic volatile i8, ptr %39 monotonic, align 1
  store atomic volatile i8 %i.f, ptr %38 monotonic, align 1
  %i.g = add i64 %2, -7                           ; 2 uses
  %.not.6 = icmp eq i64 %i.g, 0
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = and i64 %i.h, 7
  %i.j = icmp eq i64 %i.i, 0
  %or.cond30.6 = select i1 %.not.6, i1 true, i1 %i.j
  br i1 %or.cond30.6, label %.critedge, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %47 = load atomic volatile i8, ptr %i.e monotonic, align 1
  store atomic volatile i8 %47, ptr %i.d monotonic, align 1
  %48 = add i64 %2, -8
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %bb.a
  %.022.lcssa = phi ptr [ %0, %bb.a ], [ %3, %.lr.ph ], [ %10, %.lr.ph.1 ], [ %17, %.lr.ph.2 ], [ %24, %.lr.ph.3 ], [ %31, %.lr.ph.4 ], [ %38, %.lr.ph.5 ], [ %i.d, %.lr.ph.6 ], [ %45, %.lr.ph.7 ] ; 5 uses
  %.018.lcssa = phi ptr [ %1, %bb.a ], [ %4, %.lr.ph ], [ %11, %.lr.ph.1 ], [ %18, %.lr.ph.2 ], [ %25, %.lr.ph.3 ], [ %32, %.lr.ph.4 ], [ %39, %.lr.ph.5 ], [ %i.e, %.lr.ph.6 ], [ %46, %.lr.ph.7 ] ; 5 uses
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %6, %.lr.ph ], [ %13, %.lr.ph.1 ], [ %20, %.lr.ph.2 ], [ %27, %.lr.ph.3 ], [ %34, %.lr.ph.4 ], [ %41, %.lr.ph.5 ], [ %i.g, %.lr.ph.6 ], [ %48, %.lr.ph.7 ] ; 6 uses
  %i.k = ptrtoint ptr %.018.lcssa to i64
  %i.l = and i64 %i.k, 7
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %.critedge
  %i.n = ptrtoint ptr %.022.lcssa to i64
  %i.o = and i64 %i.n, 7
  %i.p = icmp eq i64 %i.o, 0
  %i.q = icmp ugt i64 %.0.lcssa, 7
  %or.cond = and i1 %i.p, %i.q
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.b
  %i.r = add i64 %.0.lcssa, -8                    ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.123.prol = phi ptr [ %i.v, %.preheader.prol ], [ %.022.lcssa, %.preheader.preheader ] ; 2 uses
  %.119.prol = phi ptr [ %i.w, %.preheader.prol ], [ %.018.lcssa, %.preheader.preheader ] ; 2 uses
  %.1.prol = phi i64 [ %i.x, %.preheader.prol ], [ %.0.lcssa, %.preheader.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.u = load atomic volatile i64, ptr %.119.prol monotonic, align 8
  store atomic volatile i64 %i.u, ptr %.123.prol monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.123.prol, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.119.prol, i64 8 ; 3 uses
  %i.x = add i64 %.1.prol, -8                     ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !17

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.123.unr = phi ptr [ %.022.lcssa, %.preheader.preheader ], [ %i.v, %.preheader.prol ]
  %.119.unr = phi ptr [ %.018.lcssa, %.preheader.preheader ], [ %i.w, %.preheader.prol ]
  %.1.unr = phi i64 [ %.0.lcssa, %.preheader.preheader ], [ %i.x, %.preheader.prol ]
  %.lcssa62.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.v, %.preheader.prol ]
  %.lcssa61.unr = phi ptr [ poison, %.preheader.preheader ], [ %i.w, %.preheader.prol ]
  %.lcssa.unr = phi i64 [ poison, %.preheader.preheader ], [ %i.x, %.preheader.prol ]
  %i.y = icmp ult i64 %i.r, 56
  br i1 %i.y, label %.loopexit.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.123 = phi ptr [ %i.av, %.preheader ], [ %.123.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.119 = phi ptr [ %i.aw, %.preheader ], [ %.119.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.1 = phi i64 [ %i.ax, %.preheader ], [ %.1.unr, %.preheader.prol.loopexit ]
  %i.z = load atomic volatile i64, ptr %.119 monotonic, align 8
  store atomic volatile i64 %i.z, ptr %.123 monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %.123, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.119, i64 8
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  store atomic volatile i64 %i.ac, ptr %i.aa monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.123, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.119, i64 16
  %i.af = load atomic volatile i64, ptr %i.ae monotonic, align 8
  store atomic volatile i64 %i.af, ptr %i.ad monotonic, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.123, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %.119, i64 24
  %i.ai = load atomic volatile i64, ptr %i.ah monotonic, align 8
  store atomic volatile i64 %i.ai, ptr %i.ag monotonic, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.123, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %.119, i64 32
  %i.al = load atomic volatile i64, ptr %i.ak monotonic, align 8
  store atomic volatile i64 %i.al, ptr %i.aj monotonic, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.123, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %.119, i64 40
  %i.ao = load atomic volatile i64, ptr %i.an monotonic, align 8
  store atomic volatile i64 %i.ao, ptr %i.am monotonic, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.123, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.119, i64 48
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8
  store atomic volatile i64 %i.ar, ptr %i.ap monotonic, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %.123, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %.119, i64 56
  %i.au = load atomic volatile i64, ptr %i.at monotonic, align 8
  store atomic volatile i64 %i.au, ptr %i.as monotonic, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.123, i64 64 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.119, i64 64 ; 2 uses
  %i.ax = add i64 %.1, -64                        ; 3 uses
  %.old1.7 = icmp ugt i64 %i.ax, 7
  br i1 %.old1.7, label %.preheader, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.preheader, %.preheader.prol.loopexit
  %.lcssa62 = phi ptr [ %.lcssa62.unr, %.preheader.prol.loopexit ], [ %i.av, %.preheader ]
  %.lcssa61 = phi ptr [ %.lcssa61.unr, %.preheader.prol.loopexit ], [ %i.aw, %.preheader ]
  %.lcssa = phi i64 [ %.lcssa.unr, %.preheader.prol.loopexit ], [ %i.ax, %.preheader ]
  %49 = freeze i64 %.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b, %.critedge
  %.224 = phi ptr [ %.022.lcssa, %.critedge ], [ %.022.lcssa, %bb.b ], [ %.lcssa62, %.loopexit.loopexit ] ; 2 uses
  %.220 = phi ptr [ %.018.lcssa, %.critedge ], [ %.018.lcssa, %bb.b ], [ %.lcssa61, %.loopexit.loopexit ] ; 2 uses
  %.2 = phi i64 [ %.0.lcssa, %.critedge ], [ %.0.lcssa, %bb.b ], [ %49, %.loopexit.loopexit ] ; 5 uses
  %.not2740 = icmp eq i64 %.2, 0
  br i1 %.not2740, label %._crit_edge, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %.loopexit
  %xtraiter66 = and i64 %.2, 7                    ; 2 uses
  %lcmp.mod67.not = icmp eq i64 %xtraiter66, 0
  br i1 %lcmp.mod67.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol

.lr.ph44.prol:                                    ; preds = %.lr.ph44.preheader, %.lr.ph44.prol
  %.343.prol = phi i64 [ %i.bb, %.lr.ph44.prol ], [ %.2, %.lr.ph44.preheader ]
  %.32142.prol = phi ptr [ %i.az, %.lr.ph44.prol ], [ %.220, %.lr.ph44.preheader ] ; 2 uses
  %.32541.prol = phi ptr [ %i.ay, %.lr.ph44.prol ], [ %.224, %.lr.ph44.preheader ] ; 2 uses
  %prol.iter68 = phi i64 [ %prol.iter68.next, %.lr.ph44.prol ], [ 0, %.lr.ph44.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.32541.prol, i64 1 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.32142.prol, i64 1 ; 2 uses
  %i.ba = load atomic volatile i8, ptr %.32142.prol monotonic, align 1
  store atomic volatile i8 %i.ba, ptr %.32541.prol monotonic, align 1
  %i.bb = add i64 %.343.prol, -1                  ; 2 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %.lr.ph44.prol.loopexit, label %.lr.ph44.prol, !llvm.loop !19

.lr.ph44.prol.loopexit:                           ; preds = %.lr.ph44.prol, %.lr.ph44.preheader
  %.343.unr = phi i64 [ %.2, %.lr.ph44.preheader ], [ %i.bb, %.lr.ph44.prol ]
  %.32142.unr = phi ptr [ %.220, %.lr.ph44.preheader ], [ %i.az, %.lr.ph44.prol ]
  %.32541.unr = phi ptr [ %.224, %.lr.ph44.preheader ], [ %i.ay, %.lr.ph44.prol ]
  %i.bc = icmp ult i64 %.2, 8
  br i1 %i.bc, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44
  %.343 = phi i64 [ %i.cb, %.lr.ph44 ], [ %.343.unr, %.lr.ph44.prol.loopexit ]
  %.32142 = phi ptr [ %i.bz, %.lr.ph44 ], [ %.32142.unr, %.lr.ph44.prol.loopexit ] ; 9 uses
  %.32541 = phi ptr [ %i.by, %.lr.ph44 ], [ %.32541.unr, %.lr.ph44.prol.loopexit ] ; 9 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.32541, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %.32142, i64 1
  %i.bf = load atomic volatile i8, ptr %.32142 monotonic, align 1
  store atomic volatile i8 %i.bf, ptr %.32541 monotonic, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.32541, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %.32142, i64 2
  %i.bi = load atomic volatile i8, ptr %i.be monotonic, align 1
  store atomic volatile i8 %i.bi, ptr %i.bd monotonic, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %.32541, i64 3
  %i.bk = getelementptr inbounds nuw i8, ptr %.32142, i64 3
  %i.bl = load atomic volatile i8, ptr %i.bh monotonic, align 1
  store atomic volatile i8 %i.bl, ptr %i.bg monotonic, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.32541, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.32142, i64 4
  %i.bo = load atomic volatile i8, ptr %i.bk monotonic, align 1
  store atomic volatile i8 %i.bo, ptr %i.bj monotonic, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.32541, i64 5
  %i.bq = getelementptr inbounds nuw i8, ptr %.32142, i64 5
  %i.br = load atomic volatile i8, ptr %i.bn monotonic, align 1
  store atomic volatile i8 %i.br, ptr %i.bm monotonic, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %.32541, i64 6
  %i.bt = getelementptr inbounds nuw i8, ptr %.32142, i64 6
  %i.bu = load atomic volatile i8, ptr %i.bq monotonic, align 1
  store atomic volatile i8 %i.bu, ptr %i.bp monotonic, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.32541, i64 7
  %i.bw = getelementptr inbounds nuw i8, ptr %.32142, i64 7
  %i.bx = load atomic volatile i8, ptr %i.bt monotonic, align 1
  store atomic volatile i8 %i.bx, ptr %i.bs monotonic, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.32541, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.32142, i64 8
  %i.ca = load atomic volatile i8, ptr %i.bw monotonic, align 1
  store atomic volatile i8 %i.ca, ptr %i.bv monotonic, align 1
  %i.cb = add i64 %.343, -8                       ; 2 uses
  %.not27.7 = icmp eq i64 %i.cb, 0
  br i1 %.not27.7, label %._crit_edge, label %.lr.ph44, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph44.prol.loopexit, %.lr.ph44, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyBytesIhEEvPT_PKS2_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i64 %2, 8
  br i1 %i.b, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.c = load i8, ptr %1, align 1
  store i8 %i.c, ptr %0, align 1
  %.not.i = icmp eq i64 %2, 1
  br i1 %.not.i, label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1
  store i8 %i.f, ptr %i.d, align 1
  %.not.i.1 = icmp eq i64 %2, 2
  br i1 %.not.i.1, label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit, label %.preheader.i.2

.preheader.i.2:                                   ; preds = %.preheader.i.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i8, ptr %i.h, align 1
  store i8 %i.i, ptr %i.g, align 1
  %.not.i.2 = icmp eq i64 %2, 3
  br i1 %.not.i.2, label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit, label %.preheader.i.3

.preheader.i.3:                                   ; preds = %.preheader.i.2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = load i8, ptr %i.k, align 1
  store i8 %i.l, ptr %i.j, align 1
  %.not.i.3 = icmp eq i64 %2, 4
  br i1 %.not.i.3, label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit, label %.preheader.i.4

.preheader.i.4:                                   ; preds = %.preheader.i.3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load i8, ptr %i.n, align 1
  store i8 %i.o, ptr %i.m, align 1
  %.not.i.4 = icmp eq i64 %2, 5
  br i1 %.not.i.4, label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit, label %.preheader.i.5

.preheader.i.5:                                   ; preds = %.preheader.i.4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.r = load i8, ptr %i.q, align 1
  store i8 %i.r, ptr %i.p, align 1
  %.not.i.5 = icmp eq i64 %2, 6
  br i1 %.not.i.5, label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit, label %.preheader.i.6

.preheader.i.6:                                   ; preds = %.preheader.i.5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.u = load i8, ptr %i.t, align 1
  store i8 %i.u, ptr %i.s, align 1
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.c:                                             ; preds = %bb.b
  switch i64 %2, label %bb.m [
    i64 16, label %bb.l
    i64 15, label %bb.k
    i64 14, label %bb.j
    i64 13, label %bb.i
    i64 12, label %bb.h
    i64 11, label %bb.g
    i64 10, label %bb.f
    i64 8, label %bb.d
    i64 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %1, align 1
  store i64 %i.v, ptr %0, align 1
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %0, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 9, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef nonnull align 1 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.g:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %0, ptr noundef nonnull align 1 dereferenceable(11) %1, i64 11, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 12, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.i:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %0, ptr noundef nonnull align 1 dereferenceable(13) %1, i64 13, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %0, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %0, ptr noundef nonnull align 1 dereferenceable(15) %1, i64 15, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.l:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

bb.m:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %1, i64 %2, i1 false)
  br label %_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit

_ZN2v88internal8CopyImplILm8EhEEvPT0_PKS2_m.exit: ; preds = %.preheader.i, %.preheader.i.1, %.preheader.i.2, %.preheader.i.3, %.preheader.i.4, %.preheader.i.5, %.preheader.i.6, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.a
  ret void
}

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr, i64, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.532") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 63
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load atomic volatile i64, ptr %i.c acquire, align 8
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8
  %i.f = add i64 %i.e, 63
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load atomic volatile i64, ptr %i.g acquire, align 8
  %i.i = inttoptr i64 %i.h to ptr                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !22 ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !noalias !22
  store <2 x ptr> %i.l, ptr %0, align 8, !alias.scope !22
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !noalias !22
  %.not.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !noalias !22
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !noalias !22
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4, !noalias !22 ; 0 uses
  br label %_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit

_ZN2v88internal20ArrayBufferExtension13backing_storeEv.exit: ; preds = %bb.f, %bb.e, %bb.c, %bb.b
  ret void
}

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #13

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewHeapNumberILNS0_14AllocationTypeE0EEENS0_6HandleINS0_10HeapNumberEEEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZN2v88internalL12ResizeHelperENS0_16BuiltinArgumentsEPNS0_7IsolateEPKcb(i64 %0, ptr %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %5 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %6 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %7 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %8 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %9 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %10 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %11 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %12 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %13 = alloca [1 x %"class.v8::internal::DirectHandle.453"], align 8 ; 4 uses
  %14 = alloca [2 x %"class.v8::internal::DirectHandle.453"], align 8 ; 5 uses
  %15 = alloca [2 x %"class.v8::internal::DirectHandle.453"], align 8 ; 5 uses
  %16 = alloca [2 x %"class.v8::internal::DirectHandle.453"], align 8 ; 5 uses
  %17 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.530", align 8 ; 5 uses
  %18 = alloca %"class.std::shared_ptr.532", align 8 ; 5 uses
  %19 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.530", align 8 ; 4 uses
  %20 = alloca %"class.std::shared_ptr.532", align 8 ; 5 uses
  %21 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.530", align 8 ; 4 uses
  %22 = alloca %"class.std::shared_ptr.532", align 8 ; 5 uses
  %23 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.530", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 560 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 576 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = and i64 %0, 4294967292
  %.not.i153 = icmp eq i64 %i.h, 0
  br i1 %.not.i153, label %bb.b, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit: ; preds = %bb.a
  %i.i = ptrtoint ptr %1 to i64
  %i.j = shl i64 %0, 3
  %reass.sub = sub i64 %i.i, %i.j                 ; 2 uses
  %i.k = add i64 %reass.sub, 40
  %i.l = inttoptr i64 %i.k to ptr                 ; 15 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = trunc i64 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit
  %i.o = add nsw i64 %i.m, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2062
  br i1 %i.u, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit159, label %_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit, %_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.w = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %3, i64 %i.v, i8 noundef zeroext 0) #16 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.c, label %_ZNK2v88internal16BuiltinArguments8receiverEv.exit156, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZNK2v88internal16BuiltinArguments8receiverEv.exit156: ; preds = %_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  store ptr %i.w, ptr %16, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %i.l, ptr %i.y, align 8
  %i.z = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %16, i64 2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.aa, ptr noundef null) #16
  br label %bb.as

_ZNK2v88internal16BuiltinArguments8receiverEv.exit159: ; preds = %_ZN2v88internal15IsJSArrayBufferENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ac = add i64 %i.m, 71
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = load atomic volatile i32, ptr %i.ad monotonic, align 4
  %i.af = and i32 %i.ae, 32
  %.not363 = icmp eq i32 %i.af, 0
  br i1 %.not363, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit159
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.ah = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %3, i64 %i.ag, i8 noundef zeroext 0) #16 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.e, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit160, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit160: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  store ptr %i.ah, ptr %15, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.l, ptr %i.aj, align 8
  %i.ak = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %15, i64 2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.al, ptr noundef null) #16
  br label %bb.as

bb.f:                                             ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit159
  %i.an = load atomic volatile i32, ptr %i.ad monotonic, align 4
  %i.ao = and i32 %i.an, 16
  %i.ap = icmp ne i32 %i.ao, 0
  %i.aq = xor i1 %4, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.as = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %3, i64 %i.ar, i8 noundef zeroext 0) #16 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit161, !prof !5

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit161: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store ptr %i.as, ptr %14, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.l, ptr %i.au, align 8
  %i.av = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 80, ptr nonnull %14, i64 2) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.aw, ptr noundef null) #16
  br label %bb.as

bb.i:                                             ; preds = %bb.f
  %i.ay = trunc i64 %0 to i32
  %.not.i162 = icmp ult i32 %i.ay, 5
  br i1 %.not.i162, label %bb.j, label %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, !prof !5

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  unreachable

_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit: ; preds = %bb.i
  %i.az = add i64 %reass.sub, 48
  %i.ba = inttoptr i64 %i.az to ptr               ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = and i64 %i.bb, 1
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.critedge150, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit
  %i.be = tail call ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %2, ptr nonnull %i.ba) #16 ; 2 uses
  %.not364 = icmp eq ptr %i.be, null
  br i1 %.not364, label %bb.k, label %.critedge150

bb.k:                                             ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 912
  %i.bg = load i64, ptr %i.bf, align 8
  br label %bb.as

.critedge150:                                     ; preds = %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit, %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.07.0.i355359 = phi ptr [ %i.be, %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.ba, %_ZNK2v88internal16BuiltinArguments2atINS0_6ObjectEEENS0_6HandleIT_EEi.exit ]
  br i1 %4, label %.critedge, label %bb.l

bb.l:                                             ; preds = %.critedge150
  %i.bh = load i64, ptr %i.l, align 8
  %i.bi = add i64 %i.bh, 71
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bl = and i32 %i.bk, 4
  %.not365 = icmp eq i32 %i.bl, 0
  br i1 %.not365, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bm = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  store ptr %i.bm, ptr %13, align 8
  %i.bn = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 65, ptr nonnull %13, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.bo, ptr noundef null) #16
  br label %bb.as

.critedge:                                        ; preds = %.critedge150, %bb.l
  %i.bq = load i64, ptr %.sroa.07.0.i355359, align 8 ; 4 uses
  %i.br = and i64 %i.bq, 1
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.critedge
  %i.bt = icmp sgt i64 %i.bq, -1
  br i1 %i.bt, label %bb.o, label %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit

bb.o:                                             ; preds = %bb.n
  %i.bu = lshr i64 %i.bq, 32
  br label %bb.s

bb.p:                                             ; preds = %.critedge
  %i.bv = add nsw i64 %i.bq, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %.0.copyload.i.i.i.i.i = load double, ptr %i.bx, align 1 ; 3 uses
  %i.by = fcmp oge double %.0.copyload.i.i.i.i.i, 0.000000e+00
  %i.bz = fcmp olt double %.0.copyload.i.i.i.i.i, f0x43F0000000000000
  %or.cond.i = and i1 %i.by, %i.bz
  br i1 %or.cond.i, label %bb.q, label %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit

bb.q:                                             ; preds = %bb.p
  %i.ca = fptoui double %.0.copyload.i.i.i.i.i to i64
  br label %bb.s

_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit: ; preds = %bb.p, %bb.n
  %i.cb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #17
  %i.cc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr nonnull %3, i64 %i.cb, i8 noundef zeroext 0) #16 ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.r, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit163, !prof !5

bb.r:                                             ; preds = %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit163: ; preds = %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store ptr %i.cc, ptr %12, align 8
  %i.ce = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 235, ptr nonnull %12, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cf, ptr noundef null) #16
  br label %bb.as

bb.s:                                             ; preds = %bb.q, %bb.o
  %.0.ph = phi i64 [ %i.bu, %bb.o ], [ %i.ca, %bb.q ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  br i1 %4, label %bb.t, label %.critedge3

bb.t:                                             ; preds = %bb.s
  %i.ch = load i64, ptr %i.l, align 8
  store i64 %i.ch, ptr %17, align 8
  %i.ci = call noundef i64 @_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %17)
  %i.cj = icmp ult i64 %.0.ph, %i.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ck = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  store ptr %i.ck, ptr %11, align 8
  %i.cl = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 235, ptr nonnull %11, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cm, ptr noundef null) #16
  br label %bb.as

.critedge3:                                       ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %bb.v

bb.v:                                             ; preds = %.critedge3, %bb.t
  %i.co = load i64, ptr %i.l, align 8             ; 2 uses
  %i.cp = add i64 %i.co, 47
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = icmp ugt i64 %.0.ph, %i.cr
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ct = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %i.ct, ptr %10, align 8
  %i.cu = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 235, ptr nonnull %10, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.cv, ptr noundef null) #16
  br label %bb.as

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  store i64 %i.co, ptr %19, align 8
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.532") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.cx = load ptr, ptr %18, align 8              ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load atomic i16, ptr %i.cy monotonic, align 2
  %i.da = and i16 %i.cz, 4
  %.not366 = icmp eq i16 %i.da, 0
  br i1 %.not366, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.dc = load atomic i64, ptr %i.db seq_cst, align 8 ; 2 uses
  %i.dd = icmp uge i64 %.0.ph, %i.dc
  %i.de = and i64 %.0.ph, 65535
  %.not148 = icmp eq i64 %i.de, 0
  %or.cond = and i1 %.not148, %i.dd
  br i1 %or.cond, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.df = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr %i.df, ptr %9, align 8
  %i.dg = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 235, ptr nonnull %9, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.dh, ptr noundef null) #16
  br label %.critedge152

bb.aa:                                            ; preds = %bb.y
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 7896
  %i.dk = call ptr @_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE(ptr noundef nonnull %2, ptr nonnull %i.l, ptr nonnull %i.dj) ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ab, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, !prof !5

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit: ; preds = %bb.aa
  %i.dm = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dn = trunc i64 %i.dm to i1
  br i1 %i.dn, label %_ZN2v88internal18IsWasmMemoryObjectENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal18IsWasmMemoryObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, !prof !25

_ZN2v88internal18IsWasmMemoryObjectENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit
  %i.do = add nsw i64 %i.dm, -1
  %i.dp = inttoptr i64 %i.do to ptr
  %i.dq = load atomic volatile i64, ptr %i.dp monotonic, align 8
  %i.dr = add i64 %i.dq, 11
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = load atomic volatile i16, ptr %i.ds monotonic, align 2
  %i.du = icmp eq i16 %i.dt, 2153
  br i1 %i.du, label %bb.ac, label %_ZN2v88internal18IsWasmMemoryObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread, !prof !26

_ZN2v88internal18IsWasmMemoryObjectENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE5CheckEv.exit, %_ZN2v88internal18IsWasmMemoryObjectENS0_6TaggedINS0_6ObjectEEE.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9) #15
  unreachable

bb.ac:                                            ; preds = %_ZN2v88internal18IsWasmMemoryObjectENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dv = sub i64 %.0.ph, %i.dc
  %i.dw = trunc i64 %i.dv to i32
  %i.dx = lshr i32 %i.dw, 16
  %i.dy = call noundef i32 @_ZN2v88internal16WasmMemoryObject4GrowEPNS0_7IsolateENS0_12DirectHandleIS1_EEj(ptr noundef nonnull %2, ptr nonnull %i.dk, i32 noundef %i.dx) #16
  %i.dz = icmp eq i32 %i.dy, -1
  br i1 %i.dz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ea = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  store ptr %i.ea, ptr %8, align 8
  %i.eb = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 262, ptr nonnull %8, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.ec, ptr noundef null) #16
  br label %.critedge152

bb.ae:                                            ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ef = load i64, ptr %i.ee, align 8
  br label %.critedge152

bb.af:                                            ; preds = %bb.x
  br i1 %4, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.eg = load i64, ptr %i.l, align 8
  store i64 %i.eg, ptr %21, align 8
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.532") align 8 %20, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %i.eh = load ptr, ptr %20, align 8
  %i.ei = call noundef i32 @_ZN2v88internal12BackingStore13ResizeInPlaceEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(58) %i.eh, ptr noundef nonnull %2, i64 noundef %.0.ph) #16
  %.not = icmp eq i32 %i.ei, 0
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br i1 %.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %i.ej, ptr %7, align 8
  %i.ek = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 262, ptr nonnull %7, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.el, ptr noundef null) #16
  br label %.critedge152

bb.ai:                                            ; preds = %bb.ag
  %i.en = load i64, ptr %i.l, align 8             ; 3 uses
  %i.eo = add i64 %i.en, 39
  %i.ep = inttoptr i64 %i.eo to ptr
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = icmp ult i64 %.0.ph, %i.eq
  br i1 %i.er, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 9176
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = add i64 %i.et, 23
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = and i64 %i.ew, -4294967295
  %i.ey = icmp eq i64 %i.ex, 4294967296
  br i1 %i.ey, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN2v88internal10Protectors30InvalidateArrayBufferDetachingEPNS0_7IsolateE(ptr noundef nonnull %2) #16
  %.pre = load i64, ptr %i.l, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai
  %i.ez = phi i64 [ %i.en, %bb.aj ], [ %.pre, %bb.ak ], [ %i.en, %bb.ai ]
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 55464
  %i.fb = add i64 %i.ez, 63
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = load atomic volatile i64, ptr %i.fc acquire, align 8
  %i.fe = inttoptr i64 %i.fd to ptr
  %i.ff = load i64, ptr %i.l, align 8
  %i.fg = add i64 %i.ff, 39
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = sub i64 %.0.ph, %i.fi
  call void @_ZN2v88internal4Heap26ResizeArrayBufferExtensionEPNS0_20ArrayBufferExtensionEl(ptr noundef nonnull align 8 dereferenceable(2992) %i.fa, ptr noundef %i.fe, i64 noundef %i.fj) #16
  %i.fk = load i64, ptr %i.l, align 8
  %i.fl = add i64 %i.fk, 39
  %i.fm = inttoptr i64 %i.fl to ptr
  store i64 %.0.ph, ptr %i.fm, align 8
  br label %bb.ar

bb.am:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.fn = load i64, ptr %i.l, align 8
  store i64 %i.fn, ptr %23, align 8
  call void @_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.532") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23)
  %i.fo = load ptr, ptr %22, align 8
  %i.fp = call noundef i32 @_ZN2v88internal12BackingStore11GrowInPlaceEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(58) %i.fo, ptr noundef nonnull %2, i64 noundef %.0.ph) #16
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %22) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  switch i32 %i.fp, label %bb.ap [
    i32 1, label %bb.an
    i32 2, label %bb.ao
  ]

bb.an:                                            ; preds = %bb.am
  %i.fq = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.fq, ptr %6, align 8
  %i.fr = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 262, ptr nonnull %6, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.fs = load i64, ptr %i.fr, align 8
  %i.ft = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.fs, ptr noundef null) #16
  br label %.critedge152

bb.ao:                                            ; preds = %bb.am
  %i.fu = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %3, i8 noundef zeroext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.fu, ptr %5, align 8
  %i.fv = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef 235, ptr nonnull %5, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.fw = load i64, ptr %i.fv, align 8
  %i.fx = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %2, i64 %i.fw, ptr noundef null) #16
  br label %.critedge152

bb.ap:                                            ; preds = %bb.am
  %i.fy = load i64, ptr %i.l, align 8
  %i.fz = add i64 %i.fy, 39
  %i.ga = inttoptr i64 %i.fz to ptr
  %i.gb = load i64, ptr %i.ga, align 8
  %i.gc = icmp eq i64 %i.gb, 0
  br i1 %i.gc, label %bb.ar, label %bb.aq, !prof !6

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10) #15
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.al
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 648
  %i.ge = load i64, ptr %i.gd, align 8
  br label %.critedge152

.critedge152:                                     ; preds = %bb.ad, %bb.ae, %bb.an, %bb.ao, %bb.z, %bb.ar, %bb.ah
  %.sroa.0253.1 = phi i64 [ %i.em, %bb.ah ], [ %i.di, %bb.z ], [ %i.ge, %bb.ar ], [ %i.ft, %bb.an ], [ %i.fx, %bb.ao ], [ %i.ed, %bb.ad ], [ %i.ef, %bb.ae ]
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.as

bb.as:                                            ; preds = %_ZNK2v88internal16BuiltinArguments8receiverEv.exit156, %bb.m, %bb.k, %.critedge152, %bb.w, %bb.u, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit163, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit161, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit160
  %.sroa.0253.5 = phi i64 [ %i.ab, %_ZNK2v88internal16BuiltinArguments8receiverEv.exit156 ], [ %i.ax, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit161 ], [ %i.am, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit160 ], [ %i.bg, %bb.k ], [ %i.bp, %bb.m ], [ %i.cn, %bb.u ], [ %i.cw, %bb.w ], [ %.sroa.0253.1, %.critedge152 ], [ %i.cg, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit163 ]
  store ptr %i.b, ptr %i.a, align 8
  %i.gf = load i32, ptr %i.e, align 8
  %i.gg = add nsw i32 %i.gf, -1
  store i32 %i.gg, ptr %i.e, align 8
  %i.gh = load ptr, ptr %i.c, align 8
  %.not.i = icmp eq ptr %i.gh, %i.d
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.at, !prof !6

bb.at:                                            ; preds = %bb.as
  store ptr %i.d, ptr %i.c, align 8
  call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %2) #16
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.at, %bb.as
  ret i64 %.sroa.0253.5
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal6Object11GetPropertyEPNS0_7IsolateENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS4_INS0_4NameEEE(ptr noundef %0, ptr %1, ptr %2) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::LookupIterator", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %.pre.pre = load i64, ptr %2, align 8
  %i.a = add i64 %.pre.pre, -1
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = load atomic volatile i64, ptr %i.b monotonic, align 8
  %i.d = add i64 %i.c, 11
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = load atomic volatile i16, ptr %i.e monotonic, align 2
  %i.g = icmp eq i16 %i.f, 128
  br i1 %i.g, label %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i:      ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i, label %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i

_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i, %bb.a
  br label %_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i

_ZN2v88internal14LookupIterator20ComputeConfigurationEPNS0_7IsolateENS1_13ConfigurationENS0_12DirectHandleINS0_4NameEEE.exit.i.i: ; preds = %_ZN2v88internal4Name9IsPrivateEv.exit.thread.i.i.i, %_ZN2v88internal4Name9IsPrivateEv.exit.i.i.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_119ArrayBufferTransferEPNS0_7IsolateENS0_12DirectHandleINS0_13JSArrayBufferEEENS4_INS0_6ObjectEEENS1_20PreserveResizabilityEPKc:bb.a

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.ac, %bb.h ], [ 0, %bb.g ]
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit

.critedge.i:                                      ; preds = %bb.f, %bb.e
  %i.ad = add i64 %i.g, 39
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = load i64, ptr %i.ae, align 8
  br label %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit

_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit: ; preds = %bb.i, %.critedge.i
  %.1.i = phi i64 [ %.0.i, %bb.i ], [ %i.af, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.p

bb.j:                                             ; preds = %bb.d
  %i.ag = and i64 %i.s, 1
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %.critedge100, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.j
  %i.ai = tail call ptr @_ZN2v88internal6Object16ConvertToIntegerINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %2) #16 ; 2 uses
  %.not303 = icmp eq ptr %i.ai, null
  br i1 %.not303, label %bb.k, label %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge100_crit_edge

_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge100_crit_edge: ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.pre = load i64, ptr %i.ai, align 8
  br label %.critedge100

bb.k:                                             ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ak = load i64, ptr %i.aj, align 8
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.critedge100:                                     ; preds = %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge100_crit_edge, %bb.j
  %i.al = phi i64 [ %.pre, %_ZN2v88internal6Object9ToIntegerIS1_NS0_12DirectHandleEQsr3stdE16is_convertible_vIT0_IT_ENS3_IS5_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES6_.exit..critedge100_crit_edge ], [ %i.s, %bb.j ] ; 4 uses
  %i.am = and i64 %i.al, 1
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit, label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit: ; preds = %.critedge100
  %i.ao = icmp slt i64 %i.al, 0
  br i1 %i.ao, label %bb.l, label %bb.m

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread: ; preds = %.critedge100
  %i.ap = add nsw i64 %i.al, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.0.copyload.i.i.i.i.i.i = load double, ptr %i.ar, align 1 ; 4 uses
  %i.as = fcmp olt double %.0.copyload.i.i.i.i.i.i, 0.000000e+00
  br i1 %i.as, label %bb.l, label %.thread

bb.l:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.at = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 233, ptr null, i64 0) #16
  %i.au = load i64, ptr %i.at, align 8
  %i.av = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.au, ptr noundef null) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit
  %i.aw = lshr i64 %i.al, 32
  br label %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit

.thread:                                          ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.thread
  %i.ax = fcmp oge double %.0.copyload.i.i.i.i.i.i, 0.000000e+00
  %i.ay = fcmp olt double %.0.copyload.i.i.i.i.i.i, f0x43F0000000000000
  %or.cond.i = and i1 %i.ax, %i.ay
  br i1 %or.cond.i, label %bb.n, label %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit.thread

bb.n:                                             ; preds = %.thread
  %i.az = fptoui double %.0.copyload.i.i.i.i.i.i to i64
  br label %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit

_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit: ; preds = %bb.m, %bb.n
  %.1 = phi i64 [ %i.az, %bb.n ], [ %i.aw, %bb.m ] ; 2 uses
  %i.ba = icmp ugt i64 %.1, %i.f
  br i1 %i.ba, label %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit.thread, label %bb.p

_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit.thread: ; preds = %.thread, %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit
  %i.bb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %i.bc = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %4, i64 %i.bb, i8 noundef zeroext 0) #16 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %bb.o, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit118, !prof !5

bb.o:                                             ; preds = %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit.thread
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit118: ; preds = %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %i.bc, ptr %6, align 8
  %i.be = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 235, ptr nonnull %6, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bf, ptr noundef null) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit, %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit
  %.0 = phi i64 [ %.1.i, %_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv.exit ], [ %.1, %_ZN2v88internal15TryNumberToSizeENS0_6TaggedINS0_6ObjectEEEPm.exit ] ; 9 uses
  %i.bh = load i64, ptr %1, align 8               ; 4 uses
  %i.bi = add i64 %i.bh, 71
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  %i.bk = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bl = and i32 %i.bk, 4
  %.not304 = icmp eq i32 %i.bl, 0
  br i1 %.not304, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #17
  %i.bn = call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr nonnull %4, i64 %i.bm, i8 noundef zeroext 0) #16 ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.r, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit119, !prof !5

bb.r:                                             ; preds = %bb.q
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit119: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.bn, ptr %5, align 8
  %i.bp = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 65, ptr nonnull %5, i64 1) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.bq, ptr noundef null) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.s:                                             ; preds = %bb.p
  %.not97 = icmp eq i32 %3, 0
  br i1 %.not97, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bt = and i32 %i.bs, 32
  %.not305 = icmp eq i32 %i.bt, 0
  br i1 %.not305, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = add i64 %i.bh, 47
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %bb.s, %bb.u
  %.094 = phi i64 [ %i.bw, %bb.u ], [ %.0, %bb.s ], [ %.0, %bb.t ] ; 3 uses
  %.not98 = phi i1 [ true, %bb.u ], [ false, %bb.s ], [ false, %bb.t ]
  %.093 = phi i8 [ 1, %bb.u ], [ 0, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.bx = add i64 %i.bh, 31
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = load i64, ptr %i.by, align 8
  %i.ca = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 10624
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 96
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = icmp eq i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.v, label %.critedge3

bb.v:                                             ; preds = %.critedge
  %i.cg = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.ch = and i32 %i.cg, 2
  %.not306 = icmp eq i32 %i.ch, 0
  br i1 %.not306, label %.critedge3, label %bb.w

.critedge3:                                       ; preds = %.critedge, %bb.v
  %i.ci = call ptr @_ZN2v88internal7Factory12NewTypeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 465, ptr null, i64 0) #16
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.cj, ptr noundef null) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.v
  %i.cl = icmp eq i64 %.0, 0
  br i1 %i.cl, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cm = call i16 @_ZN2v88internal13JSArrayBuffer6DetachENS0_12DirectHandleIS1_EEbNS2_INS0_6ObjectEEE(ptr nonnull %1, i1 noundef zeroext false, ptr null) #16
  %i.cn = trunc i16 %i.cm to i1
  br i1 %i.cn, label %_ZNK2v85MaybeIbE5CheckEv.exit117, label %bb.y, !prof !6

bb.y:                                             ; preds = %bb.x
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #16
  br label %_ZNK2v85MaybeIbE5CheckEv.exit117

_ZNK2v85MaybeIbE5CheckEv.exit117:                 ; preds = %bb.x, %bb.y
  %i.co = call ptr @_ZN2v88internal7Factory31NewJSArrayBufferAndBackingStoreEmmNS0_15InitializedFlagENS0_13ResizableFlagENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef 0, i64 noundef %.094, i8 noundef zeroext 0, i8 noundef zeroext %.093, i8 noundef zeroext 0) #16 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.z, label %_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE5CheckEv.exit, !prof !5

bb.z:                                             ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit117
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #15
  unreachable

_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE5CheckEv.exit: ; preds = %_ZNK2v85MaybeIbE5CheckEv.exit117
  %i.cq = load i64, ptr %i.co, align 8
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.w
  %i.cr = add i64 %i.bh, 63
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load atomic volatile i64, ptr %i.cs acquire, align 8, !noalias !27
  %.not.i120 = icmp eq i64 %i.ct, 0
  br i1 %.not.i120, label %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread, label %bb.ab

_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  br label %.critedge6

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load atomic volatile i64, ptr %i.cs acquire, align 8, !noalias !27
  %i.cv = inttoptr i64 %i.cu to ptr               ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !30 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !30 ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i, label %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 3 uses
  %i.da = load i8, ptr @__libc_single_threaded, align 1, !noalias !30
  %.not.i.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = load i32, ptr %i.cz, align 4, !noalias !30
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.cz, align 4, !noalias !30
  br label %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dd = atomicrmw volatile add ptr %i.cz, i32 1 acq_rel, align 4, !noalias !30 ; 0 uses
  br label %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit

_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit: ; preds = %bb.ab, %bb.ad, %bb.ae
  %.not307 = icmp eq ptr %i.cw, null
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  br i1 %.not307, label %.critedge6, label %bb.af

bb.af:                                            ; preds = %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.df = load atomic i16, ptr %i.de monotonic, align 2
  %i.dg = and i16 %i.df, 2
  %i.dh = icmp ne i16 %i.dg, 0
  %or.cond.not = or i1 %.not98, %i.dh
  br i1 %or.cond.not, label %.critedge6, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = load i64, ptr %1, align 8
  store i64 %i.di, ptr %10, align 8
  %i.dj = call noundef i64 @_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %i.dk = icmp eq i64 %.0, %i.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br i1 %i.dk, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dl = call i16 @_ZN2v88internal13JSArrayBuffer6DetachENS0_12DirectHandleIS1_EEbNS2_INS0_6ObjectEEE(ptr nonnull %1, i1 noundef zeroext false, ptr null) #16
  %i.dm = trunc i16 %i.dl to i1
  br i1 %i.dm, label %.thread297, label %bb.ai, !prof !6

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #16
  br label %.thread297

.thread297:                                       ; preds = %bb.ai, %bb.ah
  store ptr %i.cw, ptr %11, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.cy, ptr %i.dn, align 8
  %i.do = call ptr @_ZN2v88internal7Factory16NewJSArrayBufferESt10shared_ptrINS0_12BackingStoreEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %11, i8 noundef zeroext 0) #16
  %i.dp = load i64, ptr %i.do, align 8
  call void @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

.critedge6:                                       ; preds = %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit, %bb.af
  %.sroa.8.1294 = phi ptr [ null, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit.thread ], [ %i.cy, %_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv.exit ], [ %i.cy, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge6, %bb.ag
  %.sroa.8.1293 = phi ptr [ %.sroa.8.1294, %.critedge6 ], [ %i.cy, %bb.ag ] ; 8 uses
  %i.dq = icmp ugt i64 %.0, %.094
  br i1 %i.dq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dr = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 233, ptr null, i64 0) #16
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.ds, ptr noundef null) #16
  br label %bb.ar

bb.al:                                            ; preds = %bb.aj
  %i.du = call ptr @_ZN2v88internal7Factory31NewJSArrayBufferAndBackingStoreEmmNS0_15InitializedFlagENS0_13ResizableFlagENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %.0, i64 noundef %.094, i8 noundef zeroext 0, i8 noundef zeroext %.093, i8 noundef zeroext 0) #16 ; 3 uses
  %.not308 = icmp eq ptr %i.du, null
  br i1 %.not308, label %_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.am

_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.al
  %i.dv = call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 236, ptr null, i64 0) #16
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.dw, ptr noundef null) #16
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.dy = load i64, ptr %1, align 8               ; 2 uses
  %i.dz = add i64 %i.dy, 55
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = inttoptr i64 %i.eb to ptr               ; 2 uses
  %i.ed = load i64, ptr %i.du, align 8
  %i.ee = add i64 %i.ed, 55
  %i.ef = inttoptr i64 %i.ee to ptr
  %i.eg = load i64, ptr %i.ef, align 8
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  store i64 %i.dy, ptr %12, align 8
  %i.ei = call noundef i64 @_ZNK2v88internal13JSArrayBuffer13GetByteLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %12) ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %.not = icmp ugt i64 %.0, %i.ei
  br i1 %.not, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN2v88internal9CopyBytesIhEEvPT_PKS2_m(ptr noundef %i.eh, ptr noundef %i.ec, i64 noundef %.0)
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  call void @_ZN2v88internal9CopyBytesIhEEvPT_PKS2_m(ptr noundef %i.eh, ptr noundef %i.ec, i64 noundef %i.ei)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = sub nuw i64 %.0, %i.ei
  call void @llvm.memset.p0.i64(ptr align 1 %i.ej, i8 0, i64 %i.ek, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.el = call i16 @_ZN2v88internal13JSArrayBuffer6DetachENS0_12DirectHandleIS1_EEbNS2_INS0_6ObjectEEE(ptr nonnull %1, i1 noundef zeroext false, ptr null) #16
  %i.em = trunc i16 %i.el to i1
  br i1 %i.em, label %_ZNK2v85MaybeIbE5CheckEv.exit, label %bb.aq, !prof !6

bb.aq:                                            ; preds = %bb.ap
  call void @_ZN2v812api_internal17FromJustIsNothingEv() #16
  br label %_ZNK2v85MaybeIbE5CheckEv.exit

_ZNK2v85MaybeIbE5CheckEv.exit:                    ; preds = %bb.ap, %bb.aq
  %i.en = load i64, ptr %i.du, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, %_ZNK2v85MaybeIbE5CheckEv.exit, %bb.ak
  %.sroa.0201.1 = phi i64 [ %i.dt, %bb.ak ], [ %i.dx, %_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit ], [ %i.en, %_ZNK2v85MaybeIbE5CheckEv.exit ] ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.8.1293, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.8.1293, i64 8 ; 4 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 4294967297
  %i.er = trunc i64 %i.ep to i32                  ; 2 uses
  br i1 %i.eq, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.eo, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.8.1293, i64 12
  store i32 0, ptr %i.es, align 4
  %i.et = load ptr, ptr %.sroa.8.1293, align 8
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1293) #16, !inline_history !11
  %i.ew = load ptr, ptr %.sroa.8.1293, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1293) #16, !inline_history !11
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.au:                                            ; preds = %bb.as
  %i.ez = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ez, 0
  br i1 %.not.i.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fa = add nsw i32 %i.er, -1
  store i32 %i.fa, ptr %i.eo, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.fb = atomicrmw volatile add ptr %i.eo, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i = phi i32 [ %i.er, %bb.av ], [ %i.fb, %bb.aw ]
  %i.fc = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fc, label %bb.ax, label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !5

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.1293) #16
  br label %_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit119, %_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE5CheckEv.exit, %.critedge3, %.thread297, %bb.ar, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ax, %bb.k, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit118, %bb.l, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %.sroa.0201.4 = phi i64 [ %i.r, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ %i.br, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit119 ], [ %i.cq, %_ZNK2v88internal11MaybeHandleINS0_13JSArrayBufferEE5CheckEv.exit ], [ %.sroa.0201.1, %bb.ax ], [ %i.ck, %.critedge3 ], [ %i.dp, %.thread297 ], [ %.sroa.0201.1, %bb.ar ], [ %.sroa.0201.1, %bb.at ], [ %.sroa.0201.1, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.av, %bb.l ], [ %i.bg, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit118 ], [ %i.ak, %bb.k ]
  ret i64 %.sroa.0201.4
}

declare i16 @_ZN2v88internal13JSArrayBuffer6DetachENS0_12DirectHandleIS1_EEbNS2_INS0_6ObjectEEE(ptr, i1 noundef zeroext, ptr) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory31NewJSArrayBufferAndBackingStoreEmmNS0_15InitializedFlagENS0_13ResizableFlagENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i64 noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @_ZN2v88internal7Factory16NewJSArrayBufferESt10shared_ptrINS0_12BackingStoreEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZN2v812api_internal17FromJustIsNothingEv() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { builtin nounwind }
attributes #19 = { builtin nounwind allocsize(0) }
attributes #20 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZN2v88internal12_GLOBAL__N_123TryAllocateBackingStoreEPNS0_7IsolateENS0_10SharedFlagENS0_13ResizableFlagENS0_12DirectHandleINS0_6ObjectEEES8_NS0_15InitializedFlagE: argument 0"}
!9 = distinct !{!9, !"_ZN2v88internal12_GLOBAL__N_123TryAllocateBackingStoreEPNS0_7IsolateENS0_10SharedFlagENS0_13ResizableFlagENS0_12DirectHandleINS0_6ObjectEEES8_NS0_15InitializedFlagE"}
!10 = distinct !{null}
!11 = distinct !{ptr @_ZNSt12__shared_ptrIN2v88internal12BackingStoreELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{null, null}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!24 = distinct !{!24, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
!25 = !{!"branch_weights", i32 2146410443, i32 1073205}
!26 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv: argument 0"}
!29 = distinct !{!29, !"_ZNK2v88internal13JSArrayBuffer15GetBackingStoreEv"}
!30 = !{!31, !28}
!31 = distinct !{!31, !32, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv: argument 0"}
!32 = distinct !{!32, !"_ZN2v88internal20ArrayBufferExtension13backing_storeEv"}
end_hunk_1
