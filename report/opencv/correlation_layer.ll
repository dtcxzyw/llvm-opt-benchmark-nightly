Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/correlation_layer?download=true
inline.NumInlined: 373
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2cv3dnn20CorrelationLayerImpl20blobRearrangeKernel2ERKNS_3MatERS2_:bb.a
  %i.az = mul nuw nsw i64 %i.ay, %i.ar
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.az ; 3 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv67 to i32  ; 3 uses
  br i1 %i.at, label %.epil.preheader, label %.preheader.new

._crit_edge60:                                    ; preds = %._crit_edge
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %._crit_edge62.split, label %.preheader57, !llvm.loop !100

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.bb = load float, ptr %gep.epil, align 4, !tbaa !71
  %i.bc = trunc nuw nsw i64 %indvars.iv.epil.init to i32 ; 2 uses
  %i.bd = srem i32 %i.bc, %i.ad
  %i.be = sdiv i32 %i.bc, %i.ad
  %reass.add.epil = add i32 %i.ax, %i.be
  %reass.mul.epil = mul i32 %reass.add.epil, %i.ai
  %i.bf = add i32 %i.bd, %i.ag
  %i.bg = add i32 %i.bf, %reass.mul.epil
  %i.bh = mul nsw i32 %i.bg, %i.m
  %i.bi = add nsw i32 %i.bh, %i.ba
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bj
  store float %i.bb, ptr %i.bk, align 4, !tbaa !71
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %i.as
  br i1 %exitcond71.not, label %._crit_edge60, label %.preheader, !llvm.loop !101

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bl = load float, ptr %gep, align 4, !tbaa !71
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bn = srem i32 %i.bm, %i.ad
  %i.bo = sdiv i32 %i.bm, %i.ad
  %reass.add = add i32 %i.ax, %i.bo
  %reass.mul = mul i32 %reass.add, %i.ai
  %i.bp = add i32 %i.bn, %i.ag
  %i.bq = add i32 %i.bp, %reass.mul
  %i.br = mul nsw i32 %i.bq, %i.m
  %i.bs = add nsw i32 %i.br, %i.ba
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.bt
  store float %i.bl, ptr %i.bu, align 4, !tbaa !71
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bv = load float, ptr %gep.1, align 4, !tbaa !71
  %i.bw = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  %i.bx = srem i32 %i.bw, %i.ad
  %i.by = sdiv i32 %i.bw, %i.ad
  %reass.add.1 = add i32 %i.ax, %i.by
  %reass.mul.1 = mul i32 %reass.add.1, %i.ai
  %i.bz = add i32 %i.bx, %i.ag
  %i.ca = add i32 %i.bz, %reass.mul.1
  %i.cb = mul nsw i32 %i.ca, %i.m
  %i.cc = add nsw i32 %i.cb, %i.ba
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.cd
  store float %i.bv, ptr %i.ce, align 4, !tbaa !71
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new, !llvm.loop !102
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59   ; 4 uses
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
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !59
  %.fr = freeze i32 %i.ab                         ; 17 uses
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
  %i.am = load i32, ptr %i.al, align 8, !tbaa !59 ; 7 uses
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
  %i.au = load i32, ptr %i.at, align 4, !tbaa !59 ; 6 uses
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
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !59 ; 16 uses
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
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !69 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !69 ; 10 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !54 ; 2 uses
  %i.bv = mul i32 %i.bu, %.fr
  %i.bw = mul i32 %i.bv, %i.bu                    ; 4 uses
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  %i.by = icmp slt i32 %i.bw, 0
  br i1 %i.by, label %.noexc, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN2cv8MatShapeixEm.exit139
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.22) #20
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN2cv8MatShapeixEm.exit139
  %.not.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit, label %.noexc140

.noexc140:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bz = shl nuw nsw i64 %i.bx, 2                ; 2 uses
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #17 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ca, i8 0, i64 %i.bz, i1 false), !tbaa !71
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bx
  %i.cc = ptrtoint ptr %i.cb to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit:            ; preds = %.noexc140, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cc, %.noexc140 ]
  %.sroa.0141.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ca, %.noexc140 ] ; 9 uses
  %i.cd = icmp sgt i32 %i.au, 0
  br i1 %i.cd, label %.preheader147.lr.ph, label %._crit_edge201.split

.preheader147.lr.ph:                              ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %i.ce = icmp sgt i32 %i.bd, 0
  %i.cf = icmp slt i32 %.fr, 1                    ; 2 uses
  %i.cg = mul nsw i32 %i.k, %4                    ; 3 uses
  %i.ch = icmp sgt i32 %.fr, 0
  %i.ci = uitofp nneg i32 %i.bw to float          ; 2 uses
  %i.cj = mul nsw i32 %4, %i.bf                   ; 4 uses
  %i.ck = fdiv float 0.000000e+00, %i.ci          ; 9 uses
  br i1 %i.ce, label %.preheader147.lr.ph.split, label %._crit_edge201.split

.preheader147.lr.ph.split:                        ; preds = %.preheader147.lr.ph
  %i.cl = icmp sgt i32 %i.am, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !55 ; 6 uses
  %i.co = load i32, ptr %i.bg, align 4, !tbaa !53 ; 6 uses
  %i.cp = load i32, ptr %i.bt, align 8, !tbaa !54
  %.fr379 = freeze i32 %i.cp                      ; 10 uses
  %17 = icmp slt i32 %.fr379, 1                   ; 2 uses
  br i1 %i.cl, label %.preheader147.lr.ph.split.split.us, label %.preheader147.lr.ph.split.split

.preheader147.lr.ph.split.split.us:               ; preds = %.preheader147.lr.ph.split
  %i.cq = icmp sgt i32 %.fr379, 0
  %i.cr = load i32, ptr %i.bi, align 4, !tbaa !56 ; 2 uses
  %wide.trip.count350 = zext nneg i32 %i.au to i64 ; 10 uses
  br i1 %i.cq, label %.preheader147.lr.ph.split.split.us.split.us, label %.preheader147.lr.ph.split.split.us.split

.preheader147.lr.ph.split.split.us.split.us:      ; preds = %.preheader147.lr.ph.split.split.us
  %brmerge = or i1 %17, %i.cf                     ; 2 uses
  %wide.trip.count324 = zext nneg i32 %.fr379 to i64 ; 5 uses
  %wide.trip.count314 = zext i32 %.fr to i64      ; 5 uses
  %wide.trip.count344 = zext nneg i32 %i.am to i64 ; 6 uses
  br i1 %i.ch, label %.preheader147.us.us.us.preheader, label %.preheader147.lr.ph.split.split.us.split.us.split

.preheader147.us.us.us.preheader:                 ; preds = %.preheader147.lr.ph.split.split.us.split.us
  %i.cs = zext nneg i32 %.fr to i64               ; 2 uses
  %i.ct = zext nneg i32 %.fr379 to i64            ; 2 uses
  %i.cu = zext nneg i32 %i.au to i64
  %invariant.op393 = add i32 %i.co, %i.cg
  %wide.trip.count339 = zext nneg i32 %.fr379 to i64 ; 2 uses
  %min.iters.check410 = icmp ult i32 %.fr, 8
  %n.vec412 = and i64 %wide.trip.count314, 2147483640 ; 3 uses
  %cmp.n419 = icmp eq i64 %n.vec412, %wide.trip.count314
  %xtraiter435 = and i64 %wide.trip.count314, 3   ; 3 uses
  %i.cv = icmp ult i32 %.fr, 4
  %unroll_iter439.a = and i64 %wide.trip.count314, 2147483644
  %lcmp.mod436.not = icmp eq i64 %xtraiter435, 0
  %lcmp.mod438.a = icmp ne i64 %xtraiter435, 0
  br label %.preheader147.us.us.us

.preheader147.us.us.us:                           ; preds = %.preheader147.us.us.us.preheader, %._crit_edge194.split.us.us.split.us.us.split.us.us
  %indvars.iv347 = phi i64 [ 0, %.preheader147.us.us.us.preheader ], [ %indvars.iv.next348, %._crit_edge194.split.us.us.split.us.us.split.us.us ] ; 3 uses
  %i.cw = trunc i64 %indvars.iv347 to i32
  %i.cx = mul i32 %i.cn, %i.cw
  %invariant.op156.us.us.us.reass = add i32 %i.cx, %invariant.op393 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge186.split.us.us.us.us.split.us.us.us.us, %.preheader147.us.us.us
  %.0103192.us.us.us.us.us.us = phi i32 [ 0, %.preheader147.us.us.us ], [ %i.fc, %._crit_edge186.split.us.us.us.us.split.us.us.us.us ] ; 3 uses
  %i.cy = mul nsw i32 %i.cn, %.0103192.us.us.us.us.us.us
  %i.cz = add nsw i32 %i.cy, %i.co                ; 2 uses
  br i1 %brmerge, label %.preheader146.us.us.us.us.us.us, label %.preheader145.us.us.us.us.us.us

.preheader145.us.us.us.us.us.us:                  ; preds = %bb.t, %._crit_edge153.us.us.us.us.us.us
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %._crit_edge153.us.us.us.us.us.us ], [ 0, %bb.t ] ; 3 uses
  %i.da = mul nuw nsw i64 %indvars.iv321, %i.ct
  %i.db = trunc nuw nsw i64 %indvars.iv321 to i32
  %.reass.reass.us.us.us.us.us.us = add i32 %invariant.op156.us.us.us.reass, %i.db
  %i.dc = mul nsw i32 %.reass.reass.us.us.us.us.us.us, %i.s
  %invariant.op154.us.us.us.us.us.us = add i32 %i.cz, %i.dc
  br label %.lr.ph.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us:                         ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader145.us.us.us.us.us.us
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %._crit_edge.us.us.us.us.us.us ], [ 0, %.preheader145.us.us.us.us.us.us ] ; 3 uses
  %i.dd = add nuw nsw i64 %indvars.iv316, %i.da
  %i.de = mul nuw nsw i64 %i.dd, %i.cs
  %i.df = trunc nuw nsw i64 %indvars.iv316 to i32
  %.reass149.reass.us.us.us.us.us.us = add i32 %invariant.op154.us.us.us.us.us.us, %i.df
  %i.dg = mul nsw i32 %.reass149.reass.us.us.us.us.us.us, %.fr
  %i.dh = sext i32 %i.dg to i64
  %invariant.gep385 = getelementptr [4 x i8], ptr %i.bo, i64 %i.dh ; 2 uses
  %invariant.gep387 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0141.0, i64 %i.de ; 2 uses
  br i1 %min.iters.check410, label %scalar.ph409.preheader, label %vector.body413

vector.body413:                                   ; preds = %.lr.ph.us.us.us.us.us.us, %vector.body413
  %index414 = phi i64 [ %index.next417, %vector.body413 ], [ 0, %.lr.ph.us.us.us.us.us.us ] ; 3 uses
  %i.di = getelementptr [4 x i8], ptr %invariant.gep385, i64 %index414 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  %wide.load415 = load <4 x float>, ptr %i.di, align 4, !tbaa !71
  %wide.load416 = load <4 x float>, ptr %i.dj, align 4, !tbaa !71
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %index414 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store <4 x float> %wide.load415, ptr %i.dk, align 4, !tbaa !71
  store <4 x float> %wide.load416, ptr %i.dl, align 4, !tbaa !71
  %index.next417 = add nuw i64 %index414, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next417, %n.vec412
  br i1 %i.dm, label %middle.block418, label %vector.body413, !llvm.loop !103

middle.block418:                                  ; preds = %vector.body413
  br i1 %cmp.n419, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph409.preheader

scalar.ph409.preheader:                           ; preds = %.lr.ph.us.us.us.us.us.us, %middle.block418
  %indvars.iv311.ph = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us ], [ %n.vec412, %middle.block418 ]
  br label %scalar.ph409

scalar.ph409:                                     ; preds = %scalar.ph409.preheader, %scalar.ph409
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %scalar.ph409 ], [ %indvars.iv311.ph, %scalar.ph409.preheader ] ; 3 uses
  %gep386 = getelementptr [4 x i8], ptr %invariant.gep385, i64 %indvars.iv311
  %i.dn = load float, ptr %gep386, align 4, !tbaa !71
  %gep388 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep387, i64 %indvars.iv311
  store float %i.dn, ptr %gep388, align 4, !tbaa !71
  %indvars.iv.next312 = add nuw nsw i64 %indvars.iv311, 1 ; 2 uses
  %exitcond315.not = icmp eq i64 %indvars.iv.next312, %wide.trip.count314
  br i1 %exitcond315.not, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph409, !llvm.loop !104

._crit_edge.us.us.us.us.us.us:                    ; preds = %scalar.ph409, %middle.block418
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count324
  br i1 %exitcond320.not, label %._crit_edge153.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !105

._crit_edge153.us.us.us.us.us.us:                 ; preds = %._crit_edge.us.us.us.us.us.us
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count324
  br i1 %exitcond325.not, label %.preheader146.us.us.us.us.us.us, label %.preheader145.us.us.us.us.us.us, !llvm.loop !106

.preheader146.us.us.us.us.us.us:                  ; preds = %._crit_edge153.us.us.us.us.us.us, %bb.t
  %i.do = add i32 %.0103192.us.us.us.us.us.us, %i.cj
  br label %.preheader.lr.ph.us.us.us.us.us.us.us.us

.preheader.lr.ph.us.us.us.us.us.us.us.us:         ; preds = %._crit_edge177.split.us.split.us.us.us.us.us.us.us.us.us, %.preheader146.us.us.us.us.us.us
  %indvars.iv341 = phi i64 [ %indvars.iv.next342, %._crit_edge177.split.us.split.us.us.us.us.us.us.us.us.us ], [ 0, %.preheader146.us.us.us.us.us.us ] ; 3 uses
  %i.dp = trunc nuw nsw i64 %indvars.iv341 to i32 ; 2 uses
  %i.dq = srem i32 %i.dp, %i.bm
  %i.dr = sub nsw i32 %i.dq, %i.bk
  %i.ds = mul nsw i32 %i.dr, %i.cr
  %i.dt = sdiv i32 %i.dp, %i.bm
  %i.du = sub nsw i32 %i.dt, %i.bk
  %i.dv = mul nsw i32 %i.du, %i.cr
  %i.dw = add nsw i32 %i.ds, %i.cz
  %invariant.op179.reass.us.us.us.us.us.us.us.us = add i32 %i.dv, %invariant.op156.us.us.us.reass
  br label %.preheader.us.us.us.us.us.us.us.us.us.us

.preheader.us.us.us.us.us.us.us.us.us.us:         ; preds = %._crit_edge171.split.us.us.us.us.us.us.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us.us.us.us
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %._crit_edge171.split.us.us.us.us.us.us.us.us.us.us.us ], [ 0, %.preheader.lr.ph.us.us.us.us.us.us.us.us ] ; 3 uses
  %.098175.us.us.us.us.us.us.us.us.us.us = phi float [ %.lcssa, %._crit_edge171.split.us.us.us.us.us.us.us.us.us.us.us ], [ 0.000000e+00, %.preheader.lr.ph.us.us.us.us.us.us.us.us ]
  %i.dx = mul nuw nsw i64 %indvars.iv336, %i.ct
  %i.dy = trunc nuw nsw i64 %indvars.iv336 to i32
  %.reass160.reass.us.us.us.us.us.us.us.us.us.us = add i32 %invariant.op179.reass.us.us.us.us.us.us.us.us, %i.dy
  %i.dz = mul nsw i32 %.reass160.reass.us.us.us.us.us.us.us.us.us.us, %i.s
  %invariant.op173.us.us.us.us.us.us.us.us.us.us = add i32 %i.dw, %i.dz
  br label %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us

.lr.ph165.us.us.us.us.us.us.us.us.us.us.us:       ; preds = %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us
  %indvars.iv331 = phi i64 [ %indvars.iv.next332, %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us.us.us.us.us ] ; 3 uses
  %.1168.us.us.us.us.us.us.us.us.us.us.us = phi float [ %.lcssa, %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us ], [ %.098175.us.us.us.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us.us.us.us ] ; 2 uses
  %i.ea = add nuw nsw i64 %indvars.iv331, %i.dx
  %i.eb = mul nuw nsw i64 %i.ea, %i.cs
  %i.ec = trunc nuw nsw i64 %indvars.iv331 to i32
  %.reass.reass174.us.us.us.us.us.us.us.us.us.us.us = add i32 %invariant.op173.us.us.us.us.us.us.us.us.us.us, %i.ec
  %i.ed = mul nsw i32 %.reass.reass174.us.us.us.us.us.us.us.us.us.us.us, %.fr
  %i.ee = sext i32 %i.ed to i64
  %invariant.gep389 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0141.0, i64 %i.eb ; 5 uses
  %invariant.gep391 = getelementptr [4 x i8], ptr %i.bq, i64 %i.ee ; 5 uses
  br i1 %i.cv, label %.epil.preheader434, label %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new

.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new:   ; preds = %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new
  %indvars.iv326 = phi i64 [ %indvars.iv.next327.3, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new ], [ 0, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us ] ; 6 uses
  %.2162.us.us.us.us.us.us.us.us.us.us.us = phi float [ %i.eq, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new ], [ %.1168.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us ]
  %niter440.a = phi i64 [ %niter440.next.3, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new ], [ 0, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us ]
  %gep390 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv326
  %i.ef = load float, ptr %gep390, align 4, !tbaa !71
  %gep392 = getelementptr [4 x i8], ptr %invariant.gep391, i64 %indvars.iv326
  %i.eg = load float, ptr %gep392, align 4, !tbaa !71
  %i.eh = tail call float @llvm.fmuladd.f32(float %i.ef, float %i.eg, float %.2162.us.us.us.us.us.us.us.us.us.us.us)
  %indvars.iv.next327 = or disjoint i64 %indvars.iv326, 1 ; 2 uses
  %gep390.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv.next327
  %i.ei = load float, ptr %gep390.1, align 4, !tbaa !71
  %gep392.1 = getelementptr [4 x i8], ptr %invariant.gep391, i64 %indvars.iv.next327
  %i.ej = load float, ptr %gep392.1, align 4, !tbaa !71
  %i.ek = tail call float @llvm.fmuladd.f32(float %i.ei, float %i.ej, float %i.eh)
  %indvars.iv.next327.1 = or disjoint i64 %indvars.iv326, 2 ; 2 uses
  %gep390.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv.next327.1
  %i.el = load float, ptr %gep390.2, align 4, !tbaa !71
  %gep392.2 = getelementptr [4 x i8], ptr %invariant.gep391, i64 %indvars.iv.next327.1
  %i.em = load float, ptr %gep392.2, align 4, !tbaa !71
  %i.en = tail call float @llvm.fmuladd.f32(float %i.el, float %i.em, float %i.ek)
  %indvars.iv.next327.2 = or disjoint i64 %indvars.iv326, 3 ; 2 uses
  %gep390.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv.next327.2
  %i.eo = load float, ptr %gep390.3, align 4, !tbaa !71
  %gep392.3 = getelementptr [4 x i8], ptr %invariant.gep391, i64 %indvars.iv.next327.2
  %i.ep = load float, ptr %gep392.3, align 4, !tbaa !71
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.ep, float %i.en) ; 3 uses
  %indvars.iv.next327.3 = add nuw nsw i64 %indvars.iv326, 4 ; 2 uses
  %niter440.next.3 = add i64 %niter440.a, 4       ; 2 uses
  %niter440.ncmp.3 = icmp eq i64 %niter440.next.3, %unroll_iter439.a
  br i1 %niter440.ncmp.3, label %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, label %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new, !llvm.loop !107

._crit_edge166.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa: ; preds = %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us.new
  br i1 %lcmp.mod436.not, label %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us, label %.epil.preheader434

.epil.preheader434:                               ; preds = %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us
  %indvars.iv326.epil.init = phi i64 [ 0, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us ], [ %indvars.iv.next327.3, %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  %.2162.us.us.us.us.us.us.us.us.us.us.us.epil.init = phi float [ %.1168.us.us.us.us.us.us.us.us.us.us.us, %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us ], [ %i.eq, %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod438.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.epil.preheader434
  %indvars.iv326.epil = phi i64 [ %indvars.iv.next327.epil, %bb.u ], [ %indvars.iv326.epil.init, %.epil.preheader434 ] ; 3 uses
  %.2162.us.us.us.us.us.us.us.us.us.us.us.epil = phi float [ %i.et, %bb.u ], [ %.2162.us.us.us.us.us.us.us.us.us.us.us.epil.init, %.epil.preheader434 ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.u ], [ 0, %.epil.preheader434 ]
  %gep390.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep389, i64 %indvars.iv326.epil
  %i.er = load float, ptr %gep390.epil, align 4, !tbaa !71
  %gep392.epil = getelementptr [4 x i8], ptr %invariant.gep391, i64 %indvars.iv326.epil
  %i.es = load float, ptr %gep392.epil, align 4, !tbaa !71
  %i.et = tail call float @llvm.fmuladd.f32(float %i.er, float %i.es, float %.2162.us.us.us.us.us.us.us.us.us.us.us.epil) ; 2 uses
  %indvars.iv.next327.epil = add nuw nsw i64 %indvars.iv326.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter435
  br i1 %epil.iter.cmp.not, label %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us, label %bb.u, !llvm.loop !108

._crit_edge166.us.us.us.us.us.us.us.us.us.us.us:  ; preds = %bb.u, %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.eq, %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us.unr-lcssa ], [ %i.et, %bb.u ] ; 3 uses
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %exitcond335.not = icmp eq i64 %indvars.iv.next332, %wide.trip.count339
  br i1 %exitcond335.not, label %._crit_edge171.split.us.us.us.us.us.us.us.us.us.us.us, label %.lr.ph165.us.us.us.us.us.us.us.us.us.us.us, !llvm.loop !109

._crit_edge171.split.us.us.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge166.us.us.us.us.us.us.us.us.us.us.us
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
  %exitcond340.not = icmp eq i64 %indvars.iv.next337, %wide.trip.count339
  br i1 %exitcond340.not, label %._crit_edge177.split.us.split.us.us.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us.us.us.us, !llvm.loop !110

._crit_edge177.split.us.split.us.us.us.us.us.us.us.us.us: ; preds = %._crit_edge171.split.us.us.us.us.us.us.us.us.us.us.us
  %i.eu = mul nuw nsw i64 %indvars.iv341, %i.cu
  %i.ev = add nuw nsw i64 %i.eu, %indvars.iv347
  %i.ew = fdiv float %.lcssa, %i.ci
  %i.ex = trunc i64 %i.ev to i32
  %i.ey = mul i32 %i.bd, %i.ex
  %i.ez = add i32 %i.do, %i.ey
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.fa
  store float %i.ew, ptr %i.fb, align 4, !tbaa !71
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge186.split.us.us.us.us.split.us.us.us.us, label %.preheader.lr.ph.us.us.us.us.us.us.us.us, !llvm.loop !111

._crit_edge186.split.us.us.us.us.split.us.us.us.us: ; preds = %._crit_edge177.split.us.split.us.us.us.us.us.us.us.us.us
  %i.fc = add nuw nsw i32 %.0103192.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond346.not = icmp eq i32 %i.fc, %i.bd
  br i1 %exitcond346.not, label %._crit_edge194.split.us.us.split.us.us.split.us.us, label %bb.t, !llvm.loop !112

._crit_edge194.split.us.us.split.us.us.split.us.us: ; preds = %._crit_edge186.split.us.us.us.us.split.us.us.us.us
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  br i1 %exitcond351.not, label %._crit_edge201.split.thread, label %.preheader147.us.us.us, !llvm.loop !113

.preheader147.lr.ph.split.split.us.split.us.split: ; preds = %.preheader147.lr.ph.split.split.us.split.us
  %invariant.op228 = add i32 %i.co, %i.cg
  %i.fd = sext i32 %.fr to i64                    ; 3 uses
  %i.fe = zext nneg i32 %.fr379 to i64
  %wide.trip.count302 = zext nneg i32 %i.au to i64
  %18 = add nsw i64 %wide.trip.count344, -1       ; 2 uses
  %xtraiter424 = and i64 %wide.trip.count324, 1
  %i.ff = icmp eq i32 %.fr379, 1
  %unroll_iter427 = and i64 %wide.trip.count324, 2147483646
  %lcmp.mod432.not = icmp eq i64 %xtraiter424, 0
  %lcmp.mod433 = trunc i32 %.fr379 to i1
  %xtraiter436 = and i64 %wide.trip.count344, 1
  %19 = icmp eq i64 %18, 0
  %unroll_iter439 = and i64 %wide.trip.count344, 2147483646
  %lcmp.mod425.not = icmp eq i64 %xtraiter436, 0
  %lcmp.mod426 = trunc i32 %i.am to i1
  %xtraiter429 = and i64 %wide.trip.count344, 1
  %i.fg = icmp eq i64 %18, 0
  %unroll_iter432 = and i64 %wide.trip.count344, 2147483646
  %lcmp.mod430.not = icmp eq i64 %xtraiter429, 0
  %lcmp.mod431 = trunc i32 %i.am to i1
  br label %.preheader147.us.us

.preheader147.us.us:                              ; preds = %._crit_edge194.split.us.us.split.us.us.split, %.preheader147.lr.ph.split.split.us.split.us.split
  %indvars.iv300 = phi i64 [ %indvars.iv.next300, %._crit_edge194.split.us.us.split.us.us.split ], [ 0, %.preheader147.lr.ph.split.split.us.split.us.split ] ; 8 uses
  %20 = trunc i64 %indvars.iv300 to i32
  %21 = mul i32 %i.cn, %20
  %invariant.op156.us.us.reass = add i32 %21, %invariant.op228
  br i1 %brmerge, label %.preheader146.us.us.us.us.us, label %bb.v

.preheader146.us.us.us.us.us:                     ; preds = %.preheader147.us.us, %._crit_edge186.split.us.us.us.us.split.us224.us
  %.0103192.us.us.us.us.us = phi i32 [ %41, %._crit_edge186.split.us.us.us.us.split.us224.us ], [ 0, %.preheader147.us.us ] ; 2 uses
  %22 = add i32 %.0103192.us.us.us.us.us, %i.cj   ; 3 uses
  br i1 %i.fg, label %.preheader147.us.us.a, label %.preheader.lr.ph.us.us.us.us.us222.us

.preheader.lr.ph.us.us.us.us.us222.us:            ; preds = %.preheader146.us.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us222.us
  %indvars.iv293.us = phi i64 [ %indvars.iv.next294.us.1, %.preheader.lr.ph.us.us.us.us.us222.us ], [ 0, %.preheader146.us.us.us.us.us ] ; 3 uses
  %niter445 = phi i64 [ %niter445.next.1, %.preheader.lr.ph.us.us.us.us.us222.us ], [ 0, %.preheader146.us.us.us.us.us ]
  %23 = mul nuw nsw i64 %indvars.iv293.us, %wide.trip.count350
  %24 = add nuw nsw i64 %23, %indvars.iv300
  %25 = trunc i64 %24 to i32
  %26 = mul i32 %i.bd, %25
  %27 = add i32 %22, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %28
  store float %i.ck, ptr %29, align 4, !tbaa !71
  %indvars.iv.next294.us = or disjoint i64 %indvars.iv293.us, 1
  %30 = mul nuw nsw i64 %indvars.iv.next294.us, %wide.trip.count350
  %31 = add nuw nsw i64 %30, %indvars.iv300
  %32 = trunc i64 %31 to i32
  %33 = mul i32 %i.bd, %32
  %34 = add i32 %22, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %35
  store float %i.ck, ptr %36, align 4, !tbaa !71
  %indvars.iv.next294.us.1 = add nuw nsw i64 %indvars.iv293.us, 2 ; 2 uses
  %niter445.next.1 = add i64 %niter445, 2         ; 2 uses
  %niter445.ncmp.1 = icmp eq i64 %niter445.next.1, %unroll_iter432
  br i1 %niter445.ncmp.1, label %._crit_edge186.split.us.us.us.us.split.us224.us.unr-lcssa, label %.preheader.lr.ph.us.us.us.us.us222.us, !llvm.loop !111

._crit_edge186.split.us.us.us.us.split.us224.us.unr-lcssa: ; preds = %.preheader.lr.ph.us.us.us.us.us222.us
  br i1 %lcmp.mod430.not, label %._crit_edge186.split.us.us.us.us.split.us224.us, label %.preheader147.us.us.a

.preheader147.us.us.a:                            ; preds = %._crit_edge186.split.us.us.us.us.split.us224.us.unr-lcssa, %.preheader146.us.us.us.us.us
  %indvars.iv299 = phi i64 [ 0, %.preheader146.us.us.us.us.us ], [ %indvars.iv.next294.us.1, %._crit_edge186.split.us.us.us.us.split.us224.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod431)
  %37 = mul nuw nsw i64 %indvars.iv299, %wide.trip.count350
  %38 = add nuw nsw i64 %37, %indvars.iv300
  %i.fh = trunc i64 %38 to i32
  %i.fi = mul i32 %i.bd, %i.fh
  %invariant.op156.us.us.reass.a = add i32 %22, %i.fi
  %39 = sext i32 %invariant.op156.us.us.reass.a to i64
  %40 = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %39
  store float %i.ck, ptr %40, align 4, !tbaa !71
  br label %._crit_edge186.split.us.us.us.us.split.us224.us

._crit_edge186.split.us.us.us.us.split.us224.us:  ; preds = %._crit_edge186.split.us.us.us.us.split.us224.us.unr-lcssa, %.preheader147.us.us.a
  %41 = add nuw nsw i32 %.0103192.us.us.us.us.us, 1 ; 2 uses
  %exitcond298.us.not = icmp eq i32 %41, %i.bd
  br i1 %exitcond298.us.not, label %._crit_edge194.split.us.us.split.us.us.split, label %.preheader146.us.us.us.us.us, !llvm.loop !112

bb.v:                                             ; preds = %.preheader147.us.us, %._crit_edge186.split.us.us.us.us.split.us224
  %.0103192.us.us.us.us = phi i32 [ %i.hc, %._crit_edge186.split.us.us.us.us.split.us224 ], [ 0, %.preheader147.us.us ] ; 3 uses
  %i.fj = mul nsw i32 %i.cn, %.0103192.us.us.us.us
  %i.fk = add nsw i32 %i.fj, %i.co
  br label %.preheader145.us.us.us.us

.preheader145.us.us.us.us:                        ; preds = %bb.v, %._crit_edge153.us.us.us.us
  %indvars.iv288 = phi i64 [ 0, %bb.v ], [ %indvars.iv.next289, %._crit_edge153.us.us.us.us ] ; 3 uses
  %i.fl = mul nuw nsw i64 %indvars.iv288, %i.fe   ; 3 uses
  %i.fm = trunc nuw nsw i64 %indvars.iv288 to i32
  %.reass.reass.us.us.us.us = add i32 %invariant.op156.us.us.reass, %i.fm
  %i.fn = mul nsw i32 %.reass.reass.us.us.us.us, %i.s
  %invariant.op154.us.us.us.us = add i32 %i.fk, %i.fn ; 3 uses
  br i1 %i.ff, label %.lr.ph.us.us.us.us.epil.preheader, label %.lr.ph.us.us.us.us

.lr.ph.us.us.us.us:                               ; preds = %.preheader145.us.us.us.us, %.lr.ph.us.us.us.us
  %indvars.iv283 = phi i64 [ %indvars.iv.next284.1, %.lr.ph.us.us.us.us ], [ 0, %.preheader145.us.us.us.us ] ; 4 uses
  %niter428 = phi i64 [ %niter428.next.1, %.lr.ph.us.us.us.us ], [ 0, %.preheader145.us.us.us.us ]
  %i.fo = add nuw nsw i64 %indvars.iv283, %i.fl
  %i.fp = mul nuw nsw i64 %i.fo, %i.fd
  %invariant.gep383 = getelementptr [4 x i8], ptr %.sroa.0141.0, i64 %i.fp
  %i.fq = trunc nuw nsw i64 %indvars.iv283 to i32
  %.reass149.reass.us.us.us.us = add i32 %invariant.op154.us.us.us.us, %i.fq
  %i.fr = mul nsw i32 %.reass149.reass.us.us.us.us, %.fr
  %i.fs = sext i32 %i.fr to i64
  %invariant.gep381 = getelementptr [4 x i8], ptr %i.bo, i64 %i.fs
  %i.ft = load float, ptr %invariant.gep381, align 4, !tbaa !71
  store float %i.ft, ptr %invariant.gep383, align 4, !tbaa !71
  %indvars.iv.next284 = or disjoint i64 %indvars.iv283, 1 ; 2 uses
  %i.fu = add nuw nsw i64 %indvars.iv.next284, %i.fl
  %i.fv = mul nuw nsw i64 %i.fu, %i.fd
  %invariant.gep383.1 = getelementptr [4 x i8], ptr %.sroa.0141.0, i64 %i.fv
  %i.fw = trunc nuw nsw i64 %indvars.iv.next284 to i32
  %.reass149.reass.us.us.us.us.1 = add i32 %invariant.op154.us.us.us.us, %i.fw
  %i.fx = mul nsw i32 %.reass149.reass.us.us.us.us.1, %.fr
  %i.fy = sext i32 %i.fx to i64
  %invariant.gep381.1 = getelementptr [4 x i8], ptr %i.bo, i64 %i.fy
  %i.fz = load float, ptr %invariant.gep381.1, align 4, !tbaa !71
  store float %i.fz, ptr %invariant.gep383.1, align 4, !tbaa !71
  %indvars.iv.next284.1 = add nuw nsw i64 %indvars.iv283, 2 ; 2 uses
  %niter428.next.1 = add i64 %niter428, 2         ; 2 uses
  %niter428.ncmp.1 = icmp eq i64 %niter428.next.1, %unroll_iter427
  br i1 %niter428.ncmp.1, label %._crit_edge153.us.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.us, !llvm.loop !114

._crit_edge153.us.us.us.us.unr-lcssa:             ; preds = %.lr.ph.us.us.us.us
  br i1 %lcmp.mod432.not, label %._crit_edge153.us.us.us.us, label %.lr.ph.us.us.us.us.epil.preheader

.lr.ph.us.us.us.us.epil.preheader:                ; preds = %._crit_edge153.us.us.us.us.unr-lcssa, %.preheader145.us.us.us.us
  %indvars.iv283.epil.init = phi i64 [ 0, %.preheader145.us.us.us.us ], [ %indvars.iv.next284.1, %._crit_edge153.us.us.us.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod433)
  %i.ga = add nuw nsw i64 %indvars.iv283.epil.init, %i.fl
  %i.gb = mul nuw nsw i64 %i.ga, %i.fd
  %invariant.gep383.epil = getelementptr [4 x i8], ptr %.sroa.0141.0, i64 %i.gb
  %i.gc = trunc nuw nsw i64 %indvars.iv283.epil.init to i32
  %.reass149.reass.us.us.us.us.epil = add i32 %invariant.op154.us.us.us.us, %i.gc
  %i.gd = mul nsw i32 %.reass149.reass.us.us.us.us.epil, %.fr
  %i.ge = sext i32 %i.gd to i64
  %invariant.gep381.epil = getelementptr [4 x i8], ptr %i.bo, i64 %i.ge
  %i.gf = load float, ptr %invariant.gep381.epil, align 4, !tbaa !71
  store float %i.gf, ptr %invariant.gep383.epil, align 4, !tbaa !71
  br label %._crit_edge153.us.us.us.us

._crit_edge153.us.us.us.us:                       ; preds = %._crit_edge153.us.us.us.us.unr-lcssa, %.lr.ph.us.us.us.us.epil.preheader
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond292.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count324
  br i1 %exitcond292.not, label %.preheader146.us.us.us.us, label %.preheader145.us.us.us.us, !llvm.loop !106

.preheader146.us.us.us.us:                        ; preds = %._crit_edge153.us.us.us.us
  %i.gg = add i32 %.0103192.us.us.us.us, %i.cj    ; 3 uses
  br i1 %19, label %.preheader.lr.ph.us.us.us.us.us222.epil.preheader, label %.preheader.lr.ph.us.us.us.us.us222

.preheader.lr.ph.us.us.us.us.us222:               ; preds = %.preheader146.us.us.us.us, %.preheader.lr.ph.us.us.us.us.us222
  %indvars.iv293 = phi i64 [ %indvars.iv.next294.1, %.preheader.lr.ph.us.us.us.us.us222 ], [ 0, %.preheader146.us.us.us.us ] ; 3 uses
  %niter433 = phi i64 [ %niter433.next.1, %.preheader.lr.ph.us.us.us.us.us222 ], [ 0, %.preheader146.us.us.us.us ]
  %i.gh = mul nuw nsw i64 %indvars.iv293, %wide.trip.count350
  %i.gi = add nuw nsw i64 %i.gh, %indvars.iv300
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = mul i32 %i.bd, %i.gj
  %i.gl = add i32 %i.gg, %i.gk
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.gm
  store float %i.ck, ptr %i.gn, align 4, !tbaa !71
  %indvars.iv.next294 = or disjoint i64 %indvars.iv293, 1
  %i.go = mul nuw nsw i64 %indvars.iv.next294, %wide.trip.count350
  %i.gp = add nuw nsw i64 %i.go, %indvars.iv300
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = mul i32 %i.bd, %i.gq
  %i.gs = add i32 %i.gg, %i.gr
  %i.gt = sext i32 %i.gs to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.gt
  store float %i.ck, ptr %i.gu, align 4, !tbaa !71
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293, 2 ; 2 uses
  %niter433.next.1 = add i64 %niter433, 2         ; 2 uses
  %niter433.ncmp.1 = icmp eq i64 %niter433.next.1, %unroll_iter439
  br i1 %niter433.ncmp.1, label %._crit_edge186.split.us.us.us.us.split.us224.unr-lcssa, label %.preheader.lr.ph.us.us.us.us.us222, !llvm.loop !111

._crit_edge186.split.us.us.us.us.split.us224.unr-lcssa: ; preds = %.preheader.lr.ph.us.us.us.us.us222
  br i1 %lcmp.mod425.not, label %._crit_edge186.split.us.us.us.us.split.us224, label %.preheader.lr.ph.us.us.us.us.us222.epil.preheader

.preheader.lr.ph.us.us.us.us.us222.epil.preheader: ; preds = %._crit_edge186.split.us.us.us.us.split.us224.unr-lcssa, %.preheader146.us.us.us.us
  %indvars.iv293.epil.init = phi i64 [ 0, %.preheader146.us.us.us.us ], [ %indvars.iv.next294.1, %._crit_edge186.split.us.us.us.us.split.us224.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod426)
  %i.gv = mul nuw nsw i64 %indvars.iv293.epil.init, %wide.trip.count350
  %i.gw = add nuw nsw i64 %i.gv, %indvars.iv300
  %i.gx = trunc i64 %i.gw to i32
  %i.gy = mul i32 %i.bd, %i.gx
  %i.gz = add i32 %i.gg, %i.gy
  %i.ha = sext i32 %i.gz to i64
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.ha
  store float %i.ck, ptr %i.hb, align 4, !tbaa !71
  br label %._crit_edge186.split.us.us.us.us.split.us224

._crit_edge186.split.us.us.us.us.split.us224:     ; preds = %._crit_edge186.split.us.us.us.us.split.us224.unr-lcssa, %.preheader.lr.ph.us.us.us.us.us222.epil.preheader
  %i.hc = add nuw nsw i32 %.0103192.us.us.us.us, 1 ; 2 uses
  %exitcond298.not = icmp eq i32 %i.hc, %i.bd
  br i1 %exitcond298.not, label %._crit_edge194.split.us.us.split.us.us.split, label %bb.v, !llvm.loop !112

._crit_edge194.split.us.us.split.us.us.split:     ; preds = %._crit_edge186.split.us.us.us.us.split.us224, %._crit_edge186.split.us.us.us.us.split.us224.us
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next300, %wide.trip.count302
  br i1 %exitcond303.not, label %._crit_edge201.split, label %.preheader147.us.us, !llvm.loop !113

.preheader147.lr.ph.split.split.us.split:         ; preds = %.preheader147.lr.ph.split.split.us
  %wide.trip.count269 = zext nneg i32 %i.au to i64
  %wide.trip.count263 = zext nneg i32 %i.am to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count263, 1
  %i.hd = icmp eq i32 %i.am, 1
  %unroll_iter = and i64 %wide.trip.count263, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod423 = trunc i32 %i.am to i1
  br label %.preheader147.us

.preheader147.us:                                 ; preds = %._crit_edge194.split.us.us.split.split, %.preheader147.lr.ph.split.split.us.split
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %._crit_edge194.split.us.us.split.split ], [ 0, %.preheader147.lr.ph.split.split.us.split ] ; 4 uses
  br label %.preheader146.us.us

.preheader146.us.us:                              ; preds = %._crit_edge186.split.us197.us, %.preheader147.us
  %.0103192.us.us = phi i32 [ 0, %.preheader147.us ], [ %i.ia, %._crit_edge186.split.us197.us ] ; 2 uses
  %i.he = add i32 %.0103192.us.us, %i.cj          ; 3 uses
  br i1 %i.hd, label %.epil.preheader, label %.preheader146.us.us.new

.preheader146.us.us.new:                          ; preds = %.preheader146.us.us, %.preheader146.us.us.new
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.1, %.preheader146.us.us.new ], [ 0, %.preheader146.us.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader146.us.us.new ], [ 0, %.preheader146.us.us ]
  %i.hf = mul nuw nsw i64 %indvars.iv260, %wide.trip.count350
  %i.hg = add nuw nsw i64 %i.hf, %indvars.iv266
  %i.hh = trunc i64 %i.hg to i32
  %i.hi = mul i32 %i.bd, %i.hh
  %i.hj = add i32 %i.he, %i.hi
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.hk
  store float %i.ck, ptr %i.hl, align 4, !tbaa !71
  %indvars.iv.next261 = or disjoint i64 %indvars.iv260, 1
  %i.hm = mul nuw nsw i64 %indvars.iv.next261, %wide.trip.count350
  %i.hn = add nuw nsw i64 %i.hm, %indvars.iv266
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = mul i32 %i.bd, %i.ho
  %i.hq = add i32 %i.he, %i.hp
  %i.hr = sext i32 %i.hq to i64
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.hr
  store float %i.ck, ptr %i.hs, align 4, !tbaa !71
  %indvars.iv.next261.1 = add nuw nsw i64 %indvars.iv260, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge186.split.us197.us.unr-lcssa, label %.preheader146.us.us.new, !llvm.loop !111

._crit_edge186.split.us197.us.unr-lcssa:          ; preds = %.preheader146.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge186.split.us197.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge186.split.us197.us.unr-lcssa, %.preheader146.us.us
  %indvars.iv260.epil.init = phi i64 [ 0, %.preheader146.us.us ], [ %indvars.iv.next261.1, %._crit_edge186.split.us197.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod423)
  %i.ht = mul nuw nsw i64 %indvars.iv260.epil.init, %wide.trip.count350
  %i.hu = add nuw nsw i64 %i.ht, %indvars.iv266
  %i.hv = trunc i64 %i.hu to i32
  %i.hw = mul i32 %i.bd, %i.hv
  %i.hx = add i32 %i.he, %i.hw
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %i.hy
  store float %i.ck, ptr %i.hz, align 4, !tbaa !71
  br label %._crit_edge186.split.us197.us

._crit_edge186.split.us197.us:                    ; preds = %._crit_edge186.split.us197.us.unr-lcssa, %.epil.preheader
  %i.ia = add nuw nsw i32 %.0103192.us.us, 1      ; 2 uses
  %exitcond265.not = icmp eq i32 %i.ia, %i.bd
  br i1 %exitcond265.not, label %._crit_edge194.split.us.us.split.split, label %.preheader146.us.us, !llvm.loop !112

._crit_edge194.split.us.us.split.split:           ; preds = %._crit_edge186.split.us197.us
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge201.split, label %.preheader147.us, !llvm.loop !113

.preheader147.lr.ph.split.split:                  ; preds = %.preheader147.lr.ph.split
  %invariant.op = add i32 %i.co, %i.cg
  %brmerge236 = or i1 %17, %i.cf
  br i1 %brmerge236, label %._crit_edge201.split, label %.preheader147.preheader

.preheader147.preheader:                          ; preds = %.preheader147.lr.ph.split.split
  %i.ib = zext nneg i32 %.fr to i64
  %i.ic = zext nneg i32 %.fr379 to i64
  %wide.trip.count256 = zext nneg i32 %.fr379 to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %.fr to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %.fr, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.preheader, %._crit_edge194.split
  %.0104199 = phi i32 [ %i.ig, %._crit_edge194.split ], [ 0, %.preheader147.preheader ] ; 2 uses
  %i.id = mul nsw i32 %i.cn, %.0104199
  %invariant.op156.reass = add i32 %i.id, %invariant.op
  br label %.preheader145.lr.ph

._crit_edge201.split:                             ; preds = %._crit_edge194.split.us.us.split.split, %._crit_edge194.split.us.us.split.us.us.split, %.preheader147.lr.ph.split.split, %.preheader147.lr.ph, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit
  %.not.i.i.i = icmp eq ptr %.sroa.0141.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %._crit_edge201.split.thread

._crit_edge201.split.thread:                      ; preds = %._crit_edge194.split, %._crit_edge194.split.us.us.split.us.us.split.us.us, %._crit_edge201.split
  %i.ie = ptrtoint ptr %.sroa.0141.0 to i64
  %i.if = sub i64 %.sroa.10.0, %i.ie
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0141.0, i64 noundef %i.if) #18
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %._crit_edge201.split, %._crit_edge201.split.thread
  ret void

._crit_edge194.split:                             ; preds = %..preheader146_crit_edge
  %i.ig = add nuw nsw i32 %.0104199, 1            ; 2 uses
  %exitcond259.not = icmp eq i32 %i.ig, %i.au
  br i1 %exitcond259.not, label %._crit_edge201.split.thread, label %.preheader147, !llvm.loop !113

.preheader145.lr.ph:                              ; preds = %.preheader147, %..preheader146_crit_edge
  %.0103192 = phi i32 [ 0, %.preheader147 ], [ %i.ij, %..preheader146_crit_edge ] ; 2 uses
  %i.ih = mul nsw i32 %i.cn, %.0103192
  %i.ii = add nsw i32 %i.ih, %i.co
  br label %.preheader145

..preheader146_crit_edge:                         ; preds = %._crit_edge153
  %i.ij = add nuw nsw i32 %.0103192, 1            ; 2 uses
  %exitcond258.not = icmp eq i32 %i.ij, %i.bd
  br i1 %exitcond258.not, label %._crit_edge194.split, label %.preheader145.lr.ph, !llvm.loop !112

.preheader145:                                    ; preds = %.preheader145.lr.ph, %._crit_edge153
  %indvars.iv253 = phi i64 [ 0, %.preheader145.lr.ph ], [ %indvars.iv.next254, %._crit_edge153 ] ; 3 uses
  %i.ik = mul nuw nsw i64 %indvars.iv253, %i.ic
  %i.il = trunc nuw nsw i64 %indvars.iv253 to i32
  %.reass.reass = add i32 %invariant.op156.reass, %i.il
  %i.im = mul nsw i32 %.reass.reass, %i.s
  %invariant.op154 = add i32 %i.ii, %i.im
  br label %.lr.ph

._crit_edge153:                                   ; preds = %._crit_edge
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 1 ; 2 uses
  %exitcond257.not = icmp eq i64 %indvars.iv.next254, %wide.trip.count256
  br i1 %exitcond257.not, label %..preheader146_crit_edge, label %.preheader145, !llvm.loop !106

.lr.ph:                                           ; preds = %.preheader145, %._crit_edge
  %indvars.iv248 = phi i64 [ 0, %.preheader145 ], [ %indvars.iv.next249, %._crit_edge ] ; 3 uses
  %i.in = add nuw nsw i64 %indvars.iv248, %i.ik
  %i.io = mul nuw nsw i64 %i.in, %i.ib
  %i.ip = trunc nuw nsw i64 %indvars.iv248 to i32
  %.reass149.reass = add i32 %invariant.op154, %i.ip
  %i.iq = mul nsw i32 %.reass149.reass, %.fr
  %i.ir = sext i32 %i.iq to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.bo, i64 %i.ir ; 2 uses
  %invariant.gep379 = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0141.0, i64 %i.io ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.is = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.it = getelementptr i8, ptr %i.is, i64 16
  %wide.load = load <4 x float>, ptr %i.is, align 4, !tbaa !71
  %wide.load396 = load <4 x float>, ptr %i.it, align 4, !tbaa !71
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep379, i64 %index ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store <4 x float> %wide.load, ptr %i.iu, align 4, !tbaa !71
  store <4 x float> %wide.load396, ptr %i.iv, align 4, !tbaa !71
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iw = icmp eq i64 %index.next, %n.vec
  br i1 %i.iw, label %middle.block, label %vector.body, !llvm.loop !115

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond252.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count256
  br i1 %exitcond252.not, label %._crit_edge153, label %.lr.ph, !llvm.loop !105

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ix = load float, ptr %gep, align 4, !tbaa !71
  %gep380 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep379, i64 %indvars.iv
  store float %i.ix, ptr %gep380, align 4, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !116
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = load ptr, ptr %0, align 8, !tbaa !68     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 52
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @_ZNSt6vectorIN2cv8MatShapeESaIS1_EEC2EmRKS1_RKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(52) %2, ptr noundef nonnull align 1 dereferenceable(1) %0)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !72
  %i.k = load <2 x ptr>, ptr %0, align 8, !tbaa !121
  %i.l = load ptr, ptr %0, align 8, !tbaa !68     ; 3 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  store ptr %i.m, ptr %i.i, align 16, !tbaa !72
  %i.n = load <2 x ptr>, ptr %3, align 16, !tbaa !121
  store <2 x ptr> %i.k, ptr %3, align 16, !tbaa !121
  store <2 x ptr> %i.n, ptr %0, align 8, !tbaa !121
  store ptr %i.j, ptr %i.a, align 8, !tbaa !72
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #18
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv8MatShapeESaIS1_EED2Ev.exit:     ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67   ; 5 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  %i.v = sdiv exact i64 %i.u, 52
  %i.w = icmp ugt i64 %1, %i.v
  br i1 %i.w, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %.not5.i.i.i.i = icmp eq ptr %i.c, %i.s
  br i1 %.not5.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.x = tail call noundef nonnull align 4 dereferenceable(52) ptr @_ZN2cv8MatShapeaSERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.06.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2) ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.y, %i.s
  br i1 %.not.i.i.i.i, label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !120

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre16 = load ptr, ptr %i.r, align 8, !tbaa !67 ; 2 uses
  %.pre17 = load ptr, ptr %0, align 8, !tbaa !68
  %.pre18 = ptrtoint ptr %.pre16 to i64
  %.pre19 = ptrtoint ptr %.pre17 to i64
  %.pre21 = sub i64 %.pre18, %.pre19
  %i.z = sdiv exact i64 %.pre21, -52
  br label %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit

_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit: ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit, %bb.e
  %.pre-phi22 = phi i64 [ %i.z, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ 0, %bb.e ]
  %i.aa = phi ptr [ %.pre16, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit.loopexit ], [ %i.s, %bb.e ] ; 2 uses
  %i.ab = add i64 %.pre-phi22, %1                 ; 2 uses
  %.not13.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not13.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i
  %.015.i.i.i.i = phi ptr [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ] ; 2 uses
  %.01114.i.i.i.i = phi i64 [ %i.ac, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.ab, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ]
  invoke void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52) %.015.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(52) %2)
          to label %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i11
  %i.ac = add i64 %.01114.i.i.i.i, -1             ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i, i64 52 ; 2 uses
  %.not.i.i.i.i12 = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i.i12, label %_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i11, !llvm.loop !2

bb.f:                                             ; preds = %.lr.ph.i.i.i.i11
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #19 ; 0 uses
  invoke void @__cxa_rethrow() #20
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.ah

bb.i:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #21
  unreachable

bb.j:                                             ; preds = %bb.f
  unreachable

_ZSt24__uninitialized_fill_n_aIPN2cv8MatShapeEmS1_S1_ET_S3_T0_RKT1_RSaIT2_E.exit: ; preds = %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.aa, %_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPN2cv8MatShapeESt6vectorIS3_SaIS3_EEEES3_EvT_S9_RKT0_.exit ], [ %i.ad, %_ZSt10_ConstructIN2cv8MatShapeEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.r, align 8, !tbaa !67
  br label %_ZNSt6vectorIN2cv8MatShapeESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.k:                                             ; preds = %bb.d
  %i.ak = icmp eq i64 %1, 0
  br i1 %i.ak, label %_ZSt6fill_nIPN2cv8MatShapeEmS1_ET_S3_T0_RKT1_.exit, label %bb.l
end_hunk_0
