Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/message_differencer?download=true
inline.NumInlined: 4930
inline.NumDeleted: 2063
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS0_7MessageES5_iPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorERKSt6vectorINS2_13SpecificFieldESaISD_EEPSC_IiSaIiEESK_:bb.a
  %i.ag = icmp slt i32 %i.l, 0
  br i1 %i.ag, label %.noexc219, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc219:                                        ; preds = %bb.g
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #39
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %.thread, %bb.g
  %i.ah = phi ptr [ %i.ad, %bb.g ], [ %i.af, %.thread ]
  %i.ai = shl nuw nsw i64 %i.q, 2                 ; 3 uses
  %i.aj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #41 ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = add nsw i64 %i.ai, -4                   ; 2 uses
  %i.am = lshr exact i64 %i.al, 2
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.al, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %n.vec = and i64 %i.an, 9223372036854775800     ; 3 uses
  %i.ao = shl i64 %n.vec, 2
  %i.ap = getelementptr i8, ptr %i.aj, i64 %i.ao
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aq = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.aq ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> splat (i32 2147483647), ptr %i.ar, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.ap, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 2147483647, ptr %.06.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !3
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !627

_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.q
  %i.av = ptrtoint ptr %i.au to i64
  br label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit:            ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i, %.thread, %bb.f
  %i.aw = phi ptr [ %i.af, %.thread ], [ %i.ad, %bb.f ], [ %i.ah, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 2 uses
  %.sroa.0224.0 = phi ptr [ null, %.thread ], [ null, %bb.f ], [ %i.aj, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 9 uses
  %.sroa.20.0 = phi i64 [ 0, %.thread ], [ 0, %bb.f ], [ %i.av, %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #40
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  %i.bb = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #41
          to label %bb.l unwind label %bb.i, !inline_history !628 ; 8 uses

bb.i:                                             ; preds = %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 2 uses
  %.not.i.i165 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i165, label %.body, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = invoke noundef zeroext i1 %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body unwind label %bb.k, !inline_history !628 ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #43, !inline_history !628
  unreachable

bb.l:                                             ; preds = %bb.h
  store ptr %0, ptr %i.bb, align 16, !tbaa !629
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !307
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !165
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  store ptr %1, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !99
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  store ptr %2, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !99
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store ptr %i.e, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !630
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  store ptr %6, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !631
  store ptr %i.bb, ptr %12, align 8, !tbaa !159
  store i32 %i.l, ptr %11, align 8, !tbaa !632
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 3 uses
  store i32 %i.o, ptr %i.bh, align 4, !tbaa !641
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr @"_ZNSt17_Function_handlerIFbiiEZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS2_7MessageES7_iPKNS2_15FieldDescriptorEPKNS4_16MapKeyComparatorERKSt6vectorINS4_13SpecificFieldESaISF_EEPSE_IiSaIiEESM_E3$_0E9_M_invokeERKSt9_Any_dataOiSS_", ptr %i.bj, align 8, !tbaa !642
  %i.bk = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 16, i1 false), !tbaa.struct !237
  store ptr @"_ZNSt17_Function_handlerIFbiiEZN6google8protobuf4util18MessageDifferencer25MatchRepeatedFieldIndicesERKNS2_7MessageES7_iPKNS2_15FieldDescriptorEPKNS4_16MapKeyComparatorERKSt6vectorINS4_13SpecificFieldESaISF_EEPSE_IiSaIiEESM_E3$_0E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation", ptr %i.bk, align 8, !tbaa !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 4 uses
  store i64 1, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 72 ; 2 uses
  store ptr %7, ptr %i.bm, align 8, !tbaa !643
  %i.bn = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 3 uses
  store ptr %8, ptr %i.bn, align 8, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  store i32 -1, ptr %i.c, align 4, !tbaa !3
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.q, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit.i unwind label %bb.m

_ZNSt6vectorIiSaIiEE6assignEmRKi.exit.i:          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !644
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  store i32 -1, ptr %i.d, align 4, !tbaa !3
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_assignEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.r, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.r unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.bq, %bb.n ], [ %i.bp, %bb.m ] ; 2 uses
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIiiEbEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_bEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.bl) #40
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !161 ; 2 uses
  %.not.i.i166 = icmp eq ptr %i.br, null
  br i1 %.not.i.i166, label %.body168, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bs = invoke noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef 3)
          to label %.body168 unwind label %bb.q   ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #43
  unreachable

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  %i.bv = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 2 uses
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bw = invoke noundef zeroext i1 %i.bv(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.t ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #43
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.r, %bb.s
  %i.bz = icmp eq ptr %i.u, null                  ; 2 uses
  %i.ca = load i32, ptr %11, align 8, !tbaa !632  ; 3 uses
  %.not38.i = icmp sgt i32 %i.ca, 0
  br i1 %.not38.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i, label %.preheader.i

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i:       ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  br i1 %i.bz, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.us.i

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.us.i:          ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i
  %i.cf = phi i32 [ %i.cs, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i ], [ %i.ca, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i ] ; 3 uses
  %.02040.us.i = phi i32 [ %i.cr, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i ] ; 2 uses
  %.02139.us.i = phi i32 [ %.2.us.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %13 = sext i32 %i.cf to i64                     ; 2 uses
  %i.cg = add nsw i64 %13, 63                     ; 2 uses
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 2305843009213693944
  %i.cj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ci) #41
          to label %.noexc unwind label %.loopexit.split-lp ; 7 uses

.noexc:                                           ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.us.i
  %i.ck = lshr i64 %i.cg, 6                       ; 3 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  store ptr %i.cl, ptr %i.ce, align 8, !tbaa !645
  store ptr %i.cj, ptr %9, align 8
  store i32 0, ptr %i.cb, align 8
  %i.cm = sdiv i32 %i.cf, 64
  %.sext.us.i = sext i32 %i.cm to i64
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %.sext.us.i
  %14 = and i64 %13, -9223372036854775745
  %15 = icmp ugt i64 %14, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.us.i = select i1 %15, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.us.i = getelementptr inbounds i8, ptr %i.cn, i64 %storemerge.idx.i.i.i.i.i.i.us.i
  %i.co = and i32 %i.cf, 63
  store ptr %storemerge.i.i.i.i.i.i.us.i, ptr %i.cc, align 8
  store i32 %i.co, ptr %i.cd, align 8
  %.idx.i.i.us.i = shl nuw nsw i64 %i.ck, 3       ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.cj, i8 0, i64 %.idx.i.i.us.i, i1 false)
  %i.cp = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher19FindArgumentPathDFSEiPSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %.02040.us.i, ptr noundef %9)
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i unwind label %.split.us.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i:        ; preds = %.noexc
  %i.cq = zext i1 %i.cp to i32
  %.2.us.i = add nuw nsw i32 %.02139.us.i, %i.cq  ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %.idx.i.i.us.i) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  %i.cr = add nuw nsw i32 %.02040.us.i, 1         ; 2 uses
  %i.cs = load i32, ptr %11, align 8, !tbaa !632  ; 2 uses
  %.not.us.i = icmp slt i32 %i.cr, %i.cs
  br i1 %.not.us.i, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.us.i, label %.preheader.i, !llvm.loop !650

.split.us.i:                                      ; preds = %.noexc
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.ck
  br label %.body.i

bb.u:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.cv = add nuw nsw i32 %.02040.i, 1            ; 3 uses
  %i.cw = load i32, ptr %11, align 8, !tbaa !632  ; 2 uses
  %.not.i170 = icmp slt i32 %i.cv, %i.cw
  br i1 %.not.i170, label %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i, label %.preheader.i, !llvm.loop !650

.preheader.i:                                     ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i, %bb.u, %_ZNSt14_Function_baseD2Ev.exit
  %.021.lcssa.i = phi i32 [ 0, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.cv, %bb.u ], [ %.2.us.i, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.us.i ] ; 2 uses
  %i.cx = load i32, ptr %i.bh, align 4, !tbaa !641 ; 2 uses
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i, label %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher16FindMaximumMatchEb.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cz = load ptr, ptr %i.bn, align 8, !tbaa !644
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !11
  %i.db = load ptr, ptr %i.bm, align 8
  br label %bb.v

_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i:             ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i, %bb.u
  %i.dc = phi i32 [ %i.cw, %bb.u ], [ %i.ca, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i ] ; 3 uses
  %.02040.i = phi i32 [ %i.cv, %bb.u ], [ 0, %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.lr.ph.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #40
  %16 = sext i32 %i.dc to i64                     ; 2 uses
  %i.dd = add nsw i64 %16, 63                     ; 2 uses
  %i.de = lshr i64 %i.dd, 3
  %i.df = and i64 %i.de, 2305843009213693944
  %i.dg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.df) #41
          to label %.noexc171 unwind label %.loopexit ; 7 uses

.noexc171:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i
  %i.dh = lshr i64 %i.dd, 6                       ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  store ptr %i.di, ptr %i.ce, align 8, !tbaa !645
  store ptr %i.dg, ptr %9, align 8
  store i32 0, ptr %i.cb, align 8
  %i.dj = sdiv i32 %i.dc, 64
  %.sext.i = sext i32 %i.dj to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dg, i64 %.sext.i
  %17 = and i64 %16, -9223372036854775745
  %18 = icmp ugt i64 %17, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i.i = select i1 %18, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %i.dk, i64 %storemerge.idx.i.i.i.i.i.i.i
  %i.dl = and i32 %i.dc, 63
  store ptr %storemerge.i.i.i.i.i.i.i, ptr %i.cc, align 8
  store i32 %i.dl, ptr %i.cd, align 8
  %.idx.i.i.i = shl nuw nsw i64 %i.dh, 3          ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.dg, i8 0, i64 %.idx.i.i.i, i1 false)
  %i.dm = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher19FindArgumentPathDFSEiPSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(88) %11, i32 noundef %.02040.i, ptr noundef %9)
          to label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i unwind label %.split.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %.noexc171
  call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %.idx.i.i.i) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br i1 %i.dm, label %bb.u, label %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher16FindMaximumMatchEb.exit

.split.i:                                         ; preds = %.noexc171
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dh
  br label %.body.i

.body.i:                                          ; preds = %.split.i, %.split.us.i
  %.us-phi.i = phi ptr [ %i.do, %.split.i ], [ %i.cu, %.split.us.i ] ; 2 uses
  %.us-phi41.i = phi ptr [ %i.dg, %.split.i ], [ %i.cj, %.split.us.i ]
  %.us-phi42.i = phi { ptr, i32 } [ %i.dn, %.split.i ], [ %i.ct, %.split.us.i ]
  %i.dp = ptrtoint ptr %.us-phi.i to i64
  %i.dq = ptrtoint ptr %.us-phi41.i to i64
  %i.dr = sub i64 %i.dp, %i.dq                    ; 2 uses
  %i.ds = ashr exact i64 %i.dr, 3
  %i.dt = sub nsw i64 0, %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %.us-phi.i, i64 %i.dt
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dr) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #40
  br label %.body172

bb.v:                                             ; preds = %bb.x, %.lr.ph.i
  %i.dv = phi i32 [ %i.cx, %.lr.ph.i ], [ %i.ec, %bb.x ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.x ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3  ; 2 uses
  %.not28.i = icmp eq i32 %i.dx, -1
  br i1 %.not28.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = sext i32 %i.dx to i64
  %i.dz = load ptr, ptr %i.db, align 8, !tbaa !11
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.dy
  %i.eb = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !3
  %.pre.i = load i32, ptr %i.bh, align 4, !tbaa !641
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ec = phi i32 [ %i.dv, %bb.v ], [ %.pre.i, %bb.w ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next.i, %i.ed
  br i1 %i.ee, label %bb.v, label %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher16FindMaximumMatchEb.exit, !llvm.loop !651

_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher16FindMaximumMatchEb.exit: ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, %bb.x, %.preheader.i
  %.326.i = phi i32 [ %.021.lcssa.i, %.preheader.i ], [ %.021.lcssa.i, %bb.x ], [ 0, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i ] ; 2 uses
  %i.ef = icmp ne i32 %.326.i, %i.l
  %or.cond8 = and i1 %i.bz, %i.ef
  %i.eg = icmp eq i32 %.326.i, %i.l
  %i.eh = load i64, ptr %i.bl, align 8, !tbaa !105 ; 3 uses
  %i.ei = icmp ne i64 %i.eh, 0
  call void @llvm.assume(i1 %i.ei)
  %i.ej = icmp ult i64 %i.eh, 2
  br i1 %i.ej, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIiiEbEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_bEEED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher16FindMaximumMatchEb.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !107
  %i.em = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !106
  %i.en = and i64 %i.em, 65536
  %i.eo = icmp ne i64 %i.en, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 noundef %i.eh, ptr noundef %i.el, i64 noundef 12, i64 noundef 4, i1 noundef zeroext %i.eo)
          to label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIiiEbEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_bEEED2Ev.exit.i unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = landingpad { ptr, i32 }
          catch ptr null
  %i.eq = extractvalue { ptr, i32 } %i.ep, 0
  call void @__clang_call_terminate(ptr %i.eq) #43
  unreachable

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIiiEbEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_bEEED2Ev.exit.i: ; preds = %bb.y, %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcher16FindMaximumMatchEb.exit
  %i.er = load ptr, ptr %i.bk, align 8, !tbaa !161 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.er, null
  br i1 %.not.i.i174, label %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIiiEbEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_bEEED2Ev.exit.i
  %i.es = invoke noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bi, i32 noundef 3)
          to label %_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.et = landingpad { ptr, i32 }
          catch ptr null
  %i.eu = extractvalue { ptr, i32 } %i.et, 0
  call void @__clang_call_terminate(ptr %i.eu) #43
  unreachable

_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev.exit: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIiiEbEENS0_13hash_internal4HashIS5_EESt8equal_toIS5_ESaIS4_IKS5_bEEED2Ev.exit.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br i1 %or.cond8, label %.loopexit310, label %.thread283

.body168:                                         ; preds = %bb.o, %bb.p
  %i.ev = load ptr, ptr %i.ba, align 8, !tbaa !161 ; 2 uses
  %.not.i176 = icmp eq ptr %i.ev, null
  br i1 %.not.i176, label %.body, label %bb.ac

bb.ac:                                            ; preds = %.body168
  %i.ew = invoke noundef zeroext i1 %i.ev(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 3)
          to label %.body unwind label %bb.ad     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #43
  unreachable

.loopexit:                                        ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body172

.loopexit.split-lp:                               ; preds = %_ZNSt6vectorIbSaIbEEC2EmRKS0_.exit.us.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body172

.body172:                                         ; preds = %.loopexit, %.loopexit.split-lp, %.body.i
  %eh.lpad-body173 = phi { ptr, i32 } [ %.us-phi42.i, %.body.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call fastcc void @_ZN6google8protobuf4util12_GLOBAL__N_114MaximumMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %11) #40
  br label %.body

.body:                                            ; preds = %bb.ac, %.body168, %bb.j, %bb.i, %.body172
  %.pn158 = phi { ptr, i32 } [ %eh.lpad-body173, %.body172 ], [ %i.bc, %bb.i ], [ %.pn.i, %bb.ac ], [ %i.bc, %bb.j ], [ %.pn.i, %.body168 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #40
  br label %bb.br

bb.ae:                                            ; preds = %_ZNSt6vectorIiSaIiEE6assignEmRKi.exit
  %i.ez = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.fa = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer14IsTreatedAsSetEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.ez)
          to label %bb.af unwind label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %or.cond10 = or i1 %i.p, %i.fa
  br i1 %or.cond10, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.fc = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer20IsTreatedAsSmartListEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.fb)
          to label %bb.ah unwind label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.fc, label %bb.ai, label %.loopexit311

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.l) ; 4 uses
  %i.fd = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.fd, label %.lr.ph, label %.loopexit311

.lr.ph:                                           ; preds = %bb.ai
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 8
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag, %bb.ae
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ak:                                            ; preds = %.lr.ph, %bb.ao
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ao ] ; 7 uses
  %i.fh = load ptr, ptr %i.f, align 8, !tbaa !100
  %i.fi = load ptr, ptr %i.g, align 8, !tbaa !173
  %i.fj = load i32, ptr %i.e, align 4, !tbaa !3
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32    ; 5 uses
  %i.fl = invoke noundef zeroext i1 @_ZN6google8protobuf4util18MessageDifferencer7IsMatchEPKNS0_15FieldDescriptorEPKNS2_16MapKeyComparatorEPKNS0_7MessageESB_iRKSt6vectorINS2_13SpecificFieldESaISD_EEPNS2_8ReporterEii(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef %i.fh, ptr noundef %i.fi, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.fj, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef null, i32 noundef %i.fk, i32 noundef %i.fk)
          to label %bb.al unwind label %.loopexit312

bb.al:                                            ; preds = %bb.ak
  br i1 %i.fl, label %bb.am, label %.loopexit311

bb.am:                                            ; preds = %bb.al
  %i.fm = load ptr, ptr %i.fe, align 8, !tbaa !7
  %i.fn = load ptr, ptr %7, align 8, !tbaa !11    ; 2 uses
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = ashr exact i64 %i.fq, 2                 ; 2 uses
  %.not.i.i178 = icmp ugt i64 %i.fr, %indvars.iv
  br i1 %.not.i.i178, label %bb.an, label %.invoke

.invoke:                                          ; preds = %bb.an, %bb.am
  %i.fs = phi i64 [ %i.fr, %bb.am ], [ %i.fz, %bb.an ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %indvars.iv, i64 noundef %i.fs) #39
          to label %.cont unwind label %.loopexit.split-lp313

.cont:                                            ; preds = %.invoke
  unreachable
end_hunk_0
