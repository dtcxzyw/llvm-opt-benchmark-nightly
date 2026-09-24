Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_attn?download=true
inline.NumInlined: 525
inline.NumDeleted: 214
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN2cv3dnn26fused_softmax_softcap_maskERNS_3MatERKS1_fbffbb:bb.a
bb.p:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 2
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 2
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 2
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn17run_fused_softmaxIfNS0_15MaskPolicyFloatIfEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.eg, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  store i64 %i.bt, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %i.bx = icmp samesign ult i32 %i.bv, %narrow.i.i28
  br i1 %i.bx, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !20
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.ce = zext nneg i32 %i.bv to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.cj = zext nneg i32 %i.ba to i64
  %i.ck = getelementptr [8 x i8], ptr %1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 104
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !30
  store i64 %i.cm, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cn = icmp slt i32 %i.ba, 2
  br i1 %i.cn, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cp = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cq = load i32, ptr %i.co, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %i.cr = icmp samesign ult i32 %i.cp, %narrow.i.i35
  br i1 %i.cr, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.cy = zext nneg i32 %i.cp to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !tbaa !26
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.dd = zext nneg i32 %i.ba to i64
  %i.de = getelementptr [8 x i8], ptr %1, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 112
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !30
  store i64 %i.dg, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.di = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dj = load i32, ptr %i.dh, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 1)
  %i.dk = icmp samesign ult i32 %i.di, %narrow.i.i42
  br i1 %i.dk, label %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !20
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn17run_fused_softmaxIhNS0_13MaskPolicyIntIhEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.by, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.eg, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  store i64 %i.bt, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bv = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bw = load i32, ptr %i.bu, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %i.bx = icmp samesign ult i32 %i.bv, %narrow.i.i28
  br i1 %i.bx, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup
  %i.bz = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !20
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.ce = zext nneg i32 %i.bv to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ce
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !26
  %i.ci = icmp sgt i32 %i.ch, 1
  br i1 %i.ci, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.cj = zext nneg i32 %i.ba to i64
  %i.ck = getelementptr [8 x i8], ptr %1, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.ck, i64 104
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !30
  store i64 %i.cm, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cn = icmp slt i32 %i.ba, 2
  br i1 %i.cn, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cp = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cq = load i32, ptr %i.co, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cq, i32 1)
  %i.cr = icmp samesign ult i32 %i.cp, %narrow.i.i35
  br i1 %i.cr, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cv = icmp eq ptr %i.ct, %i.cu
  br i1 %i.cv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !20
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cx) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.cy = zext nneg i32 %i.cp to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cy
  %i.db = load i32, ptr %i.da, align 4, !tbaa !26
  %i.dc = icmp sgt i32 %i.db, 1
  br i1 %i.dc, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.dd = zext nneg i32 %i.ba to i64
  %i.de = getelementptr [8 x i8], ptr %1, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 112
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !30
  store i64 %i.dg, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.di = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dj = load i32, ptr %i.dh, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dj, i32 1)
  %i.dk = icmp samesign ult i32 %i.di, %narrow.i.i42
  br i1 %i.dk, label %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !20
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn17run_fused_softmaxIaNS0_13MaskPolicyIntIaEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 1
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 1
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 1
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_3
begin_hunk_4_@_ZN2cv3dnn17run_fused_softmaxItNS0_13MaskPolicyIntItEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 1
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 1
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 1
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_4
begin_hunk_5_@_ZN2cv3dnn17run_fused_softmaxIsNS0_13MaskPolicyIntIsEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 2
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 2
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 2
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_5
begin_hunk_6_@_ZN2cv3dnn17run_fused_softmaxIjNS0_13MaskPolicyIntIjEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 2
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 2
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 2
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_6
begin_hunk_7_@_ZN2cv3dnn17run_fused_softmaxIiNS0_13MaskPolicyIntIiEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 3
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 3
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 3
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_7
begin_hunk_8_@_ZN2cv3dnn17run_fused_softmaxImNS0_13MaskPolicyIntImEEEEvRNS_3MatERKS4_fbffb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 3
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 3
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 3
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIlNS0_13MaskPolicyIntIlEEEEvRNS_3MatERKS4_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_8
begin_hunk_9_@__gxx_personality_v0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffb(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, float noundef %2, i1 noundef zeroext %3, float noundef %4, float noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator", align 1   ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::allocator", align 1   ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i8, align 1                       ; 2 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 8 uses
  %i.l = alloca i64, align 8                      ; 8 uses
  %i.m = alloca i64, align 8                      ; 8 uses
  %i.n = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.cv::Range", align 4        ; 6 uses
  %22 = alloca %"class.std::function", align 8    ; 9 uses
  store float %2, ptr %i.a, align 4, !tbaa !22
  %i.o = zext i1 %3 to i8
  store i8 %i.o, ptr %i.b, align 1, !tbaa !24
  store float %4, ptr %i.c, align 4, !tbaa !22
  store float %5, ptr %i.d, align 4, !tbaa !22
  %i.p = zext i1 %6 to i8
  store i8 %i.p, ptr %i.e, align 1, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.t = load i32, ptr %i.s, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.u = icmp sgt i32 %i.r, 1
  br i1 %i.u, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %20)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %19, align 8, !tbaa !19    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.z = load i64, ptr %i.x, align 8, !tbaa !20
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt14_Function_baseD2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25 ], [ %i.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30 ], [ %i.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37 ], [ %i.do, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44 ], [ %i.ej, %_ZNSt14_Function_baseD2Ev.exit49 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.not71 = icmp eq i32 %i.r, 2
  br i1 %.not71, label %bb.e, label %_ZN2cv8MatShapeixEm.exit21

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %18)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %17, align 8, !tbaa !19   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18: ; preds = %bb.g
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i19: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit21:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !26
  store i32 %i.ak, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  %i.al = icmp samesign ugt i32 %i.r, 3
  br i1 %i.al, label %_ZN2cv8MatShapeixEm.exit27, label %bb.h

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 97) #17
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  %i.an = load ptr, ptr %15, align 8, !tbaa !19   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24: ; preds = %bb.j
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i25: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %common.resume

_ZN2cv8MatShapeixEm.exit27:                       ; preds = %_ZN2cv8MatShapeixEm.exit21
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.at = load i32, ptr %i.as, align 8, !tbaa !26
  store i32 %i.at, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  store ptr %i.av, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  %i.aw = tail call noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208) %1)
  br i1 %i.aw, label %.thread, label %bb.k

.thread:                                          ; preds = %_ZN2cv8MatShapeixEm.exit27
  store ptr null, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit47.thread.sink.split

bb.k:                                             ; preds = %_ZN2cv8MatShapeixEm.exit27
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !27 ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i64 0, ptr %i.k, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i64 0, ptr %i.l, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i64 0, ptr %i.m, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i64 0, ptr %i.n, align 8, !tbaa !30
  %.not = icmp eq ptr %i.ay, null
  br i1 %.not, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit47.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31 ; 11 uses
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg = add nsw i32 %i.ba, -4                   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !25
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.bd, i32 1)
  %i.be = icmp samesign ult i32 %.neg, %narrow.i.i
  br i1 %i.be, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %13, align 8, !tbaa !19   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.p
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit: ; preds = %bb.m
  %i.bl = zext nneg i32 %.neg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !26
  %i.bp = icmp sgt i32 %i.bo, 1
  br i1 %i.bp, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit
  %i.bq = zext nneg i32 %i.ba to i64
  %i.br = getelementptr [8 x i8], ptr %1, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 96
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !30
  %i.bu = lshr i64 %i.bt, 2
  store i64 %i.bu, ptr %i.k, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread: ; preds = %bb.l
  %.not94 = icmp eq i32 %i.ba, 3
  br i1 %.not94, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bw = add nsw i32 %i.ba, -3                   ; 2 uses
  %i.bx = load i32, ptr %i.bv, align 8, !tbaa !25
  %narrow.i.i28 = tail call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = icmp samesign ult i32 %i.bw, %narrow.i.i28
  br i1 %i.by, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33, label %bb.q

bb.q:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bz = landingpad { ptr, i32 }
          cleanup
  %i.ca = load ptr, ptr %11, align 8, !tbaa !19   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i30: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread.thread
  %i.cf = zext nneg i32 %i.bw to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %i.cj = icmp sgt i32 %i.ci, 1
  br i1 %i.cj, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit34, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit34: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33
  %i.ck = zext nneg i32 %i.ba to i64
  %i.cl = getelementptr [8 x i8], ptr %1, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 104
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !30
  %i.co = lshr i64 %i.cn, 2
  store i64 %i.co, ptr %i.l, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit.thread
  %i.cp = icmp slt i32 %i.ba, 2
  br i1 %i.cp, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit34, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cr = add nsw i32 %i.ba, -2                   ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !25
  %narrow.i.i35 = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 1)
  %i.ct = icmp samesign ult i32 %i.cr, %narrow.i.i35
  br i1 %i.ct, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40, label %bb.t

bb.t:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %9, align 8, !tbaa !19    ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36: ; preds = %bb.v
  %i.cy = load i64, ptr %i.cw, align 8, !tbaa !20
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cz) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i37: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %common.resume

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread.thread
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit41, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit41: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40
  %i.df = zext nneg i32 %i.ba to i64
  %i.dg = getelementptr [8 x i8], ptr %1, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 112
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  %i.dj = lshr i64 %i.di, 2
  store i64 %i.dj, ptr %i.m, align 8, !tbaa !30
  br label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit33.thread
  %.not95 = icmp eq i32 %i.ba, 1
  br i1 %.not95, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread.thread, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit47.thread

_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread.thread: ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE0_clEi.exit41, %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dl = add nsw i32 %i.ba, -1                   ; 2 uses
  %i.dm = load i32, ptr %i.dk, align 8, !tbaa !25
  %narrow.i.i42 = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 1)
  %i.dn = icmp samesign ult i32 %i.dl, %narrow.i.i42
  br i1 %i.dn, label %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit47, label %bb.w

bb.w:                                             ; preds = %_ZZN2cv3dnn17run_fused_softmaxIfNS0_14MaskPolicyNoneEEEvRNS_3MatERKS3_fbffbENKUliE_clEi.exit40.thread.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.4, i32 noundef 103) #17
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.do = landingpad { ptr, i32 }
          cleanup
  %i.dp = load ptr, ptr %7, align 8, !tbaa !19    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i43: ; preds = %bb.y
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !20
end_hunk_9
