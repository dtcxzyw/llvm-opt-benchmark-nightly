Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/correlation_layer?download=true
inline.NumInlined: 373
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN2cv3dnn20CorrelationLayerImpl20blobRearrangeKernel2ERKNS_3MatERS2_:bb.a

bb.h:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit50
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %4)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 103) #20
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %3, align 8, !tbaa !28     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8, !tbaa !22
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i54: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit56:                      ; preds = %_ZNK2cv8MatShapeixEm.exit50
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !59 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !59 ; 4 uses
  %i.ae = mul i32 %i.ad, %i.ab                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !51 ; 3 uses
  %i.ah = shl nsw i32 %i.ag, 1                    ; 2 uses
  %i.ai = add nsw i32 %i.ah, %i.ad
  %i.aj = add nsw i32 %i.ah, %i.ab
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ao = icmp sgt i32 %i.d, 0
  br i1 %i.ao, label %.preheader57.lr.ph, label %._crit_edge62.split

.preheader57.lr.ph:                               ; preds = %_ZNK2cv8MatShapeixEm.exit56
  %i.ap = icmp slt i32 %i.m, 1
  %i.aq = icmp slt i32 %i.ae, 1
  %brmerge = select i1 %i.ap, i1 true, i1 %i.aq
  br i1 %brmerge, label %._crit_edge62.split, label %.preheader57.preheader

.preheader57.preheader:                           ; preds = %.preheader57.lr.ph
  %i.ar = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.as = zext nneg i32 %i.m to i64               ; 2 uses
  %wide.trip.count75 = zext nneg i32 %i.d to i64
  br label %.preheader57

.preheader57:                                     ; preds = %.preheader57.preheader, %._crit_edge60
  %indvars.iv72 = phi i64 [ 0, %.preheader57.preheader ], [ %indvars.iv.next73, %._crit_edge60 ] ; 3 uses
  %i.at = mul nuw nsw i64 %indvars.iv72, %i.as
  %i.au = trunc nuw nsw i64 %indvars.iv72 to i32
  %i.av = mul i32 %i.aj, %i.au
  %i.aw = add i32 %i.av, %i.ag
  br label %.preheader

._crit_edge62.split:                              ; preds = %._crit_edge60, %.preheader57.lr.ph, %_ZNK2cv8MatShapeixEm.exit56
  ret void

.preheader:                                       ; preds = %.preheader57, %._crit_edge
  %indvars.iv67 = phi i64 [ 0, %.preheader57 ], [ %indvars.iv.next68, %._crit_edge ] ; 3 uses
  %i.ax = add nuw nsw i64 %indvars.iv67, %i.at
  %i.ay = mul nuw nsw i64 %i.ax, %i.ar
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ay
  %i.az = trunc nuw nsw i64 %indvars.iv67 to i32
  br label %bb.k

._crit_edge60:                                    ; preds = %._crit_edge
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %._crit_edge62.split, label %.preheader57, !llvm.loop !100

._crit_edge:                                      ; preds = %bb.k
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %i.as
  br i1 %exitcond71.not, label %._crit_edge60, label %.preheader, !llvm.loop !101

bb.k:                                             ; preds = %.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ba = load float, ptr %gep, align 4, !tbaa !71
  %i.bb = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bc = srem i32 %i.bb, %i.ad
  %i.bd = sdiv i32 %i.bb, %i.ad
  %reass.add = add i32 %i.aw, %i.bd
  %reass.mul = mul i32 %reass.add, %i.ai
  %i.be = add i32 %i.bc, %i.ag
  %i.bf = add i32 %i.be, %reass.mul
  %i.bg = mul nsw i32 %i.bf, %i.m
  %i.bh = add nsw i32 %i.bg, %i.az
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bi
  store float %i.ba, ptr %i.bj, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !102
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn20CorrelationLayerImpl28correlationKernelSubtractionERKNS_3MatES4_RS2_i(ptr noundef nonnull align 8 dereferenceable(592) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator.5", align 1  ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %_ZNK2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %16)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 103) #20
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %15, align 8, !tbaa !28    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.h = load i64, ptr %i.f, align 8, !tbaa !22
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114 ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120 ], [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126 ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131 ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit:                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i32, ptr %i.j, align 8, !tbaa !59
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.e, label %_ZNK2cv8MatShapeixEm.exit116

bb.e:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %14)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 103) #20
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %13, align 8, !tbaa !28    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !22
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i114: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit116:                     ; preds = %_ZNK2cv8MatShapeixEm.exit
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59   ; 9 uses
  %i.t = icmp samesign ugt i32 %i.b, 3
  br i1 %i.t, label %_ZNK2cv8MatShapeixEm.exit122, label %bb.h

bb.h:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit116
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %12)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 103) #20
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %11, align 8, !tbaa !28    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119: ; preds = %bb.j
  %i.y = load i64, ptr %i.w, align 8, !tbaa !22
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i120: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %common.resume

_ZNK2cv8MatShapeixEm.exit122:                     ; preds = %_ZNK2cv8MatShapeixEm.exit116
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !59 ; 21 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !58 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, 1
  br i1 %i.ae, label %_ZN2cv8MatShapeixEm.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK2cv8MatShapeixEm.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #20
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125: ; preds = %bb.m
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %_ZNK2cv8MatShapeixEm.exit122
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.am = load i32, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %.not144 = icmp eq i32 %i.ad, 2
  br i1 %.not144, label %bb.n, label %_ZN2cv8MatShapeixEm.exit133

bb.n:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %8)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #20
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130: ; preds = %bb.p
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !22
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i131: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i130
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit133:                      ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 92
  %i.au = load i32, ptr %i.at, align 4, !tbaa !59 ; 4 uses
  %i.av = icmp samesign ugt i32 %i.ad, 3
  br i1 %i.av, label %_ZN2cv8MatShapeixEm.exit139, label %bb.q

bb.q:                                             ; preds = %_ZN2cv8MatShapeixEm.exit133
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.19, i32 noundef 97) #20
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136: ; preds = %bb.s
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i137: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %common.resume

_ZN2cv8MatShapeixEm.exit139:                      ; preds = %_ZN2cv8MatShapeixEm.exit133
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !59 ; 4 uses
  %i.be = tail call noundef i64 @_ZNK2cv3Mat5totalEii(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 1, i32 noundef 2147483647)
  %i.bf = trunc i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !53
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !56
  %i.bk = sdiv i32 %i.bh, %i.bj                   ; 3 uses
  %i.bl = shl nsw i32 %i.bk, 1
  %i.bm = or disjoint i32 %i.bl, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69 ; 3 uses
  %i.bp = ptrtoaddr ptr %i.bo to i64              ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !54 ; 2 uses
  %i.bw = mul i32 %i.bv, %i.ab
  %i.bx = mul i32 %i.bw, %i.bv                    ; 4 uses
  %i.by = sext i32 %i.bx to i64                   ; 2 uses
  %i.bz = icmp slt i32 %i.bx, 0
  br i1 %i.bz, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN2cv8MatShapeixEm.exit139
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #20
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN2cv8MatShapeixEm.exit139
  %.not.i.i.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %.noexc140

.noexc140:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.by, 2                ; 2 uses
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #17 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.cb, i8 0, i64 %i.ca, i1 false), !tbaa !71
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.by
  %i.cd = ptrtoint ptr %i.cc to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc140, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cd, %.noexc140 ]
  %.sroa.0141.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cb, %.noexc140 ] ; 7 uses
  %.sroa.0141.0313 = ptrtoaddr ptr %.sroa.0141.0 to i64 ; 2 uses
  %i.ce = icmp sgt i32 %i.au, 0
  br i1 %i.ce, label %.preheader147.lr.ph, label %._crit_edge198.split

.preheader147.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.cf = icmp sgt i32 %i.bd, 0
  %i.cg = icmp slt i32 %i.ab, 1                   ; 2 uses
  %i.ch = mul i32 %i.k, %4                        ; 2 uses
  %i.ci = icmp sgt i32 %i.ab, 0
  %i.cj = uitofp nneg i32 %i.bx to float
  %i.ck = mul nsw i32 %4, %i.bf
  br i1 %i.cf, label %.preheader147.lr.ph.split, label %._crit_edge198.split

.preheader147.lr.ph.split:                        ; preds = %.preheader147.lr.ph
  %i.cl = icmp sgt i32 %i.am, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !55 ; 8 uses
  %i.co = load i32, ptr %i.bg, align 4, !tbaa !53 ; 6 uses
  %i.cp = load i32, ptr %i.bu, align 8, !tbaa !54 ; 7 uses
  %i.cq = icmp slt i32 %i.cp, 1                   ; 2 uses
  %i.cr = icmp sgt i32 %i.cp, 0
  br i1 %i.cl, label %.preheader147.lr.ph.split.split.us, label %.preheader147.lr.ph.split.split

.preheader147.lr.ph.split.split.us:               ; preds = %.preheader147.lr.ph.split
  %i.cs = load i32, ptr %i.bi, align 4, !tbaa !56 ; 2 uses
  %i.ct = sext i32 %i.ab to i64                   ; 4 uses
  %i.cu = sext i32 %i.cp to i64                   ; 3 uses
  %i.cv = zext nneg i32 %i.au to i64
  %wide.trip.count275 = zext nneg i32 %i.au to i64
  %invariant.op312 = add i32 %i.co, %i.ch         ; 2 uses
  %brmerge = select i1 %i.cq, i1 true, i1 %i.cg
  %wide.trip.count249 = zext nneg i32 %i.cp to i64 ; 2 uses
  %wide.trip.count239 = zext i32 %i.ab to i64     ; 8 uses
  %wide.trip.count269 = zext nneg i32 %i.am to i64
  %wide.trip.count264 = zext nneg i32 %i.cp to i64 ; 2 uses
  %i.cw = sub i64 %.sroa.0141.0313, %i.bp
  %i.cx = mul nsw i64 %i.cu, %i.ct
  %i.cy = shl i64 %i.cx, 2
  %i.cz = shl nsw i64 %i.ct, 2
  %i.da = mul i32 %i.s, %invariant.op312
  %i.db = add i32 %i.co, %i.da
  %i.dc = mul i32 %i.ab, %i.db
  %i.dd = zext i32 %i.dc to i64
  %i.de = mul i32 %i.cn, %i.s
  %i.df = mul i32 %i.de, %i.ab
  %i.dg = zext i32 %i.df to i64
  %i.dh = mul i32 %i.cn, %i.ab
  %i.di = zext i32 %i.dh to i64
  %17 = mul i32 %i.s, %i.ab
  %i.dj = zext i32 %17 to i64
  %min.iters.check322 = icmp ult i32 %i.ab, 8
  %n.vec324 = and i64 %wide.trip.count239, 2147483640 ; 3 uses
  %cmp.n331 = icmp eq i64 %n.vec324, %wide.trip.count239
  %xtraiter334 = and i64 %wide.trip.count239, 3   ; 2 uses
  %lcmp.mod335.not = icmp eq i64 %xtraiter334, 0
  %xtraiter337 = and i64 %wide.trip.count239, 3   ; 3 uses
  %i.dk = icmp ult i32 %i.ab, 4
  %unroll_iter = and i64 %wide.trip.count239, 2147483644
  %lcmp.mod338.not = icmp eq i64 %xtraiter337, 0
  %lcmp.mod340 = icmp ne i64 %xtraiter337, 0
  br label %.preheader147.us

.preheader147.us:                                 ; preds = %._crit_edge190.split.us.us, %.preheader147.lr.ph.split.split.us
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %._crit_edge190.split.us.us ], [ 0, %.preheader147.lr.ph.split.split.us ] ; 4 uses
  %i.dl = mul i64 %indvars.iv272, %i.dg
  %i.dm = add i64 %i.dl, %i.dd
  %i.dn = trunc i64 %indvars.iv272 to i32
  %i.do = mul i32 %i.cn, %i.dn
  %invariant.op156.us.reass = add i32 %i.do, %invariant.op312 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge186.us.us, %.preheader147.us
  %indvar318 = phi i64 [ %indvar.next319, %._crit_edge186.us.us ], [ 0, %.preheader147.us ] ; 2 uses
  %.0103188.us.us = phi i32 [ %i.gl, %._crit_edge186.us.us ], [ 0, %.preheader147.us ] ; 3 uses
  %i.dp = mul i64 %indvar318, %i.di
  %i.dq = add i64 %i.dm, %i.dp
  %i.dr = mul nsw i32 %i.cn, %.0103188.us.us
  %i.ds = add nsw i32 %i.dr, %i.co                ; 2 uses
  br i1 %brmerge, label %.preheader146.us.us, label %.preheader145.us.us

.preheader145.us.us:                              ; preds = %bb.t, %._crit_edge153.us.us
  %indvars.iv246 = phi i64 [ %indvars.iv.next247, %._crit_edge153.us.us ], [ 0, %bb.t ] ; 5 uses
  %i.dt = mul i64 %i.cy, %indvars.iv246
  %i.du = add i64 %i.cw, %i.dt
  %i.dv = mul i64 %indvars.iv246, %i.dj
  %i.dw = add i64 %i.dq, %i.dv
  %i.dx = mul nuw nsw i64 %indvars.iv246, %i.cu
  %i.dy = trunc nuw nsw i64 %indvars.iv246 to i32
  %.reass.reass.us.us = add i32 %invariant.op156.us.reass, %i.dy
  %i.dz = mul nsw i32 %.reass.reass.us.us, %i.s
  %invariant.op154.us.us = add i32 %i.ds, %i.dz
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader145.us.us
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %._crit_edge.us.us ], [ 0, %.preheader145.us.us ] ; 5 uses
  %i.ea = add nuw nsw i64 %indvars.iv241, %i.dx
  %i.eb = mul nuw nsw i64 %i.ea, %i.ct
  %i.ec = trunc nuw nsw i64 %indvars.iv241 to i32
  %.reass149.reass.us.us = add i32 %invariant.op154.us.us, %i.ec
  %i.ed = mul nsw i32 %.reass149.reass.us.us, %i.ab
  %i.ee = sext i32 %i.ed to i64
  %invariant.gep304 = getelementptr [4 x i8], ptr %i.bo, i64 %i.ee ; 6 uses
  %invariant.gep306 = getelementptr [4 x i8], ptr %.sroa.0141.0, i64 %i.eb ; 6 uses
  br i1 %min.iters.check322, label %scalar.ph321.preheader, label %vector.memcheck317

vector.memcheck317:                               ; preds = %.lr.ph.us.us
  %i.ef = mul i64 %i.cz, %indvars.iv241
  %i.eg = add i64 %i.du, %i.ef
  %i.eh = mul i64 %indvars.iv241, %wide.trip.count239
  %i.ei = add i64 %i.dw, %i.eh
  %sext333 = shl i64 %i.ei, 32
  %i.ej = ashr exact i64 %sext333, 30
  %i.ek = sub i64 %i.ej, %i.eg
  %diff.check320 = icmp ugt i64 %i.ek, -32
  br i1 %diff.check320, label %scalar.ph321.preheader, label %vector.body325

vector.body325:                                   ; preds = %vector.memcheck317, %vector.body325
  %index326 = phi i64 [ %index.next329, %vector.body325 ], [ 0, %vector.memcheck317 ] ; 3 uses
  %i.el = getelementptr [4 x i8], ptr %invariant.gep304, i64 %index326 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %wide.load327 = load <4 x float>, ptr %i.el, align 4, !tbaa !71
  %wide.load328 = load <4 x float>, ptr %i.em, align 4, !tbaa !71
  %i.en = getelementptr [4 x i8], ptr %invariant.gep306, i64 %index326 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  store <4 x float> %wide.load327, ptr %i.en, align 4, !tbaa !71
  store <4 x float> %wide.load328, ptr %i.eo, align 4, !tbaa !71
  %index.next329 = add nuw i64 %index326, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next329, %n.vec324
  br i1 %i.ep, label %middle.block330, label %vector.body325, !llvm.loop !103

middle.block330:                                  ; preds = %vector.body325
  br i1 %cmp.n331, label %._crit_edge.us.us, label %scalar.ph321.preheader

scalar.ph321.preheader:                           ; preds = %vector.memcheck317, %.lr.ph.us.us, %middle.block330
  %indvars.iv236.ph = phi i64 [ 0, %vector.memcheck317 ], [ 0, %.lr.ph.us.us ], [ %n.vec324, %middle.block330 ] ; 3 uses
  br i1 %lcmp.mod335.not, label %scalar.ph321.prol.loopexit, label %scalar.ph321.prol

scalar.ph321.prol:                                ; preds = %scalar.ph321.preheader, %scalar.ph321.prol
  %indvars.iv236.prol = phi i64 [ %indvars.iv.next237.prol, %scalar.ph321.prol ], [ %indvars.iv236.ph, %scalar.ph321.preheader ] ; 3 uses
  %prol.iter336 = phi i64 [ %prol.iter336.next, %scalar.ph321.prol ], [ 0, %scalar.ph321.preheader ]
  %gep305.prol = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv236.prol
  %i.eq = load float, ptr %gep305.prol, align 4, !tbaa !71
  %gep307.prol = getelementptr [4 x i8], ptr %invariant.gep306, i64 %indvars.iv236.prol
  store float %i.eq, ptr %gep307.prol, align 4, !tbaa !71
  %indvars.iv.next237.prol = add nuw nsw i64 %indvars.iv236.prol, 1 ; 2 uses
  %prol.iter336.next = add i64 %prol.iter336, 1   ; 2 uses
  %prol.iter336.cmp.not = icmp eq i64 %prol.iter336.next, %xtraiter334
  br i1 %prol.iter336.cmp.not, label %scalar.ph321.prol.loopexit, label %scalar.ph321.prol, !llvm.loop !104

scalar.ph321.prol.loopexit:                       ; preds = %scalar.ph321.prol, %scalar.ph321.preheader
  %indvars.iv236.unr = phi i64 [ %indvars.iv236.ph, %scalar.ph321.preheader ], [ %indvars.iv.next237.prol, %scalar.ph321.prol ]
  %i.er = sub nsw i64 %indvars.iv236.ph, %wide.trip.count239
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %._crit_edge.us.us, label %scalar.ph321

scalar.ph321:                                     ; preds = %scalar.ph321.prol.loopexit, %scalar.ph321
  %indvars.iv236 = phi i64 [ %indvars.iv.next237.3, %scalar.ph321 ], [ %indvars.iv236.unr, %scalar.ph321.prol.loopexit ] ; 6 uses
  %gep305 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv236
  %i.et = load float, ptr %gep305, align 4, !tbaa !71
  %gep307 = getelementptr [4 x i8], ptr %invariant.gep306, i64 %indvars.iv236
  store float %i.et, ptr %gep307, align 4, !tbaa !71
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %gep305.1 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv.next237
  %i.eu = load float, ptr %gep305.1, align 4, !tbaa !71
  %gep307.1 = getelementptr [4 x i8], ptr %invariant.gep306, i64 %indvars.iv.next237
  store float %i.eu, ptr %gep307.1, align 4, !tbaa !71
  %indvars.iv.next237.1 = add nuw nsw i64 %indvars.iv236, 2 ; 2 uses
  %gep305.2 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv.next237.1
  %i.ev = load float, ptr %gep305.2, align 4, !tbaa !71
  %gep307.2 = getelementptr [4 x i8], ptr %invariant.gep306, i64 %indvars.iv.next237.1
  store float %i.ev, ptr %gep307.2, align 4, !tbaa !71
  %indvars.iv.next237.2 = add nuw nsw i64 %indvars.iv236, 3 ; 2 uses
  %gep305.3 = getelementptr [4 x i8], ptr %invariant.gep304, i64 %indvars.iv.next237.2
  %i.ew = load float, ptr %gep305.3, align 4, !tbaa !71
  %gep307.3 = getelementptr [4 x i8], ptr %invariant.gep306, i64 %indvars.iv.next237.2
  store float %i.ew, ptr %gep307.3, align 4, !tbaa !71
  %indvars.iv.next237.3 = add nuw nsw i64 %indvars.iv236, 4 ; 2 uses
  %exitcond240.not.3 = icmp eq i64 %indvars.iv.next237.3, %wide.trip.count239
  br i1 %exitcond240.not.3, label %._crit_edge.us.us, label %scalar.ph321, !llvm.loop !105

._crit_edge.us.us:                                ; preds = %scalar.ph321.prol.loopexit, %scalar.ph321, %middle.block330
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count249
  br i1 %exitcond245.not, label %._crit_edge153.us.us, label %.lr.ph.us.us, !llvm.loop !106

._crit_edge153.us.us:                             ; preds = %._crit_edge.us.us
  %indvars.iv.next247 = add nuw nsw i64 %indvars.iv246, 1 ; 2 uses
  %exitcond250.not = icmp eq i64 %indvars.iv.next247, %wide.trip.count249
  br i1 %exitcond250.not, label %.preheader146.us.us, label %.preheader145.us.us, !llvm.loop !107

.preheader146.us.us:                              ; preds = %._crit_edge153.us.us, %bb.t
  %i.ex = add i32 %.0103188.us.us, %i.ck
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge177.split.us.us.us, %.preheader146.us.us
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %._crit_edge177.split.us.us.us ], [ 0, %.preheader146.us.us ] ; 3 uses
  %i.ey = trunc nuw nsw i64 %indvars.iv266 to i32 ; 2 uses
  %i.ez = srem i32 %i.ey, %i.bm
  %i.fa = sdiv i32 %i.ey, %i.bm
  %i.fb = sub nsw i32 %i.ez, %i.bk
  %i.fc = mul nsw i32 %i.fb, %i.cs
  %i.fd = add nsw i32 %i.fc, %i.ds
  br i1 %i.cr, label %.preheader.lr.ph.us.us, label %._crit_edge177.split.us.us.us

.preheader.lr.ph.us.us:                           ; preds = %bb.u
  %i.fe = sub nsw i32 %i.fa, %i.bk
  %i.ff = mul nsw i32 %i.fe, %i.cs
  %invariant.op179.reass.us.us = add i32 %i.ff, %invariant.op156.us.reass
  br i1 %i.ci, label %.preheader.us.us.us.us, label %._crit_edge177.split.us.us.us

.preheader.us.us.us.us:                           ; preds = %.preheader.lr.ph.us.us, %._crit_edge171.split.us.us.us.us.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %._crit_edge171.split.us.us.us.us.us ], [ 0, %.preheader.lr.ph.us.us ] ; 3 uses
  %.098175.us.us.us.us = phi float [ %.lcssa, %._crit_edge171.split.us.us.us.us.us ], [ 0.000000e+00, %.preheader.lr.ph.us.us ]
  %i.fg = mul nuw nsw i64 %indvars.iv261, %i.cu
  %i.fh = trunc nuw nsw i64 %indvars.iv261 to i32
  %.reass160.reass.us.us.us.us = add i32 %invariant.op179.reass.us.us, %i.fh
  %i.fi = mul nsw i32 %.reass160.reass.us.us.us.us, %i.s
  %invariant.op173.us.us.us.us = add i32 %i.fd, %i.fi
  br label %.lr.ph165.us.us.us.us.us

.lr.ph165.us.us.us.us.us:                         ; preds = %._crit_edge166.us.us.us.us.us, %.preheader.us.us.us.us
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %._crit_edge166.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 3 uses
  %.1168.us.us.us.us.us = phi float [ %.lcssa, %._crit_edge166.us.us.us.us.us ], [ %.098175.us.us.us.us, %.preheader.us.us.us.us ] ; 2 uses
  %i.fj = add nuw nsw i64 %indvars.iv256, %i.fg
  %i.fk = mul nuw nsw i64 %i.fj, %i.ct
  %i.fl = trunc nuw nsw i64 %indvars.iv256 to i32
  %.reass.reass174.us.us.us.us.us = add i32 %invariant.op173.us.us.us.us, %i.fl
  %i.fm = mul nsw i32 %.reass.reass174.us.us.us.us.us, %i.ab
  %i.fn = sext i32 %i.fm to i64
  %invariant.gep308 = getelementptr [4 x i8], ptr %.sroa.0141.0, i64 %i.fk ; 5 uses
  %invariant.gep310 = getelementptr [4 x i8], ptr %i.br, i64 %i.fn ; 5 uses
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph165.us.us.us.us.us.new

.lr.ph165.us.us.us.us.us.new:                     ; preds = %.lr.ph165.us.us.us.us.us, %.lr.ph165.us.us.us.us.us.new
  %indvars.iv251 = phi i64 [ %indvars.iv.next252.3, %.lr.ph165.us.us.us.us.us.new ], [ 0, %.lr.ph165.us.us.us.us.us ] ; 6 uses
  %.2162.us.us.us.us.us = phi float [ %i.fz, %.lr.ph165.us.us.us.us.us.new ], [ %.1168.us.us.us.us.us, %.lr.ph165.us.us.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph165.us.us.us.us.us.new ], [ 0, %.lr.ph165.us.us.us.us.us ]
  %gep309 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %indvars.iv251
  %i.fo = load float, ptr %gep309, align 4, !tbaa !71
  %gep311 = getelementptr [4 x i8], ptr %invariant.gep310, i64 %indvars.iv251
  %i.fp = load float, ptr %gep311, align 4, !tbaa !71
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.fp, float %.2162.us.us.us.us.us)
  %indvars.iv.next252 = or disjoint i64 %indvars.iv251, 1 ; 2 uses
  %gep309.1 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %indvars.iv.next252
  %i.fr = load float, ptr %gep309.1, align 4, !tbaa !71
  %gep311.1 = getelementptr [4 x i8], ptr %invariant.gep310, i64 %indvars.iv.next252
  %i.fs = load float, ptr %gep311.1, align 4, !tbaa !71
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fs, float %i.fq)
  %indvars.iv.next252.1 = or disjoint i64 %indvars.iv251, 2 ; 2 uses
  %gep309.2 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %indvars.iv.next252.1
  %i.fu = load float, ptr %gep309.2, align 4, !tbaa !71
  %gep311.2 = getelementptr [4 x i8], ptr %invariant.gep310, i64 %indvars.iv.next252.1
  %i.fv = load float, ptr %gep311.2, align 4, !tbaa !71
  %i.fw = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.fv, float %i.ft)
  %indvars.iv.next252.2 = or disjoint i64 %indvars.iv251, 3 ; 2 uses
  %gep309.3 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %indvars.iv.next252.2
  %i.fx = load float, ptr %gep309.3, align 4, !tbaa !71
  %gep311.3 = getelementptr [4 x i8], ptr %invariant.gep310, i64 %indvars.iv.next252.2
  %i.fy = load float, ptr %gep311.3, align 4, !tbaa !71
  %i.fz = tail call float @llvm.fmuladd.f32(float %i.fx, float %i.fy, float %i.fw) ; 3 uses
  %indvars.iv.next252.3 = add nuw nsw i64 %indvars.iv251, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge166.us.us.us.us.us.unr-lcssa, label %.lr.ph165.us.us.us.us.us.new, !llvm.loop !108

._crit_edge166.us.us.us.us.us.unr-lcssa:          ; preds = %.lr.ph165.us.us.us.us.us.new
  br i1 %lcmp.mod338.not, label %._crit_edge166.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge166.us.us.us.us.us.unr-lcssa, %.lr.ph165.us.us.us.us.us
  %indvars.iv251.epil.init = phi i64 [ 0, %.lr.ph165.us.us.us.us.us ], [ %indvars.iv.next252.3, %._crit_edge166.us.us.us.us.us.unr-lcssa ]
  %.2162.us.us.us.us.us.epil.init = phi float [ %.1168.us.us.us.us.us, %.lr.ph165.us.us.us.us.us ], [ %i.fz, %._crit_edge166.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod340)
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %.epil.preheader
  %indvars.iv251.epil = phi i64 [ %indvars.iv.next252.epil, %bb.v ], [ %indvars.iv251.epil.init, %.epil.preheader ] ; 3 uses
  %.2162.us.us.us.us.us.epil = phi float [ %i.gc, %bb.v ], [ %.2162.us.us.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.v ], [ 0, %.epil.preheader ]
  %gep309.epil = getelementptr [4 x i8], ptr %invariant.gep308, i64 %indvars.iv251.epil
  %i.ga = load float, ptr %gep309.epil, align 4, !tbaa !71
  %gep311.epil = getelementptr [4 x i8], ptr %invariant.gep310, i64 %indvars.iv251.epil
  %i.gb = load float, ptr %gep311.epil, align 4, !tbaa !71
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.gb, float %.2162.us.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next252.epil = add nuw nsw i64 %indvars.iv251.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter337
  br i1 %epil.iter.cmp.not, label %._crit_edge166.us.us.us.us.us, label %bb.v, !llvm.loop !109

._crit_edge166.us.us.us.us.us:                    ; preds = %bb.v, %._crit_edge166.us.us.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.fz, %._crit_edge166.us.us.us.us.us.unr-lcssa ], [ %i.gc, %bb.v ] ; 3 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count264
  br i1 %exitcond260.not, label %._crit_edge171.split.us.us.us.us.us, label %.lr.ph165.us.us.us.us.us, !llvm.loop !110

._crit_edge171.split.us.us.us.us.us:              ; preds = %._crit_edge166.us.us.us.us.us
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %._crit_edge177.split.us.us.us, label %.preheader.us.us.us.us, !llvm.loop !111

._crit_edge177.split.us.us.us:                    ; preds = %._crit_edge171.split.us.us.us.us.us, %.preheader.lr.ph.us.us, %bb.u
  %.098.lcssa.us.us = phi float [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %.preheader.lr.ph.us.us ], [ %.lcssa, %._crit_edge171.split.us.us.us.us.us ]
  %i.gd = mul nuw nsw i64 %indvars.iv266, %i.cv
  %i.ge = add nuw nsw i64 %i.gd, %indvars.iv272
  %i.gf = fdiv float %.098.lcssa.us.us, %i.cj
  %i.gg = trunc i64 %i.ge to i32
  %i.gh = mul i32 %i.bd, %i.gg
  %i.gi = add i32 %i.ex, %i.gh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.gj
  store float %i.gf, ptr %i.gk, align 4, !tbaa !71
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge186.us.us, label %bb.u, !llvm.loop !112

._crit_edge186.us.us:                             ; preds = %._crit_edge177.split.us.us.us
  %i.gl = add nuw nsw i32 %.0103188.us.us, 1      ; 2 uses
  %exitcond271.not = icmp eq i32 %i.gl, %i.bd
  %indvar.next319 = add i64 %indvar318, 1
  br i1 %exitcond271.not, label %._crit_edge190.split.us.us, label %bb.t, !llvm.loop !113

._crit_edge190.split.us.us:                       ; preds = %._crit_edge186.us.us
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge198.split, label %.preheader147.us, !llvm.loop !114

.preheader147.lr.ph.split.split:                  ; preds = %.preheader147.lr.ph.split
  %invariant.op = add i32 %i.co, %i.ch            ; 2 uses
  %brmerge206 = select i1 %i.cq, i1 true, i1 %i.cg
  br i1 %brmerge206, label %._crit_edge198.split, label %.preheader147.preheader

.preheader147.preheader:                          ; preds = %.preheader147.lr.ph.split.split
  %i.gm = zext nneg i32 %i.ab to i64
  %i.gn = zext nneg i32 %i.cp to i64
  %wide.trip.count225 = zext nneg i32 %i.cp to i64 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 8 uses
  %i.go = sub i64 %.sroa.0141.0313, %i.bp
  %i.gp = mul nuw nsw i64 %wide.trip.count225, %wide.trip.count
  %i.gq = shl nuw i64 %i.gp, 2
  %i.gr = shl nuw nsw i64 %wide.trip.count, 2
  %i.gs = mul i32 %i.s, %invariant.op
  %i.gt = add i32 %i.co, %i.gs
  %i.gu = mul i32 %i.ab, %i.gt
  %i.gv = zext i32 %i.gu to i64
  %i.gw = mul i32 %i.cn, %i.s
  %i.gx = mul i32 %i.gw, %i.ab
  %i.gy = zext i32 %i.gx to i64
  %i.gz = mul i32 %i.cn, %i.ab
  %i.ha = zext i32 %i.gz to i64
  %18 = mul i32 %i.s, %i.ab
  %i.hb = zext i32 %18 to i64
  %min.iters.check = icmp ult i32 %i.ab, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.preheader, %._crit_edge190.split
  %indvar = phi i64 [ 0, %.preheader147.preheader ], [ %indvar.next, %._crit_edge190.split ] ; 2 uses
  %.0104196 = phi i32 [ 0, %.preheader147.preheader ], [ %i.hh, %._crit_edge190.split ] ; 2 uses
  %i.hc = mul i64 %indvar, %i.gy
  %i.hd = add i64 %i.hc, %i.gv
  %i.he = mul nsw i32 %i.cn, %.0104196
  %invariant.op156.reass = add i32 %i.he, %invariant.op
  br label %.preheader145.lr.ph

._crit_edge198.split:                             ; preds = %._crit_edge190.split.us.us, %.preheader147.lr.ph.split.split, %.preheader147.lr.ph, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0141.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %._crit_edge198.split.thread

._crit_edge198.split.thread:                      ; preds = %._crit_edge190.split, %._crit_edge198.split
  %i.hf = ptrtoint ptr %.sroa.0141.0 to i64
  %i.hg = sub i64 %.sroa.10.0, %i.hf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0141.0, i64 noundef %i.hg) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge198.split, %._crit_edge198.split.thread
  ret void

._crit_edge190.split:                             ; preds = %..preheader146_crit_edge
  %i.hh = add nuw nsw i32 %.0104196, 1            ; 2 uses
  %exitcond228.not = icmp eq i32 %i.hh, %i.au
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond228.not, label %._crit_edge198.split.thread, label %.preheader147, !llvm.loop !114

.preheader145.lr.ph:                              ; preds = %.preheader147, %..preheader146_crit_edge
  %indvar314 = phi i64 [ 0, %.preheader147 ], [ %indvar.next315, %..preheader146_crit_edge ] ; 2 uses
  %.0103188 = phi i32 [ 0, %.preheader147 ], [ %i.hm, %..preheader146_crit_edge ] ; 2 uses
  %i.hi = mul i64 %indvar314, %i.ha
  %i.hj = add i64 %i.hd, %i.hi
  %i.hk = mul nsw i32 %i.cn, %.0103188
  %i.hl = add nsw i32 %i.hk, %i.co
  br label %.preheader145

..preheader146_crit_edge:                         ; preds = %._crit_edge153
  %i.hm = add nuw nsw i32 %.0103188, 1            ; 2 uses
  %exitcond227.not = icmp eq i32 %i.hm, %i.bd
  %indvar.next315 = add i64 %indvar314, 1
  br i1 %exitcond227.not, label %._crit_edge190.split, label %.preheader145.lr.ph, !llvm.loop !113

.preheader145:                                    ; preds = %.preheader145.lr.ph, %._crit_edge153
  %indvars.iv222 = phi i64 [ 0, %.preheader145.lr.ph ], [ %indvars.iv.next223, %._crit_edge153 ] ; 5 uses
  %i.hn = mul i64 %i.gq, %indvars.iv222
  %i.ho = add i64 %i.go, %i.hn
  %i.hp = mul i64 %indvars.iv222, %i.hb
  %i.hq = add i64 %i.hj, %i.hp
  %i.hr = mul nuw nsw i64 %indvars.iv222, %i.gn
  %i.hs = trunc nuw nsw i64 %indvars.iv222 to i32
  %.reass.reass = add i32 %invariant.op156.reass, %i.hs
  %i.ht = mul nsw i32 %.reass.reass, %i.s
  %invariant.op154 = add i32 %i.hl, %i.ht
  br label %.lr.ph

._crit_edge153:                                   ; preds = %._crit_edge
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next223, %wide.trip.count225
  br i1 %exitcond226.not, label %..preheader146_crit_edge, label %.preheader145, !llvm.loop !107

.lr.ph:                                           ; preds = %.preheader145, %._crit_edge
  %indvars.iv217 = phi i64 [ 0, %.preheader145 ], [ %indvars.iv.next218, %._crit_edge ] ; 5 uses
  %i.hu = add nuw nsw i64 %indvars.iv217, %i.hr
  %i.hv = mul nuw nsw i64 %i.hu, %i.gm
  %i.hw = trunc nuw nsw i64 %indvars.iv217 to i32
  %.reass149.reass = add i32 %invariant.op154, %i.hw
  %i.hx = mul nsw i32 %.reass149.reass, %i.ab
  %i.hy = sext i32 %i.hx to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bo, i64 %i.hy ; 6 uses
  %invariant.gep302 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0141.0, i64 %i.hv ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.hz = mul i64 %i.gr, %indvars.iv217
  %i.ia = add i64 %i.ho, %i.hz
  %i.ib = mul i64 %indvars.iv217, %wide.trip.count
  %i.ic = add i64 %i.hq, %i.ib
  %sext = shl i64 %i.ic, 32
  %i.id = ashr exact i64 %sext, 30
  %i.ie = sub i64 %i.id, %i.ia
  %diff.check = icmp ugt i64 %i.ie, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.if = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %wide.load = load <4 x float>, ptr %i.if, align 4, !tbaa !71
  %wide.load316 = load <4 x float>, ptr %i.ig, align 4, !tbaa !71
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %index ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <4 x float> %wide.load, ptr %i.ih, align 4, !tbaa !71
  store <4 x float> %wide.load316, ptr %i.ii, align 4, !tbaa !71
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ij = icmp eq i64 %index.next, %n.vec
  br i1 %i.ij, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ik = load float, ptr %gep.prol, align 4, !tbaa !71
  %gep303.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.prol
  store float %i.ik, ptr %gep303.prol, align 4, !tbaa !71
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !116

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.il = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.im = icmp ugt i64 %i.il, -4
  br i1 %i.im, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next218, %wide.trip.count225
  br i1 %exitcond221.not, label %._crit_edge153, label %.lr.ph, !llvm.loop !106

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.in = load float, ptr %gep, align 4, !tbaa !71
  %gep303 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv
  store float %i.in, ptr %gep303, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.io = load float, ptr %gep.1, align 4, !tbaa !71
  %gep303.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next
  store float %i.io, ptr %gep303.1, align 4, !tbaa !71
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ip = load float, ptr %gep.2, align 4, !tbaa !71
  %gep303.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next.1
  store float %i.ip, ptr %gep303.2, align 4, !tbaa !71
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.iq = load float, ptr %gep.3, align 4, !tbaa !71
  %gep303.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep302, i64 %indvars.iv.next.2
  store float %i.iq, ptr %gep303.3, align 4, !tbaa !71
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !117
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #21
  unreachable
}

declare noundef i64 @_ZNK2cv3Mat5totalEii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

declare void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #4

declare void @_ZN2cv8MatShapeC1Ev(ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #4

declare void @_ZN2cv8MatShape9push_backEi(ptr noundef nonnull align 4 dereferenceable(52), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.23", align 16   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
end_hunk_0
